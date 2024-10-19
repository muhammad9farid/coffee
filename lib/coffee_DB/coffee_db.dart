import 'package:sqflite/sqflite.dart';

class DBhelper {
  late Database database;

  Future<void> createDB() async {
    openDatabase(
      'cofee.db',
      version: 1,
      onCreate: (db, version) async {
        print("DB coffee created");
        await database
            .execute(
                'CREATE TABLE products (id INTEGER PRIMARY KEY AUTOINCREMENT, imageUrl TEXT,name TEXT,discribtion TEXT, Rate REAL, price REAL, tag INTEGER,)')
            .then(
          (value) {
            print("TABLE is created");
          },
        ).catchError((error) {
          print("TABLE creation Failed");
        });
      },
      onOpen: (db) {
        print("database opened");
      },
    ).then((value) {
      database = value;
    });
  }

  Future<void> INSERTDB({
    required int id,
    required String imageUrl,
    required String name,
    required String discribtion,
    required double Rate,
    required double price,
    required int tag,
  }) async {
    await database.transaction((coffee) => coffee
            .rawInsert(
                'INSERT INTO products(id, imageUrl ,name ,discribtion , Rate , price , tag ) VALUES(${id}, $imageUrl,$name, $discribtion, $Rate,$price,$tag)')
            .then((value) {
          print("DATA is inserted sucssesfully");
        }).catchError((error) {
          print("Error while iserting New Product" + error.toString());
        }));
  }
}
