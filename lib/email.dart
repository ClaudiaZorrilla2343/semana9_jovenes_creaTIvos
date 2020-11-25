import 'package:flutter/material.dart';

class Email extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Widget> items = List.generate(30, (i) => Rectangulo(i));
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            title: Text(
              "Emails New",
              style: TextStyle(color: Colors.blue[800], fontSize: 30.0),
            ),
            expandedHeight: 160,
            flexibleSpace: Image.network(
              'https://static.americadigital.com/wp-content/uploads/2020/04/ad-entretenimiento-lossimpson-1140x570.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, i) {
            return items[i];
          }, childCount: items.length)),
          SliverAppBar(
            pinned: true,
            title: Text(
              "Emails Old",
              style: TextStyle(color: Colors.black, fontSize: 30.0),
            ),
            expandedHeight: 160,
            flexibleSpace: Image.network(
              'https://imagenes.20minutos.es/files/article_amp/uploads/2020/06/11/los-simpson.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 4,
            children: items,
          )
        ],
      ),
    );
  }
}

class Rectangulo extends StatelessWidget {
  final int index;

  const Rectangulo(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Text(
          "Email $index",
          style: TextStyle(color: Colors.black, fontSize: 20.0),
        ),
      ),
      width: 150,
      height: 70,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.white, Colors.blue[100], Colors.blue[600]])),
    );
  }
}
