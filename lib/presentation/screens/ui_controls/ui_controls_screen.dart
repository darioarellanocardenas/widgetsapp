import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = "ui_controls_screen";
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Controles'),
      ),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, submarine, boat }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTrans = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          value: isDeveloper,
          title: const Text('Developer mode'),
          subtitle: const Text('Controles adicionales'),
          onChanged: (value) {
            isDeveloper = !isDeveloper;
            setState(() {});
          },
        ),
        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text('$selectedTrans'),
          children: [
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('Viajar por carro'),
              value: Transportation.car,
              groupValue: selectedTrans,
              onChanged: (value) => setState(() {
                selectedTrans = Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text('By Plane'),
              subtitle: const Text('Viajar por avion'),
              value: Transportation.plane,
              groupValue: selectedTrans,
              onChanged: (value) => setState(() {
                selectedTrans = Transportation.plane;
              }),
            ),
            RadioListTile(
              title: const Text('By Submarine'),
              subtitle: const Text('Viajar por submarino'),
              value: Transportation.submarine,
              groupValue: selectedTrans,
              onChanged: (value) => setState(() {
                selectedTrans = Transportation.submarine;
              }),
            ),
            RadioListTile(
              title: const Text('By Bote'),
              subtitle: const Text('Viajar por bote'),
              value: Transportation.boat,
              groupValue: selectedTrans,
              onChanged: (value) => setState(() {
                selectedTrans = Transportation.boat;
              }),
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('Deseas desayuno?'),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text('Deseas comida?'),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('Deseas cena?'),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}
