import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gymbuddies/presentation/training_plans/pages/training_plans_page.dart';

void main() {
  testWidgets('TrainingPlansPage has a title and plan list', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: TrainingPlansPage()));

    expect(find.text('Training Plans'), findsOneWidget);
    expect(find.byType(ListView), findsOneWidget);
  });
}
