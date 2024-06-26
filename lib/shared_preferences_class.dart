import 'package:shared_preferences/shared_preferences.dart';

    class SharedPreferencesClient{

      // create a function

     static Future<void> saveUserInfo(String name, int age) async{

        // create a instance
        SharedPreferences sp = await SharedPreferences.getInstance();

        // set string
        sp.setString('string', name);
        sp.setInt('int', age);

       }


       // create a getter method

       static Future<Map<String,dynamic>> getUserInfo() async {

       // create a instance
       SharedPreferences sp = await SharedPreferences.getInstance();

       String name = sp.getString('string') ?? '';
       int age = sp.getInt('int') ?? 0;

       return {
         'name': name,
         'age': age,
       };


     }


}