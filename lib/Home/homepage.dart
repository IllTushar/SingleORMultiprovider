import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getxflutter/provider/Provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<ProviderClass>(context, listen: false);
    print("Build");
    return Scaffold(
      body: Center(
        child: Consumer<ProviderClass>(
          builder: (context, value, child) {
            return Text(value.count.toString(),style: TextStyle(fontSize: 20),);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
