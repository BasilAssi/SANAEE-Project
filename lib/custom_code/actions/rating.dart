// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future rating(
  String? comment,
  int? starRate,
) async {
  // Add your function code here!

  const userId = 'uid'; // Replace with the actual user ID

  FirebaseFirestore.instance.collection('users').doc('uid').update({
    'comments': FieldValue.arrayUnion([comment]),
  });
}
