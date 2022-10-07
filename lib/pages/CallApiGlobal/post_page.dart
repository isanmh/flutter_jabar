import 'package:flutter/material.dart';
import 'package:flutterv3/models/api_response.dart';
import 'package:flutterv3/models/post_model.dart';
import 'package:flutterv3/services/post_service.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  late Future<Post> futurePost; // dengan object
  List<dynamic> _postList = [];
  bool isLoading = true;

  // get all post from API
  Future<void> getAllPosts() async {
    // panggil response dari model
    ApiResponse response = await getPosts();
    // jika response berhasil
    if (response.error == null) {
      // masukan data ke list _postList = []
      // debugPrint('Response: ${response.data}');
      setState(() {
        isLoading = false;
        _postList = response.data as List<dynamic>;
      });
    } else {
      // jika gagal
      print(response.error);
    }
  }

  @override
  void initState() {
    super.initState();
    getAllPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Page'),
        backgroundColor: Colors.deepPurple,
      ),
      body: (isLoading)
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _postList.length,
              itemBuilder: (BuildContext context, int index) {
                // Post post = _postList[index];
                return Card(
                  elevation: 5,
                  child: ListTile(
                    // title: Text('${post.title}'),
                    // subtitle: Text('${post.body}'),
                    title: Text(_postList[index]['title']),
                    subtitle: Text(_postList[index]['body']),
                    leading: const Icon(
                      Icons.article_outlined,
                    ),
                  ),
                );
              },
            ),
    );
  }
}
