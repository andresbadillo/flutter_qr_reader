import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/iu_provider.dart';

class CustomNavigatorBar extends StatelessWidget {
  const CustomNavigatorBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.selectedMenuOpt;

    return BottomNavigationBar(
      onTap: ((int i) => uiProvider.selectedMenuOpt = i),
      currentIndex: currentIndex,
      elevation: 0,
      // backgroundColor: Color(0xff087E8B),
      //fixedColor: const Color(0xff087E8B),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Mapa',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration),
          label: 'Direcciones',
        ),
      ],
    );
  }
}
