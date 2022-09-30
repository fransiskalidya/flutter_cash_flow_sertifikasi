import 'package:flutter/material.dart';
import 'package:flutter_cash_flow/login_page.dart';
// import 'package:flutter_cash_flow/tambah_pengeluaran.dart';

class Pengaturan extends StatefulWidget {
  const Pengaturan({super.key});

  @override
  State<Pengaturan> createState() => _PengaturanState();
}

class _PengaturanState extends State<Pengaturan> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pengaturan"),
        ),
        body: Column(children: [
          Container(
            child: Text(
              "Password saat ini: ",
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              textAlign: TextAlign.left,
              autocorrect: false,
              autofocus: false,
            ),
          ),
          Container(
            child: Text(
              "Password Baru: ",
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              autocorrect: false,
              autofocus: false,
            ),
          ),
          Container(
            width: 320,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return LoginPage();
                  }));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Text("Simpan")),
          ),
          Container(
            width: 320,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: const Text("Kembali")),
          ),
          SizedBox(
            height: 200,
          ),
          Expanded(
            child: GridView(
              padding: EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
              children: [
                Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 5,
                    ),
                  ),
                  child: Image(image: AssetImage("assets/pas-foto.jpg")),
                ),
                Container(
                  width: 10,
                  height: 5,
                  
                  child: Text("Aplikasi Ini dibuat Oleh: Nama: Fransiska Lidya Kartika, NIM : 1941720106, Tanggal : 30 September 2022"),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
