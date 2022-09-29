import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({Key? key}) : super(key: key);

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late WebViewController controller;
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebView'),
      ),
      body: Stack(
        children: [
          WebView(
            initialUrl: 'https://youtube.com',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (controller) {
              this.controller = controller;
            },
            onPageStarted: (url) {
              print('Page started loading: $url');
              Future.delayed(
                const Duration(seconds: 3),
                () {
                  setState(() {
                    isLoading = false;
                  });
                },
              );
            },
            onPageFinished: (url) {
              print('Page finished loading: $url');
              // setState(() {
              //   isLoading = false;
              // });
              controller.runJavascript(
                  // 'document.body.style.backgroundColor = "red";',
                  "document.getElementsByTagName('header')[0].style.display = 'none'");
            },
          ),
          if (isLoading)
            const Center(
              child: CircularProgressIndicator(),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final currentUrl = await controller.currentUrl();
          print('CurrenURL : $currentUrl');
          controller.loadUrl('https://amazon.com');
        },
        child: const Icon(Icons.video_call),
      ),
    );
  }
}
