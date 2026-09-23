import 'package:flutter/material.dart';
import '../widgets/app_scaffold.dart';
import '../data/dummy_data.dart';
import '../widgets/favorite_anime_card.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final favoriteAnime = DummyData.animeList.first;

    return AppScaffold(
      appBar: AppBar(title: Text("Favorite Anime", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: screenWidth * 0.06)), centerTitle: true, backgroundColor: Colors.transparent, elevation: 0),
      body: Column(
        children: [
          SizedBox(height: screenHeight * 0.01),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
              itemCount: 1, // Untuk sementara menampilkan 1 data dummy
              itemBuilder: (context, index) {
                return FavoriteAnimeCard(title: favoriteAnime.title, genre: favoriteAnime.genre, rating: favoriteAnime.rating, imagePath: favoriteAnime.imagePath);
              },
            ),
          ),
        ],
      ),
    );
  }
}