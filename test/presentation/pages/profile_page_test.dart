import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gymbuddies/presentation/profile/pages/profile_page.dart';

void main() {
  testWidgets('ProfilePage has a profile picture and user information', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: ProfilePage()));

    expect(find.byType(CircleAvatar), findsOneWidget);
    expect(find.text('User Name'), findsOneWidget);
  });
}
