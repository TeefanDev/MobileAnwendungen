import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gymbuddies/presentation/contacts/pages/contacts_page.dart';

void main() {
  testWidgets('ContactsPage has a title and contact list', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: ContactsPage()));

    expect(find.text('Contacts'), findsOneWidget);
    expect(find.byType(ListView), findsOneWidget);
  });
}
