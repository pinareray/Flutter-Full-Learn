import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({super.key});
  final String _title = 'Welcome Learn';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text(_title), centerTitle: true,
        leading: const Icon(Icons.chevron_left),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){},
          icon:const Icon(Icons.mark_email_read_sharp)
          ),
         const Center(child: CircularProgressIndicator())
          ],
      ),
      body: const Column(children:[]),
    );
  } 
}