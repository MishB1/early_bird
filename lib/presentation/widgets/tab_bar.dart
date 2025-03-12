import 'package:early_bird/presentation/pages/attendance_page.dart';
import 'package:early_bird/presentation/pages/registration_page.dart';
import 'package:flutter/material.dart';

import '../../core/constants/app_constants.dart';

class TabBarController extends StatelessWidget {
  const TabBarController({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: AppConstants.tabBarControllerLength,
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppConstants.studentManagement),
          centerTitle: AppConstants.isTrue,
          bottom: TabBar(
            tabs: [
              Tab(icon:AppConstants.iconPeople ),
              Tab(icon:AppConstants.iconPersonAdd),
            ],
          ),
        ),
        body: TabBarView(children: [AttendancePage(), RegistrationPage()]),
      ),
    );
  }
}
