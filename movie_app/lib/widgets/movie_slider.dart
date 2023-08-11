import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/details_screen.dart';

class MovieSlider extends StatelessWidget {
  MovieSlider({super.key, required this.snapshot});
  AsyncSnapshot snapshot;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: snapshot.data.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                                movie: snapshot.data[index],
                              )));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    height: 220,
                    width: 150,
                    child: Image.network(
                        '${Constants.imgPath}${snapshot.data[index].posterPath}'),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
