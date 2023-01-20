import 'package:flutter/material.dart';

class hitungLingkaran extends StatefulWidget {
  static const routeName = "/hitungLingkaran";

  const hitungLingkaran({super.key});
  @override
  _hitungLingkaranPageState createState() => _hitungLingkaranPageState();
}

class _hitungLingkaranPageState extends State<hitungLingkaran> {
  TextEditingController jariInput = TextEditingController();
  String result = "0";
  String jari = "0";
  double pii = 3.14;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: const Text(
          'Hitung Luas Lingkaran',
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
                controller: jariInput,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Masukkan jari',
                  hintText: '0',
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
                'Luas Lingkaran = 3.14 x $jari x $jari\nLuas Lingkaran = $result',
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
                      if (jariInput.text == "") {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Peringatan : Input Salah')));
                      } else {
                        double sum = int.parse(jariInput.text) *
                            int.parse(jariInput.text) *
                            pii;
                        jari = jariInput.text;
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
                child: const Text('Hitung Luas Lingkaran'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
