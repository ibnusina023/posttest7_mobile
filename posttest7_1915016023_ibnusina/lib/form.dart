import 'package:flutter/material.dart';
import 'package:posttest7_1915016023_ibnusina/alert.dart';
import 'package:get/get.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyForm> {
  int angka = 0;
  String alamat = "", nama = "";
  bool? OS = false;

  List<String> bayar = ["ATM", "Tunai"];
  String uang = "";

  final alamatController = TextEditingController();
  final namaController = TextEditingController();
  
  
  @override
  void dispose() {
    alamatController.dispose();
    namaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("ISI DATA DIRI",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black
          ),),
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
        child: SingleChildScrollView(
        
        child: Column(
          
          children: [
            
            Text(
              "Isi data diri Untuk melanjutkan pembelian",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 30,),
            TextField(
              controller: namaController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Masukkan Nama",
                hintText: "Masukkan Nama",
              ),
            ),
            SizedBox(height: 30),
            TextField(
              maxLines: 4,
              controller: alamatController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Masukkan Alamat",
                hintText: "Masukkan Alamat",
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "Pilih metode pembayaran",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            
            for (var item in bayar)
              ListTile(
                leading: Radio(
                  value: item,
                  groupValue: uang,
                  onChanged: (String? value) {
                    setState(() {
                      uang = value!;
                    });
                  },
                ),
                title: Text(item),
              ),
            Text(
              "Pasang OS?",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            ListTile(
              leading: Checkbox(
                value: OS,
                onChanged: (bool? value) {
                  setState(() {
                    OS = value;
                  });
                },
              ),
              title: Text("Pasang"),
            ),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    alamat = alamatController.text;
                    nama = namaController.text;
                  });
                  alert(context);
                },
                child: Text("Lanjutkan"),
              ),
            ),
            SizedBox(height: 20,),
            Text(
              "Barang : CPU HP OMEN I7-10750X",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "Atas Nama: $nama",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "Alamat: $alamat",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "Jenis Pembayaran: $uang",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "Pasang OS : ${OS! ? "Iya" : "Tidak"}",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
