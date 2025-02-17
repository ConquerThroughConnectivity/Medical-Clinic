import 'package:flutter/material.dart';

class ChatHeads extends StatelessWidget {
  const ChatHeads({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height / 12,
        child: const Expanded(
          child: ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2023/01/08/14/22/sample-7705346_640.jpg")),
            title: Expanded(
              flex: 1,
              child: Text(
                "Nasim Dribble",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w800),
              ),
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    "hoy hoy buloy",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            trailing: Expanded(
              child: Text(
                "20 min",
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ));
  }
}
