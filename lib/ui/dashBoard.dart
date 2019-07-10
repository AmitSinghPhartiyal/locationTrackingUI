import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:maps/widgets/MapView.dart';

class DashBoardPage extends StatefulWidget {
  DashBoardPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  MapsContainer createState() => MapsContainer();
}

class MapsContainer extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(child: GoogleMaps()),
          new Positioned(
              top: Platform.isAndroid ? 70.0 : 90.0,
              left: 0.0,
              right: 0.0,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        height: 80.0,
                        width: 800.0,
                        child: CurrentLocationCard()),
                  ],
                ),
              )),
          new Positioned(
              bottom: Platform.isAndroid ? -20.0 : 0,
              left: 0.0,
              right: 0.0,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[PickupLocationCard(), PickupButton()],
                    )
                  ],
                ),
              )),
          new Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: AppBar(
              iconTheme: new IconThemeData(color: Colors.black),

              title: Text(
                'Select pickup location',
                style: TextStyle(fontSize: 22, color: Colors.black),
              ),
              backgroundColor: Colors.transparent, //No more green
              elevation: 0.0, //Shadow gone
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            new DrawerHeader(
              child: Center(
                child: Text('Maps',
                    style: TextStyle(color: Colors.white, fontSize: 40)),
              ),
              decoration: BoxDecoration(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}

class CurrentLocationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 5,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Expanded(
              flex: 2,
              child: Icon(Icons.location_searching, color: Colors.green),
            ),
            new Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Near Home Dehradun Jabal Al Arabsdcf Jabal Al Arabsdcf",
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text(
                      "Jabal Al Arabsdcf Dehradun Jabal Al Arabsdcf Jabal Al Arabsdcf",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey, fontSize: 20))
                ],
              ),
            ),
            new Expanded(
              flex: 2,
              child: Icon(Icons.favorite, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}

class PickupLocationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 6,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.add_box,
                        color: Colors.green,
                        size: 40,
                      ),
                      Text('GO',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
                Icon(
                  Icons.expand_more,
                  color: Colors.grey,
                  size: 30,
                ),
              ],
            ),
          )),
    );
  }
}

class PickupButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 30),
        child: Card(
          elevation: 5,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                flex: 8,
                child: Container(
                  margin: const EdgeInsets.only(left: 0, right: 10),
                  child: MaterialButton(
                    padding: EdgeInsets.all(15.0),
                    color: Colors.green,
                    child: Text(
                      "Confirm pickup",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: MaterialButton(
                    padding: EdgeInsets.all(10.0),
                    color: Colors.white,
                    child: Icon(
                      Icons.calendar_today,
                      color: Colors.green,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
