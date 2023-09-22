import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class app extends StatefulWidget {
  const app({Key? key}) : super(key: key);

  @override
  _appState createState() => _appState();
}

class _appState extends State<app> {
  @override
  Widget build(BuildContext context) {
    TextEditingController n = TextEditingController();
    TextEditingController r = TextEditingController();

    double fact(number) {
      double f = 1;
      for (var i = 1; i <= number; i++) {
        f = f * i;
      }

      return f;
    }

    double minus(numb) {
      double min = (numb * (-1));

      return min;
    }

    double doub(numb) {
      double doub = (numb * (2));

      return doub;
    }

    TextField Inputs(txt, contrl, st) {
      return TextField(
        readOnly: st,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        controller: contrl,
        decoration: InputDecoration(
          label: Text(txt),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.solid,
              color: const Color.fromARGB(255, 8, 75, 10),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "FUNCTION APP",
          style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.bold, letterSpacing: 3),
        ),
        backgroundColor: const Color.fromARGB(255, 8, 75, 10),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Inputs("The Number", n, false),
                  SizedBox(
                    height: 20,
                  ),
                  Inputs("Result", r, true),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.all(8)),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateColor.resolveWith(
                                  (states) =>
                                      const Color.fromARGB(255, 8, 75, 10),
                                ),
                                fixedSize:
                                    MaterialStateProperty.all(Size(90, 30))),
                            onPressed: () {
                              r.text = minus(int.parse(n.text)).toString();
                            },
                            child: Text("Minus")),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateColor.resolveWith(
                                  (states) =>
                                      const Color.fromARGB(255, 8, 75, 10),
                                ),
                                fixedSize:
                                    MaterialStateProperty.all(Size(90, 30))),
                            onPressed: () {
                              r.text = fact(int.parse(n.text)).toString();
                            },
                            child: Text("Factorial")),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateColor.resolveWith(
                                  (states) =>
                                      const Color.fromARGB(255, 8, 75, 10),
                                ),
                                fixedSize:
                                    MaterialStateProperty.all(Size(90, 30))),
                            onPressed: () {
                              r.text = doub(int.parse(n.text)).toString();
                            },
                            child: Text("Double")),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateColor.resolveWith(
                                  (states) =>
                                      const Color.fromARGB(255, 8, 75, 10),
                                ),
                                fixedSize:
                                    MaterialStateProperty.all(Size(90, 30))),
                            onPressed: () {
                              r.text = " ";
                              n.text = " ";
                            },
                            child: Text("Clear")),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
