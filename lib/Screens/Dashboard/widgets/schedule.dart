import 'package:flutter/material.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    SampleItem? selectedItem;

    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Row(
                      children: [
                        Icon(Icons.person_2),
                        Expanded(
                          child: Text(
                            "Conselling",
                            style: TextStyle(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Row(
                      children: [
                        Icon(Icons.person_2),
                        Expanded(
                          child: Text(
                            "Conselling",
                            style: TextStyle(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(children: [
                      Expanded(
                        child: Text(
                          "Feb 4 , 2025",
                          style: TextStyle(),
                        ),
                      ),
                    ]),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(children: [
                      const Expanded(
                          child: Icon(
                        Icons.call,
                        color: Colors.green,
                      )),
                      Expanded(
                          child: PopupMenuButton(
                        initialValue: selectedItem,
                        onSelected: (SampleItem item) {
                          setState(() {
                            selectedItem = item;
                          });
                        },
                        itemBuilder: (BuildContext context) =>
                            <PopupMenuEntry<SampleItem>>[
                          PopupMenuItem<SampleItem>(
                            value: SampleItem.itemOne,
                            onTap: () {},
                            child: const Text('View Patient'),
                          ),
                          PopupMenuItem<SampleItem>(
                            value: SampleItem.itemTwo,
                            onTap: () {},
                            child: const Text('Cancel Appointment'),
                          ),
                          PopupMenuItem<SampleItem>(
                            value: SampleItem.itemThree,
                            onTap: () {},
                            child: const Text('Delete Appointment'),
                          ),
                        ],
                      )),
                    ]),
                  ),
                ),
              ],
            ),
            // Add other properties as needed
          );
        },
      ),
    );
  }
}
