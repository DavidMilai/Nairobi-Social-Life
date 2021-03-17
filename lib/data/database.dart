import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Database {
//create box
//  Box<AuthData> authDataBox;
  _initBoxes() async {
    //authDataBox = await Hive.openBox("authData");
  }

  _registerAdapters() async {
    //register adapter
    //Hive.registerAdapter(AuthDataAdapter());
  }

  init() async {
    await Hive.initFlutter();
    await _registerAdapters();
    await _initBoxes();
  }
}

var db = Database();
