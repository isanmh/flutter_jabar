import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterv3/models/album_model.dart';
import 'package:http/http.dart' as http;

// Services
Future<Album> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}

class AlbumPage extends StatefulWidget {
  const AlbumPage({Key? key}) : super(key: key);

  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  // untuk menampung object data
  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Album Page'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: FutureBuilder<Album>(
          future: futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // return Text(snapshot.data!.id.toString());
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${snapshot.data!.id} | '),
                  Text('${snapshot.data!.userId} | '),
                  Text(snapshot.data!.title),
                ],
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
