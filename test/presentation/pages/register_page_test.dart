import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gymbuddies/presentation/auth/pages/register_page.dart';

void main() {
  testWidgets('RegisterPage has name, email, password fields and a register button', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: RegisterPage()));

    expect(find.byType(TextFormField), findsNWidgets(3));
    expect(find.text('Register'), findsOneWidget);
  });
}
