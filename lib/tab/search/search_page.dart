import 'package:flutter/material.dart';

import '../../create/create_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  final List<String> _urls = const [
    'https://i.namu.wiki/i/KHZxgx6dilwr4Z7uu6wSPoVlf5aIb6rq6qIOBV2LYBYdN9cWFaLl'
        'vkggojNNTD6mrwtGxS_lTPh4Woge2hzuZQ.webp',
    'https://cdn.hankyung.com/photo/202401/BF.35541769.1.jpg',
    'https://sisain.co.kr/news/photo/202307/50693_93156_1688658510.jpg',
    'https://i.namu.wiki/i/KHZxgx6dilwr4Z7uu6wSPoVlf5aIb6rq6qIOBV2LYBYdN9cWFaLl'
        'vkggojNNTD6mrwtGxS_lTPh4Woge2hzuZQ.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            (context),
            MaterialPageRoute(builder: (context) => CreatePage()),
          );
        },
        child: Icon(Icons.create),
      ),
      appBar: AppBar(
        title: Text('Instagram clone'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: GridView.builder(
          itemCount: _urls.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 2.0,
            crossAxisSpacing: 2.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            final url = _urls[index];
            return Image.network(
              url,
              fit: BoxFit.cover,
            );
          },
        ),
      ),
    );
  }
}
