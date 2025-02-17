import 'package:doctors_web/Screens/Dashboard/widgets/circleAvatar.dart';
import 'package:flutter/material.dart';

class AppointCard extends StatelessWidget {
  const AppointCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 4,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Colors.black, width: 1.5, strokeAlign: 1.5)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 15,
                  children: [
                    Expanded(
                        child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2023/01/08/14/22/sample-7705346_640.jpg"),
                    )),
                    Expanded(
                      flex: 3,
                      child: SizedBox(
                        height: 60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // direction: Axis.vertical,
                          children: [
                            Expanded(
                              child: Text(
                                "blank name",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "06 Feb, 11:00am",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Individual Conselling",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width / 15,
                          decoration: BoxDecoration(
                              color: const Color(0XFFFFF0F3),
                              borderRadius: BorderRadius.circular(10)),
                          alignment: Alignment.center,
                          child: const Text(
                            "Reject",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width / 15,
                          decoration: BoxDecoration(
                              color: const Color(0xFFF0F2FE),
                              borderRadius: BorderRadius.circular(10)),
                          alignment: Alignment.center,
                          child: const Text(
                            "Accept",
                            style: TextStyle(
                              color: Color(0xFF2596be),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
