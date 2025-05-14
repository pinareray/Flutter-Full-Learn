import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ShareContextLearn extends StatefulWidget {
  const ShareContextLearn({super.key});

  @override
  State<ShareContextLearn> createState() => _ShareContextLearnState();
}

enum _SecureKeys {
  //Her senaryoda yapılması gereken şey bu, token böyle saklanmalı.
  token
}

class _ShareContextLearnState extends State<ShareContextLearn> {
  final _storage = FlutterSecureStorage();
  String _title = '';
  TextEditingController _controller = TextEditingController();

  void saveItems(String data) {
    setState(() {
      _title = data;
    });
  }

  @override
  void initState() {
    super.initState();
    getSecureItems();
  }

  Future<void> getSecureItems() async {
    _title = await _storage.read(key: _SecureKeys.token.name) ?? '';

    if (_title.isNotEmpty) {
      print('Bu adam appi önceden kullanmış ve tokenı bu');
      _controller.text = _title;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            await _storage.write(key: _SecureKeys.token.name, value: _title);
          },
          label: Text('Save')),
      body: TextField(
        controller: _controller,
        onChanged: saveItems,
        minLines: 3,
        maxLines: 4,
      ),
    );
  }
}
