import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Gotham'),
      home: principal()
    );
  }
}

Widget principal() {
  return Stack(
    children: [ 
      inicio(),
      rodape()],  
  );
}

Widget rodape() {
  return Positioned(
    child: Text("Menu"), 
    bottom: 10);
}

Widget inicio() {
  return SingleChildScrollView(
    child: Container(
      padding: EdgeInsets.fromLTRB(15, 25, 15, 0),
      decoration: BoxDecoration(
        gradient: LinearGradient( 
          begin: Alignment.topLeft, 
          end: Alignment(0.1,0.1), 
          colors: [ Color.fromRGBO(80, 80, 80, 1), 
          Colors.black])
      ),
      child: DefaultTextStyle(
        child: painelInicio(),
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontFamily: "Gotham"
        )
      
      ) 
      
    )
  );
}

Widget painelInicio() {
  return  Column(
      children: [
        titulo(),
        ultimosAlbuns()
      ],
  );
}

Widget titulo() {
  return
   Row(children: [
    Expanded(flex: 9, child: 
      Text("Boa noite", style: TextStyle(fontSize: 20))
    ),
    Expanded(flex: 2, child: 
      Icon(Icons.notifications_outlined, color: Colors.white,),
    ),
    Expanded(flex: 2, child: 
      Icon(Icons.alarm, color: Colors.white),
    ),
    Expanded(flex: 2, child: 
      Icon(Icons.settings_outlined, color: Colors.white)
    )
  ]);
}

Widget miniAlbum(foto, album) {
  return 
  Expanded(flex: 6, child:
    Container(child:
      Row(
      children: [
        ClipRRect(
          child: Image(image: AssetImage(foto), width: 50),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(4), 
              bottomLeft: Radius.circular(4)
          )
        ),
        Flexible( 
          child: Container(
            child: Text(album),
            margin: EdgeInsets.all(5)
          )
        )
      ]),
      margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(70, 70, 70, 1),
        borderRadius: BorderRadius.circular(4)),
    )
  );
}

Widget ultimosAlbuns() {
  return Column(children: [
      Row(children: [
        miniAlbum("albuns/album01.jpg", "Arnaldo Antunes"), 
        miniAlbum("albuns/album02.jpg", "Tuyo")]
      ),
      Row(children: [
        miniAlbum("albuns/album01.jpg", "Arnaldo Antunes"), 
        miniAlbum("albuns/album02.jpg", "Tuyo")]
      ),
      Row(children: [
        miniAlbum("albuns/album01.jpg", "As 50 mais tocadas"), 
        miniAlbum("albuns/album02.jpg", "Tuyo")]
      ),
      Row(children: [
        miniAlbum("albuns/album01.jpg", "As 50 mais tocadas"), 
        miniAlbum("albuns/album02.jpg", "Tuyo")]
      ),
      Row(children: [
        miniAlbum("albuns/album01.jpg", "As 50 mais tocadas"), 
        miniAlbum("albuns/album02.jpg", "Tuyo")]
      ),
      Row(children: [
        miniAlbum("albuns/album01.jpg", "As 50 mais tocadas"), 
        miniAlbum("albuns/album02.jpg", "Tuyo")]
      ),
      Row(children: [
        miniAlbum("albuns/album01.jpg", "As 50 mais tocadas"), 
        miniAlbum("albuns/album02.jpg", "Tuyo")]
      ),
      Row(children: [
        miniAlbum("albuns/album01.jpg", "As 50 mais tocadas"), 
        miniAlbum("albuns/album02.jpg", "Tuyo")]
      ),
      Row(children: [
        miniAlbum("albuns/album01.jpg", "As 50 mais tocadas"), 
        miniAlbum("albuns/album02.jpg", "Tuyo")]
      ),
      Row(children: [
        miniAlbum("albuns/album01.jpg", "As 50 mais tocadas"), 
        miniAlbum("albuns/album02.jpg", "Tuyo")]
      ),
      Row(children: [
        miniAlbum("albuns/album01.jpg", "As 50 mais tocadas"), 
        miniAlbum("albuns/album02.jpg", "Tuyo")]
      ),
      Row(children: [
        miniAlbum("albuns/album01.jpg", "As 50 mais tocadas"), 
        miniAlbum("albuns/album02.jpg", "Tuyo")]
      ),
      Row(children: [
        miniAlbum("albuns/album01.jpg", "As 50 mais tocadas"), 
        miniAlbum("albuns/album02.jpg", "Tuyo")]
      ),
  ]);
}