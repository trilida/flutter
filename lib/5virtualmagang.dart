import 'package:flutter/material.dart';
import '2Homepage.dart';
import 'jobdetailpage.dart'; // Import file job_detail_page.dart di sini

class VirtualInternshipPage extends StatefulWidget {
  const VirtualInternshipPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _VirtualInternshipPageState createState() => _VirtualInternshipPageState();
}

class _VirtualInternshipPageState extends State<VirtualInternshipPage> {
  final TextEditingController _searchController = TextEditingController();
  final List<String> _searchResults = [];

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
          'Magang',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Masukkan kata kunci...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _search,
              child: const Text('Cari'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Hasil Pencarian',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _searchResults.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      title: Text('Nama perusahaan: ${_searchResults[index]}'),
                      subtitle: const Text('Deskripsi Pekerjaan'),
                      onTap: () {
                        // Navigate to job details page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JobDetailPage(
                              jobTitle: _searchResults[index],
                              jobDescription: 'Deskripsi Pekerjaan',
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _search() {
    String keyword = _searchController.text.trim();
    // Membersihkan hasil pencarian sebelumnya
    setState(() {
      _searchResults.clear();
    });
    // Menambahkan hasil pencarian yang sesuai
    if (keyword.isNotEmpty) {
      setState(() {
        _searchResults.add(keyword);
      });
    }
  }
}
