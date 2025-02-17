import 'package:doctors_web/Screens/Dashboard/widgets/appointment_card.dart';
import 'package:doctors_web/Screens/Dashboard/widgets/schedule.dart';
import 'package:flutter/material.dart';
import 'package:horizontal_week_calendar/horizontal_week_calendar.dart';

class UpcomingAppointment extends StatefulWidget {
  const UpcomingAppointment({super.key});

  @override
  State<UpcomingAppointment> createState() => _UpcomingAppointmentState();
}

class _UpcomingAppointmentState extends State<UpcomingAppointment> {
  late DateTime _selectedDate;
  late List<DateTime> _eventDates;

  @override
  void initState() {
    super.initState();
    _resetSelectedDate();
  }

  void _resetSelectedDate() {
    _selectedDate = DateTime.now().add(const Duration(days: 2));
    _eventDates = [
      DateTime.now().add(const Duration(days: 2)),
      DateTime.now().add(const Duration(days: 3)),
      DateTime.now().add(const Duration(days: 4)),
      DateTime.now().subtract(const Duration(days: 4)),
    ];
  }

  var selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    'Upcoming Appointments',
                    softWrap: true,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            HorizontalWeekCalendar(
              minDate: DateTime(2023, 12, 31),
              maxDate: DateTime(2025, 5, 31),
              initialDate: DateTime.now(),
              onDateChange: (date) {
                setState(() {
                  selectedDate = date;
                });
              },
              showTopNavbar: true,
              monthFormat: "MMMM yyyy",
              showNavigationButtons: true,
              weekStartFrom: WeekStartFrom.Monday,
              borderRadius: BorderRadius.circular(7),
              activeBackgroundColor: const Color.fromARGB(255, 2, 35, 91),
              activeTextColor: Colors.white,
              inactiveBackgroundColor:
                  const Color.fromARGB(255, 16, 1, 42).withOpacity(0.4),
              inactiveTextColor: Colors.white,
              disabledTextColor: Colors.grey,
              disabledBackgroundColor: Colors.grey.withOpacity(.3),
              activeNavigatorColor: const Color.fromARGB(255, 16, 1, 42),
              inactiveNavigatorColor: Colors.grey,
              monthColor: const Color.fromARGB(255, 16, 1, 42),
            ),
            const Divider(
              thickness: 1.0,
              color: Colors.black,
            ),
            const SizedBox(
              height: 5,
            ),
            const AppointmentCard(),
            const Schedule()
          ],
        ));
  }
}
