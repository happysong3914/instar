import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instagram Clone',
        ),
      ),
      body: Column(
        children: [
          Text(
            'Instagram에 오신 것을 환영합니다',
          ),
          Text(
            'Instagram에 오신 것을 환영합니다',
          ),
        ],
      ),
    );
  }
}
