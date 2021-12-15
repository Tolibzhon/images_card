import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:images_card/baza.dart';
import 'package:images_card/view_person.dart';

class Scrall_all_employees extends StatefulWidget {
  const Scrall_all_employees({Key? key}) : super(key: key);

  @override
  State<Scrall_all_employees> createState() => _Scrall_all_employeesState();
}

class _Scrall_all_employeesState extends State<Scrall_all_employees> {
  ListOfPerson list = ListOfPerson();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Все сотрудники",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 373,
            child: ListView(
              children: [
                for (int i = 0; i < ListOfPerson.listOfPerson.length; i++)
                  buildAllEmployees(list, i, context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildAllEmployees(ListOfPerson list, int index, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => EmployeePager(
                    indexForTakeEmployeeIndex: index,
                  )));
    },
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 11),
          height: 64,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(ListOfPerson.listOfPerson[index].images),
                  SizedBox(
                    width: 17,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ListOfPerson.listOfPerson[index].name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        ListOfPerson.listOfPerson[index].surname,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 17,
              ),
              Image.asset(
                "assets/images/phone.png",
                height: 24,
              )
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
      ],
    ),
  );
}
