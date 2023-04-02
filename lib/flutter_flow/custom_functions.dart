import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

List<String> countryList() {
  List<String> countries = [
    "United States",
    "United Kingdom",
    "Australia",
    "India",
    "Canada",
    "France",
    "Germany",
    "Japan",
    "Brazil",
    "China",
    "Palestine",
    "The Middle East",
    "Turkey"
  ];
  return countries;
}

String? countryFlag(String? countryName) {
  if (countryName == null) {
    return null;
  }
  final countryInfoJson = {
    "United States": {
      "dial_code": "+1",
      "code": "US",
      "arabic_name": "الولايات المتحدة"
    },
    "United Kingdom": {
      "dial_code": "+44",
      "code": "GB",
      "arabic_name": "المملكة المتحدة"
    },
    "Australia": {"dial_code": "+61", "code": "AU", "arabic_name": "أستراليا"},
    "India": {"dial_code": "+91", "code": "IN", "arabic_name": "الهند"},
    "Canada": {"dial_code": "+1", "code": "CA", "arabic_name": "كندا"},
    "France": {"dial_code": "+33", "code": "FR", "arabic_name": "فرنسا"},
    "Germany": {"dial_code": "+49", "code": "DE", "arabic_name": "ألمانيا"},
    "Japan": {"dial_code": "+81", "code": "JP", "arabic_name": "اليابان"},
    "Brazil": {"dial_code": "+55", "code": "BR", "arabic_name": "البرازيل"},
    "China": {"dial_code": "+86", "code": "CN", "arabic_name": "الصين"},
    "Palestine": {"dial_code": "+970", "code": "PS", "arabic_name": "فلسطين"},
    "The Middle East": {
      "dial_code": "+961",
      "code": "ME",
      "arabic_name": "الشرق الأوسط"
    }
  };

  final countryCode = countryInfoJson[countryName]?["code"];
  if (countryCode != null) {
    final counryCodeInLowerCase = countryCode.toLowerCase();
    return 'https://flagcdn.com/h80/$counryCodeInLowerCase.png';
  }
  return null;
}

String? phoneNumber(String? phone) {
  return "+970$phone";
}
