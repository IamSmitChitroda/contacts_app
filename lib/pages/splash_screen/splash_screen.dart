import 'package:contacts_app/headers.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key, required this.preferences});
  late SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => preferences.getBool('isFirstTime') == true
              ? LoginPage(
                  preferences: preferences,
                )
              : const HomePage(),
        ),
      );
    });
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
