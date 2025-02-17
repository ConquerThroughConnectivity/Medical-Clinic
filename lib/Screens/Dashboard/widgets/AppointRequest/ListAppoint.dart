import 'package:doctors_web/Screens/Dashboard/widgets/AppointRequest/appointRequest.dart';
import 'package:flutter/material.dart';

class ListAppoint extends StatefulWidget {
  const ListAppoint({super.key});

  @override
  State<ListAppoint> createState() => _ListAppointState();
}

class _ListAppointState extends State<ListAppoint> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return const Padding(
              padding: EdgeInsets.all(10), child: AppointCard());
        });
  }
}
