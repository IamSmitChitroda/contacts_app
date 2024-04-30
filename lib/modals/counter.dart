class Counter {
  Counter._();
  static final Counter instance = Counter._();
  int count = 0;

  // void increment() {
  //   count++;
  //   notifyListeners();
  // }
  //
  // void decrement() {
  //   count--;
  //   notifyListeners();
  // }
  //
  // void reset() {
  //   count = 0;
  //   notifyListeners();
  // }
  //
  // int get getCount => count;
}
