import 'package:flutter/material.dart';
import 'package:ninja/models/trip_data.dart';

import '../shared/Heart.dart';

class Details extends StatefulWidget {
  final Trip trip;

  const Details({
    super.key,
    required this.trip,
  });

  @override
  State<Details> createState() => _DetailsState(trip);
}

class _DetailsState extends State<Details> {
  late Trip trip;

  _DetailsState(this.trip);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ClipRRect(
                  child: Hero(
                    tag: trip.img,
                    child: Image.asset(
                                  'images/${trip.img}',
                                  height: 360,
                                  fit: BoxFit.cover,
                                  alignment: Alignment.topCenter,
                                ),
                  )),
              SizedBox(height: 30),
              ListTile(
                  title: Text(trip.title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey[800])),
                  subtitle: Text(
                    '${trip.nights} night stay for only \$${trip.price}',
                  ),
                  trailing: Heart()),
              Padding(
                  padding: EdgeInsets.all(18),
                  child: Text("description"
                    ,
                      style: TextStyle(color: Colors.grey[600], height: 1.4))),
            ],
          ),
        ));
  }
}
