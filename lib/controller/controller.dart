import 'package:contacts_app/headers.dart';

class Controller extends ChangeNotifier {
  void increment() {
    Counter.instance.count++;
    notifyListeners();
  }

  void decrement() {
    Counter.instance.count--;
    notifyListeners();
  }

  void reset() {
    Counter.instance.count = 0;
    notifyListeners();
  }

  int get getCount => Counter.instance.count;
}
