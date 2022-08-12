import 'package:flutter/material.dart';
import 'package:gofere_travels/widgets/topDestinationContainer.dart';

class TopDestinationPage extends StatefulWidget {
  const TopDestinationPage({Key? key}) : super(key: key);

  @override
  State<TopDestinationPage> createState() => _TopDestinationPageState();
}

class _TopDestinationPageState extends State<TopDestinationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: Text("Top destinations",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w500
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 30,),
          ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return TopDestinationContainer(context, "Addis Ababa", "1 Tour", "5 Hotels", "10 Cars", "20 Rentals", "images/place1.jpg");
              }),
        ],
      ),
    );
  }
}