import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

int currentMonthNumber() {
  // Create a function that will return an integer for the current month's number value (1-12)
  return DateTime.now().month;
}

int? currentYearNumber() {
  // Create a function that will return the current year as an integer
// Create a function that will return the current year as an integer
  return DateTime.now().year;
}
