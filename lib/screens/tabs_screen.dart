import 'package:flutter/material.dart';
import 'package:travelling_app/screens/favorites_screens.dart';

import '../screens/categories_screen.dart';
import 'favorites_screens.dart';

class TabsScreen extends StatelessWidget{
const TabsScreen ({Key key}) : super(key: key);
@override
Widget build (BuildContext context)
{
  return DefaultTabController(
    length: 2,
  child: Scaffold(
    appBar: AppBar (
      title:Text ('دليل سياحي'),
      bottom: TabBar( 
        tabs:[
          Tab(
            icon: Icon(Icons.dashboard),
            text: 'التصنيات',
            ),
            Tab(
            icon: Icon(Icons.dashboard),
            text: 'المفضلة',
               ),
             ],
                    ),
                   ),
                   body: TabBarView(
                    children: [
                      CategoriesScreen(),
                      FavoritesScreen(),
                    ],
                   ),
                  ),
                 );
                }
              } 
