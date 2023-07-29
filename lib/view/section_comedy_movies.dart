


import 'package:flutter/material.dart';
import 'package:movies/widgets/custom_movies_section.dart';

class ComedyMovies extends StatelessWidget {
	const ComedyMovies({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return MoviesSection(images: ['arthur','BLUE IGUANA','Daddy Day care','Welcome-to-Newyork'],
			nameSection: ['Comedy','Comedy','Comedy','Comedy'],);
	}
}
