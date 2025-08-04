// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:example/main.dart';

void main() {
  testWidgets('Kurdish localization demo test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const KurdishLocalizationDemo());
    await tester.pumpAndSettle();

    // Verify that welcome text is displayed
    expect(find.text('Welcome to Kurdish Localization'), findsOneWidget);

    // Verify that Kurdish text is displayed
    expect(
      find.text('سڵاو، ئەمە نموونەیەکی کوردییە بۆ پاکێجی فلاتەر کوردی.'),
      findsOneWidget,
    );
  });
}
