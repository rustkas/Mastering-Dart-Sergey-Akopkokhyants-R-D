import 'package:ex09_custom_annotation/executor.dart';
import 'package:ex09_custom_annotation/inspection.dart';
import 'package:ex09_custom_annotation/test.dart';

void main() {
  {
    var inspector = TypeInspector(TestCase);
    List methods = inspector.getAnnotatedMethods('test');
    print(methods);
  }
  {
    var inspector = TypeInspector(TestCase);
    List methods = inspector.getAnnotatedMethods(test);
    var invoker = MethodInvoker();
    methods.forEach((method) {
      try {
        invoker(method);
        print('Success ${method.simpleName}');
      } on Exception catch (ex) {
        print(ex);
      } on Error catch (ex) {
        print('$ex : ${ex.stackTrace}');
      }
    });
  }
}
