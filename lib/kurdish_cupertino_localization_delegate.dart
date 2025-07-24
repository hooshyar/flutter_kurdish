
import 'dart:async';

import 'package:flutter/cupertino.dart';

import 'kurdish_cupertino_localizations.dart';

class KurdishCupertinoLocalizationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const KurdishCupertinoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'ku';

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      KurdishCupertinoLocalizations.load(locale);

  @override
  bool shouldReload(KurdishCupertinoLocalizationsDelegate old) => false;

  @override
  String toString() => 'DefaultCupertinoLocalizations.delegate(ku_IQ)';
}
