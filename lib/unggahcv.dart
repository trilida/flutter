import 'package:flutter/material.dart';
import 'package:assesment2/5virtualmagang.dart'; // Impor halaman Virtual magang

class HalamanCV extends StatelessWidget {
  const HalamanCV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ugah CV anda'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Shilakan ugah CV terbaik mu.',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showSnackBarAndNavigate(
                    context); // Memanggil fungsi untuk menampilkan Snackbar dan pindah ke halaman Virtual Internship
              },
              child: const Text('Ugah CV'),
            ),
          ],
        ),
      ),
    );
  }

  void _showSnackBarAndNavigate(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('CV berhasil diubah'),
        duration: Duration(seconds: 2),
      ),
    );

    // Pindah ke halaman Virtual Internship setelah notifikasi muncul
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const VirtualInternshipPage()),
      );
    });
  }
}
