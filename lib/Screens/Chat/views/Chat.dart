import 'package:doctors_web/Screens/Chat/components/cardChat.dart';
import 'package:doctors_web/Screens/Chat/components/chatHeads.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    _controller.text = "";
  }

  @override
  Widget build(BuildContext context) {
    List<String> convo = [
      'today I will show you how to do it again in very personal ways of improvement ajsdjasdjajsdjasjdasjdasjdjasjdasj',
      'asdasdasdasdal;dkas;ldkas',
      'asdla;skda;skd;sakdkas;llkdl;as',
      'asaskdasdjasdas',
      'qwedl;wqk8134792384598klejalsjdasd32saf6das5f',
      '2131283uajsdajfjkdsbkgdsg',
      '45, 38 27, 51, 23, 12',
      'asdasdasdasdas',
      'asdaToday is gooona be today',
      'aw oo aspda skdaks;dksa ',
      'asdaslkasdj981712j3hasd',
      'asdasdasdasdassa',
      'asdasdasdsadasdassad'
    ];
    List<String> min = [
      "11:00 am",
      "12:00 pm",
      "9:00 am",
      "5:00 am",
      "1:00 pm",
      "4:00 pm",
      "5:30pm",
      "5:02 am",
      "5:30 pm",
      "2:00 pm",
      "6:00 pm",
      "7:00 am",
      "4:00 pm"
    ];

    List<bool> isUser = [
      true,
      true,
      false,
      true,
      false,
      true,
      false,
      false,
      false,
      true,
      true,
      false,
      true,
    ];
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            child: Container(
              decoration: const BoxDecoration(color: Colors.white),
              width: MediaQuery.of(context).size.width / 5,
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      width: 190,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        cursorColor: Colors.black,
                        controller: _controller,
                        decoration: InputDecoration(
                          prefixIcon: InkWell(
                              onTap: () {}, child: const Icon(Icons.search)),
                          isDense: true,
                          contentPadding: const EdgeInsets.only(
                              left: 5.0, bottom: 1.0, top: 1.0, right: 5.0),
                        ),
                      )),
                  Expanded(
                    child: ListView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: const EdgeInsets.only(left: 20, top: 12),
                              child: InkWell(
                                onTap: () {},
                                child: const ChatHeads(),
                              ));
                        }),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
            ),
            // ignore: sized_box_for_whitespace
            child: Container(
              padding: const EdgeInsets.only(left: 20),
              decoration: const BoxDecoration(color: Colors.white),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Scaffold(
                bottomNavigationBar: Container(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 8.0, bottom: 15, top: 8.0),
                  decoration: BoxDecoration(
                    // Add a border or other styling if needed
                    border: Border(
                      top: BorderSide(
                          color: Colors.grey[300]!), // Example border
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.attach_file), // Paperclip icon
                        onPressed: () {
                          // Attachment functionality here
                        },
                      ),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Type your message',
                            border: InputBorder
                                .none, // Remove default border for cleaner look
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.mic), // Microphone icon
                        onPressed: () {
                          // Voice input functionality here
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.send,
                            color: Colors.blue), // Send icon
                        onPressed: () {
                          // Send message functionality here
                        },
                      ),
                    ],
                  ),
                ),
                backgroundColor: Colors.white,
                body: Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: const Row(
                        spacing: 10,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2023/01/08/14/22/sample-7705346_640.jpg',
                                ),
                              ),
                              Positioned(
                                  top: 30,
                                  right: 10,
                                  left: 25,
                                  bottom: 10,
                                  child: Icon(
                                    Icons.circle,
                                    size: 10,
                                    color: Colors.green,
                                  )),
                            ],
                          ),
                          Expanded(
                            child: Text(
                              "Nasim Dribble",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w900),
                            ),
                          ),
                        ],
                      ),
                      trailing: SizedBox(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: InkWell(
                                  onTap: () {},
                                  child: const Icon(Icons.videocam_rounded)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: InkWell(
                                  onTap: () {}, child: const Icon(Icons.call)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: InkWell(
                                  onTap: () {},
                                  child: const Icon(Icons.search)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      indent: 5,
                      endIndent: 5,
                      thickness: 0.3,
                      color: Colors.black,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                            padding: const EdgeInsets.all(10),
                            itemCount: convo.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return CardChat(
                                min: min[index],
                                text: convo[index],
                                isUser: isUser[index],
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
