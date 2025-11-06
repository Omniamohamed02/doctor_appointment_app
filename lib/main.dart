import 'package:doctor_appointment_app/core/di/dependency_injection.dart';
import 'package:doctor_appointment_app/doc_doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/themes/colors_manager.dart';

void main() async {
    await ScreenUtil.ensureScreenSize();
    WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: ColorsManager.primaryBlueColor,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const DocDocApp());
}




