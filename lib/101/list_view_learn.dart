import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.zero,
        
        children: [
         FittedBox(child: Text('Hello', style: Theme.of(context).textTheme.headlineSmall,)),
         Container(color: Colors.red, height: 200,),
         const Divider(),
         SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children:[
            Container(color: Colors.green, width: 100),
            Container(color: Colors.white, width: 100),
            Container(color: Colors.green, width: 100),
            Container(color: Colors.white, width: 100),
            Container(color: Colors.green, width: 100),
            ]),
        ),
         IconButton(onPressed: (){}, icon: const Icon(Icons.close)),
         const _ListDemo()
        ],
      ),
    );
  }
}

class _ListDemo extends StatefulWidget {
  const _ListDemo({super.key});

  @override
  State<_ListDemo> createState() => __ListDemoState();
}

class __ListDemoState extends State<_ListDemo> {

  @override
  void initState() {
    super.initState();
    print('Welcome');
  }

  @override
  void dispose() {
    super.dispose();
    print('exit');
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}