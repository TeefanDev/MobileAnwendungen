import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gymbuddies/presentation/training/pages/start_training_page.dart';

void main() {
  testWidgets('StartTrainingPage has a title and buttons', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: TrainingStartPage()));

    expect(find.text('Start Training'), findsOneWidget);
    expect(find.text('Start'), findsOneWidget);
    expect(find.text('Pause'), findsOneWidget);
    expect(find.text('Stop'), findsOneWidget);
  });
}
