import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_lab_4/myCounter.dart';

class MyHomePage extends StatelessWidget {
  int counter = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Counter Providers '),
        ),
        body: ChangeNotifierProvider(
          create: (context) => MyCounter(),
          child: Center(
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.all(50),
                    child: Consumer<MyCounter>(
                      builder: (context, mycount, child) {
                        return Text(
                          '${mycount.counter}',
                          style: TextStyle(fontSize: 25),
                        );
                      },
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Consumer<MyCounter>(
                        builder: (context, mycount, child) {
                          return ElevatedButton(
                            child: Text('Decrement'),
                            onPressed: () {
                              mycount.decrement();
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                      child: Consumer<MyCounter>(
                        builder: (context, mycount, child) {
                          return ElevatedButton(
                            child: Text('Increment'),
                            onPressed: () {
                              mycount.increment();
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Consumer<MyCounter>(
                    builder: (context, mycount, child) {
                      return ElevatedButton(
                        child: Text('Reset'),
                        onPressed: () {
                          mycount.reset();
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
