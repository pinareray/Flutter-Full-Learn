import 'package:flutter/material.dart';

const double kZero = 0;

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({super.key});

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView> with TickerProviderStateMixin {
  //Text('data', style: Theme.of(context).textTheme.displayMedium)
  
  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: _DurationItems.durationLow);
  }

  bool _isVisible = false;
  bool _isOpacity = false;
  late AnimationController controller;
  
  void _changeVisible() {
    super.setState((){
        _isVisible = !_isVisible;
    });
  }

  void _changeOpacity() {
    super.setState((){
        _isOpacity = !_isOpacity;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _placeHolderWidget(),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        _changeVisible();
        controller.animateTo(_isVisible ? 1 : 0); 
      }),
      body: Column(
        children: [ListTile(
          title: AnimatedOpacity(
            opacity: _isOpacity ? 1 : 0,
            duration: _DurationItems.durationLow ,
            child: Text('Pinar')),
          trailing: IconButton(onPressed: (){_changeOpacity();}, icon: Icon(Icons.precision_manufacturing)),
        ),
        AnimatedDefaultTextStyle(
          child:  Text('Eray'), 
          style: (_isVisible ? context.textTheme().displayMedium : context.textTheme().bodyMedium) ?? TextStyle(),
          duration: _DurationItems.durationLow), 
        AnimatedIcon(icon: AnimatedIcons.view_list , progress: controller), 
        AnimatedContainer(
          duration: _DurationItems.durationLow,
          height: _isVisible ? kZero : MediaQuery.of(context).size.width * 0.2,
          width: MediaQuery.of(context).size.height * 0.2 ,
          color: Colors.white,
          ),
        Expanded(child: Stack(
          children: [AnimatedPositioned(top: 30, child: Text('dataa'), duration: _DurationItems.durationLow)],
        )),
        Expanded(child: AnimatedList(itemBuilder: (context, index, animation){
          return Text('data');
        }))
        ],
      ),  
    );
  }

  AnimatedCrossFade _placeHolderWidget() {
    return AnimatedCrossFade(
    firstChild: Placeholder(), 
    secondChild: SizedBox.shrink(), 
    crossFadeState: _isVisible ? CrossFadeState.showFirst: CrossFadeState.showSecond,
    duration:  _DurationItems.durationLow ,
    );
  }
}

extension BuildContextExtension on BuildContext{
  TextTheme textTheme(){
    return Theme.of(this).textTheme;
  }
}

class _DurationItems {
  static final durationLow = Duration(seconds: 1);
}