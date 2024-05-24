import 'package:flutter/material.dart';

class MenuApp extends StatelessWidget {
  static const String id = 'restaurant_screen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          centerTitle: false,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Restaurant Menu',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            MenuItem(
              name: 'X - Burger',
              description: 'Carne, queiji e salada',
              price: '\$7.00',
            ),
            MenuItem(
              name: 'X - Egg',
              description: 'Carne, queijo, ovo e salada',
              price: '\$8,00',
            ),
            MenuItem(
              name: ' X-BACON',
              description: 'Carne, queijo, calabresa e salada',
              price: '\$9.00',
            ),
            MenuItem(
              name: 'X-CALABRESA',
              description: 'Carne, queijo, bacon',
              price: '\$11.00',
            ),
            MenuItem(
              name: 'TRI FIRE',
              description:
                  '2 carnes, 2 queijos, ovo, bacon, calabresa e salada',
              price: '\$13.00',
            ),
            MenuItem(
              name: 'MEGA FIRE',
              description:
                  '3 carnes, 3 queijos, ovo, bacon, calabresa e salada',
              price: '\$15.00',
            ),
            MenuItem(
              name: 'X-FIRE',
              description: '4 carnes, 4 queijos, bacon,',
              price: '\$15.00',
            ),
            MenuItem(
              name: 'BATATA M',
              description: 'Bacon ou ca',
              price: '\$9.00',
            ),
            MenuItem(
              name: 'BATATA G',
              description: 'Bacon e cala',
              price: '\$11.00',
            ),
            MenuItem(
              name: 'SOBREMI',
              description: 'e salada',
              price: '\$14.00',
            ),
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String name;
  final String description;
  final String price;

  MenuItem(
      {required this.name, required this.description, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            blurRadius: 5,
            color: Colors.black26,
            offset: Offset(0, 5),
          ),
        ],
      ),
      height: 90.0,
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          Text(description),
          Text(
            price,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
