
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'database.dart';
import 'networking.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Module 6"),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              onPressed: () {},
              child: const Text("str_packages").tr(),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {},
              child: const Text("str_localization").tr(),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, DatabasePage.id);
              },
              child: const Text("str_local_database").tr(),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, NetworkPage.id);
              },
              child: const Text("str_networking").tr(),
            ),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    color: Colors.orange,
                    onPressed: () {
                      context.setLocale(const Locale('en', 'US'));
                    },
                    child: Text("English"),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: MaterialButton(
                    color: Colors.red,
                    onPressed: () {
                      context.setLocale(const Locale('ru', 'RU'));
                    },
                    child: Text("Russian"),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: MaterialButton(
                    color: Colors.green,
                    onPressed: () {
                      context.setLocale(const Locale('uz', 'UZ'));
                    },
                    child: Text("Uzbek"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}