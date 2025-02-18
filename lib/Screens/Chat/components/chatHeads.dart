import 'package:flutter/material.dart';

class ChatHeads extends StatelessWidget {
  const ChatHeads({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height / 12,
        width: 300,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 0,
              child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2023/01/08/14/22/sample-7705346_640.jpg")),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: SizedBox(
                  height: 50,
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          "Nasim Dribble",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "hoy hoy hoy",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                "20 min",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ));
  }
}
