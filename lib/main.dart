//
// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import '';
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     title: 'views',
//     theme: ThemeData.dark(),
//     home: MyHomePage(),
//     routes: {
//       MyHomePage.routeName: (context)=> MyHomePage(),
//     },
//   ));
// }
//
// class MyHomePage extends StatelessWidget {
//   static const routeName='/home';
//   Future<Url> futureRes;
//
//   Future<Url> fetchUrl(String url) async {
//     final response = await http.get(url);
//     print('Got response');
//     if (response.statusCode == 200) {
//       // If the server did return a 200 OK response,
//       // then parse the JSON.
//       print('Response 200');
//       return Url.fromJson(jsonDecode(response.body));
//     } else {
//       // If the server did not return a 200 OK response,
//       // then throw an exception.
//       throw Exception('Failed to load album');
//     }
//   }
//
//   @override
//   void initState(){
//     // futureRes = fetchUrl('http://192.168.43.226:5000/');
//     futureRes = fetchUrl('https://jsonplaceholder.typicode.com/albums/1');
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: futureRes,
//         builder: (context, snapshot){
//           if(snapshot.hasData){
//             return Center(child: Text(snapshot.data.message));
//           }
//
//           return CircularProgressIndicator();
//         },
//       )
//     );
//   }
// }
// class Url {
//   final String message;
//
//   Url({this.message});
//
//   factory Url.fromJson(Map<String, dynamic> json) {
//     return Url(
//       message: json['id'],
//     );
//   }
// }

// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:views/home.dart';

void  main()=>runApp(MaterialApp(
  title: 'U2 FILTER',
  initialRoute: '/',
  routes: {
    '/':(context) => HomeScreen(),
  },
));


