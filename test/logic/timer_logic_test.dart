import 'package:flutter_test/flutter_test.dart';
import 'package:gymbuddies/presentation/training/pages/start_training_page.dart';

void main() {
  test('Timer should start and stop correctly', () {
    final timerLogic = TimerLogic();
    timerLogic.start();
    expect(timerLogic.isRunning, true);

    timerLogic.stop();
    expect(timerLogic.isRunning, false);
  });
}
