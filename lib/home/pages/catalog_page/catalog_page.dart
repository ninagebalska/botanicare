import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CatalogPage extends StatelessWidget {
  CatalogPage({super.key});

  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6FEF7),
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
          // GridView.builder(
          //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 2,
          //       childAspectRatio: 2,
          //     ),
          //     itemBuilder: (context, index) => PlantTile()),
        ]),
      ),
    );
  }
}
