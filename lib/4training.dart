import 'package:flutter/material.dart';
import '2Homepage.dart';
import 'formpendaftaranpelatihan.dart';

class TrainingPage extends StatelessWidget {
  const TrainingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 234, 248),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 242, 234, 248),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
        ),
        title: const Text(
          'Pelatihan',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Pelatihan Tersedia',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  Card(
                    elevation: 3,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(8.0),
                      leading: Image.network(
                        'https://files.planet.ung.ac.id/fak/102/cbe1fe4f-dd08-4dcc-9704-8823ed1c3fb9-07.10.2021.11.28.25.jpg', // Ganti URL ini dengan URL gambar yang diinginkan
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      title: const Text('Dasar-Dasar Flutter'),
                      subtitle: const Text(
                          'Pengenalan Flutter dan pemrograman Dart.'),
                      trailing: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const RegistrationFormPage(),
                            ),
                          );
                        },
                        child: const Text('Daftar'),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 3,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(8.0),
                      leading: Image.network(
                        'https://ft.upnjatim.ac.id/images/WORKSHOP.jpeg', // Ganti URL ini dengan URL gambar yang diinginkan
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      title: const Text('Flutter Lanjutan'),
                      subtitle: const Text(
                          'Mendalami konsep Flutter lanjutan dan manajemen state.'),
                      trailing: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const RegistrationFormPage(),
                            ),
                          );
                        },
                        child: const Text('Daftar'),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 3,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(8.0),
                      leading: Image.network(
                        'https://lh3.googleusercontent.com/proxy/aoqNyd4LjX3XxKZO29pC-wDzWgtgg8Q_drZq4cHr5zBHyrqvySeuhcOJm6HFuFHtY2xAb0TMhmmFexpTW1E9MNIMzXb48Qm2GvtLRsSFHY94TYYr0Lcf0grEOiAGyuptdhWpaUuf7JZIr-wDCA', // Ganti URL ini dengan URL gambar yang diinginkan
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      title: const Text('Flutter untuk Web'),
                      subtitle: const Text(
                          'Pelajari cara membangun aplikasi web menggunakan Flutter.'),
                      trailing: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const RegistrationFormPage(),
                            ),
                          );
                        },
                        child: const Text('Daftar'),
                      ),
                    ),
                  ),
                  // Tambahkan lebih banyak item pelatihan sesuai kebutuhan
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
