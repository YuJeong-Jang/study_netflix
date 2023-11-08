import 'package:flutter/material.dart';
import 'package:study_netflix/model/model_movie.dart';
import 'package:study_netflix/widget/box_slider.dart';
import 'package:study_netflix/widget/carousel_slider.dart';
import 'package:study_netflix/widget/circle_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'test_movie_1.png',
      'like': false
    }),
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑',
      'poster': 'test_movie_1.png',
      'like': false
    }),
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '로맨스',
      'poster': 'test_movie_1.png',
      'like': false
    }),
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '판타지',
      'poster': 'test_movie_1.png',
      'like': false
    })
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[CarouselImage(movies: movies), TopBar()],
        ),
        CircleSlider(movies: movies),
        BoxSlider(movies: movies)
      ],
    );
    // Container(
    //   child: Center(child: Text('real home')),
    // );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(
                "images/bbongflix_logo.png",
                fit: BoxFit.contain,
                height: 25,
              ),
              Container(
                padding: EdgeInsets.only(right: 1),
                child: Text(
                  'TV 프로그램',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 1),
                child: Text(
                  '영화',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 1),
                child: Text(
                  '내가 찜한 콘텐츠',
                  style: TextStyle(fontSize: 14),
                ),
              )
            ]));
  }
}