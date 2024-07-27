import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gymbuddies/presentation/calendar/pages/calendar_page.dart';

void main() {
  testWidgets('CalendarPage has a calendar widget', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: CalendarPage()));

    expect(find.byType(CalendarWidget), findsOneWidget);
  });
}
