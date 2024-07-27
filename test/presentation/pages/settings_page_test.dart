import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gymbuddies/presentation/settings/pages/settings_page.dart';

void main() {
  testWidgets('SettingsPage has a title and settings options', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: SettingsPage()));

    expect(find.text('Settings'), findsOneWidget);
    expect(find.byType(ListView), findsOneWidget);
  });
}
