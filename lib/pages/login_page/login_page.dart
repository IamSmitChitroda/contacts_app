import 'package:contacts_app/headers.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key, required this.preferences});
  late SharedPreferences preferences;

  Future<void> login() async {
    preferences.setBool('isFirstTime', false);
  }

  @override
  Widget build(BuildContext context) {
    login();
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage())
                      as String);
            },
            child: const Text(
              'Login',
              style: TextStyle(fontSize: 25),
            )),
      ),
    );
  }
}
