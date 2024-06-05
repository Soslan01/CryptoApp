import 'package:flutter/material.dart';

final darkAndPurpleTheme = ThemeData(
        //Background color Theme
        scaffoldBackgroundColor: const Color.fromARGB(180, 45, 45, 45),
        primarySwatch: Colors.purple,
        dividerColor: const Color.fromARGB(255, 170, 55, 190),
        listTileTheme: const ListTileThemeData(
          iconColor: Colors.white,
        ),
        //Appbar Color Theme
        appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 150, 50, 175),
            elevation: 0,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w700,
            )),

        useMaterial3: true,
        //Text Theme
        textTheme: TextTheme(
          bodyMedium: const TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 20,
              fontWeight: FontWeight.w700),
          //SubText Theme
          labelSmall: TextStyle(
            color: const Color.fromARGB(255, 205, 152, 218).withOpacity(0.6),
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
      );