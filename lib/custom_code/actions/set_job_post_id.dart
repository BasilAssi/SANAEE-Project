// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

void setJobPostId() async {
  // Get a reference to the Firestore instance
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Create a new document in the 'post' collection
  DocumentReference docRef = firestore.collection('post').doc();

  // Get the auto-generated ID
  String jobId = docRef.id;

  // Set the data for the new job post, including the jobId
  await docRef.set({
    'jobId': jobId,
    // other fields...
  });
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
