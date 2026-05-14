import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int x = 0;

  void decrement() {
    setState(() {
      x = x - 1;
      if (x < 0) {
        x = 0;
      }
    });
    print('decrement $x');
  }

  void increment() {
    setState(() {
      x = x + 1;
    });
    print('increment $x');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 156, 22, 22),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://i.pinimg.com/236x/76/7f/74/767f7413971f9aa547b2bc5205894729.jpg',
            ),
            //AssetImage('assets/images/img_entrada_restaurante.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Pode entrar!",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              '$x',
              style: const TextStyle(
                fontSize: 100,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: decrement,
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    // padding: const EdgeInsets.all(32),
                    // fixedSize: const Size(100, 100),
                    textStyle: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  child: Text(
                    'Saiu',
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  ),
                ),
                const SizedBox(width: 16),
                TextButton(
                  onPressed: increment,
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    // padding: const EdgeInsets.all(32),
                    // fixedSize: const Size(100, 100),
                  ),
                  child: Text(
                    'Entrou',
                    style: TextStyle(color: Colors.green, fontSize: 16),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
