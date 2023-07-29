import 'package:flutter/material.dart';
import 'package:movies/widgets/custom_movies_section.dart';

class ActionMovies extends StatelessWidget {
  const ActionMovies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MoviesSection(
      images: [
        'Deadpool 2',
        'Fast_Furious',
        'No tim to die',
        'Dune',
        'pathan',
        'SPIDER-MAN'
      ],
      nameSection: ['Action', 'Action', 'Action', 'Action', 'Action', 'Action'],
    );
  }
}
