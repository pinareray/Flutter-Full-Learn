import 'dart:developer';

import 'package:flutter/material.dart';

class SheetLearn extends StatefulWidget {
  const SheetLearn({super.key});

  @override
  State<SheetLearn> createState() => _SheetLearnState();
}

class _SheetLearnState extends State<SheetLearn> {
  Color _backgroundcolor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: _backgroundcolor,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await showModalBottomSheet(
              context: context,
              //backgroundColor: Colors.red, //açılan pencere
              // barrierColor: Colors.transparent, //arka pencere
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20))), //kenarlar oval
              isScrollControlled: true, //Ekranı full kaplamasını sağlar
              builder: (context) {
                return _ShowSheet(backgroundcolor: _backgroundcolor);
              });
          inspect(
              result); //debug modda başlatmadıysan böylede kontrol sağlarsın.
          if (result is bool) {
            setState(() {
              _backgroundcolor = Colors.cyan;
            });
          }
        },
        child: const Icon(Icons.share),
      ),
    );
  }
}

class _ShowSheet extends StatefulWidget {
  const _ShowSheet({
    Key? key,
    required Color backgroundcolor,
  }) : super(key: key);

  @override
  State<_ShowSheet> createState() => _ShowSheetState();
}

class _ShowSheetState extends State<_ShowSheet> {
  Color _backgroundcolor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _backgroundcolor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Divider(
                    color: Colors.black26,
                    thickness: 3,
                    indent: MediaQuery.of(context).size.width * 0.45,
                    endIndent: MediaQuery.of(context).size.width * 0.45,
                  ),
                  Positioned(
                      right: 0,
                      height: 10,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.close)))
                ],
              ),
              Text('data'),
              Image.network(
                'https://picsum.photos/200/300',
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pop<bool>(true); //Ekran kapanınca renk değişir.
                    setState(() {
                      _backgroundcolor = Colors.green;
                    });
                  },
                  child: const Text('ok'))
            ],
          ),
        ),
      ),
    );
  }
}

mixin ProductSheetMixin {
  Future<T?> showCustomSheet<T>(BuildContext context, Widget child) async {
    return showModalBottomSheet<T>(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        builder: (context) {
          return CustomMainSheet(child: child);
        });
  }
}

class CustomMainSheet extends StatelessWidget {
  const CustomMainSheet({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Divider(
                    color: Colors.black26,
                    thickness: 3,
                    indent: MediaQuery.of(context).size.width * 0.45,
                    endIndent: MediaQuery.of(context).size.width * 0.45,
                  ),
                  Positioned(
                      right: 0,
                      height: 10,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.close)))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
