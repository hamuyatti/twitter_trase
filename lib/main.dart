import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {

    final items = List<String>.generate(10000, (i) => "Item ");
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: TextButton(
            onPressed: () {  },
            child: Icon(Icons.horizontal_split_rounded),
          ),
            title:SizedBox(
              height: 30,
              width: 30,
              child: Image(image: NetworkImage(
                  'https://static01.nyt.com/images/2014/08/10/magazine/10wmt/10wmt-superJumbo-v4.jpg?quality=90&auto=webp')
              ),

            ),
          actions: <Widget>[
            TextButton(
                onPressed: () {},
                child: Icon(Icons.face_retouching_natural)),
          ],
        ),
        body: Container(
            child:ListView.separated(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading :Padding(
                    padding: const EdgeInsets.only(top: 5, right: 0, bottom: 5, left: 0),
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: Image(image: NetworkImage(
                          'https://4.bp.blogspot.com/-9jMq0X5KyLY/VwIgL_rmR4I/AAAAAAAA5YY/2FBQfbSutzUQCnlueuPoEdmtIEElYtHBQ/s800/count_boy.png')
                      ),
                    ),
                  ),
                  title: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const  EdgeInsets.only(top: 0, right: 0, bottom: 5, left: 0),
                            child: Text("hamu"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0, right: 0, bottom: 5, left: 150),
                            child: Text("二時間前"),
                          ),
                          TextButton(
                              onPressed: (){},
                              child: Icon(Icons.more_vert))

                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Text("今日はいい天気。")
                        ]
                      )

                    ],
                  ),
                );
              }, separatorBuilder: (BuildContext context, int index) => Divider(color: Colors.black),
            )
            )
           )
        );

  }
}


