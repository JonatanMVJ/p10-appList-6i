import 'package:flutter/material.dart';

void main() => runApp(MyListacard());

class MyListacard extends StatefulWidget {
  const MyListacard({Key? key}) : super(key: key);

  @override
  State<MyListacard> createState() => _MyListacardState();
}

class _MyListacardState extends State<MyListacard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi Listview Hernandez",
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Paginainicial(),
    );
  }
}

class Paginainicial extends StatefulWidget {
  const Paginainicial({Key? key}) : super(key: key);

  @override
  State<Paginainicial> createState() => _PaginainicialState();
}

class _PaginainicialState extends State<Paginainicial> {
  List<String> images = [
    "assets/images/img 1.jpg",
    "assets/images/img3.jpg",
    "assets/images/instru.jpg",
    "assets/images/taylor.jpg",
    "assets/images/sound.jpg",
    "assets/images/56.jpg",
    "assets/images/90.jpg",
    "assets/images/log.jpg",
    "assets/images/34.jpg",
    "assets/images/mus.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView Jonatan Mazuca"),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(images[index]),
                ),
                title: Text("This is title"),
                subtitle: Text("This is subtitle"),
              ),
            );
          },
          itemCount: images.length,
          shrinkWrap: true,
          padding: EdgeInsets.all(5),
          scrollDirection: Axis.vertical,
        ));
  }
}
