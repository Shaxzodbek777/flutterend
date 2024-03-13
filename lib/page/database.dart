import 'package:flutter/material.dart';

import '../Modile/membermodule.dart';
import '../servise/Log_Servise.dart';
import '../servise/getservise.dart';

class DatabasePage extends StatefulWidget {
  static final String id = "/database_page";
  const DatabasePage({Key? key}) : super(key: key);

  @override
  State<DatabasePage> createState() => _DatabasePageState();
}

class _DatabasePageState extends State<DatabasePage> {

  @override
  void initState() {
    super.initState();
    // Use Hive Service
    var user = Member("101","pdp@gmail.com","123qwe");
    GetService.storeUser(user);
    var user2 = GetService.loadUser();
    LogService.i(user2.toJson().toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Database"),
      ),
      body: Center(
        child: Text("Local Databases"),
      ),
    );
  }
}