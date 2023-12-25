import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Home'),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
              print('menu');
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.home),
                    onPressed: () {
                      print('home');
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      print('search');
                    },
                  ),
                  IconButton(
                      icon: const Icon(Icons.person),
                      onPressed: () {
                        print('person');
                      })
                ],
              );
            },
            color: Colors.white,
            iconSize: 30,
          )),
      body: const Center(
        child: Text(' Bienvenu sur samina '),
      ),
    );
  }
}
