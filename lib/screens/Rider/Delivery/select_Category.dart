import 'package:flutter/material.dart';
import 'package:uberr/screens/Rider/Delivery/select_weight.dart';

class SelectCategory extends StatefulWidget {
  const SelectCategory({Key? key}) : super(key: key);
  static String selectCategory = 'selectCategiry';

  @override
  State<SelectCategory> createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    final List categoryItems = [
      {"icon": Icons.fastfood_rounded, "text": "Food & Baverages", bool: true},
      {
        "icon": Icons.electrical_services_rounded,
        "text": "Electrinics and Appliances",
        bool: true
      },
      {"icon": Icons.man, "text": "Clothing", bool: true},
      {"icon": Icons.document_scanner, "text": "Document", bool: true},
      {"icon": Icons.mobile_friendly, "text": "Phones", bool: true},
      {"icon": Icons.computer, "text": "Computers", bool: true},
      {"icon": Icons.apple, "text": "Farm Products", bool: true},
      {"icon": Icons.devices_other, "text": "Others", bool: true},
    ];
    return Scaffold(
        backgroundColor: Colors.red[400],
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              );
            },
          ),
          backgroundColor: Colors.red[400],
          title: const Text(
            'Select Category',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 45),
          height: MediaQuery.of(context).size.height - 130,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0))),
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 10, left: 20, bottom: 15),
                  child: const Text('Select the right Category')),
              Expanded(
                child: ListView(
                  children: categoryItems.map((menu) {
                    return Container(
                      margin: const EdgeInsets.only(
                          left: 20, right: 20, top: 5, bottom: 5),
                      color: Colors.red[100],
                      child: ListTile(
                        trailing: IconButton(
                            onPressed: () {
                              setState(() {
                                isChecked
                                    ? isChecked = false
                                    : isChecked = true;
                              });
                            },
                            icon: Icon(
                              isChecked
                                  ? Icons.check_box_outline_blank
                                  : Icons.check_box_outlined,
                              color: Colors.blue,
                            )),
                        leading: Icon(
                          menu["icon"],
                          color: Colors.red,
                        ),
                        title: Text(
                          menu["text"],
                          style: const TextStyle(
                              fontSize: 14.0, color: Colors.grey),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red[400],
                      padding: const EdgeInsets.symmetric(
                          horizontal: 80, vertical: 5),
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, SelectWeight.selectWeight);
                    },
                    child: const Text('Next')),
              )
            ],
          ),
        ));
  }
}
