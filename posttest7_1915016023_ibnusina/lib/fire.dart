import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:posttest7_1915016023_ibnusina/item_card.dart';
import 'package:firebase_core/firebase_core.dart';

class fire extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection("Users");
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Data Member',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            ListView(
              children: [
                // VIEW DATA HERE
                StreamBuilder<QuerySnapshot>(
                  stream: users.snapshots(),
                  builder: (_, snapshot) {
                    return (snapshot.hasData)
                        ? Column(
                            children: snapshot.data!.docs
                                .map(
                                  (e) => ItemCard(
                                    e.get('name'), 
                                    e.get('age'),
                                    onUpdate: () {
                                      users.doc(e.id).update(
                                        {'age': e.get('age') + 1},
                                      );
                                    },
                                    onDelete: () {
                                      users.doc(e.id).delete();
                                    },
                                    ),
                                )
                                .toList(),
                          )
                        : Text('Loading...');
                  },
                ),
                SizedBox(height: 150)
              ],
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(-5, 0),
                        blurRadius: 15,
                        spreadRadius: 3)
                  ]),
                  width: double.infinity,
                  height: 130,
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextField(
                              controller: nameController,
                              decoration: InputDecoration(hintText: "Name"),
                            ),
                            TextField(
                              controller: ageController,
                              decoration: InputDecoration(hintText: "No member"),
                              keyboardType: TextInputType.number,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 130,
                        width: 130,
                        padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text(
                              'Add Data',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {
                              // ADD DATA HERE
                              users.add({
                                'name': nameController.text,
                                'age': int.tryParse(ageController.text) ?? -1,
                              });

                              nameController.text = '';
                              ageController.text = '';
                            }),
                      )
                    ],
                  ),
                )),
          ],
        ));
  }
}
