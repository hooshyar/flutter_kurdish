import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class _KurdishWidgetLocalizationsDelegate
    extends LocalizationsDelegate<WidgetsLocalizations> {
  const _KurdishWidgetLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'ku';

  @override
  Future<WidgetsLocalizations> load(Locale locale) async {
    return SynchronousFuture<WidgetsLocalizations>(
      KurdishWidgetLocalizations(),
    );
  }

  @override
  bool shouldReload(_KurdishWidgetLocalizationsDelegate old) => false;
}

class KurdishWidgetLocalizations extends WidgetsLocalizations {
  static const LocalizationsDelegate<WidgetsLocalizations> delegate =
      _KurdishWidgetLocalizationsDelegate();

  @override
  TextDirection get textDirection => TextDirection.rtl;

  @override
  String get reorderItemDown => 'بڕۆ خوارەوە';

  @override
  String get reorderItemLeft => 'بڕۆ لای چەپ';

  @override
  String get reorderItemRight => 'بڕۆ لای راست';

  @override
  String get reorderItemToEnd => 'بڕۆ کۆتایی';

  @override
  String get reorderItemToStart => 'بڕۆ سەرەتا';

  @override
  String get reorderItemUp => 'بڕۆ سەرەوە';

  @override
  String get copyButtonLabel => 'کۆپی';

  @override
  String get cutButtonLabel => 'بڕین';

  @override
  String get pasteButtonLabel => 'پەیست';

  @override
  String get selectAllButtonLabel => 'هەمووی دیاریبکە';

  @override
  String get lookUpButtonLabel => 'گەڕان';

  @override
  String get searchWebButtonLabel => 'گەڕان لە وێب';

  @override
  String get shareButtonLabel => 'هاوبەشکردن';

  @override
  String get moreButtonTooltip => 'زیاتر';

  

  @override
  String get alertDialogLabel => 'ئاگادارکردنەوە';

  @override
  String get anteMeridiemAbbreviation => 'پ.ن';

  @override
  String get postMeridiemAbbreviation => 'د.ن';

  @override
  String get timePickerHourModeAnnouncement => 'کاتژمێر دیاریبکە';

  @override
  String get timePickerMinuteModeAnnouncement => 'خولەک دیاریبکە';

  @override
  String get modalBarrierDismissLabel => 'لابردن';

  @override
  String get drawerLabel => 'لیستی پێڕست';

  @override
  String get popupMenuLabel => 'لیستی پۆپئەپ';

  @override
  String get dialogLabel => 'دیالۆگ';

  @override
  String get selectedRowCountTitle => r'$selectedRowCount دانە دیاریکراوە';

  @override
  String get rowsPerPageTitle => 'ڕیزەکان بۆ هەر پەڕەیەک:';

  @override
  String get pageRowsInfoTitle => r'Showing $firstRow–$lastRow of $rowCount';

  @override
  String get nextPageTooltip => 'پەڕەی دواتر';

  @override
  String get previousPageTooltip => 'پەڕەی پێشوو';

  @override
  String get firstPageTooltip => 'یەکەم پەڕە';

  @override
  String get lastPageTooltip => 'کۆتا پەڕە';
}
