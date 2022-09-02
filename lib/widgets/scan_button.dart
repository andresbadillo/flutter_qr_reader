import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 1,
      //backgroundColor: const Color(0xff087E8B),
      onPressed: (() async {
        // String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        //   '#3D8BEF',
        //   'Cancelar',
        //   false,
        //   ScanMode.QR,
        // );
        final barcodeScanRes = 'https://www.andresbadillo.co/';
        print(barcodeScanRes);
      }),
      child: const Icon(Icons.qr_code),
    );
  }
}
