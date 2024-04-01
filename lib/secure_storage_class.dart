import 'package:flutter_secure_storage/flutter_secure_storage.dart';


class SecureStorageClient{

  //  create a instance

  final FlutterSecureStorage storage = const FlutterSecureStorage();


       Future<void> writeSecureData(String name, String age) async {

       await storage.write(key: name, value: age);


  }


         Future readSecureData(key) async {

         String  value  = await storage.read(key: key) ?? 'no data!';

         print('Data read from secure storage: $value');


        }


}