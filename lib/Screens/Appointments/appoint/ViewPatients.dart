import 'package:flutter/material.dart';

class ViewPatient extends StatefulWidget {
  const ViewPatient({super.key});

  @override
  State<ViewPatient> createState() => _ViewPatientState();
}

class _ViewPatientState extends State<ViewPatient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color(0XFF435B8C)),
                  height: MediaQuery.of(context).size.height / 6,
                  child: ListTile(
                    leading: Expanded(
                        child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2023/01/08/14/22/sample-7705346_640.jpg"),
                    )),
                    title: Expanded(
                        child: Padding(
                      padding: EdgeInsets.only(top: 7, right: 20, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Abu Bakr",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Age: 24",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Consultation: Individual Theory",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Visited: Online",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    )),
                    trailing: InkWell(
                      onTap: () {},
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 9,
                        width: MediaQuery.of(context).size.width / 17,
                        child: Container(
                          height: 35,
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Color(0XFF6A81A9)),
                          child: const Row(
                            children: [
                              Expanded(
                                child: Icon(
                                  Icons.message,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  "Message",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
