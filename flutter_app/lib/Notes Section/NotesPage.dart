import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NotesPage extends StatefulWidget {
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {

  @override
  Widget build(BuildContext context) {
    String _noteData = ModalRoute.of(context)
        .settings
        .arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[500],
        title: Text("Notes Section"),
        centerTitle: true,
      ),
      body: WebView(
        initialUrl: _noteData,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
