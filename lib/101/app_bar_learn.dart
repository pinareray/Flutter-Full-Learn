import 'package:flutter/material.dart';

class AppBarView extends StatefulWidget {
  const AppBarView({super.key});

  @override
  _AppBarViewState createState() => _AppBarViewState();
}

class _AppBarViewState extends State<AppBarView> with AppBarMixin {
  final String _title = 'Cupcake Cafe';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(_title),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: const _Search(),
      ),
    );
  }
}

class _Search extends StatelessWidget with ButtonMixin, SearchMixin {
  const _Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildSearchBar(),
        buildCategoryButtons(),
        buildGridView(),
        buildBottomNavigation(),
      ],
    );
  }
}

// AppBar mixin for creating consistent app bars
mixin AppBarMixin {
  AppBar buildAppBar(String title) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 33,
          fontStyle: FontStyle.italic,
          color: MyColors.black54,
        ),
      ),
      centerTitle: true,
      automaticallyImplyLeading: false,
      backgroundColor: MyColors.pink100,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu),
        color: MyColors.black54,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart),
          color: MyColors.black54,
        ),
      ],
    );
  }
}

// Search mixin for handling search related UI components
mixin SearchMixin {
  Widget buildSearchBar() {
    return Container(
      color: MyColors.pink100,
      padding: const EdgeInsets.all(16.0),
      child: const TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.mic),
          suffixIcon: Icon(Icons.search),
          hintText: 'Search...',
          filled: true,
          fillColor: Colors.black38,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
            borderSide: BorderSide(color: Colors.pink, width: 10.0),
          ),
        ),
      ),
    );
  }
}

// Button mixin for handling button related UI components
mixin ButtonMixin {
  Widget buildCategoryButtons() {
    return Container(
      color: MyColors.pink100,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: _categoryButtons(),
        ),
      ),
    );
  }

  List<Widget> _categoryButtons() {
    final categories = ['Cake', 'Dessert', 'Hot Drinks', 'Cold Drinks'];
    return categories
        .map((category) => ElevatedButton(
              onPressed: () {},
              child: Text(category),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black38,
                foregroundColor: Colors.white,
              ),
            ))
        .toList();
  }

  Widget buildBottomNavigation() {
    return Container(
      color: MyColors.pink100,
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _bottomNavIcon(Icons.home),
          _bottomNavIcon(Icons.search),
          _bottomNavIcon(Icons.favorite),
          _bottomNavIcon(Icons.person),
        ],
      ),
    );
  }

  Widget _bottomNavIcon(IconData iconData) {
    return IconButton(
      onPressed: () {},
      icon: Icon(iconData),
      color: MyColors.black,
    );
  }
}

// GridView helper for displaying items
Widget buildGridView() {
  final imagePaths = [
    ProjectImages1.imageChocolate,
    ProjectImages1.imageVanilla,
    ProjectImages1.imageOrange,
    ProjectImages1.imageStrawberry,
  ];
  final titles = ['Chocolata Cake', 'Vanilla Cake', 'Orange Cake', 'Oreo Cake'];

  return Expanded(
    child: Container(
      color: MyColors.pink100,
      child: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: imagePaths.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return buildGridCard(imagePaths[index], titles[index]);
        },
      ),
    ),
  );
}

Widget buildGridCard(String imagePath, String title) {
  return Card(
    color: MyColors.pink100,
    elevation: 5,
    margin: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 120,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
            borderRadius: const BorderRadius.vertical(top: Radius.circular(8.0)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 6),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Sepete Ekle'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  foregroundColor: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

// Constants
class MyColors {
  static const Color black54 = Color(0x8A000000);
  static const Color pink100 = Color(0xFFFFC1E3);
  static const Color black = Color(0xFF000000);
}

class ProjectImages1 {
  static const imageChocolate = 'assets/png/pasta1.png';
  static const imageVanilla = 'assets/png/pasta2.png';
  static const imageOrange = 'assets/png/pasta3.png';
  static const imageStrawberry = 'assets/png/pasta4.png'; 
}
