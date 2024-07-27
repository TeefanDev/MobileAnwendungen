import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymbuddies/presentation/training/pages/start_training_page.dart';
import 'package:gymbuddies/database/database_helper.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateMocks([DatabaseHelper])
import 'start_training_page_test.mocks.dart';

void main() {
  testWidgets('StartTrainingPage has a title and buttons', (WidgetTester tester) async {
    final mockDatabaseHelper = MockDatabaseHelper();

    // Mock the getTrainingPlans method
    when(mockDatabaseHelper.getTrainingPlans())
        .thenAnswer((_) async => [{'name': 'Plan A'}]);

    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          home: TrainingStartPage(databaseHelper: mockDatabaseHelper),
        ),
      ),
    );

    await tester.pumpAndSettle();

    // Check for the title and buttons
    expect(find.text('Start Training'), findsOneWidget);
    expect(find.text('Start'), findsOneWidget);
    expect(find.text('Pause'), findsOneWidget);
    expect(find.text('Stop'), findsOneWidget);
  });

  testWidgets('StartTrainingPage displays training plans in the dropdown', (WidgetTester tester) async {
    final mockDatabaseHelper = MockDatabaseHelper();

    // Mock the getTrainingPlans method
    when(mockDatabaseHelper.getTrainingPlans())
        .thenAnswer((_) async => [{'name': 'Plan A'}]);

    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          home: TrainingStartPage(databaseHelper: mockDatabaseHelper),
        ),
      ),
    );

    await tester.pumpAndSettle();

    // Tap on the dropdown to open it
    await tester.tap(find.byType(DropdownButton<String>));
    await tester.pumpAndSettle();

    // Check for the dropdown items
    expect(find.text('Plan A'), findsOneWidget);
  });

  testWidgets('StartTrainingPage timer functionality', (WidgetTester tester) async {
    final mockDatabaseHelper = MockDatabaseHelper();

    // Mock the getTrainingPlans method
    when(mockDatabaseHelper.getTrainingPlans())
        .thenAnswer((_) async => [{'name': 'Plan A'}]);

    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          home: TrainingStartPage(databaseHelper: mockDatabaseHelper),
        ),
      ),
    );

    await tester.pumpAndSettle();

    // Select a training plan
    await tester.tap(find.byType(DropdownButton<String>));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Plan A').last);
    await tester.pumpAndSettle();

    // Start the timer
    await tester.tap(find.text('Start'));

    // Check if the timer is running
    await tester.tap(find.text('Pause'));
    expect(find.textContaining('Elapsed Time: 0:00'), findsOneWidget);

    // Pause the timer
    await tester.pump(const Duration(seconds: 2));

    // Check if the timer is paused
    expect(find.textContaining('Elapsed Time: 0:00'), findsOneWidget);

    // Stop the timer
    await tester.tap(find.text('Stop'));
    await tester.pumpAndSettle();

    // // Check if the timer is reset
    expect(find.textContaining('Elapsed Time: 0:00'), findsOneWidget);
  });
}
