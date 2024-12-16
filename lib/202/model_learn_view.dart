import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {

  var user9 = PostModel7(body:'a');
  
  @override
  void initState() {
    super.initState();

    final user1 = PostModel1();
    user1.body = 'hello';

    final user2 = PostModel2(userId: 2, id: 3, title: 'a', body: 'b');
    user2.body = 'a';

    final user3 = PostModel3(userId: 1, id: 2, title:'c', body: 'd');
    //user3.body = 'd'; final olduğu için değerini değiştiremeyiz.

    final user4 = PostModel4(userId: 1, id: 2, title: 'e', body: 'f');
    user4.userId; //encapsulation yaptığımızdan kullanabildik. 

    final user8 = PostModel7(body:'a');//Service'den data alıyorsak bu daha iyi
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          user9 = user9.copyWith(title: 'pnr');
          user9.updateBody('vb');
        });
      },),
      appBar: AppBar(
        title: Text(user9.body ?? 'Not has any data'),
      ),
    );
  }
}