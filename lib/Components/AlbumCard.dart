import 'package:flutter/material.dart';

class AlbumCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: 
      Card(
        child: Row(
          children: <Widget>[
            Flexible(
              flex: 2,
              child: Image.asset('assets/casserol.jpg'),
            ),
            Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  fit: FlexFit.loose,
                  child: Image.asset('assets/egg sausage.jpg'),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.loose,
                  child: Image.asset('assets/french toast.jpg'),
                ),
              ],
            )
          ],
        )
      ),
    );
  }
}