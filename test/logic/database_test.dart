import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:gymbuddies/database/database_helper.dart';

class MockDatabaseHelper extends Mock implements DatabaseHelper {}

void main() {
  test('Fetch recent trainings from the database', () async {
    final dbHelper = MockDatabaseHelper();

    when(dbHelper.getRecentTraining()).thenAnswer((_) async => [
      {'training': 'Push Ups', 'date': '2024-07-10'}
    ]);

    final recentTrainings = await dbHelper.getRecentTraining();
    expect(recentTrainings.length, 1);
    expect(recentTrainings.first['training'], 'Push Ups');
  });
}