import 'package:flutter/material.dart';

class CustomTimePicker {
  static Future<TimeOfDay?> show({
    required BuildContext context,
    required TimeOfDay initialTime,
  }) async {
    return await showTimePicker(
      context: context,
      initialTime: initialTime,
    );
  }
}