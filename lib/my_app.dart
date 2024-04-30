import 'package:contacts_app/headers.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.yellow),
      home: Scaffold(
        body: Center(
          child: Text(context.watch<Controller>().getCount.toString()),
        ),
        floatingActionButton: Row(
          children: [
            FloatingActionButton(
              onPressed: () {
                context.read<Controller>().decrement();
              },
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: () {
                context.read<Controller>().reset();
              },
              child: const Icon(Icons.lock_reset),
            ),
            FloatingActionButton(
              onPressed: () {
                context.read<Controller>().increment();
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
