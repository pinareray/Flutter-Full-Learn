import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height:MediaQuery.of(context).size.height/1.6,
                  decoration: const BoxDecoration(
                    color: Colors.white,
              
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height:MediaQuery.of(context).size.height/1.6,
                  decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),   
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/png/ana.png',
                       scale: 0.8,),
                    ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.666,
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                ),
              ),
            ),
             Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.666,
                padding:const EdgeInsets.only(top: 40, bottom: 30) ,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(70),
                   )
                ),
                child:  Column(
                  children: [
                    const Text('Welcome to our patisserie',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: Colors.black),
                    ),
                   const SizedBox(height:15),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text('Enjoy trying new flavors. Enjoy your meal.',
                      textAlign: TextAlign.center,
                       style:TextStyle(
                        fontSize: 17,
                        color: Colors.black54),
                        ),
                    ),
                    const SizedBox(height: 40),
                    Material(
                      color:Colors.pink,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          padding:const  EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                          child: const Text('Get Started',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.2,
                          ),),
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );

    
  }
}
//CircleBorder(), RoundedRectangBorde()