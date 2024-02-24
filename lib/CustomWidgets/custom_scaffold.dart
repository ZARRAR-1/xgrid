import 'package:flutter/material.dart';
import 'global.dart';
import 'custom_bottom_appbar.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    required this.title,
    required this.body,
    required this.index,
  });

  final String title;
  final Widget body;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.file_upload_outlined,color: primaryTextColor),
            onPressed: () {
              // Handle icon button press
            },
          ),
        ],
      ),
      body: body,
      bottomNavigationBar: CustomBottomAppBar(
        index: index,
      ),
    );
  }
}
