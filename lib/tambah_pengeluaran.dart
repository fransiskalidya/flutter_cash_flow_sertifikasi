import 'package:flutter/material.dart';
import 'package:flutter_cash_flow/detail_cash_flow.dart';
import 'package:flutter_cash_flow/sql_helper.dart';
// import 'package:flutter_cash_flow/detail_cash_flow.dart';
// import 'package:flutter_cash_flow/tambah_pengeluaran.dart';
// import 'package:flutter_application_1/db/database_instance.dart';

class TambahPengeluaran extends StatefulWidget {
  const TambahPengeluaran({super.key});

  @override
  State<TambahPengeluaran> createState() => _TambahPengeluaranState();
}

class _TambahPengeluaranState extends State<TambahPengeluaran> {
  // DatabaseInstance databaseInstance = DatabaseInstance();
  TextEditingController keteranganController = TextEditingController();
  TextEditingController nominalController = TextEditingController();
  TextEditingController tanggalController = TextEditingController();


  List<Map<String, dynamic>> transaksi =[];
  void refreshTransaksi() async{
    final data= await SQLHelper.getTransaksi();
    setState(() {
      transaksi = data;
    });
  }
//  @override
//   void initState() {
//     // TODO: implement initState
//     databaseInstance.database();
//     super.initState();
//   }
  @override
  Widget build(BuildContext context) {
    print(transaksi);
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(title: Text("Tambah Pengeluaran"),),
        body: Column(
          children: [
            Text("Tanggal: ",
            textAlign: TextAlign.start,
            ),

            TextField(
              controller: tanggalController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
           Text("Nominal: ",
              textAlign: TextAlign.left,
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  textAlign: TextAlign.left,
                  autocorrect: false,
                  autofocus: false,
                  decoration: InputDecoration(
                    prefixText: "Rp."
                  ),
                  controller: nominalController,
                ),
              ),
            Container(
              child: Text("Keterangan: ",
              textAlign: TextAlign.start,
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  autocorrect: false,
                  autofocus: false,
                  controller: keteranganController,
                ),
            ),
            Container(
                width: 320,
                child: ElevatedButton(
                onPressed: () async {
                  await tambahTransaksi();
                  // print("test " + idInsert.toString());
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                    return DetailCashFlow();
                  }));
                }, 
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green), 
                child: const Text("Simpan")),
              ),
            Container(
                width: 320,
                child: ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red), 
                child: const Text("Kembali")),
              )
        ]),
      ),
    );
  }

  Future<void> tambahTransaksi() async{
    await SQLHelper.tambahTransaksi(keteranganController.text, tanggalController.text, nominalController.toString() , 2);
    refreshTransaksi();
  }
}