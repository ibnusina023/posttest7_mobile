import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest7_1915016023_ibnusina/fire.dart';
import 'package:posttest7_1915016023_ibnusina/getx_controller/Counter_controller.dart';
import 'package:posttest7_1915016023_ibnusina/baris.dart';
import 'package:posttest7_1915016023_ibnusina/item1.dart';
import 'package:posttest7_1915016023_ibnusina/shop.dart';
import 'package:posttest7_1915016023_ibnusina/form.dart';
import 'package:posttest7_1915016023_ibnusina/mainPage.dart';

class Cari extends StatelessWidget {
  final SwitchController v = Get.put(SwitchController());
  final textController tc = Get.put(textController());
  
  Widget form(){
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Flexible(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Search",
              ),
              controller: tc.nameEditingController,
            ),
          ),
          ElevatedButton(
            onPressed: () => Get.to(ketemu()),
            child: Text("Search"),
          ),
        ]
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Obx(
          () => Container(
            color: v.switchValue.value ? Colors.blue : Colors.green,
          ),
        ),
        title: Text("Posttest 6"),
        actions: [
          Obx(
            () => Switch(
              value: v.switchValue.value, 
              onChanged: (Value){
                v.switchValue(Value);
              },
              thumbColor: 
                MaterialStateColor.resolveWith((states) => Colors.white),
              trackColor: 
                MaterialStateColor.resolveWith((states) => Colors.blue),
            )
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 187, 247, 255),
        child: ListView(
          children: [
            DrawerHeader(child: Text("Bulan Jaya Komputer",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
              )
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Landing Page"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return MainPage();
                    
                  }),
                );
              },
            ),ListTile(
              leading: Icon(Icons.home),
              title: Text("SHOP"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return MyShop();
                  }),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Form"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return MyForm();
                  }),
                );
              },
            ),ListTile(
              leading: Icon(Icons.home),
              title: Text("Search"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return Cari();
                  }),
                );
              },
            ),ListTile(
              leading: Icon(Icons.home),
              title: Text("Search"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return fire();
                  }),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Masukkan nama PC yang anda cari',
            ),
              form(),
          ],
        ),
      ),
    );
  }
}

class ketemu extends StatelessWidget {
  final SwitchController v = Get.put(SwitchController());
  final textController tc = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Obx(
          () => Container(
            color: v.switchValue.value ? Colors.blue : Colors.green,
          ),
        ),
        title: Text("Pencarian (${tc.nameEditingController.text})"),
        actions: [
          Obx(
            () => Switch(
              value: v.switchValue.value, 
              onChanged: (Value){
                v.switchValue(Value);
              },
              thumbColor: 
                MaterialStateColor.resolveWith((states) => Colors.white),
              trackColor: 
                MaterialStateColor.resolveWith((states) => Colors.blue),
            )
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Maaf mesin pencarian sedang maintenace',
            ),
          ],
        ),
      ),
    );
  }
}