import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:gymbuddies/database/database_helper.dart';
import 'database_test.mocks.dart';

@GenerateMocks([DatabaseHelper])
void main() {
  late MockDatabaseHelper mockDbHelper;

  setUp(() {
    mockDbHelper = MockDatabaseHelper();
  });

  test('Fetch upcoming trainings from the database', () async {
    // Arrange: Setup the mock to return a list of trainings as a Future
    when(mockDbHelper.getUpcomingTrainings()).thenAnswer(
      (_) async => [
        {'training': 'Biking with Tom', 'date': '2024-05-01', 'training_plan_id': 1, 'contact_id': 1}
      ],
    );

    // Act: Call the method
    final upcomingTrainings = await mockDbHelper.getUpcomingTrainings();

    // Assert: Verify the results
    expect(upcomingTrainings.length, 1);
    expect(upcomingTrainings.first['training'], 'Biking with Tom');
    expect(upcomingTrainings.first['date'], '2024-05-01');
    expect(upcomingTrainings.first['training_plan_id'], 1);
    expect(upcomingTrainings.first['contact_id'], 1);
  });
}
