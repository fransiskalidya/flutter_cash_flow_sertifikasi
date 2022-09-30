import 'package:flutter/material.dart';
import 'package:flutter_cash_flow/beranda_page.dart';
import 'package:flutter_cash_flow/pengaturan.dart';
import 'package:flutter_cash_flow/tambah_pemasukan.dart';
import 'login_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
