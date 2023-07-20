import 'package:botanicare/home/cubit/home_cubit.dart';
import 'package:botanicare/home/pages/catalog_page/catalog_page.dart';
import 'package:botanicare/home/pages/favourites_page/favourities_page.dart';
import 'package:botanicare/home/pages/user_profile_page/user_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
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
            body: Builder(
              builder: (context) {
                if (state.pageIndex == 0) {
                  return const FavouritiesPage();
                }

                if (state.pageIndex == 2) {
                  return const UserProfile();
                }

                return CatalogPage();
              },
            ),
            bottomNavigationBar: const _NavigationBar(
              pageIndex: 1,
            ),
          );
        },
      ),
    );
  }
}

class _NavigationBar extends StatelessWidget {
  const _NavigationBar({
    Key? key,
    required this.pageIndex,
  }) : super(key: key);

  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: const Color(0xFFF6FEF7),
      items: const <Widget>[
        Icon(Icons.favorite_border_outlined, size: 35, color: Colors.white),
        Icon(Icons.home_outlined, size: 35, color: Colors.white),
        Icon(Icons.person_outlined, size: 35, color: Colors.white),
      ],
      onTap: (newPageIndex) {
        context.read<HomeCubit>().changeIndexOnTap(newPageIndex);
      },
      color: Colors.green,
      height: 50,
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
