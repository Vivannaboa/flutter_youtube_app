import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_youtube_app/models/constantes.dart';
import 'package:flutter_youtube_app/models/youtube/you_tube_api_details_root.dart';
import 'package:flutter_youtube_app/models/youtube/you_tube_api_list_root.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

Future<YouTubeApiListRoot> getVideos(http.Client client) async {
  final response = await client.get(channelUrl);
  return parseVideos(response.body);
}

YouTubeApiListRoot parseVideos(String responseBody) {
  final parsed = json.decode(responseBody);
  return YouTubeApiListRoot.fromJson(parsed);
}

Future<List<YouTubeApiDetailsRoot>> getVideosDetalhe(
    http.Client client, YouTubeApiListRoot lista) async {
  List<YouTubeApiDetailsRoot> listaVideos = new List<YouTubeApiDetailsRoot>();
  for (final i in lista.items) {
    print(i.id.videoId);
    if (i.id.videoId != null) {
      var a = await getDetalhe(client, i.id.videoId);
      listaVideos.add(a);
    }
  }
  return listaVideos;
}

Future<YouTubeApiDetailsRoot> getDetalhe(
    http.Client client, String videoId) async {
  final response = await client.get(detailsUrl + videoId);
  return parseVideosDetalhe(response.body);
}

YouTubeApiDetailsRoot parseVideosDetalhe(String responseBody) {
  final parsed = json.decode(responseBody);
  return YouTubeApiDetailsRoot.fromJson(parsed);
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<YouTubeApiDetailsRoot> listayoutube = new List<YouTubeApiDetailsRoot>();
  void getDAta() async {
    getVideos(http.Client()).then((lista) {
      getVideosDetalhe(http.Client(), lista).then((b) {
        setState(() {
          listayoutube = b;
        });
      }).catchError((err) {
        print(err);
      });
    }).catchError((err) {
      print(err);
    });
  }

  @override
  void initState() {
    super.initState();
    getDAta();
  }

  _onTap(String url) async {
    if (url != null) {
      if (await canLaunch(url)) {
        await launch(url, forceSafariVC: false, forceWebView: false);
      } else {
        throw 'Could not launch $url';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: listayoutube.length,
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () => _onTap(
                        'https://www.youtube.com/watch?v=${listayoutube[index].items[0].id}'),
                    child: Image.network(
                      '${listayoutube[index].items[0].snippet.thumbnails.high.url}',
                    ),
                  ),
                  ListTile(
                    title: Text(
                      '${listayoutube[index].items[0].snippet.title}',
                    ),
                    subtitle: Text(
                      '${listayoutube[index].items[0].snippet.description}',
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
