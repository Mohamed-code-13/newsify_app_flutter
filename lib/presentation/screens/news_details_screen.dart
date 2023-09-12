import 'package:flutter/material.dart';

class NewsDetailsScreen extends StatelessWidget {
  static const String routeName = '/details';

  const NewsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details')),
    );
  }
}
