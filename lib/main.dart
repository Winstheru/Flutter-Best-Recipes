import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cooking_recipes/Components/components.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.deepPurple[300]),
      home: BestRecipesHome(),
    );
  }
}

class BestRecipesHome extends StatefulWidget {
  @override
  _BestRecipesHomeState createState() => _BestRecipesHomeState();
}

class _BestRecipesHomeState extends State<BestRecipesHome> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Best Recipes"),
        centerTitle: true,
        actions: <Widget>[
          Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage("assets/steak.png"),
                      fit: BoxFit.cover)),
              accountName: Text(
                "Winston",
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: Text(
                "wins@gmail.com",
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.blue
                        : Colors.white,
                child: Image.asset("assets/eraser.png"),
              ),
            ),
            ListTile(
              title: Text("My Location"),
              leading: Icon(FontAwesomeIcons.mapMarkerAlt),
              onTap: () {},
            ),
            ListTile(
              title: Text("Notification"),
              leading: Icon(FontAwesomeIcons.bell),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Container(
            // width: MediaQuery.of(context).size.width,
            width: size.width,
            child: Stack(
              children: <Widget>[
                // SizedBox(
                //     height: 200.0,
                //     width: 350.0,
                //     child: Carousel(
                //       images: [
                //         // NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                //         ExactAssetImage("assets/steak.png"),
                //         ExactAssetImage("assets/french toast.jpg"),
                //         ExactAssetImage("assets/egg sausage.jpg")
                //       ],
                //       dotSize: 3.0,
                //       dotSpacing: 15.0,
                //       dotColor: Colors.grey,
                //       indicatorBgPadding: 5.0,
                //       // dotBgColor: Colors.purple.withOpacity(0.5),
                //       dotBgColor: Colors.transparent,
                //       borderRadius: false,
                //       autoplay: false,
                //     )),
                Container(
                    height: 200.0,
                    width: size.width,
                    decoration: BoxDecoration(
                        backgroundBlendMode: BlendMode.dstATop,
                        color: Colors.black38),
                    child: Carousel(
                      images: [
                        // NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                        ExactAssetImage("assets/steak.png"),
                        ExactAssetImage("assets/french toast.jpg"),
                        ExactAssetImage("assets/egg sausage.jpg")
                      ],
                      dotSize: 3.0,
                      dotSpacing: 15.0,
                      dotColor: Colors.grey,
                      indicatorBgPadding: 5.0,
                      // dotBgColor: Colors.purple.withOpacity(0.5),
                      dotBgColor: Colors.transparent,
                      borderRadius: false,
                      autoplay: false,
                    )),

                // Container(
                //   color: Colors.black38,
                //   width: 400,
                //   height: 220,
                // ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        width: size.width * 0.8,
                        child: Text(
                          "Cooking with the Power of the Sun",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: size.width * 0.8,
                      child: Text(
                        "If you want to take your cooking skills up another notch then it might be",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      TypeChip(label: "VEGETARIAN"),
                      TypeChip(label: "SALADS"),
                      TypeChip(label: "MICROWAVE"),
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Easy Breakfast",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    PurpleButton(
                      text: "MORE",
                    )
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Card(
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: 150,
                              height: 200,
                              child: Image.asset(
                                "assets/french toast.jpg",
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    "French Toast Casserole",
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.timer,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      " 20 min",
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 150,
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Image.asset(
                                  "assets/egg sausage.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    // color: Colors.green,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8),
                                    child: Text(
                                      "Egg and Sausage Casserole",
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: Icon(
                                          Icons.timer,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Text(
                                        " 45 min",
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 280,
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Image.asset(
                                  "assets/casserol.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    // color: Colors.green,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8),
                                    child: Text(
                                      "Strawberry and Oatra Casserole",
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: Icon(
                                          Icons.timer,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Text(
                                        " 20 min",
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Learn How",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    PurpleButton(
                      text: "VIEW",
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                            color: Color(0xff7c94b6),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.5),
                                  BlendMode.dstATop),
                              image: AssetImage(
                                'assets/steak.png',
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Laura's Quick Slow Chili",
                                style: TextStyle(fontSize: 16),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.arrow_right,
                              color: Colors.grey,
                            ),
                            Text(
                              "18:23",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Best Cookbooks",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    PurpleButton(
                      text: "MORE",
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Card(
                      child: Column(
                        children: <Widget>[
                          Text("Friday Drinks"),
                          Placeholder(
                            fallbackWidth: 150,
                            fallbackHeight: 200,
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: <Widget>[
                          Text("Christmast Dinner"),
                          Placeholder(
                            fallbackWidth: 150,
                            fallbackHeight: 200,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
