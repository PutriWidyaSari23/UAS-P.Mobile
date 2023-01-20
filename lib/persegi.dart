import 'package:flutter/material.dart';

class hitungPersegi extends StatefulWidget {
  static const routeName = "/hitungPersegi";

  const hitungPersegi({super.key});
  @override
  _hitungPersegiPageState createState() => _hitungPersegiPageState();
}

class _hitungPersegiPageState extends State<hitungPersegi> {
  TextEditingController panjanginput = TextEditingController();
  TextEditingController lebarInput = TextEditingController();
  String result = "0";
  String panjang = "0";
  String lebar = "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: const Text(
          'Hitung Luas Persegi',
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            SizedBox(
              width: 350,
              child: TextField(
                keyboardType: TextInputType.number,
                controller: lebarInput,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Masukkan Lebar',
                  hintText: '0',
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text('Luas Persegi = $panjang x $lebar\nLuas Persegi = $result',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: 250,
              child: TextButton(
                onPressed: () {
                  setState(
                    () {
                      if (panjanginput.text == "" || lebarInput.text == "") {
                        panjang = '0';
                        lebar = '0';
                        result = '0';
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Peringatan : Input Salah')));
                      } else {
                        int sum = int.parse(panjanginput.text) *
                            int.parse(lebarInput.text);
                        panjang = panjanginput.text;
                        lebar = lebarInput.text;
                        result = sum.toString();
                      }
                    },
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: const Text('Hitung Luas Persegi'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
