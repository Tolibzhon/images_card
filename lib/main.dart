import 'package:flutter/material.dart';
import 'package:images_card/baza.dart';
import 'package:images_card/scrall_all_person.dart';
import 'package:images_card/view_person.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ListOfPerson list = ListOfPerson();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "Сотрудники",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 42,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Поиск",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                      color: Color(0xff757575)),
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey[400],
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xffE8E8E8), width: 0.5),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xffE8E8E8), width: 0.5),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "У кого сегодня день рождения",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.blue),
            ),
            Container(
              height: 87,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 2, top: 14, bottom: 14),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (int i = 0; i < ListOfPerson.listOfPerson.length; i++)
                    buildCircleAvatar(list, i, context),
                ],
              ),
            ),
            Scrall_all_employees(),
          ],
        ),
      ),
    );
  }

  Widget buildCircleAvatar(ListOfPerson list, int index, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => EmployeePager(
                      indexForTakeEmployeeIndex: index,
                    )));
      },
      child: CircleAvatar(
        radius: 40,
        child: Image.asset(
          ListOfPerson.listOfPerson[index].images,
          height: 60,
          width: 60,
        ),
      ),
    );
  }
}
