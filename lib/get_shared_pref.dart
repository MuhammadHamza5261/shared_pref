import 'package:sharedprefproj/shared_preferences_class.dart';

import 'main.dart';
import 'package:flutter/material.dart';
class GetValueSharedPref extends StatefulWidget {
  const GetValueSharedPref({Key? key}) : super(key: key);

  @override
  State<GetValueSharedPref> createState() => _GetValueSharedPrefState();
}

class _GetValueSharedPrefState extends State<GetValueSharedPref> {
    late String name;
    late int age;


    @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


    Future<void> getUserData() async {
      Map<String, dynamic> userInfo = await SharedPreferencesClient.getUserInfo();
      setState(() {
        name = userInfo['name'];
        age = userInfo['age'];

      });
    }
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        children: [
          Text('Name: $name'),
          Text('Age: $age'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          await SharedPreferencesClient.saveUserInfo('Muhammad Hamza', 24,);
          getUserData();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
