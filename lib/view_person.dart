import 'package:flutter/material.dart';

import 'baza.dart';

//Для личной странички
class EmployeePager extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final indexForTakeEmployeeIndex;

  const EmployeePager({
    required this.indexForTakeEmployeeIndex,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shadowColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 57,
                backgroundImage: AssetImage(ListOfPerson
                    .listOfPerson[indexForTakeEmployeeIndex].images),
              ),
              Text(
                  '${ListOfPerson.listOfPerson[indexForTakeEmployeeIndex].surname} ${ListOfPerson.listOfPerson[indexForTakeEmployeeIndex].name}'),
              Text(
                  '${ListOfPerson.listOfPerson[indexForTakeEmployeeIndex].patron} '),
              Text(
                ListOfPerson.listOfPerson[indexForTakeEmployeeIndex].position,
                style: TextStyle(color: Colors.blue),
              ),
              InfoColum(
                  info: 'Направление',
                  title: ListOfPerson
                      .listOfPerson[indexForTakeEmployeeIndex].direction),
              Divider(
                thickness: 0.5,
              ),
              InfoColum(
                  info: 'Отдел',
                  title: ListOfPerson
                      .listOfPerson[indexForTakeEmployeeIndex].department),
              Divider(
                thickness: 0.5,
              ),
              InfoColum(
                  info: 'Email',
                  title: ListOfPerson
                      .listOfPerson[indexForTakeEmployeeIndex].email),
              Divider(
                thickness: 0.5,
              ),
              InfoColum(
                  info: 'Дата Рождения',
                  title: ListOfPerson
                      .listOfPerson[indexForTakeEmployeeIndex].data),
              Divider(
                thickness: 0.5,
              ),
              InfoColum(
                  info: 'Основной номер телефона',
                  title: ListOfPerson
                      .listOfPerson[indexForTakeEmployeeIndex].number
                      .toString()),
              Divider(
                thickness: 0.5,
              ),
              InfoColum(
                  info: 'Рабочий номер телефона',
                  title: ListOfPerson
                      .listOfPerson[indexForTakeEmployeeIndex].number
                      .toString()),
              Divider(
                thickness: 0.5,
              ),
              InfoColum(
                  info: 'Номер WhatsApp',
                  title: ListOfPerson
                      .listOfPerson[indexForTakeEmployeeIndex].number
                      .toString()),
              Divider(
                thickness: 0.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoColum extends StatelessWidget {
  String title;
  String info;
  InfoColum({
    required this.info,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 23),
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5,
          ),
          Text(
            info,
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 14,
          ),
        ],
      ),
    );
  }
}
