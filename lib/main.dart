import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Test Firestore connection
  final firestore = FirebaseFirestore.instance;
  await firestore.collection('test').add({
    'message': 'Hello, Firebase!',
    'timestamp': DateTime.now(),
  });

  // Test Firebase Authentication
  final auth = FirebaseAuth.instance;
  try {
    await auth.signInWithEmailAndPassword(
      email: 'test@example.com',
      password: 'password123',
    );
    print('User signed in: ${auth.currentUser?.email}');
  } catch (e) {
    print('Error signing in: $e');
  }


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School Attendance',
      home: Scaffold(
        appBar: AppBar(title: Text('School Attendance')),
        body: Center(child: Text('Welcome to School Attendance!')),
      ),
    );
  }
}
