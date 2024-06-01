// ignore: file_names
import 'package:flutter/material.dart';
import 'package:assesment2/1login.dart'; //import halaman loginn
import 'package:assesment2/3profile.dart'; // Import halaman Profile
import 'package:assesment2/notification.dart'; // Import halaman Notifications
import 'package:assesment2/4training.dart'; // Import halaman Training
import 'package:assesment2/6ptest.dart'; // Import halaman Personality Test
import 'package:assesment2/5virtualmagang.dart';
// Impor halaman Virtual magang

class HomePage extends StatefulWidget {
  //mendefinisikan HomePage sebagai statefulwidget untuk mengaktifkan perubahan ui yang responsif
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() =>
      _HomePageState //ini untuk membuat state homepage
          ();
}

// state dari homepage yang mengatur interaksi prngguna dna ui nya
class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  //ini tuh indeks untuk mengatur tab yang dipilih, diberikan nilai awal 0 untuk mnandakan bahwa tab pertama yang akan ditampilkan adalah home saat aplikasi pertama kali dibuka.
  // _selectedindex digunakan dalam metode build() untuk menentukan mana widget dari _widgetoptions yang akan ditampilkan. contohnya jika _selectedindex adalah 1 maka build method akan menginstrusikan flutter untuk menampilkan widget kedua dalam daftar _widgetoptions yaitu halaman training

  // daftar halaman yang akan ditampilkan sesuai dengan tab yang dipilih
  final List<Widget> _widgetOptions = [
    //final untuk menyatakan kalo daftar widget tidak akan berubah, dan menghindari kesalahan karena mengubah variabel secara tidak sengaja di tempat lain.
    const HomeView(), // Tampilan default untuk halaman 'Home'
    const TrainingPage(), // Tampilan untuk halaman 'Training'
    const TesKepribadian(), // Tampilan untuk halaman 'Personality Test'
    const VirtualInternshipPage(), // Tampilan untuk halaman 'Virtual magang'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 234, 248),
      appBar: AppBar(
        title: const Text('Careemap'),
        backgroundColor: const Color.fromARGB(255, 242, 234, 248),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout_rounded),
            onPressed: () => _showDialog(
                context), // Memanggil _showDialog saat tombol ditekan
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            profileSnippet(context), // Menampilkan snippet profil
            const SizedBox(height: 20),
            Expanded(
              child: _widgetOptions.elementAt(_selectedIndex), // Menampilkan halaman berdasarkan _selectedIndex
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Pelatihan'),
          BottomNavigationBarItem(icon: Icon(Icons.psychology), label: 'Tes Kepribadian'),
          BottomNavigationBarItem(icon: Icon(Icons.computer), label: 'Magang'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 117, 9, 111),
        onTap: _onItemTapped,
        unselectedItemColor: const Color.fromARGB(255, 117, 9, 111),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Mengubah indeks saat tab baru dipilih
    });
  }

  Widget profileSnippet(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ProfilePage())),
          child: const CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
                'https://cdn.rri.co.id/berita/Gorontalo/o/1713562172085-(Cover_Artwork)_Tiara_Andini_-_Kupu_Kupu/aj65knimwpmpxgc.jpeg'),
          ),
        ),
        const SizedBox(width: 10),
        const Text('Hi, Good Afternoon',
            style: TextStyle(fontSize: 16, color: Colors.black)),
        const Spacer(),
        IconButton(
          icon: const Icon(Icons.notifications, color: Colors.black54),
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const NotificationsPage())),
        ),
      ],
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Apakah Anda Yakin Ingin Keluar?'),
          content: const Text('Konfirmasi untuk melanjutkan.'),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Tidak'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: const Text('Ya'),
            ),
          ],
        );
      },
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius:
                      BorderRadius.circular(10), // Image border radius
                  child: Image.asset(
                    'images/image6.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Tes Pengembangan Karir',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Universitas Hasanudin (Unhas) ini dirancang khusus untuk membantu individu memahami potensi.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius:
                      BorderRadius.circular(10), // Image border radius
                  child: Image.network(
                    'https://i0.wp.com/cdc.stie-mce.ac.id/wp-content/uploads/2021/09/IMG_20210904_064151_227.jpg?ssl=1',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Magang Program Kampus Merdeka',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Program Kompetisi Kampus Merdeka Melalui Magang di kantor akuntan publik.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
