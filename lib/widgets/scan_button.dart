import 'package:flutter/material.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (() {}),
      elevation: 1,
      //backgroundColor: const Color(0xff087E8B),
      child: const Icon(Icons.qr_code),
    );
  }
}
