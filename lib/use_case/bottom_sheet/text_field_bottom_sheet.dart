import 'package:flutter/material.dart';
import 'package:flutter_use_case_vb/use_case/bottom_sheet/bottom_sheet_mixin.dart';

class TextButtomSheetView extends StatefulWidget {
  const TextButtomSheetView({super.key});

  @override
  State<TextButtomSheetView> createState() => _TextButtomSheetViewState();
}

class _TextButtomSheetViewState extends State<TextButtomSheetView>
    with BottomSheetMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ValueListenableBuilder<String>(
          valueListenable: titleNotifier,
          builder: (context, value, child) {
            return Text(value);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showBottomSheetText,
        child: const Icon(Icons.add_task_sharp),
      ),
      body: Column(children: const []),
    );
  }
}
