import 'package:contacts_app/headers.dart';

class Controller extends ChangeNotifier {
  Controller({required int count, required this.preferences}) {
    Counter.instance.count = count;
  }
  late SharedPreferences preferences;

  Future<void> increment() async {
    Counter.instance.count++;
    await preferences.setInt('count', Counter.instance.count);
    notifyListeners();
  }

  Future<void> decrement() async {
    Counter.instance.count--;
    await preferences.setInt('count', Counter.instance.count);
    notifyListeners();
  }

  Future<void> reset() async {
    Counter.instance.count = 0;
    await preferences.setInt('count', Counter.instance.count);
    notifyListeners();
  }

  int get getCount => Counter.instance.count;
}
