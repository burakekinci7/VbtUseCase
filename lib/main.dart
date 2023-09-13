import 'package:flutter/material.dart';
import 'package:flutter_use_case_vb/use_case/bottom_sheet/text_field_bottom_sheet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Use Case With vb10',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TextButtomSheetView(),
    );
  }
}
