import 'package:flutter/material.dart';

class AlbumCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 230,
        child: Stack(children: <Widget>[
          Card(
            elevation: 2,
            child: Row(
              children: <Widget>[
                Flexible(
                    flex: 1,
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          'assets/pizza.jpeg',
                          fit: BoxFit.cover,
                        ),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              width: 60,
                              color: Colors.black38,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.photo_library,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "12",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                      ],
                    )),
                Column(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Image.asset('assets/egg sausage.jpg'),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Flexible(
                      flex: 1,
                      child: Image.asset('assets/french toast.jpg'),
                    ),
                  ],
                )
              ],
            ),
          )
        ]));
  }
}
