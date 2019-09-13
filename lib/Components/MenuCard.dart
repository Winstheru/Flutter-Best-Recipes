import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  MenuCard(
      {Key key,
      @required this.image,
      @required this.title,
      @required this.time})
      : super(key: key);
  final image;
  final String title;
  final time;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      child: Card(
        elevation: 2,
        child: Wrap(
          children: <Widget>[
            Image.asset(
              image,
              fit: BoxFit.cover,
            ),
            ListTile(
              title: Text(title, style: TextStyle(fontSize: 14),),
              subtitle: Row(
                children: <Widget>[
                  Icon(
                    Icons.timer,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      " " + time,
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
