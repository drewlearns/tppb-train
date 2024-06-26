// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert'; // Import this for base64Encode

Future<String> imageToBase64String(FFUploadedFile? imageUploaded) async {
  // Convert image to base64 string and return it
  if (imageUploaded == null) {
    return "";
  }

  // Assuming FFUploadedFile has a byte storage or provides access to it
  // Modify this part according to the actual implementation of FFUploadedFile
  final Uint8List? bytes =
      imageUploaded.bytes; // If FFUploadedFile has bytes property

  // Ensure bytes are not null before encoding
  if (bytes == null) {
    return "";
  }

  final base64String = base64Encode(bytes);

  return base64String;
}
