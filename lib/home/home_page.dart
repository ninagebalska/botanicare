import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6FEF7),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Botanicare'),
            SizedBox(width: 4),
            Icon(Icons.spa_outlined),
          ],
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(36),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(children: [
          Text('Let\'s Find Your Plants!',
              style: GoogleFonts.lato(fontSize: 28)),
          const SizedBox(height: 16),
          TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Search...',
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () => _searchController.clear(),
              ),
              prefixIcon: IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
          ),
          GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2,
              ),
              itemBuilder: (context, index) => PlantTile()),
        ]),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color(0xFFF6FEF7),
        items: const <Widget>[
          Icon(Icons.favorite_border_outlined, size: 35, color: Colors.white),
          Icon(Icons.home_outlined, size: 35, color: Colors.white),
          Icon(Icons.person_outlined, size: 35, color: Colors.white),
        ],
        onTap: (index) {},
        color: Colors.green,
        height: 55,
      ),
    );
  }
}

class PlantTile extends StatelessWidget {
  const PlantTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 30,
      decoration: BoxDecoration(color: Color(0xFFA4C2A5)),
      child: Column(
        children: [
          Image.network(
              'https://img.freepik.com/darmowe-zdjecie/roslina-monstera-deliciosa-w-doniczce_53876-133119.jpg?w=2000'),
          Text(
            'Monstera deliciosa',
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
