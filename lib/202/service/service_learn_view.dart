import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/service/post_model.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({super.key});

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {

  List<PostModel>? _items;
  String? name;
  bool _isLoading = false;
  late final Dio _dio;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';

  @override
  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
    name = 'Pinar';
    fetchPostItems();
  }

  void _changeLoading(){
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fetchPostItems() async {  //Dataları çekeceğiz.
    _changeLoading();
    final response = await Dio().get('https://jsonplaceholder.typicode.com/posts'); //Böyle yazmamamız gerek

    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;

      if (_datas is List) {
        setState(() {
          _items = _datas.map((e) => PostModel.fromJson(e)).toList();
        });
      }
    }
    _changeLoading();
  }


 Future<void> fetchPostItemsAdvance() async {  //Dataları çekeceğiz.
    _changeLoading();
    final response = await _dio.get('posts'); //Böyle yazmamamız gerek

    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;

      if (_datas is List) {
        setState(() {
          _items = _datas.map((e) => PostModel.fromJson(e)).toList();
        });
      }
    }
    _changeLoading();
  }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(name ?? ''),
        actions: [_isLoading ? const CircularProgressIndicator.adaptive() : SizedBox.shrink()],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemCount: _items?.length ?? 0,
        itemBuilder: (context, index) {
          return _PostCard(model: _items?[index]);
        },
      ),
    );
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    Key? key,
    required PostModel? model,
  }) : _model = model, super(key: key);

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        title: Text(_model?.title ?? ''),
        subtitle:Text(_model?.body ?? ''),
      ),
    );
  }
}