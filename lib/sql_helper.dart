import 'dart:ffi';

import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper{
  static Future<void> createTables(sql.Database database) async{
    await database.execute("""
CREATE TABLE transaksi(
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  keterangan TEXT,
  tipe INTEGER,
  tanggal TEXT,
  nominal INTEGER
) """);
  }

  static Future<sql.Database> db() async{
    return sql.openDatabase('transaksi.db', version: 1, onCreate: (sql.Database database, int version) async{
      await createTables(database);
    });
  }

  static Future<int> tambahTransaksi(String keterangan, String tanggal, int nominal, int tipe) async{
    final db = await SQLHelper.db();
    final data = {'keterangan': keterangan, 'tanggal': tanggal, 'nominal' : nominal, 'tipe' : tipe};
    return await db.insert('transaksi', data);
  }

  static Future<List<Map<String, dynamic>>> getTransaksi() async{
    final db = await SQLHelper.db();
    return db.query('transaksi');
  }
}