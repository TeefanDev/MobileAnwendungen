import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymbuddies/presentation/settings/pages/settings_page.dart';

void main() {
  setUpAll(() {
    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.dumpErrorToConsole(details);
    };
  });

  testWidgets('SettingsPage renders without errors', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(home: SettingsPage()),
      ),
    );

    await tester.pumpAndSettle();

    // Check for basic elements to ensure the page loads
    expect(find.text('Settings'), findsOneWidget);
  });

  testWidgets('SettingsPage has height, weight, and age fields and a Dark Mode switch', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(home: SettingsPage()),
      ),
    );

    await tester.pumpAndSettle();

    // Check for TextFormFields
    expect(find.byType(TextFormField), findsNWidgets(3)); // Three TextFormFields: height, weight, and age
    expect(find.text('Height (cm)'), findsOneWidget);
    expect(find.text('Weight (kg)'), findsOneWidget);
    expect(find.text('Age'), findsOneWidget);

    // Check for Dark Mode switch
    expect(find.text('Dark Mode'), findsOneWidget);
    expect(find.byType(Switch), findsOneWidget); // The Switch widget for Dark Mode
  });
}
