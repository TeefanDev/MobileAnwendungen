import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gymbuddies/presentation/home/pages/home_page.dart';
import 'package:gymbuddies/presentation/home/widgets/recent_trainings_widget.dart';
import 'package:gymbuddies/presentation/home/widgets/start_training_button.dart';
import 'package:gymbuddies/presentation/home/widgets/upcoming_trainings_widget.dart';

void main() {
  testWidgets('HomePage has a title and widgets', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomePage()));

    await tester.pumpAndSettle();

    expect(find.text('GymBuddies'), findsOneWidget);
    expect(find.byType(UpcomingTrainingsWidget), findsOneWidget);
    expect(find.byType(RecentTrainingsWidget), findsOneWidget);
    expect(find.byType(StartTrainingButton), findsOneWidget);
  });
}
