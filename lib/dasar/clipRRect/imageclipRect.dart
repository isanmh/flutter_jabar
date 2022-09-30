import 'package:flutter/material.dart';

class ImageclipRect extends StatelessWidget {
  const ImageclipRect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ClipRRect Sample')),
      body: const ClipRRectExample(),
    );
  }
}

class ClipRRectExample extends StatelessWidget {
  const ClipRRectExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40.0),
      constraints: const BoxConstraints.expand(),
      // Add a FittedBox to make ClipRRect sized accordingly to the image it contains
      child: FittedBox(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40.0),
          child: const _FakedImage(),
        ),
      ),
    );
  }
}

class _FakedImage extends StatelessWidget {
  const _FakedImage();

  @override
  Widget build(BuildContext context) {
    return Container(
      // Set constraints as if it were a 400x400 image
      constraints: BoxConstraints.tight(const Size(200, 200)),
      color: Colors.blueGrey,
      child: const Image(
        image: NetworkImage(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
      ),
    );
  }
}
