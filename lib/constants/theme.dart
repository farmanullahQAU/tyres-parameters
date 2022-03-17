import 'package:flutter/material.dart';

class AppTheme{


  static final orangeTheme=ThemeData(
        primaryColor: Colors.orange.shade900,
        floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.orange.shade900,),
bottomNavigationBarTheme: BottomNavigationBarThemeData(selectedItemColor: Colors.orange.shade900,
  
  
  


),
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
          textStyle: TextStyle(color: Colors.white),
          padding: EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0),
          ),

        
        )),
        // inputDecorationTheme: InputDecorationTheme(

        //   contentPadding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
        //   filled: true,
        //   fillColor: Colors.transparent,
        //   labelStyle: TextStyle(fontSize: 17),
        //   // border: InputBorder.none,
        //   focusedBorder: OutlineInputBorder(
        //     borderSide: new BorderSide(color: StyleText.kGrey,width: 1.5),
        //     borderRadius: BorderRadius.all(Radius.circular(10.0)),
        //   ),
        //   enabledBorder: OutlineInputBorder(
        //       borderSide: new BorderSide(color: StyleText.kGrey,width: 1.5),
        //       borderRadius: BorderRadius.circular(10)
        //   ),

        //   hintStyle: TextStyle(color: Colors.grey),
        // ),
        //  scaffoldBackgroundColor:homeScaffoldColor,

        // elevatedButtonTheme: ElevatedButtonThemeData(
        //   style: ButtonStyle(
        //       backgroundColor: MaterialStateProperty.all(Colors.primaries!)),
        // ),
      );


    
}