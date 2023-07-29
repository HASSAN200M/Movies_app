



import 'package:flutter/material.dart';
import 'package:movies/widgets/custom_movies_section.dart';
class AllMovies extends StatelessWidget {
  const AllMovies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      MoviesSection(images: ['Avatar 2','Black Adam','Black Panther 2','Dune','Thor Love And Thunder'],
           nameSection: ['Action','Adventure','comedy','Adventure','Action'],);




  }
}


