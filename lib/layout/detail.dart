import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Detail extends StatefulWidget {
  final String? title, link;
  const Detail({super.key, required this.title, required this.link});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? '', style: const TextStyle(
          fontWeight: FontWeight.w600, fontSize: 16
        )),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => context.goNamed('DASHBOARD'),
        ), 
      ),
      body: WebViewWidget(
        controller: WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setBackgroundColor(const Color(0x00000000))
        ..loadRequest(Uri.parse(widget.link ?? ''))
      ),
    );
  }
}
