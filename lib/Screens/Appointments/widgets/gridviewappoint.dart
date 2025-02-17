import 'package:doctors_web/Screens/Dashboard/widgets/schedule.dart';
import 'package:flutter/material.dart';

class GridViewPort extends StatelessWidget {
  const GridViewPort({super.key});

  @override
  Widget build(BuildContext context) {
    SampleItem? selectedItem;
    List<Color> color = [
      const Color(0XFFFF6A82),
      const Color(0XFFFFD27D),
      const Color(0XFF289E9E),
      const Color(0XFF2279FC),
      const Color(0XFF0858D1),
      const Color(0XFF5368A0),
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            int crossAxisCount;
            double ratio;

            if (constraints.maxWidth > 1000) {
              crossAxisCount = 3; // For larger screens
              ratio = 1.5;
            } else if (constraints.maxWidth > 500) {
              crossAxisCount = 2; // For medium screens
              ratio = 1.2;
            } else {
              crossAxisCount = 1; // For smaller screens
              ratio = 1.3;
              if (constraints.maxWidth > 112) {
                ratio = 0.50;
              }
              if (constraints.maxWidth > 119) {
                ratio = 0.50;
              }
              if (constraints.maxWidth == 160) {
                ratio = 0.80;
              }
              if (constraints.maxWidth > 163) {
                ratio = 0.80;
              }
              if (constraints.maxWidth > 232) {
                ratio = 1.0;
              }
              if (constraints.maxWidth > 243) {
                ratio = 1.1;
              }
              if (constraints.maxWidth > 334) {
                ratio = 1.6;
              }
              if (constraints.maxWidth < 119) {
                ratio = 0.40;
              }
            }
            print(constraints.maxWidth);

            return GridView.count(
              crossAxisCount: crossAxisCount,
              childAspectRatio: ratio,
              children: List.generate(6, (index) {
                return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: color[index]),
                                      child: const Center(
                                        child: Text(
                                          "06 Feb, 11:00 am - 11:45 pm",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 0,
                                    child: PopupMenuButton(
                                      initialValue: selectedItem,
                                      onSelected: (SampleItem item) {
                                        // setState(() {
                                        //   selectedItem = item;
                                        // });
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
                                          child:
                                              const Text('Cancel Appointment'),
                                        ),
                                        PopupMenuItem<SampleItem>(
                                          value: SampleItem.itemThree,
                                          onTap: () {},
                                          child:
                                              const Text('Delete Appointment'),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: LayoutBuilder(
                              builder: (context, constraints) {
                                double fontSize = constraints.maxWidth * 0.05;
                                return Text(
                                  'Individual Counselling for feeling stress all the time after office',
                                  // overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: fontSize),
                                );
                              },
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10),
                            child: Divider(
                              height: 2,
                              thickness: 0.9,
                              color: Colors.black,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              spacing: 10,
                              children: [
                                Expanded(
                                    child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2023/01/08/14/22/sample-7705346_640.jpg"),
                                )),
                                Expanded(
                                    flex: 4,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Abu Bakr",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Male, Age: 24",
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        )
                                      ],
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ));
              }),
            );
          },
        ),
      ),
    );
  }
}
