import 'package:doctors_web/Screens/Dashboard/widgets/AppointRequest/ListAppoint.dart';
import 'package:doctors_web/Screens/Dashboard/widgets/AppointRequest/appointRequest.dart';
import 'package:doctors_web/Screens/Dashboard/widgets/boxWidget.dart';
import 'package:doctors_web/Screens/Dashboard/widgets/upcoming_appointment.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    Map<dynamic, dynamic> cards = {
      "total_patients": [
        "lib/Assets/total_patients.png",
        '200',
        'Total Patients',
        const Color(0XFF20BF55)
      ],
      "total_appointments": [
        "lib/Assets/total_appointments.png",
        '10',
        'Total Appointments',
        const Color(0xFF0B4F6C),
      ],
      "total_checkup": [
        "lib/Assets/total_counselling.png",
        '20',
        'Total Counselling',
        const Color(0xFF595457),
      ],
      "total_today": [
        "lib/Assets/total_today.png",
        '50',
        'Total Today',
        const Color(0xFF01BAEF),
      ],
      "total_walkin": [
        "lib/Assets/total_walkin.png",
        '100',
        'Total Walk-In',
        const Color(0xFF2EBFA5)
      ],
    };

    return LayoutBuilder(
      builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: cards.entries.map((entry) {
                  return Flexible(
                    child: DashboardCards(
                      data1: entry.value[0],
                      data2: entry.value[2],
                      data3: entry.value[1],
                      color: entry.value[3],
                    ),
                  );
                }).toList()),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(12),
                      width: MediaQuery.of(context).size.width / 1.8,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white12),
                          color: Colors.white),
                      child: const UpcomingAppointment(),
                    ),
                    Expanded(
                        flex: 2,
                        child: Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(12),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.white12),
                                color: Colors.white),
                            child: const ListAppoint())),
                  ],
                ),
              ),
            )
          ],
        );
      } else {
        return SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: cards.entries.map((entry) {
                return DashboardCards(
                  data1: entry.value[0],
                  data2: entry.value[2],
                  data3: entry.value[1],
                  color: entry.value[3],
                );
              }).toList()),
        );
      }
    });
  }
}
