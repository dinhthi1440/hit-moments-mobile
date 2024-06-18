// Những cái gì lưu vào local, dùng key - value thì code ở đây

import 'package:get_storage/get_storage.dart';
import 'package:hit_moments/app/core/constants/storage_constants.dart';

final box = GetStorage('hit_moment');

setToken(String value) {
  box.write(StorageConstants.token, value);
}

String getToken() {
  return box.read(StorageConstants.token) ?? '';
}

setLocaleLocal(String languageCode) {
  box.write(StorageConstants.localeLocal, languageCode);
}

String getLocaleLocal() {
  return box.read(StorageConstants.localeLocal) ?? '';
}

setIsFirstTime() {
  box.write(StorageConstants.isFirstTime, false);
}

bool getIsFirstTime() {
  return box.read(StorageConstants.isFirstTime) ?? true;
}

setDarkMode(bool value) {
  box.write(StorageConstants.isDarkMode, value);
}

bool getIsDarkMode() {
  return box.read(StorageConstants.isDarkMode) ?? false;
}
