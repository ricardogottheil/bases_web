import 'package:bases_web/ui/shared/custom_flat_buttom.dart';
import 'package:flutter/material.dart';

class Page404 extends StatelessWidget {
  const Page404({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('404', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
            SizedBox(height: 10,),
            Text('Page not found', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10,),
            CustomFlatButton(
              text: 'Back', 
              onPressed: ()=> Navigator.pushNamed(context, '/stateful')
            ),
          ],
        ),
      )
    );
  }
}