import 'package:flutter/material.dart';

import '../../components/radioButton.dart';


class BizProfile extends StatefulWidget {
  const BizProfile({super.key});

  @override
  State<BizProfile> createState() => _BizProfileState();
}
bool _isSelected1 = true;
bool _isSelected2 = false;


class _BizProfileState extends State<BizProfile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('BizProfile'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
        ),
      ),
    );
  }}