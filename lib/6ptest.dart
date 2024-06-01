import 'package:flutter/material.dart';
import '2Homepage.dart';
import 'formpendaftaranptes.dart';

class TesKepribadian extends StatelessWidget {
  const TesKepribadian({super.key});

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
          'Tes Kepribadian',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

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
                        'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//104/MTA-93667405/no_brand_tes_psikologi_-_psikotes_kepribadian_metode_online_full01_ufitxkox.jpg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      title: const Text('Tes Kepribadian Minat'),
                      subtitle: const Text(
                          'Tes untuk mengenali minat yang dimiliki.'),
                      trailing: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const RegistrationPage(testName: '',),
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
                        'https://media.licdn.com/dms/image/C5622AQHLsJ15AdqwgQ/feedshare-shrink_800/0/1646638011990?e=2147483647&v=beta&t=Ec2cnz9VTIz17H0jszvdO-QdJXNlQwu4HR3MU9AEdSM', 
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      title: const Text('Tes kepribadian bakat'),
                      subtitle: const Text(
                          'Tes untuk mengenali potensi dan bakat diri sendiri'),
                      trailing: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const RegistrationPage(testName: '',),
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
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWaK01HpwSCn_FUIpipDYlaze1Gl40xQJnHg&usqp=CAU', 
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      title: const Text('Tes Mengenali Profesionalitas Diri'),
                      subtitle: const Text(
                          'Tes untuk mengetahui....'),
                      trailing: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const RegistrationPage(testName: '',),
                            ),
                          );
                        },
                        child: const Text('Daftar'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
