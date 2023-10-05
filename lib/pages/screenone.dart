import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  final String? uName;
  // final String params2;
  const ContactUs({super.key,required this.uName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("&14534$uName"),
      ),
    );
  }
}
