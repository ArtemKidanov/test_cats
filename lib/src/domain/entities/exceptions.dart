import 'dart:core';

class BaseException implements Exception {
  const BaseException(this.message);

  final String message;
}

class NoElementsLocallySavedException implements BaseException {
  @override
  String get message =>
      'No Internet connection to load data and no elements were locally '
      'saved. \nPlease establish Internet connection and try later.';
}

class LocallySavedDataCorruptedException implements BaseException {
  @override
  String get message =>
      'The locally saved data was corrupted or something else went wrong. '
      '\nPlease try again later.';
}
