import 'package:ex07_named_constructor/collection.dart';

void main(List<String> arguments) {
  var data = [1, 2, 3];
  var collection = Collection();

  data.forEach((item) {
    collection.add(item);
  });
  print(collection);
}
