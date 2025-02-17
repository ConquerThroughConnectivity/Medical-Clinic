import 'package:doctors_web/Screens/Dashboard/widgets/schedule.dart';
import 'package:flutter/material.dart';

class GridViewPatient extends StatelessWidget {
  const GridViewPatient({super.key});

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
        backgroundColor: const Color(0xFFF8F9FD),
        body: LayoutBuilder(
          builder: (context, constraints) {
            int crossAxisCount;
            double ratio;
            if (constraints.maxWidth > 600) {
              crossAxisCount = 3; // For larger screens
              ratio = 1.5;
            } else if (constraints.maxWidth > 400) {
              crossAxisCount = 2; // For medium screens
              ratio = 1.4;
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
                ratio = 1.8;
              }
              if (constraints.maxWidth > 334) {
                ratio = 2.0;
              }
              if (constraints.maxWidth < 119) {
                ratio = 0.40;
              }
              if (constraints.maxWidth == 1020) {
                ratio = 2.0;
              }
            }
            print(constraints.maxWidth);

            return GridView.count(
              crossAxisCount: crossAxisCount,
              childAspectRatio: ratio,
              children: List.generate(6, (index) {
                return Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 2.0,
                      margin: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
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
                                          "06 Feb, 11:00 am - 11:45 am",
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          "Individual",
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        )
                                      ],
                                    )),
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
