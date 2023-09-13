import 'package:flutter/material.dart';
import 'package:flutter_use_case_vb/use_case/bottom_sheet/bottom_sheet_companent.dart';
import 'package:flutter_use_case_vb/use_case/bottom_sheet/text_field_bottom_sheet.dart';

mixin BottomSheetMixin on State<TextButtomSheetView> {
  //on state<Class> -> o Sınıfın özelliklerini taşıyor
  //business lar buarda yaplıacak
  //set state den kurtul

  //variable
  //final TextEditingController _controller = TextEditingController();
  ValueNotifier<String> titleNotifier = ValueNotifier<String>('');

  //getter method
  //TextEditingController get controller => _controller;

  Future<void> showBottomSheetText() async {
    final respoce = await TextBottomSheetCompanent.show(context);
    if (respoce == null) return;
    titleNotifier.value = respoce;
  }
}
