
import 'package:flutter/material.dart';
import 'package:bases_web/ui/shared/custom_flat_buttom.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  _CounterViewState createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Text('Stateful Counter', style: TextStyle(fontSize: 30)),
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Contador: $counter',
                style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButton(
                text: 'Incrementar',
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
              ),
              CustomFlatButton(
                text: 'Decrementar',
                onPressed: () {
                  setState(() {
                    if (counter > 0) {
                      counter--;
                    }
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
