import 'package:flutter/material.dart';

class AlbumCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 230,
        child: Stack(children: <Widget>[
          Card(
            child: 
            Row(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Image.asset('assets/casserol.jpg', fit: BoxFit.cover,),
                ),
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
