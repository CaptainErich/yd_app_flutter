import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

class Browser extends StatefulWidget {
  const Browser({Key? key, this.url, this.title}) : super(key: key);
  final String? url;
  final String? title;

  @override
  _BrowserState createState() => _BrowserState(url, title);
}

class _BrowserState extends State<Browser> {
  _BrowserState(this.url, this.title);
  final String? url;
  final String? title;

  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}