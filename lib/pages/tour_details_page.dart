import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gofere_travels/constants/colors.dart';
import 'package:gofere_travels/pages/checkoutpage.dart';
import 'package:gofere_travels/pages/indexpage.dart';
import 'package:gofere_travels/pages/signin.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/uiw.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/charm.dart';
import 'package:iconify_flutter/icons/jam.dart';
import 'package:iconify_flutter/icons/ion.dart';
import 'package:iconify_flutter/icons/uil.dart';
import 'package:iconify_flutter/icons/cil.dart';

class TourDetailsPage extends StatefulWidget {
  String name;
  String imageUrl;
  String location;
  double starCount;
  int reviewCount;
  // String imageUrl, String location, int starCount, reviewCount
  TourDetailsPage(
    this.name,
    this.imageUrl,
    this.location,
    this.starCount,
    this.reviewCount,
  );

  @override
  State<TourDetailsPage> createState() => _TourDetailsPageState(
        name,
        imageUrl,
        location,
        starCount,
        reviewCount,
      );
}

class _TourDetailsPageState extends State<TourDetailsPage> {
  String name;
  String imageUrl;
  String location;
  double starCount;
  int reviewCount;
  _TourDetailsPageState(
    this.name,
    this.imageUrl,
    this.location,
    this.starCount,
    this.reviewCount,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            height: 80,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: Offset(0, 1.0),
                blurRadius: 7.0,
              )
            ], color: Colors.white),
            child: AppBar(
                brightness: Brightness.dark,
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                toolbarHeight: 70,
                automaticallyImplyLeading: false,
                actions: [
                  IconButton(
                    padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                    iconSize: 30,
                    onPressed: () {},
                    icon: Iconify(
                      Jam.shopping_cart,
                      size: 28,
                    ),
                  ),
                  IconButton(
                      padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                      iconSize: 30,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SigninPage()));
                      },
                      icon: Iconify(
                        Uiw.user,
                        size: 22,
                      )),
                ],
                title: GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => IndexPage()));
                  },
                  child: Image.asset(
                    "images/logo_small.png",
                    scale: 22,
                  ),
                )),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imageUrl), fit: BoxFit.cover)),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  padding: EdgeInsets.only(left: 10),
                  color: Colors.black.withOpacity(0.3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 110.h,
                      ),
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            "Home",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.circle,
                            color: Colors.white,
                            size: 5,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Ethiopia",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.circle,
                            color: Colors.white,
                            size: 5,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Flexible(
                            child: Text(
                              location,
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.circle,
                            color: Colors.white,
                            size: 5,
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      // Container(
                      //   margin: EdgeInsets.only(left: 10),
                      //   child: Text(
                      //     name,
                      //     style: TextStyle(
                      //         fontSize: 15,
                      //         color: Colors.white60,
                      //         fontWeight: FontWeight.w500),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 10, top: 30, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 23,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 10, left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                location,
                                maxLines: 2,
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 17),
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                                Text(
                                  " $starCount",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                Text(
                                  " ($reviewCount Reviews)",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 17),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(6),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                                color: Colors.black54),
                                          ),
                                          child: Iconify(
                                            Ic.outline_watch_later,
                                            size: 20,
                                            color: Colors.black54,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Duration",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15),
                                            ),
                                            Text("6 hours",
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 12))
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(6),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border:
                                              Border.all(color: Colors.black54),
                                        ),
                                        child: Iconify(
                                          Uil.users_alt,
                                          size: 20,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Group Size",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15),
                                          ),
                                          Text("6 people",
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 12))
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(6),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border:
                                              Border.all(color: Colors.black54),
                                        ),
                                        child: Iconify(
                                          Ion.footsteps_outline,
                                          size: 20,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Tour Type",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15),
                                          ),
                                          Text("Daily Tour",
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 12))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border:
                                            Border.all(color: Colors.black54),
                                      ),
                                      child: Iconify(
                                        Cil.language,
                                        size: 20,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Languages",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15),
                                        ),
                                        Text("Amharic, English,",
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 12)),
                                        // Text("English,",
                                        //     style: TextStyle(
                                        //         color: Colors.black54,
                                        //         fontSize: 12)),
                                        Text("Francais, Oromifa",
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 12)),
                                        // Text("Oromifa,",
                                        //     style: TextStyle(
                                        //         color: Colors.black54,
                                        //         fontSize: 12)),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 320,
                        child: Stack(
                          children: [
                            StaggeredGrid.count(
                              crossAxisCount: 4,
                              mainAxisSpacing: 4,
                              crossAxisSpacing: 4,
                              children: [
                                StaggeredGridTile.count(
                                    crossAxisCellCount: 4,
                                    mainAxisCellCount: 2,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(imageUrl),
                                              fit: BoxFit.cover)),
                                      child: Container(
                                        color: Colors.black.withOpacity(0.3),
                                      ),
                                    )),
                                StaggeredGridTile.count(
                                    crossAxisCellCount: 2,
                                    mainAxisCellCount: 2,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "images/place2.jpg"),
                                              fit: BoxFit.cover)),
                                      child: Container(
                                        color: Colors.black.withOpacity(0.3),
                                      ),
                                    )),
                                StaggeredGridTile.count(
                                    crossAxisCellCount: 2,
                                    mainAxisCellCount: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image:
                                                  AssetImage("images/car1.jpg"),
                                              fit: BoxFit.cover)),
                                      child: Container(
                                        color: Colors.black.withOpacity(0.3),
                                      ),
                                    )),
                                StaggeredGridTile.count(
                                    crossAxisCellCount: 2,
                                    mainAxisCellCount: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "images/place1.jpg"),
                                              fit: BoxFit.cover)),
                                      child: Container(
                                        color: Colors.black.withOpacity(0.3),
                                      ),
                                    )),
                              ],
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                width: 124,
                                margin: EdgeInsets.only(right: 5),
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Navigator.pop(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.black.withOpacity(0.4),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                  child: Row(
                                    children: [
                                      Iconify(
                                        Charm.apps,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      Text(
                                        "  All Photo",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "About this tour",
                              style: TextStyle(
                                  fontSize: 26,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Divider(
                              color: Colors.black,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Included/Excluded",
                              style: TextStyle(
                                  fontSize: 26,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Iconify(
                                  Ion.ios_checkmark_circle,
                                  color: Colors.green[200],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Specialized bilingual guide",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Iconify(
                                  Ion.ios_checkmark_circle,
                                  color: Colors.green[200],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Private Transport",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Iconify(
                                  Ion.ios_checkmark_circle,
                                  color: Colors.green[200],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Flexible(
                                  child: Text(
                                    "Entrance fees (Cable and car and Moon Valley)",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Iconify(
                                  Ion.ios_checkmark_circle,
                                  color: Colors.green[200],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Flexible(
                                  child: Text(
                                    "Box lunch water, banana apple and chocolate",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Iconify(
                                  Ic.baseline_cancel,
                                  color: Colors.red[200],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Additional Services",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Iconify(
                                  Ic.baseline_cancel,
                                  color: Colors.red[200],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Insurance",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Iconify(
                                  Ic.baseline_cancel,
                                  color: Colors.red[200],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Drink",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Iconify(
                                  Ic.baseline_cancel,
                                  color: Colors.red[200],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Tickets",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Divider(
                              color: Colors.black,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Tour's Location",
                              style: TextStyle(
                                  fontSize: 26,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.black54,
                                  size: 25,
                                ),
                                Text(
                                  " Wilmington",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black54),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 500,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "images/tour_location.png"))),
                            ),
                            SizedBox(
                              height: 40,
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      floatingActionButton: ElevatedButton(
          onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => CheckoutPage(name, imageUrl, location)));
      },
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 2, 120, 217),
          onPrimary: Colors.white,
          padding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          )
        ),
        child: Text("Book"),
      ),
    );
  }
}
