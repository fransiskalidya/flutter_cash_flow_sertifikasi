import 'package:flutter/material.dart';
import 'package:flutter_cash_flow/sql_helper.dart';


class DetailCashFlow extends StatefulWidget {
  const DetailCashFlow({super.key});

  @override
  State<DetailCashFlow> createState() => _DetailCashFlowState();
}

class _DetailCashFlowState extends State<DetailCashFlow> {

  @override
  void initState() {
    super.initState();
    refreshTransaksi();
  }

  List<Map<String, dynamic>> transaksi =[];
  void refreshTransaksi() async{
    final data= await SQLHelper.getTransaksi();
    setState(() {
      transaksi = data;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Detail Cash Flow"),
        ), 

        body: ListView.builder(
          itemCount: transaksi.length,
          itemBuilder: (context, index)=> Card(
            child: ListTile(
              title: Text(transaksi[index]['keterangan']),
              subtitle: Text(transaksi[index]['nominal']),
              leading: Text(transaksi[index]['tanggal']),
              trailing:  transaksi[index]['tipe'] == 1
                      ? Icon(Icons.arrow_left, color: Colors.green,)
                      : Icon(Icons.arrow_right, color: Colors.red,)
            ),
          ))
        
        
      ));
  }
}
