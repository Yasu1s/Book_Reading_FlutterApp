import 'package:flutter/material.dart';
import '../models/book.dart';
import 'book_text_screen.dart';

class BookDetailScreen extends StatelessWidget {
  final Book book;

  BookDetailScreen({required this.book});

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://m.media-amazon.com/images/I/71RCZUd2MgL._AC_UF1000,1000_QL80_.jpg',
            height: 200, // Adjust the height as needed
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.title,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // White text color
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'By ${book.author}',
                  style: TextStyle(
                      fontSize: 16, color: Colors.white), // White text color
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookTextScreen(book: book),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple, // Purple button background
                    textStyle: const TextStyle(
                        color: Colors.white), // White button text
                  ),
                  child: const Text('Read Now'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
