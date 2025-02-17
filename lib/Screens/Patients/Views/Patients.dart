import 'dart:async';

import 'package:doctors_web/Screens/Patients/components/gridview.dart';
import 'package:doctors_web/Screens/Patients/components/sizeConfig.dart';
import 'package:expansion_widget/expansion_widget.dart';
import 'package:flutter/material.dart';

import 'dart:math' as math;

class Patient extends StatefulWidget {
  const Patient({super.key});

  @override
  State<Patient> createState() => _PatientState();
}

class _PatientState extends State<Patient> {
  List<bool> isChecks = [false, false, false, false];
  List<bool> gender = [false, false, false];
  // final isCheck = StateProvider<List>((ref) => [false, false, false, false]);
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  StreamSubscription? _streamSubscription;
  @override
  void initState() {
    super.initState();

    _controller.text = "Search Patient";
  }

  @override
  void dispose() {
    _controller.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XffF8F9FD),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 6,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 15, top: 20),
                            child: Text(
                              "Filters",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          ExpansionWidget(
                            initiallyExpanded: false,
                            titleBuilder: (double animationValue, _,
                                bool isExpaned, toogleFunction) {
                              return InkWell(
                                  onTap: () => toogleFunction(animated: true),
                                  child: Padding(
                                    padding: const EdgeInsets.all(18),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Expanded(
                                            flex: 1,
                                            child: Text('Appointment For')),
                                        Transform.rotate(
                                          angle: math.pi * animationValue / 2,
                                          alignment: Alignment.center,
                                          child: const Icon(
                                              Icons.arrow_forward_ios,
                                              size: 20),
                                        )
                                      ],
                                    ),
                                  ));
                            },
                            content: ListView.builder(
                                itemCount: isChecks.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade100,
                                      ),
                                      child: Row(
                                        children: [
                                          Checkbox(
                                              checkColor:
                                                  const Color(0XFF2279FC),
                                              value: isChecks[index],
                                              activeColor: Colors.white,
                                              hoverColor: Colors.white,
                                              onChanged: (val) {
                                                setState(() {
                                                  isChecks[index] = val!;
                                                });
                                              }),
                                          const Expanded(
                                            child: Text(
                                              "Individual Conselling",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                          ),
                          ExpansionWidget(
                              initiallyExpanded: false,
                              titleBuilder: (double animationValue, _,
                                  bool isExpaned, toogleFunction) {
                                return InkWell(
                                    onTap: () => toogleFunction(animated: true),
                                    child: Padding(
                                      padding: const EdgeInsets.all(18),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const Expanded(child: Text('Gender')),
                                          Transform.rotate(
                                            angle: math.pi * animationValue / 2,
                                            alignment: Alignment.center,
                                            child: const Icon(
                                                Icons.arrow_forward_ios,
                                                size: 20),
                                          )
                                        ],
                                      ),
                                    ));
                              },
                              content: ListView.builder(
                                  itemCount: gender.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade100,
                                        ),
                                        child: Row(
                                          children: [
                                            Checkbox(
                                                checkColor:
                                                    const Color(0XFF2279FC),
                                                value: isChecks[index],
                                                activeColor: Colors.white,
                                                hoverColor: Colors.white,
                                                onChanged: (val) {
                                                  setState(() {
                                                    isChecks[index] = val!;
                                                  });
                                                }),
                                            const Expanded(
                                              flex: 3,
                                              child: Text(
                                                "Male",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  })),
                          ExpansionWidget(
                              initiallyExpanded: false,
                              titleBuilder: (double animationValue, _,
                                  bool isExpaned, toogleFunction) {
                                return InkWell(
                                    onTap: () => toogleFunction(animated: true),
                                    child: Padding(
                                      padding: const EdgeInsets.all(18),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const Expanded(
                                              flex: 4, child: Text('City')),
                                          Transform.rotate(
                                            angle: math.pi * animationValue / 2,
                                            alignment: Alignment.center,
                                            child: const Icon(
                                                Icons.arrow_forward_ios,
                                                size: 20),
                                          )
                                        ],
                                      ),
                                    ));
                              },
                              content: ListView.builder(
                                  itemCount: gender.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade100,
                                        ),
                                        child: Row(
                                          children: [
                                            Checkbox(
                                                checkColor:
                                                    const Color(0XFF2279FC),
                                                value: isChecks[index],
                                                activeColor: Colors.white,
                                                hoverColor: Colors.white,
                                                onChanged: (val) {
                                                  setState(() {
                                                    isChecks[index] = val!;
                                                  });
                                                }),
                                            const Expanded(
                                              flex: 4,
                                              child: Text(
                                                "Tagum",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  })),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 13,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: ListTile(
                              minLeadingWidth: 10,
                              leading: const Text(
                                "Search",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                              trailing: Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, bottom: 10, left: 10, right: 10),
                                child: SizedBox(
                                    width: 190,
                                    child: TextField(
                                      cursorColor: Colors.black,
                                      controller: _controller,
                                      decoration: InputDecoration(
                                        prefixIcon: InkWell(
                                            onTap: () {},
                                            child: const Icon(Icons.search)),
                                        border: const OutlineInputBorder(),
                                        // isDense: true,
                                        contentPadding: const EdgeInsets.only(
                                            left: 5.0,
                                            bottom: 1.0,
                                            top: 1.0,
                                            right: 5.0),
                                      ),
                                    )),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 5, right: 5, top: 15, bottom: 15),
                        child: Expanded(
                          child: SizedBox(
                              height: MediaQuery.of(context).size.height / 1.2,
                              child: const GridViewPatient()),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
