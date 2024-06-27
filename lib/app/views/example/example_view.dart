import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hit_moments/app/core/config/theme_config.dart';
//import 'package:hit_moments/app/l10n/l10n.dart';
import 'package:hit_moments/app/providers/language_provider.dart';
import 'package:hit_moments/app/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class ExampleView extends StatefulWidget {
  const ExampleView({super.key});

  @override
  State<ExampleView> createState() => _ExampleViewState();
}

class _ExampleViewState extends State<ExampleView> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    print(Platform.localeName);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(AppLocalizations.of(context)!.hello, style: TextStyle(
          fontFamily: 'Dongle',
          fontWeight: FontWeight.bold
        ),),
      ),
      bottomNavigationBar: Container(
        child: Switch(
          onChanged: (value) {
            setState(() {
              _value = value;
              if (value) {
                context.read<LocaleProvider>().changeLocale(const Locale('en'));
                context.read<ThemeProvider>().setThemeData(AppTheme.darkTheme);
              } else {
                context.read<LocaleProvider>().changeLocale(const Locale('vi'));
                context.read<ThemeProvider>().setThemeData(AppTheme.lightTheme);
              }
            });
          },
          value: _value,
        ),
      ),
    );
  }
}
