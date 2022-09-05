import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/utils/utils.dart';

import '../providers/scan_list_provider.dart';

class ScanTiles extends StatelessWidget {
  final String tipo;

  const ScanTiles({
    Key? key,
    required this.tipo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scaListProvider = Provider.of<ScanListProvider>(context);
    final scans = scaListProvider.scans;

    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: scans.length,
      itemBuilder: ((context, index) => Dismissible(
            key: UniqueKey(),
            background: Container(
              color: Colors.red,
            ),
            onDismissed: (DismissDirection direction) {
              Provider.of<ScanListProvider>(context, listen: false)
                  .borrarScanPorId(scans[index].id!);
            },
            child: ListTile(
              leading: Icon(
                tipo == 'http' ? Icons.compass_calibration : Icons.map,
                color: Theme.of(context).primaryColor,
              ),
              title: Text(scans[index].valor),
              subtitle: Text(scans[index].id.toString()),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: (() => launchURL(context, scans[index])),
            ),
          )),
    );
  }
}
