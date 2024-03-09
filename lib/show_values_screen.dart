import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';
import 'package:flutter/material.dart';
class SharedPreferencesScreen extends StatefulWidget {
  const SharedPreferencesScreen({Key? key}) : super(key: key);

  @override
  State<SharedPreferencesScreen> createState() => _SharedPreferencesScreenState();
}

class _SharedPreferencesScreenState extends State<SharedPreferencesScreen> {
  // create a string type empty variable
  String name = '';


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLogin();
  }


  // create a function
  void isLogin() async{

    SharedPreferences sp = await SharedPreferences.getInstance();
    name = sp.getString('string') ?? '';
    setState(() {

    });


  }






  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Shared Preferences'),
      ),
      body: Column(
        children: [
          Text(name),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          SharedPreferences sp = await SharedPreferences.getInstance();

          sp.setString('string', 'Muhammad Hamza');
          sp.setInt('age', 24);
          sp.setDouble('weight', 60.5);
          sp.setBool('login', true);


           name = sp.getString('string') ?? '';




          print(sp.getString('string'));
          print(sp.getInt('age'));
          print(sp.getDouble('weight'));
          print(sp.getBool('login'));


        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
