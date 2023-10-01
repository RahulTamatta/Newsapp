import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/app/modules/contoller/NewsController.dart';
// Correct the path to the controller
import 'package:webview_flutter/webview_flutter.dart';

class ViewNews extends GetView<NewsController> {
  final newsUrl;
  final title;
  final content;

  const ViewNews({
    Key? key,
    required this.newsUrl,
    this.title,
    this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("News"),
        backgroundColor: Colors.red,
      ),
      body: Card(
        margin: EdgeInsets.all(16.0),
        elevation: 4.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // News headline and content
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  // News image
                  CachedNetworkImage(
                    imageUrl: newsUrl, // Access the controller's property here
                  ),
                  // Optional: Add buttons or icons for actions like sharing, saving, etc.

                  SizedBox(height: 8.0),
                  Text(
                    content,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
