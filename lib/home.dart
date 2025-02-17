import 'package:doctors_web/Screens/Appointments/appoint/Appointment.dart';
import 'package:doctors_web/Screens/Appointments/appoint/ViewPatients.dart';
import 'package:doctors_web/Screens/Chat/views/Chat.dart';
import 'package:doctors_web/Screens/Dashboard/dashboard.dart';
import 'package:doctors_web/Screens/Dashboard/widgets/AppointRequest/appointRequest.dart';
import 'package:doctors_web/Screens/Patients/Views/Patients.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  SideMenuController sideMenu = SideMenuController();
  PageController pageController = PageController();

  @override
  void initState() {
    sideMenu.addListener((index) {
      pageController.jumpToPage(index);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      // appBar: AppBar(
      //   toolbarHeight: 80,
      //   title: InkWell(
      //     borderRadius: BorderRadius.circular(15),
      //     onTap: () {},
      //     child: const Row(
      //       mainAxisSize: MainAxisSize.min,
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         CircleAvatar(
      //             backgroundImage: NetworkImage(
      //                 'https://cdn.pixabay.com/photo/2012/04/02/14/24/bee-24633_960_720.png')),
      //         SizedBox(
      //           width: 10,
      //         ),
      //         Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Text(
      //               "John Doe",
      //               style: TextStyle(color: Colors.black45, fontSize: 10),
      //             ),
      //             Text(
      //               "jaycemico@gmail.com",
      //               style: TextStyle(color: Colors.black, fontSize: 10),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      //   backgroundColor: Colors.white,
      //   automaticallyImplyLeading: false,
      //   actions: [
      //     const SizedBox(
      //       width: 15,
      //     ),
      //     Container(
      //       decoration: BoxDecoration(
      //         color: const Color(0xFFf5f5f5),
      //         borderRadius: BorderRadius.circular(50),
      //       ),
      //       child: IconButton(
      //         onPressed: () {},
      //         icon: Image.asset(
      //           'lib/Assets/notification.png',
      //           fit: BoxFit.cover,
      //           width: 30,
      //         ),
      //       ),
      //     ),
      //     const SizedBox(
      //       width: 15,
      //     ),
      //     Container(
      //       decoration: BoxDecoration(
      //           color: const Color(0xFFf5f5f5),
      //           borderRadius: BorderRadius.circular(50)),
      //       child: IconButton(
      //         onPressed: () {},
      //         icon: Image.asset(
      //           'lib/Assets/message.png',
      //           fit: BoxFit.cover,
      //           width: 30,
      //         ),
      //       ),
      //     ),
      //     const SizedBox(
      //       width: 15,
      //     ),
      //   ],
      // ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SideMenu(
              title: Center(
                child: Image.asset(
                  'lib/Assets/doctors_background.png',
                ),
              ),
              style: SideMenuStyle(
                  backgroundColor: Colors.white,
                  openSideMenuWidth: 230,
                  displayMode: SideMenuDisplayMode.auto,
                  hoverColor: Colors.grey[300],
                  selectedHoverColor: const Color.fromARGB(255, 0, 58, 106),
                  selectedColor: const Color.fromARGB(255, 2, 35, 91),
                  selectedTitleTextStyle: const TextStyle(color: Colors.white),
                  selectedIconColor: Colors.white,
                  itemInnerSpacing: 5.5,
                  itemOuterPadding: const EdgeInsets.all(10)),
              items: [
                SideMenuItem(
                    title: "Dashboard",
                    // icon: const Icon(Icons.dashboard),
                    iconWidget: Image.asset(
                      'lib/Assets/dashboard.png',
                      fit: BoxFit.cover,
                      width: 30,
                    ),
                    onTap: (index, SideMenuController controller) {
                      sideMenu.changePage(index);
                    }),
                SideMenuItem(
                    title: "Appointments",
                    iconWidget: Image.asset(
                      'lib/Assets/appointments.png',
                      fit: BoxFit.cover,
                      width: 30,
                    ),
                    onTap: (index, SideMenuController controller) {
                      sideMenu.changePage(index);
                    }),

                SideMenuItem(
                    title: "Patients",
                    iconWidget: Image.asset(
                      'lib/Assets/patients.png',
                      fit: BoxFit.cover,
                      width: 30,
                    ),
                    onTap: (index, SideMenuController controller) {
                      sideMenu.changePage(index);
                    }),
                // SideMenuItem(
                //     title: "Medical Records",
                //     iconWidget: Image.asset(
                //       'lib/Assets/medical-records.png',
                //       fit: BoxFit.cover,
                //       width: 30,
                //     ),
                //     onTap: (index, SideMenuController controller) {
                //       sideMenu.changePage(index);
                //     }),
                // SideMenuItem(
                //     title: "Treatment Plans",
                //     iconWidget: Image.asset(
                //       'lib/Assets/treatment.png',
                //       fit: BoxFit.cover,
                //       width: 30,
                //     ),
                //     onTap: (index, SideMenuController controller) {
                //       sideMenu.changePage(index);
                //     }),
                // SideMenuItem(
                //     title: "Medications",
                //     iconWidget: Image.asset(
                //       'lib/Assets/medications.png',
                //       fit: BoxFit.cover,
                //       width: 30,
                //     ),
                //     onTap: (index, SideMenuController controller) {
                //       sideMenu.changePage(index);
                //     }),
                // SideMenuItem(
                //     title: "Medical History",
                //     iconWidget: Image.asset(
                //       'lib/Assets/medical-history.png',
                //       fit: BoxFit.cover,
                //       width: 30,
                //     ),
                //     onTap: (index, SideMenuController controller) {
                //       sideMenu.changePage(index);
                //     }),
                SideMenuItem(
                    title: "Messages",
                    iconWidget: Image.asset(
                      'lib/Assets/message.png',
                      fit: BoxFit.cover,
                      width: 30,
                    ),
                    onTap: (index, SideMenuController controller) {
                      sideMenu.changePage(index);
                    }),
                // SideMenuItem(
                //     title: "Notification",
                //     iconWidget: Image.asset(
                //       'lib/Assets/notification.png',
                //       fit: BoxFit.cover,
                //       width: 30,
                //     ),
                //     onTap: (index, SideMenuController controller) {
                //       sideMenu.changePage(index);
                //     }),
                // SideMenuItem(
                //     title: "Diagnoses",
                //     iconWidget: Image.asset(
                //       'lib/Assets/diagnose.png',
                //       fit: BoxFit.cover,
                //       width: 30,
                //     ),
                //     onTap: (index, SideMenuController controller) {
                //       sideMenu.changePage(index);
                //     }),
                // SideMenuItem(
                //     title: "Prescriptions",
                //     iconWidget: Image.asset(
                //       'lib/Assets/prescription.png',
                //       fit: BoxFit.cover,
                //       width: 30,
                //     ),
                //     onTap: (index, SideMenuController controller) {
                //       sideMenu.changePage(index);
                //     }),
                // SideMenuItem(
                //     iconWidget: Image.asset(
                //       'lib/Assets/treatment.png',
                //       fit: BoxFit.cover,
                //       width: 30,
                //     ),
                //     title: "Treatment Notes",
                //     onTap: (index, SideMenuController controller) {
                //       sideMenu.changePage(index);
                //     }),
              ],
              controller: sideMenu),
          const VerticalDivider(
            width: 0,
          ),
          Expanded(
              child: PageView(
            controller: pageController,
            // ignore: prefer_const_literals_to_create_immutables, prefer_const_constructors
            children: [
              const Dashboard(),
              // const ViewPatient(),
              const MyAppointment(),
              const Patient(),
              const Chat(),
            ],
          )),
        ],
      ),
    );
  }
}
