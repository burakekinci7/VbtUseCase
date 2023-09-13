import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MediaQueryHome extends StatelessWidget {
  const MediaQueryHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Media Query Application'),
        systemOverlayStyle:
            //MediaQuery.of(context).platformBrightness == Brightness.dark
            MediaQuery.platformBrightnessOf(context) == Brightness.dark
                ? SystemUiOverlayStyle.light
                : SystemUiOverlayStyle.dark,
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .1,
          )
        ],
      ),
    );
  }
}
