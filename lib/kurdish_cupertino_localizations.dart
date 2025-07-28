import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class KurdishCupertinoLocalizations implements CupertinoLocalizations {
  const KurdishCupertinoLocalizations();

  static const List<String> _shortWeekdays = <String>[
    'یەکشەممە',
    'دووشەممە',
    'سێشەممە',
    'چوارشەممە',
    'پێنجشەممە',
    'هەینی',
    'شەممە',
  ];

  static const List<String> _shortMonths = <String>[
    'کانونی دووەم',
    'شوبات',
    'ئازار',
    'نیسان',
    'ئایار',
    'حوزەیران',
    'تەمووز',
    'ئاب',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانونی یەکەم',
  ];

  static const List<String> _months = <String>[
    'کانونی دووەم',
    'شوبات',
    'ئازار',
    'نیسان',
    'ئایار',
    'حوزەیران',
    'تەمووز',
    'ئاب',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانونی یەکەم',
  ];

  @override
  String get alertDialogLabel => 'ئاگاداری';

  @override
  String get anteMeridiemAbbreviation => 'پ.ن';

  @override
  String get postMeridiemAbbreviation => 'د.ن';

  @override
  String get copyButtonLabel => 'کۆپی';

  @override
  String get cutButtonLabel => 'بڕین';

  @override
  String get pasteButtonLabel => 'پەیست';

  @override
  String get selectAllButtonLabel => 'هەمووی دیاریبکە';

  String get searchTextFieldPlaceholder => 'گەڕان';

  @override
  String get modalBarrierDismissLabel => 'لابردن';

  @override
  String datePickerYear(int year) => year.toString();

  @override
  String datePickerMonth(int month) => _months[month - 1];

  @override
  String datePickerDayOfMonth(int day, [int? weekDay]) => day.toString();

  @override
  String datePickerHour(int hour) => hour.toString();

  @override
  String datePickerMinute(int minute) => minute.toString().padLeft(2, '0');

  @override
  String datePickerMediumDate(DateTime date) {
    return '${_shortWeekdays[date.weekday - 1]}, ${_shortMonths[date.month - 1]} ${date.day}';
  }

  @override
  String timerPickerHour(int hour) => hour.toString();

  @override
  String timerPickerMinute(int minute) => minute.toString();

  @override
  String timerPickerSecond(int second) => second.toString();

  @override
  String get todayLabel => 'ئەمڕۆ';

  static Future<CupertinoLocalizations> load(Locale locale) {
    return SynchronousFuture<CupertinoLocalizations>(
      const KurdishCupertinoLocalizations(),
    );
  }

  static const LocalizationsDelegate<CupertinoLocalizations> delegate =
      _KurdishCupertinoLocalizationsDelegate();

  @override
  DatePickerDateOrder get datePickerDateOrder => DatePickerDateOrder.dmy;

  @override
  DatePickerDateTimeOrder get datePickerDateTimeOrder =>
      DatePickerDateTimeOrder.date_time_dayPeriod;

  @override
  String get lookUpButtonLabel => 'گەڕان';

  @override
  String get menuDismissLabel => 'داخستنی پێڕست';

  @override
  String get noSpellCheckReplacementsLabel =>
      'هیچ جێگرەوەیەکی پشکنینی ڕێنووسی نییە';

  @override
  String get searchWebButtonLabel => 'گەڕان لە وێب';

  @override
  String get shareButtonLabel => 'هاوبەشکردن';

  @override
  String tabSemanticsLabel({required int tabIndex, required int tabCount}) {
    return 'خشتەبەندی $tabIndex لە $tabCount';
  }

  @override
  String timerPickerHourLabel(int hour) => 'کاتژمێر';

  @override
  String timerPickerMinuteLabel(int minute) => 'خولەک';

  @override
  String timerPickerSecondLabel(int second) => 'چرکە';

  @override
  String get clearButtonLabel => 'پاککردنەوە';

  @override
  String datePickerHourSemanticsLabel(int hour) => '$hour کاتژمێر';

  @override
  String datePickerMinuteSemanticsLabel(int minute) => '$minute خولەک';

  @override
  String datePickerStandaloneMonth(int monthIndex) => _months[monthIndex - 1];

  @override
  String get searchTextFieldPlaceholderLabel => 'گەڕان';

  @override
  List<String> get timerPickerHourLabels => const <String>['کاتژمێر'];

  @override
  List<String> get timerPickerMinuteLabels => const <String>['خولەک'];

  @override
  List<String> get timerPickerSecondLabels => const <String>['چرکە'];

  @override
  String get backButtonLabel => 'گەڕانەوە';

  @override
  String get cancelButtonLabel => 'لابردن';
}

class _KurdishCupertinoLocalizationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const _KurdishCupertinoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'ku';

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      KurdishCupertinoLocalizations.load(locale);

  @override
  bool shouldReload(_KurdishCupertinoLocalizationsDelegate old) => false;

  @override
  String toString() => 'DefaultCupertinoLocalizations.delegate(ku_IQ)';
}
