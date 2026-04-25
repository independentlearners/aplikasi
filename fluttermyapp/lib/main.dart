import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Widget ini adalah root aplikasi anda.
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Judul Bar', // khusus judul untuk bar di website.
    theme: ThemeData(
      // Ini adalah tema untuk aplikasi anda.

      // COBA INI: Jalankan pengujian aplikasi anda dengan "flutter run".
      // Anda akan melihat toolbar pada aplikasi berwarna ungu.
      // Selanjutnya, tanpa keluar dari aplikasi, uji perubahan pada seedColor
      // di colorScheme yang terletak pada Colors.green dan kemudian mohon "hot reload"
      // (simpan perubahan anda dengan menekan tombol 'hot reload' atau tekan "r" jika anda
      // menggunakan baris perintah untuk memulai aplikasi).
      //
      // Perhatikan bahwa counter tidak direset kembali menjadi kosong;
      // status aplikasi tidak akan hilang selama dimuat ulang.
      // Untuk mereset status aplikasi, gunakan hot restart.
      //
      // Ini bekerja untuk kode bukan hanya nilai:
      // Mengubah sebagian besar kode dapat diuji dengan hanya hot reload.
      colorScheme: .fromSeed(seedColor: Colors.deepPurple),
    ),
    home: const MyHomePage(title: 'Halaman utama'),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // Ini adalah widget halaman utama pada aplikasi anda.
  // Widget itu adalah stateful, itu berarti ia memiliki objek keadaan (dijelaskan dibawah)
  // yang berisikan fields yang mempengaruhi bagaimana ia melihat.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  // Ini adalah kelas konfigurasi untuk state/keadaan (dalam kasus ini adalah judul)
  // yang disediakan oleh induk (dalam kasus ini adalah widget App) dan digunakan oleh fungsi build pada State.
  // Fields dalam subclass widget akan selalu ditandai "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // Panggil setState ini untuk memberitahu kerangka Flutter bahwa sesuatu dalam State/keadaan
      // telah diubah, itu yang menyebabkan fungsi build menjalankan ulang dibawah
      // sehingga tampilan akan mencerminkan nilai terbaru.
      // Jika kita mengubah _counter tanpa memanggil setState(),
      // maka fungsi build tidak akan lagi dipanggil dan dengan demikian
      // tidak akan memunculkan apapun

      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) =>
      // This method is rerun every time setState is called, for instance as done
      // by the _incrementCounter method above.
      //
      // Metode ini dijalankan ulang setiap kali setState dipanggil untuk instansi yang dilanjutkan
      // melalui metode _incrementCounter diatas.
      // The Flutter framework has been optimized to make rerunning build methods
      // fast, so that you can just rebuild anything that needs updating rather
      // than having to individually change instances of widgets.
      //
      // Kerangka flutter telah dioptimalkan untuk membuat fungsi build dijalankan ulang dengan cepat,
      // jadi yang dapat anda bangun ulang hanya sesuatu yang pada dasrnya membutuhkan pembaruan
      // daripada mengubah instansi secara individu pada widgets.
      Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          //
          // COBA INI: Coba ubah warna ini menjadi warna khusus (pada Colors.amber, mungkin?)
          // dan memicu hot reload untuk melihat AppBar berubah warna ketika warna yang lain sama-sama terdiam.
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          //
          // Disini kita mengambil sebuah nilai dari objek MyHomePage yang dibuat
          // melalui method App.build, dan menggunakannya untuk mengatur judul appbar.
          title: Text(widget.title,),
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          //
          // Widget layout tengah. Itu diambil dari anak tunggal yang diposisikan di tengah induknya
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Kolom adalah widget layout juga. Itu diambil dari daftar anak-anak
            // dan mereka diatur secara vertikal. Secara default, ukurannya akan
            // diukur sendiri untuk kebugaran anak-anaknya secara horizontal.

            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            //
            // Kolom memiliki varian properti untuk mengontrol bagaimana ia diukur
            // dengan sendirinya dan bagaimana memposisikan anak-anaknya.
            // Disini kita akan menggunakan mainAxisAlignment untuk menengahkan
            // anak-anak secara vertikal; mainAxisAlignment disini adalah sumbu vertikal
            // tetapi kolom-kolom adalah vertikal (sumbu sebrang akan menjadi horizontal).

            // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
            // action in the IDE, or press "p" in the console), to see the
            // wireframe for each widget.
            //
            // COBA INI: Minta "pelukis debug" (memilih aksi "Toggle Debug Paint" di IDE,
            // atau tekan "p" di konsol), untuk melihat kerangka bingka dari setiap widget.
            mainAxisAlignment: .center,
            children: [
              const Text('Klik disini',),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
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
