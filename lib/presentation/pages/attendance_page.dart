import 'package:early_bird/core/constants/app_constants.dart';
import 'package:early_bird/presentation/widgets/card_sneaker.dart';
import 'package:early_bird/presentation/widgets/star_rating.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/attendance_provider.dart';
import '../widgets/student_details_widget.dart';

class AttendancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<AttendanceProvider>(
          builder: (context, provider, child) {
            if (provider.isLoading) {
              return CircularProgressIndicator();
            }
            if (provider.studentData == null) {
              return Text(
                AppConstants.scanYourFinger,
                style: Theme.of(context).textTheme.headlineLarge,
              );
            }
            return StarRatingExample1();
              CardSneaker();
              // StudentDetailsWidget(student: provider.studentData!);

          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Provider.of<AttendanceProvider>(
            context,
            listen: false,
          ).fetchStudent();
        },
        child: AppConstants.iconFingerPrint,
      ),
    );
  }
}
