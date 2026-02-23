// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/actions/index.dart';

import 'package:screen_secure/screen_secure.dart';

Future disaplemaster() async {
  // تفعيل الحماية القصوى للسكرين شوت والريكورد معاً
  // هذا السطر يغنيك عن كل المحاولات السابقة
  await ScreenSecure.init(
    screenshotBlock: true,
    screenRecordBlock: true,
  );
}
