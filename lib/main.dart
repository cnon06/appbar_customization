import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Ana Sayfa", style:  TextStyle(color: Colors.white, fontSize: 16.0)),
            Text("Alt Başlık", style:  TextStyle(color: Colors.white, fontSize: 12.0)),

          ],
        ),




        centerTitle: false,
        leading: IconButton(
          tooltip: "Menu Icon",
          icon: Icon(Icons.dehaze),
          onPressed: ()
          {
            print('Menü açıldı.');
          },),
        actions: [

          TextButton(onPressed: ()
              {
                print('Çıkışa tıkladınız.');
              }, child: Text("Çıkış", style:  TextStyle(color: Colors.white),)),

          IconButton(
            tooltip: "Bilgi",
            icon: Icon(Icons.info_outline),
            onPressed: ()
            {
              print('Bilgi tıklandı.');
            },),


          /*
           IconButton(
            tooltip: "Popup Menu",
            icon: Icon(Icons.more_vert),
            onPressed: ()
            {
              print('Popup tıklandı.');
            },),
           */


          PopupMenuButton(
            child: Icon(Icons.more_vert),
            itemBuilder: (context) =>
            [
              PopupMenuItem(
                value: 1,
                child: Text("Sil",style: TextStyle(color: Colors.red),),
              ),
              PopupMenuItem(
                value: 2,
                child: Text("Güncelle",style: TextStyle(color: Colors.indigo),),
              ),
            ],
            onCanceled: ()
            {
              print('Seçim iptal edildi.');
            },
            onSelected: (menuItemValue)
            {
              switch(menuItemValue)
              {
                case 1:
                  print('Sil seçildi.');
                  break;
                case 2:
                  print('Güncelle seçildi.');
                  break;

              }
            },


          ),

        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
      ),

    );
  }
}
