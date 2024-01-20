import 'dart:io';

import 'package:developer_assignment/utils/calendar/utils/selection_mode_enum.dart';
import 'package:developer_assignment/utils/calendar/widget/day_tile_builder.dart';
import 'package:developer_assignment/utils/calendar/widget/default_day_tile.dart';
import 'package:developer_assignment/utils/calendar/widget/src/awesome_calendar.dart';
import 'package:developer_assignment/utils/calendar/widget/src/awesome_calendar_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hive/hive.dart';

import 'constant/color.dart';
import 'constant/themes.dart';
import 'core/add_employee/presentation/employeement_form.dart';
import 'di.dart';
import 'core/home_page/presentation/home_page.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'hive/employee_model.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await injectDependencies();
  final dbDir = await path_provider.getApplicationDocumentsDirectory();
  // var path = Directory.current.path;
  // Hive.init(dbDir.path);

  Hive
    ..init(dbDir.path)
    ..registerAdapter(EmployeeModelAdapter());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
      title: 'Employee Assignment',
      theme: kLightTheme,
      home: HomePage(title: 'Employee List'),
    );
  }
}




