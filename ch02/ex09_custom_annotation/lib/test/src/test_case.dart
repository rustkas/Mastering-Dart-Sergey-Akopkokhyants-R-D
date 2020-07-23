import 'engine.dart';
import 'test.dart';

class TestCase {
  Engine engine = Engine();

  @test
  void testStart() {
    engine.start();
    if (!engine.started) throw Exception('Engine must start');
    engine.start();
    // !!! Broken for reason
    //   if (engine.started) throw Exception('Engine must start');
  }

// Stop engine
  @Test()
  void testStop() {
    engine.stop();
    if (engine.started) throw Exception('Engine must stop');
  }

// Warm up engine
  @Test(include: false)
  void testWarmUp() {}
}
