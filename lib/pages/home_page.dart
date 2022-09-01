import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/iu_provider.dart';
import '../widgets/custom_navigatorbar.dart';
import '../widgets/scan_button.dart';
import 'directions_page.dart';
import 'mapas_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Historial'),
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: const Icon(Icons.delete_forever),
          )
        ],
        //backgroundColor: const Color(0xff087E8B),
        elevation: 0,
      ),
      body: _HomePageBody(),
      bottomNavigationBar: const CustomNavigatorBar(),
      floatingActionButton: const ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Obtener el selectedMenuOpt
    final uiProvider = Provider.of<UiProvider>(context);

    //Cambiar para mostrar la página respectiva
    final currentIndex = uiProvider.selectedMenuOpt;

    switch (currentIndex) {
      case 0:
        return MapasPage();

      case 1:
        return DirectionsPage();

      default:
        return MapasPage();
    }
  }
}
