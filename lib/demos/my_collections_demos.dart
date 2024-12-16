import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({super.key});

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _items.length,
        padding: PaddingUtility().paddingSymetric,
        itemBuilder:(context,index){
        return _CategoryCard(model: _items[index]);

      },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    super.key,
    required CollectionModel model,
  }) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber[50],
      margin:  PaddingUtility().paddingBottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtility().paddingGeneral,
          child: Column(
            children: [
              Expanded(child: Image.asset(_model.imagePath)),
              Padding(
                padding:  PaddingUtility().paddingTop,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(_model.title, style: const TextStyle(color: Colors.black)),Text('${_model.price} dolar', style: const TextStyle(color: Colors.black))
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel({required this.imagePath, required this.title, required this.price});
  
}

class CollectionItems {

  late final List<CollectionModel> items;
  CollectionItems(){
    items = [
      CollectionModel(imagePath: ProjectImages.imageStrawberry, title: 'strawberry milkshake', price: 120),
      CollectionModel(imagePath: ProjectImages.imageWatermelon, title: 'watermelon milkshake', price: 130),
      CollectionModel(imagePath: ProjectImages.imageCaramel, title: 'caramel milkshake', price: 140),
    ];
  }
}

class PaddingUtility {

  final paddingTop = const EdgeInsets.only(top:10);
  final paddingBottom = const EdgeInsets.only(bottom: 30);
  final paddingGeneral = const EdgeInsets.all(8.0);
  final paddingSymetric = const EdgeInsets.symmetric(horizontal: 20);
  }

  class ProjectImages{
    static const imageStrawberry = 'assets/png/image_collection.png';
    static const imageWatermelon = 'assets/png/image_collection2.png';
    static const imageCaramel = 'assets/png/image_collection3.png';
  }