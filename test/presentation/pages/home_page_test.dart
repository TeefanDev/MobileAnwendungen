import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gymbuddies/presentation/home/pages/home_page.dart';

void main() {
  testWidgets('HomePage has a title and widgets', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: HomePage()));

    expect(find.text('GymBuddies'), findsOneWidget);
    expect(find.byType(UpcomingTrainingsWidget), findsOneWidget);
    expect(find.byType(RecentTrainingsWidget), findsOneWidget);
    expect(find.byType(StartTrainingButton), findsOneWidget);
  });
}
