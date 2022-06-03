import 'package:flutter/material.dart';
import 'package:posttest7_1915016023_ibnusina/fire.dart';
import 'package:posttest7_1915016023_ibnusina/form.dart';
import 'package:posttest7_1915016023_ibnusina/item1.dart';
import 'package:posttest7_1915016023_ibnusina/mainPage.dart';
import 'package:posttest7_1915016023_ibnusina/search.dart';
import 'package:get/get.dart';

class MyShop extends StatelessWidget {
  const MyShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Toko",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
            Color.fromARGB(255, 187, 247, 255),
            Color.fromARGB(255, 255, 255, 255),
              ],
            ),
          ),
        ),
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
              title: Text("data"),
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
      body: Container(
        width: lebar,
        height: tinggi,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
            Color.fromARGB(255, 187, 247, 255),
            Color.fromARGB(255, 255, 255, 255),
            ],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  item1(),
                  new Center(
                    child: new Container(
                      child: new Text(
                        'HP OMEN PC SET',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  new Center(
                    child: new Container(
                      child: new Text(
                        'Rp. 15.000.000,00',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  new Center(
                    child: new Container(
                      child: new Text(
                        'Spesifikasi PC:',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  new Center(
                    child: new Container(
                      child: new Text(
                        'AMD Ryzen 9 4950X, AMD Radeon RX 6800, OMEN 25 Inch Monitor',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton.icon(
                    onPressed: () => Get.to(MyForm()),
                    icon: Icon(
                      Icons.add_shopping_cart,
                      size: 24.0,
                    ),
                    label: Text("Beli",
                      style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold),
                    ),
                  ),
                  
                  BottomNavigationBar(
                    type: BottomNavigationBarType.fixed,
                    items: const <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home_filled),
                        label: "Home"
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home_filled),
                        label: "Deskripsi"
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.add_comment_rounded),
                        label: "Ulasan"
                      )
                    ]
                  ),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}