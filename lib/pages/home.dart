import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:main_app/models/thumbnail.dart';
import 'package:main_app/widgets/item_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String uri = "https://imdb-api.com/en/API/MostPopularMovies/k_z5z5n54h";
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final response = await http.get(Uri.parse(uri));
    final thumbnailData = jsonDecode(response.body)['items'];

    ThumbnailModel.items = List.from(thumbnailData)
        .map<Item>((item) => Item.fromMap(item))
        .toList()
        .sublist(0, 10);
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test App"),
      ),
      body: Column(
        children: [
          Text("Explore Movies",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
              )),
          SizedBox(
            height: 250,
            child: (ThumbnailModel.items != null &&
                    ThumbnailModel.items!.isNotEmpty)
                ? ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ThumbnailModel.items!.length,
                    itemBuilder: (context, index) {
                      return ItemWidget(item: ThumbnailModel.items![index]);
                    })
                : Center(
                    child: CircularProgressIndicator(),
                  ),
          ),
        ],
      ),
      drawer: Drawer(),
    );
  }
}
