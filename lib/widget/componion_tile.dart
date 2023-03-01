import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CompanionTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: 270.0,
            width: 150.0,
            child: Card(
                elevation: 4.0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 150.0,
                      width: 150.0,
                      child: Ink.image(
                        image: NetworkImage(
                            'https://images.hindustantimes.com/img/2022/11/20/1600x900/Fh8-GrTWQAMEno8_1668910522750_1668910539398_1668910539398.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(16.0),
                      alignment: Alignment.centerLeft,
                      child: Text('Lora'),
                    ),
                    ButtonBar(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          child: Text(
                            'Details',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(customGreen),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )
            )
        )
    );
  }
}
