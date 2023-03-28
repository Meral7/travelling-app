// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travelling_app/models/trip.dart';
import '../app_data.dart';
import '../widgets/trip_item.dart';
// ignore: use_key_in_widget_constructors
class CategoryTripScreen extends StatelessWidget {
  static const screenRoute = '/category-trips';
  //final String categoryId;
  //final String categoryTitle;
// ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  //CategoryTripScreen(this.categoryId, this.categoryTitle);
  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    // ignore: unused_local_variable
    final categoryId = routeArgument['id'];
    final categoryTitle = routeArgument['title'];
    final filteredTrips = Trips_data.where((trip){
      return trip.categories.contains(categoryId);
    } ).
    toList() ;
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx , index ) {
        return TripItem( 
          id: filteredTrips[index].id ,
          title:filteredTrips[index].title ,
        imageUrl:filteredTrips[index].imageUrl,
        duration: filteredTrips[index].duration ,
         tripType: filteredTrips[index].tripType ,
         season: filteredTrips[index].season );
        },
         itemCount: filteredTrips.length ,
      )
    );
  }
}
