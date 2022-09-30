import 'package:flutter/material.dart';
import 'package:flutter_cash_flow/detail_cash_flow.dart';
import 'package:flutter_cash_flow/sql_helper.dart';

// import 'package:flutter_cash_flow/beranda.dart';
import 'package:flutter_cash_flow/login_page.dart';
import 'package:flutter_cash_flow/pengaturan.dart';
import 'package:flutter_cash_flow/tambah_pemasukan.dart';
import 'package:flutter_cash_flow/tambah_pengeluaran.dart';
// import 'package:flutter_application_1/tambah_pemasukan.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Rangkuman Bulan Ini")),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Container(
                child: Text(
                  "Pengeluaran Rp. 40000000",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "Pemasukan Rp. 50000000",
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
              ),
              Container(
                width: 400,
                height: 250,
                child: Image.asset(
                  'assets/line-graph.png',
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                child: GridView(
                  padding: EdgeInsets.all(10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
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
                      child: FloatingActionButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return TambahPemasukan();
                            },
                          ));
                        },
                        heroTag: "btn1",
                        backgroundColor: Colors.white,
                        child: Image.asset('assets/add-income.png'),
                      ),
                      // child: Image(image: AssetImage("assets/add-income.png")),
                    ),
                    Container(
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 5,
                        ),
                      ),
                      child: FloatingActionButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return TambahPengeluaran();
                            },
                          ));
                        },
                        heroTag: "btn2",
                        backgroundColor: Colors.white,
                        child: Image.asset('assets/charity.png'),
                      ),
                    ),
                    Text("tambah Pemasukan"),
                    Text("Tambah Pengeluaran"),
                    Container(
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 5,
                        ),
                      ),
                      child: FloatingActionButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return DetailCashFlow();
                            },
                          ));
                        },
                        heroTag: "btn3",
                        backgroundColor: Colors.white,
                        child: Image.asset('assets/add-document.png'),
                      ),
                    ),
                    Container(
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 5,
                        ),
                      ),
                      child: FloatingActionButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return Pengaturan();
                            },
                          ));
                        },
                        heroTag: "btn4",
                        backgroundColor: Colors.white,
                        child: Image.asset('assets/settings.png'),
                      ),
                    ),
                    Text("Detail cash flow"),
                    Text("Pengaturan"),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
