import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//создаем свой класс с 2 строками переменными
//которые потом используем для списка, с 2 значениями
class TwoString {
  final String text;
  final String text2;

  TwoString({required this.text, required this.text2});
}

class MyApp extends StatelessWidget {
  //создаем список строк с данными для списка
  final List<TwoString> textData = [
    TwoString(text: '1', text2: 'a'),
    TwoString(text: '2', text2: 'фыв'),
    TwoString(text: '3', text2: 'ывпа'),
    TwoString(text: '4', text2: 'цйук'),
    TwoString(text: 'что', text2: 'ничто'),

    // '1', '2', '3', '4', 'Text', **** это был массив с одинарным строковым значением
  ];
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //создаем список виджетов которые будем получать из списка данных textData
    // List<Widget> testFields = [];

//создаем цикл в которой переменная text получает данные из списка textData
//     for (var text in textData) {
    // создаем переменную widget виджета TextWrapper который принимает в себя переременную text
//       final widget = TextWrapper(text: text);
    //добавляем в список testFields все виждеты widget(которые содержат значения text в списке textData)
//       testFields.add(widget);
//     }

    //та же функция перебора по листу в строчной функции
    final List<Widget> testFields = textData
        .map((TwoString TwoString) => TextWrapper(
              text: TwoString.text,
              text2: TwoString.text2,
            ))
        .toList();

    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: testFields,
        ),
      ),
    );
  }
}

class TextWrapper extends StatelessWidget {
  final String text;
  final String text2;
  const TextWrapper({Key? key, required this.text, required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        Spacer(),
        Text(
          text2,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ],
    );
  }
}
