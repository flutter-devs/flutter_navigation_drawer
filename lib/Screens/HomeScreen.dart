import 'package:AeologicSplashDemo/Constant/Constant.dart';
import 'package:AeologicSplashDemo/Screens/DefaultContainer.dart';
import 'package:AeologicSplashDemo/Screens/PhotoContainerScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: const Text("Gallery"),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search), onPressed: () {}),
          new IconButton(
              icon: new Icon(Icons.more_vert), onPressed: () {})
        ],
      ),
      drawer: new Drawer(
          child: new ListView(
        children: <Widget>[

          new Container(child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: new Image.asset('assets/images/logo.png'),
          ),color: Color(0xFFf0f0f0),)

          ,
          new ListTile(
            leading: new Icon(Icons.photo),
            title: new Text("Photo"),
            trailing: new Text("96",style: TextStyle(fontWeight: FontWeight.bold),),

            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed(PHOTO_CONTAINER_SCREEN);
            },
          ),
          new ListTile(
            leading: new Icon(Icons.video_library),
            title: new Text("Video"),
            trailing: new Text("58",style: TextStyle(fontWeight: FontWeight.bold),),

            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed(VIDEO_CONTAINER_SCREEN);
            },
          ),
          new ListTile(
            leading: new Icon(Icons.photo_library),
            trailing: new Text("56",style: TextStyle(fontWeight: FontWeight.bold),),

            title: new Text("Album"),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed(ALBUM_CONTAINER_SCREEN);
            },
          )
        ],
      )),
      body: new DefaultContainerScreen()
    );
    // TODO: implement build
  }
}
