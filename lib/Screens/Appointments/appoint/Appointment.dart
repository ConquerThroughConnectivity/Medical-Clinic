import 'package:doctors_web/Screens/Appointments/appoint/dropdown.dart';
import 'package:doctors_web/Screens/Appointments/widgets/cards.dart';
import 'package:doctors_web/Screens/Appointments/widgets/gridviewappoint.dart';
import 'package:doctors_web/Screens/Dashboard/widgets/AppointRequest/appointRequest.dart';
import 'package:doctors_web/Screens/Dashboard/widgets/schedule.dart';
import 'package:flutter/material.dart';

class MyAppointment extends StatefulWidget {
  const MyAppointment({super.key});

  @override
  State<MyAppointment> createState() => _MyAppointmentState();
}

class _MyAppointmentState extends State<MyAppointment> {
  @override
  Widget build(BuildContext context) {
    List<String> values = [
      "Total Appointments",
      "Completed Counselling",
      "Pending Appointments",
      "Canceled Appointments"
    ];
    List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
    String? _chosenModel;
    List<Color> color = [
      const Color(0XFFFF6A82),
      const Color(0XFFFFD27D),
      const Color(0XFF289E9E),
      const Color(0XFF2279FC),
      const Color(0XFF0858D1),
      const Color(0XFF5368A0),
    ];
    SampleItem? selectedItem;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        backgroundColor: Colors.white,
        leading: const Center(
            child: Text(
          "Appointment",
          style: TextStyle(fontSize: 15),
        )),
        actions: [
          Row(
            children: [
              const Text("Appointments"),
              const SizedBox(
                width: 10,
              ),
              Container(
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                      )),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      items: <String>[
                        'January',
                        'February',
                        'March',
                        'April',
                        'May',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Expanded(child: Text(value)),
                        );
                      }).toList(),
                      onChanged: (val) {
                        setState(() {
                          _chosenModel = val;
                        });
                      },
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "All",
                          style: const TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      value: _chosenModel,
                    ),
                  )),
            ],
          ),
          const SizedBox(
            width: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text("Sort by:"),
              const SizedBox(
                width: 10,
              ),
              Container(
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                      )),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      items: <String>[
                        'January',
                        'February',
                        'March',
                        'April',
                        'May',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Expanded(flex: 2, child: Text(value)),
                        );
                      }).toList(),
                      onChanged: (val) {
                        setState(() {
                          _chosenModel = val;
                        });
                      },
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "All",
                          style: const TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      value: _chosenModel,
                    ),
                  )),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Row(
                children: [
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 3.0,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: SizedBox(
                            width: 250,
                            child: ListView.builder(
                                itemCount: 4,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.white),
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        SizedBox(
                                          height: 50,
                                          child: Padding(
                                            padding: const EdgeInsets.all(2),
                                            child: AppointmentCard(
                                                data1: values[index],
                                                data2: "180"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Container(
                              decoration:
                                  const BoxDecoration(color: Colors.white),
                              padding: const EdgeInsets.all(10),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Pending Appointments",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 220,
                                      child: ListView.builder(
                                          itemCount: 4,
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {
                                            return const Padding(
                                                padding: EdgeInsets.all(15),
                                                child: AppointCard());
                                          }),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Expanded(child: GridViewPort())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
