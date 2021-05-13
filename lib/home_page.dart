import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int number1;
  int number2;
  int result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Calculadora binária',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 10.0),
              child: Title(
                color: Colors.black,
                child: Text(
                  'Insira o valor 1',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 50,
                  child: TextField(
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: false),
                    // onChanged: (String value1) {
                    //   assert(num.parse(value1) is int);
                    //   number1 = (num.parse(value1));
                    // },
                    onSubmitted: (String value1) {
                      setState(() {});
                      assert(num.parse(value1) is int);
                      number1 = (num.parse(value1));
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 10.0),
              child: Title(
                color: Colors.black,
                child: Text(
                  'Insira o valor 2',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 50,
                  child: TextField(
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: false),
                    // onChanged: (String value2) {
                    //   assert(num.parse(value2) is int);
                    //   number2 = (num.parse(value2));
                    // },
                    onSubmitted: (String value2) {
                      setState(() {});
                      assert(num.parse(value2) is int);
                      number2 = (num.parse(value2));
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 10.0),
              child: Title(
                color: Colors.black,
                child: Text(
                  'Escolha a operação',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    icon: FaIcon(FontAwesomeIcons.plus),
                    onPressed: () {
                      setState(() {});
                      result = number1 + number2;
                    }),
                IconButton(
                    icon: FaIcon(FontAwesomeIcons.minus),
                    onPressed: () {
                      setState(() {});
                      result = number1 - number2;
                    }),
                IconButton(
                    icon: Icon(Icons.close_sharp),
                    onPressed: () {
                      setState(() {});
                      result = number1 * number2;
                    }),
                IconButton(
                    icon: FaIcon(FontAwesomeIcons.divide),
                    onPressed: () {
                      setState(() {});
                      result = number1 ~/ number2;
                    }),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 10.0),
              child: Title(
                color: Colors.black,
                child: Text(
                  'Resultado: \n ${result == null ? '' : result}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
