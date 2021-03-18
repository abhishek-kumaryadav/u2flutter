import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var imgpath = "./assets/images/destination.jpeg";

  File selectedImage;

  final _picker = ImagePicker();
  Future<Album> fAlbum;
  @override
  void initState() {
    super.initState();
    fAlbum = getImage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<Album>(
      future: fAlbum,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data.image);
        } else {}
        return CircularProgressIndicator();
      },
    ),
      // floatingActionButton: FloatingActionButton.,
    );
  }

  Future<Album> getImage() async {
    final pickedFile = await _picker.getImage(source: ImageSource.gallery);
    File img = File(pickedFile.path);
    final bytes = File(pickedFile.path).readAsBytesSync();
    // print(base64.encode(bytes));
    //   print("before");
    //   var response= await http.post('http://939624c2c84b.ngrok.io/b64image',
    //     body: jsonEncode(<String,String>{
    //       'b64image':base64.encode(bytes)
    //       }),
    //   );
    //   print(response.statusCode);
    //   var  retbyte=base64.decode(response.body);
    //   var file=File("./assets/images/saveas.png");
    //   file.writeAsBytesSync(retbyte);
    //   selectedImage=file;
    // }
    Response response;
    Dio dio = new Dio();
    print('before');
    var params={
      'b64enc':base64.encode(bytes)
    };
    print(params['b64enc']);
    response = await dio.get(
      "http://3b63723901d1.ngrok.io/b64image/",
      queryParameters: (params),
    );
    print('after');
    print(response.statusCode);
    print(response.data);
  }
}

class Album {
  final String image;

  Album({this.image});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      image: json['image'],
    );
  }
}
