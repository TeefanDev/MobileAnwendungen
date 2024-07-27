import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gymbuddies/presentation/profile/pages/profile_page.dart';

void main() {
  testWidgets('ProfilePage has name and email fields and a Change Password button', (WidgetTester tester) async {
    // Build the ProfilePage widget
    await tester.pumpWidget(const MaterialApp(home: ProfilePage()));

    await tester.pumpAndSettle();

    expect(find.byType(TextField), findsNWidgets(2));
    expect(find.text('Name'), findsOneWidget);
    expect(find.text('Email Address'), findsOneWidget);
    expect(find.byType(ElevatedButton), findsOneWidget);
    expect(find.text('Change Password'), findsOneWidget);
  });
}
