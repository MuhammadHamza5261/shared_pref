import 'package:flutter_secure_storage/flutter_secure_storage.dart';


class SecureStorage{

       //  create a instance

      final FlutterSecureStorage _storage = const FlutterSecureStorage();

       // set the data in secure storage
       Future<void> writeSecureData(String name, String age) async {

       await _storage.write(key: name, value: age);

       }


         // read the data in secure storage

         Future readSecureData(key) async {

         String  value  = await _storage.read(key: key) ?? 'no data!';

         print('Data read from secure storage: $value');


         }



         Future<void> clearSecureData() async{

         await _storage.deleteAll();

        }












}