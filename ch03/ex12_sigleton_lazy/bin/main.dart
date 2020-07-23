import 'package:ex12_sigleton_lazy/configuration.dart';

void main() {
  {
    final conf1 = Configuration();
    final conf2 = Configuration();

    assert(conf1 == conf2);
    assert(conf1.hashCode == conf2.hashCode);
  }

  {
    Configuration().dbName = 'Oracle';

    print('Database name is ${Configuration().dbName}');
  }
}
