import 'dart:async';

void main() {
  {
    runZoned(() {
      print(Zone.current[#key]);
    }, zoneValues: {#key: 499});
  }

  {
    runZoned(() {
      Zone.current[#key].add(499);
      print(Zone.current[#key]); // [499]
    }, zoneValues: {#key: []});
  }
}
