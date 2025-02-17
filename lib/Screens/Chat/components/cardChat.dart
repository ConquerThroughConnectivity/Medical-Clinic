import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardChat extends StatelessWidget {
  final String text;
  final String min;
  final bool isUser;
  const CardChat(
      {super.key, required this.text, required this.isUser, required this.min});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment:
            isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: isUser ? Colors.blue[100] : Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(text),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(min,
                style: const TextStyle(fontSize: 12, color: Colors.grey)),
          ),
        ],
      ),
    );
    // return Align(
    //     alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
    //     child: Column(
    //       crossAxisAlignment:
    //           isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
    //       children: [
    //         Container(
    //           padding: const EdgeInsets.all(10.0),
    //           margin: const EdgeInsets.symmetric(vertical: 5.0),
    //           decoration: BoxDecoration(
    //             color: isUser ? const Color(0XFF6878E5) : Color(0Xffd5d5d5a),
    //             borderRadius: BorderRadius.circular(10.0),
    //           ),
    //           child: Text(
    //             text,
    //             style: const TextStyle(fontSize: 16.0, color: Colors.white),
    //           ),
    //         ),
    //         Text(
    //           min,
    //           style: const TextStyle(fontSize: 16.0, color: Colors.black),
    //         ),
    //       ],
    //     ));
  }
}
