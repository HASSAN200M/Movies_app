


import 'package:flutter/material.dart';
import 'package:movies/widgets/custom_movies_section.dart';

class AdventureMovies extends StatelessWidget {
	const AdventureMovies({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return MoviesSection(images: ['EVERY STEP','Pirates of the Caribbean','Jumanji','THE ARCHER','The_Maze_Runner','TINTIN 3D'],
			nameSection: ['Adventure','Adventure','Adventure','Adventure','Adventure','Adventure'],);

	}
}
