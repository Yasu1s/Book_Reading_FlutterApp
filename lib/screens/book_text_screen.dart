import 'package:flutter/material.dart';
import '../models/book.dart';

class BookTextScreen extends StatelessWidget {
  final Book book;

  BookTextScreen({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Black background
      appBar: AppBar(
        backgroundColor: Colors.purple, // Purple header
        title: Text(
          book.title,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'https://m.media-amazon.com/images/I/71RCZUd2MgL._AC_UF1000,1000_QL80_.jpg',
                height: 200, // Adjust the height as needed
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text(
                book.text,
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Times New Roman',
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
