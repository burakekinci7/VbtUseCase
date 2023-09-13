import 'package:flutter/material.dart';

class TextBottomSheetCompanent extends StatelessWidget {
  TextBottomSheetCompanent({super.key});
  //controller
  final TextEditingController _controller = TextEditingController();
  //variable

  static Future<String?> show(BuildContext context) {
    return showModalBottomSheet<String>(
      context: context,
      isDismissible: true,
      builder: (context) {
        return TextBottomSheetCompanent();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _controller,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context, _controller.text);
          },
          child: Text('Save'),
        ),
      ],
    );
  }
}
