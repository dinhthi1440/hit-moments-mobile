import 'package:flutter/material.dart';
import 'package:hit_moments/app/l10n/l10n.dart';

class ExampleView extends StatefulWidget {
  const ExampleView({super.key});

  @override
  State<ExampleView> createState() => _ExampleViewState();
}

class _ExampleViewState extends State<ExampleView> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(S.of(context).hello),
      ),
      bottomNavigationBar: Container(
        child: Switch(
          onChanged: (value) {
            setState(() {
              _value = value;
              print(value);
            });
          },
          value: _value,
        ),
      ),
    );
  }
}
