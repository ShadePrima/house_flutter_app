import 'package:flutter/material.dart';
import 'package:house_flutter_app/components/dialog_box.dart';
import 'package:house_flutter_app/components/house_tile.dart';
import 'package:house_flutter_app/models/house.dart';

class HousePage extends StatefulWidget {
  const HousePage({super.key});

  //text controller
  // final _controler = TextEditingController();

  @override
  State<HousePage> createState() => _HousePageState();
}

class _HousePageState extends State<HousePage> {
  //arrey with information about the home
  final List<House> houses = [
    House(id: 1, name: 'House A', numberOfFloors: 3),
    House(id: 2, name: 'House B', numberOfFloors: 5),
    House(id: 3, name: 'House C', numberOfFloors: 2),
  ];

  //text controller
  final _controler = TextEditingController();

  void createNewHouse() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controler,
            onCancel: () {},
            onSave: () {},
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Container(
            width: 228,
            child: Column(
              children: [
                Center(
                    child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)),
                        child: GestureDetector(
                          onTap: createNewHouse,
                          child: const Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Add House",
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Icon(Icons.add)
                            ],
                          )),
                        ),
                      ),
                    )
                  ],
                )),
                Expanded(
                  child: ListView.builder(
                      itemCount: houses.length,
                      itemBuilder: (context, index) {
                        final house = houses[index];

                        return HouseTile(
                          name: house.name,
                          numbetOfFloor: house.numberOfFloors,
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
