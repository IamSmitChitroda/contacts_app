import 'headers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences preferences = await SharedPreferences.getInstance();
  int counter = preferences.getInt('count') ?? 0;
  bool isFirstTime = preferences.setBool('isFirstTime', false) as bool;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) =>
              Controller(count: counter, preferences: preferences),
        ),
      ],
      child: MyApp(preferences: preferences),
    ),
  );
}
