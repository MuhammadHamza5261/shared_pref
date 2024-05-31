import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageClass{


final FlutterSecureStorage _flutterSecureStorage = const FlutterSecureStorage();

// define a key

final _phelbotomistKey = "phelbotomistType";


// now we will create a setter method of secure storage

  Future<void> setLoginKey(String phelbotomistType) async{
 
    await _flutterSecureStorage.write(key: _phelbotomistKey, value: phelbotomistType);

  }


//   now we will create a getter method

  Future<String?> getLoginKey() async{

    return await _flutterSecureStorage.read(key: _phelbotomistKey);

   }


}