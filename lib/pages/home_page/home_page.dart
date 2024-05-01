import 'package:contacts_app/headers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          // context.watch<Controller>().getCount.toString() provider  ne tame three rite kari sako temani aa aek rit che
          Provider.of<Controller>(context, listen: true).getCount.toString(),

          style: const TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            onPressed: () {
              // context.read<Controller>().decrement();
              Provider.of<Controller>(context, listen: false).decrement();
            },
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {
              // context.read<Controller>().reset();
              Provider.of<Controller>(context, listen: false).reset();
            },
            child: const Icon(Icons.lock_reset),
          ),
          FloatingActionButton(
            onPressed: () {
              // context.read<Controller>().increment();
              Provider.of<Controller>(context, listen: false).increment();
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
