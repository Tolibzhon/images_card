class Person {
  String name;
  String surname;
  String patron;
  String position;
  String direction;
  String department;
  String email;
  String data;
  int number;
  String images;
  Person(
      {required this.surname,
      required this.name,
      required this.patron,
      required this.position,
      required this.direction,
      required this.department,
      required this.email,
      required this.data,
      required this.number,
      required this.images});
}

class ListOfPerson {
  static List<Person> listOfPerson = [
    Person(
        surname: "Жыпаркулов",
        name: "Мырзабек",
        patron: "Жыпаркулович",
        position: "Генеральный директор",
        direction: "Дирекция управления",
        department: "Отдел управления",
        email: "mjagarkulov@gosecotech.kg",
        data: "16.09.1972",
        number: 05501234321,
        images: "assets/images/japarov.png"),
    Person(
        surname: "Артыкбаев",
        name: "Расул",
        patron: "Саткынович",
        position: "Директор",
        direction: "Дирекция управления",
        department: "Отдел управления",
        email: "artykov@gosecotech.kg",
        data: "15.07.1962",
        number: 0550223433,
        images: "assets/images/4.png"),
    Person(
        surname: "Адилет",
        name: "Ибраев",
        patron: "Джаанбаевич",
        position: "разработчик",
        direction: "Проект мененджер",
        department: "Отдел flutter",
        email: "ibraev@gosecotech.kg",
        data: "16.05.2000",
        number: 0555555550,
        images: "assets/images/2.png"),
    Person(
        surname: "Маматов",
        name: "Улугбек",
        patron: "Жыпаркулович",
        position: "Помошник директора",
        direction: "Управления ДКМ",
        department: "Отдел управления",
        email: "mamatov@gosecotech.kg",
        data: "16.09.1972",
        number: 0550123451,
        images: "assets/images/3.png"),
    Person(
        surname: "Артыкбаев",
        name: "Расул",
        patron: "Саткынович",
        position: "Директор",
        direction: "Дирекция управления",
        department: "Отдел управления",
        email: "artykov@gosecotech.kg",
        data: "15.07.1962",
        number: 0550223433,
        images: "assets/images/2.png"),
  ];
}
