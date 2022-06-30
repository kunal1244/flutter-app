import 'package:flutter/material.dart';
import 'package:main_app/models/thumbnail.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Container(
            width: 150,
            height: 200,
            child: Card(
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: Image.network(
                item.image,
                fit: BoxFit.cover,
              ),
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.all(8.0),
            ),
          ),
          Container(
            width: 150,
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                (item.title.length > 15)
                    ? item.title.substring(0, 15) + '...'
                    : item.title,
              ),
            ),
          )
        ],
      ),
    );
  }
}
