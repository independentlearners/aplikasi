import 'package:flutter/material.dart'; // mengimport paket material

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  // kelas MyApp memperluas dari widget stateless
  const MyApp({super.key}); // super constructor dari MyApp

  @override // menimpa dari core StatelessWidget
  Widget build(BuildContext context) => MaterialApp(
    // fungsi build dengan argument context bertipe data BuildContext
    debugShowCheckedModeBanner: false, //
    title: 'Judul Bar', // khusus judul untuk bar di website.
    theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
    home: const MyHomePage(title: 'Halaman utama'),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(
      () {
        _counter++;
      },
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(
        widget.title,
      ),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: .center,
        children: [
          const Text(
            'Klik disini',
          ),
          Text('$_counter', style: Theme.of(context).textTheme.headlineMedium),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: _incrementCounter,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    ),
  );
}
