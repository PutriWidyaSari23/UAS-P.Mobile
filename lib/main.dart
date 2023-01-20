import 'package:flutter/material.dart';
import 'halaman.dart';
import 'persegi.dart';
import 'lingkaran.dart';
import 'profile.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "UAS",
      initialRoute: "/",
      routes: {
        "/": (context) => const halamanAwal(),
        hitungPersegi.routeName: (context) => const hitungPersegi(),
        hitungLingkaran.routeName: (context) => const hitungLingkaran(),
        profileDev.routeName: (context) => const profileDev(),
      },
    ),
  );
}
