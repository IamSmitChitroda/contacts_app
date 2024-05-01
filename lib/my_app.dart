import 'package:contacts_app/headers.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.preferences});
  final SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.yellow),
      home: SplashScreen(preferences: preferences),
    );
  }
}
