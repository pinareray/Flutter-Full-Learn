import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children:[
            TextButton(
              child: Text('Save',style: Theme.of(context).textTheme.bodyMedium),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states){
                  if(states.contains(MaterialState.pressed)){
                    return Colors.red;
                  }
                  return Colors.blue;
                }),
              ),
              onPressed:(){},
               ),

               const ElevatedButton(onPressed: null, child: Text('Login')),
               IconButton(onPressed: (){}, icon: const Icon(Icons.abc_rounded)),
               FloatingActionButton(
                onPressed: (){
                  //servise istek at
                  //sayfanın rengini düzenle
                }, 
                child: const Icon(Icons.add)),
               OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.red, padding: const EdgeInsets.all(18)),
                  onPressed: (){},
                  child: const SizedBox(width: 200, child:Text('data'))),
               OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.abc), label: const Text('Sign up')),
               InkWell(
                onTap: (){},
                child: const Text('custom')),


                Container(
                  height:200, 
                  color: Colors.white, 
                ),
                const SizedBox(height: 10), 

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black),
                  onPressed: (){},
                  child: Padding(
                    padding: const EdgeInsets.only(top:10, bottom: 10, right: 20,left:20),
                    child: Text(
                      'Place Bid',
                      style: Theme.of(context).textTheme.bodyLarge,
                      
                      ),
                  ))
        ],
      ),
    );

    
  }
}
//CircleBorder(), RoundedRectangBorde()