import 'package:flutter/material.dart';
import 'package:flutter_use_case_vb/use_case/complex_form/complex_data.dart';

class ComplexFormView extends StatefulWidget {
  const ComplexFormView({Key? key}) : super(key: key);
  @override
  State<ComplexFormView> createState() => _ComplexFormViewState();
}

class _ComplexFormViewState extends State<ComplexFormView> {
  final ComplexData complexData = const ComplexData(name: "Burakss");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Complex Form'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Name',
              hintText: 'Enter your name',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Enter your email',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Enter your password',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Password confirm',
              hintText: 'Enter your password confirm',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Phone Number',
              hintText: 'Enter your Phone Number',
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text('Tamam'))
        ],
      ),
    );
  }
}
