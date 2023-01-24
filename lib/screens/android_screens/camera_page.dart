import 'package:flutter/material.dart';

class CameraTabScreen extends StatefulWidget {
  const CameraTabScreen({Key? key}) : super(key: key);

  @override
  State<CameraTabScreen> createState() => _CameraTabScreenState();
}

class _CameraTabScreenState extends State<CameraTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Icon(
          Icons.people_alt_outlined,
          size: 100,
          color: Colors.grey.withOpacity(0.5),
        ),
      ),
    );
  }
}
