import 'package:flutter/material.dart';
import 'package:assesment2/unggahcv.dart';

class JobRegistrationPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  JobRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jawab Pertanyaan'),
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      backgroundColor: Colors.deepPurple[100],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Question 1
                      const Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Apa yang membuat Anda tertarik untuk bergabung dengan perusahaan kami?',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black87),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Jawaban tidak boleh kosong';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: 'Jawaban Anda',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Question 2
                      const Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Apa yang Anda ketahui tentang visi dan misi perusahaan kami?',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black87),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Jawaban tidak boleh kosong';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: 'Jawaban Anda',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Question 3
                      const Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Apa yang membuat Anda merasa cocok untuk posisi ini?',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black87),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Jawaban tidak boleh kosong';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: 'Jawaban Anda',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Form valid, navigasi ke halaman berikutnya
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HalamanCV(),
                        ),
                      );
                    } else {
                      // Tampilkan snack bar jika form tidak valid
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Silakan isi semua jawaban Anda'),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(),
                  child: const Text('Lanjut'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
