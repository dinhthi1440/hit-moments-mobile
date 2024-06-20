import 'package:flutter/material.dart';
import 'package:hit_moments/app/datasource/local/storage.dart';

class LocaleProvider extends ChangeNotifier {
  //Locale locale = getLocaleLocal();
  Locale locale = getLocaleLocal();

  // fetchLocale() {
  //   locale = getLocaleLocal();
  // }

  changeLocale(Locale newLocale) {
    locale = newLocale;
    setLocaleLocal(newLocale.languageCode);
    notifyListeners();
  }
}
