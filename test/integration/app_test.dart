import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:gymbuddies/main.dart' as app;

// mayestro test
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('App starts and navigates to the StartTrainingPage', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();

    expect(find.text('GymBuddies'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.fitness_center));
    await tester.pumpAndSettle();

    expect(find.text('Start Training'), findsOneWidget);
  });
}
