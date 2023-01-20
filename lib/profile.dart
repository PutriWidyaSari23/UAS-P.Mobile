import 'package:flutter/material.dart';

class profileDev extends StatefulWidget {
  static const routeName = "/profileDev";

  const profileDev({super.key});
  @override
  _profileDevPageState createState() => _profileDevPageState();
}

class _profileDevPageState extends State<profileDev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text(
          'Profile Developer',
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const SizedBox(
              width: 170,
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 150,
                  backgroundImage: AssetImage(
                    'images/putri.jpg/',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text('Nama : Putri Widya Sari',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            const SizedBox(height: 10),
            const Text('NPM : 2010020061\nWA : +6285822626150',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            const SizedBox(height: 20),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(Icons.whatsapp, size: 80, color: Colors.green),
                  Icon(Icons.facebook, size: 80, color: Colors.blue),
                  Icon(Icons.telegram, size: 80, color: Colors.blue),
                ]),
            const SizedBox(height: 20),
            const SizedBox(
              width: 350,
              child: Text('TUGAS UAS',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            ),
            const SizedBox(
              width: 350,
              child: Text(
                'Mata Kuliah : Pemrograman Mobile\nKelas : 5A NonReguler Banjarmasin SI',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              width: 350,
              //child: ,
            ),
          ],
        ),
      ),
    );
  }
}
