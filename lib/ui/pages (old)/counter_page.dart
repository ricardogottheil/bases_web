import 'package:bases_web/ui/shared/custom_app_menu.dart';
import 'package:flutter/material.dart';
import 'package:bases_web/ui/shared/custom_flat_buttom.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppMenu(),
          Spacer(),

          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Text(
              'Stateful Counter',
              style: TextStyle(fontSize: 30)
            ),
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
                    if(counter > 0) {
                      counter--;
                    }
                  });
                },
              ),
            ],
          ),

          Spacer()
          
        ],
      ),
    );
  }
}
