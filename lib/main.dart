import 'package:cooking_recipes/Components/AlbumCard.dart';
import 'package:cooking_recipes/Components/MenuCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cooking_recipes/Components/components.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final warna = Color(0xFF643DB4);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(primaryColor: Colors.deepPurple[300]),
      theme: ThemeData(primaryColor: warna),
      //#643DB4
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
                      image: ExactAssetImage("assets/flutter-logo.png",),
                      fit: BoxFit.contain)),
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
                child: Image.asset("assets/profile-user.png", fit: BoxFit.cover,),
              ),
            ),
            ListTile(
              title: Text("My Location",),
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
                Container(
                  height: 200,
                  width: size.width,
                  color: Colors.black87,
                ),
                Container(
                  height: 200.0,
                  width: size.width,
                  child: Carousel(
                    images: [
                      // NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                      Opacity(
                        opacity: 0.4,
                        child: Image.asset(
                          'assets/steak.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Opacity(
                        opacity: 0.4,
                        child: Image.asset(
                          'assets/french toast.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Opacity(
                        opacity: 0.4,
                        child: Image.asset(
                          'assets/egg sausage.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      // ExactAssetImage("assets/steak.png"),
                      // ExactAssetImage("assets/french toast.jpg"),
                      // ExactAssetImage("assets/egg sausage.jpg")
                    ],
                    dotSize: 3.0,
                    dotSpacing: 15.0,
                    dotColor: Colors.grey,
                    indicatorBgPadding: 5.0,
                    // dotBgColor: Colors.purple.withOpacity(0.5),
                    dotBgColor: Colors.transparent,
                    borderRadius: false,
                    autoplay: false,
                  ),
                ),

                // Container(
                //   color: Colors.black38,
                //   width: 400,
                //   height: 220,
                // ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(
                      height: 60,
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
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: <Widget>[
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: <Widget>[
                    TypeChip(label: "VEGETARIAN"),
                    TypeChip(label: "SALADS"),
                    TypeChip(label: "MICROWAVE"),
                    TypeChip(label: "OTHERS"),
                  ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
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
                Container(
                  width: size.width,
                  height: 310,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      MenuCard(
                        image: "assets/french toast.jpg",
                        title: "French Toast Casserole",
                        time: "20 min",
                      ),
                      MenuCard(
                        image: "assets/egg sausage.jpg",
                        title: "Egg and Sausage Casserole",
                        time: "45 min",
                      ),
                      MenuCard(
                        image: "assets/casserol.jpg",
                        title: "Strawberry and Oatra Casserole",
                        time: "20 min",
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
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
                    elevation: 2,
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
                              padding:
                                  const EdgeInsets.only(left: 8.0, top: 8.0),
                              child: Text(
                                "Laura's Quick Slow Cooker Turkey Chili",
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
                      padding: const EdgeInsets.only(left: 16.0),
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
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          AlbumCard(),
                        ],
                      ),
                      Stack(
                        children: <Widget>[
                          AlbumCard(),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
