import 'package:flutter/material.dart';
import 'package:eval_ex/expression.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String display = '';

  void apagar_calculo() {
    display = '';
  }

  void resutado() {
    Expression exp = Expression("$display");
    setState(() {
      display = exp.eval().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora - CEST"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Colors.blue,
                width: double.maxFinite,
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '${display}',
                          style: TextStyle(
                            fontSize: 60,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      height: 60,
                      color: Colors.blue,
                      onPressed: () {},
                      child: Text('.'),
                    ),
                    MaterialButton(
                      height: 60,
                      color: Colors.blue,
                      onPressed: () {},
                      child: Text('C'),
                    ),
                    MaterialButton(
                      height: 60,
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          apagar_calculo();
                        });
                      },
                      child: Text('DEL'),
                    ),
                    MaterialButton(
                      height: 60,
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          if (display == '') {
                          } else {
                            display = display + '*';
                          }
                        });
                      },
                      child: Text('*'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      height: 60,
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          display = display + '7';
                        });
                      },
                      child: Text('7'),
                    ),
                    MaterialButton(
                      height: 60,
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          display = display + '8';
                        });
                      },
                      child: Text('8'),
                    ),
                    MaterialButton(
                      height: 60,
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          display = display + '9';
                        });
                      },
                      child: Text('9'),
                    ),
                    MaterialButton(
                      height: 60,
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          if (display == '') {
                          } else {
                            display = display + '/';
                          }
                        });
                      },
                      child: Text('/'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      height: 60,
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          display = display + '4';
                        });
                      },
                      child: Text('4'),
                    ),
                    MaterialButton(
                      height: 60,
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          display = display + '5';
                        });
                      },
                      child: Text('5'),
                    ),
                    MaterialButton(
                      height: 60,
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          display = display + '6';
                        });
                      },
                      child: Text('6'),
                    ),
                    MaterialButton(
                      height: 60,
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          if (display == '') {
                          } else {
                            display = display + '+';
                          }
                        });
                      },
                      child: Text('+'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      height: 60,
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          display = display + '1';
                        });
                      },
                      child: Text('1'),
                    ),
                    MaterialButton(
                      height: 60,
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          display = display + '2';
                        });
                      },
                      child: Text('2'),
                    ),
                    MaterialButton(
                      height: 60,
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          display = display + '3';
                        });
                      },
                      child: Text('3'),
                    ),
                    MaterialButton(
                      height: 60,
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          if (display == '') {
                          } else {
                            display = display + '-';
                          }
                        });
                      },
                      child: Text('-'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      height: 60,
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          display = display + '0';
                        });
                      },
                      child: Text('0'),
                    ),
                    MaterialButton(
                      height: 60,
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          if (display == '') {
                          } else {
                            display = display + '.';
                          }
                        });
                      },
                      child: Text('.'),
                    ),
                    MaterialButton(
                      height: 60,
                      color: Colors.blue,
                      onPressed: () {},
                      child: Text('%'),
                    ),
                    MaterialButton(
                      height: 60,
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          resutado();
                        });
                      },
                      child: Text('='),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
