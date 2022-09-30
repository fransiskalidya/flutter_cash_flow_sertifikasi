import 'package:flutter/material.dart';
import 'package:flutter_cash_flow/detail_cash_flow.dart';
import 'package:flutter_cash_flow/pengaturan.dart';
import 'package:flutter_cash_flow/tambah_pemasukan.dart';
import 'package:flutter_cash_flow/tambah_pengeluaran.dart';
import 'package:google_fonts/google_fonts.dart';

class BerandaPage2 extends StatelessWidget {
  const BerandaPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Pengeluaran Bulan Ini',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Pengeluaran Rp. 500.000,-',
                  style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Pemasukan Rp. 1500.000,-',
                  style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: 380,
                  height: 250,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: Image.asset('assets/line-graph.png'),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return TambahPemasukan();
                                  },
                                ),
                              );
                            },
                            child: Container(
                              width: 135,
                              height: 135,
                              decoration: BoxDecoration(
                                border: Border.all(),
                              ),
                              child: Image.asset('assets/add-income.png'),
                            ),
                          ),
                        ),
                        Text(
                          'Tambah Pemasukan',
                          style: GoogleFonts.poppins()
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return TambahPengeluaran();
                                },
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 135,
                              height: 135,
                              decoration: BoxDecoration(
                                border: Border.all(),
                              ),
                              child: Image.asset('assets/charity.png'),
                            ),
                          ),
                        ),
                        Text(
                          'Tambah Pengeluaran',
                          style: GoogleFonts.poppins()
                              .copyWith(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DetailCashFlow();
                                },
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 135,
                              height: 135,
                              decoration: BoxDecoration(
                                border: Border.all(),
                              ),
                              child: Image.asset('assets/add-document.png'),
                            ),
                          ),
                        ),
                        Text(
                          'Detail Cash Flow',
                          style: GoogleFonts.poppins()
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Pengaturan();
                                },
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 135,
                              height: 135,
                              decoration: BoxDecoration(
                                border: Border.all(),
                              ),
                              child: Image.asset('assets/settings.png'),
                            ),
                          ),
                        ),
                        Text(
                          'Pengaturan',
                          style: GoogleFonts.poppins()
                              .copyWith(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
