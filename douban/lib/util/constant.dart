import 'package:flutter/material.dart';


class ConsColor {
  static const theme = Color.fromRGBO(0, 148, 50, 1.0);
}

class Api {
  static const fetchHot = '/v2/movie/in_theaters';
  static const fetchComing = '/v2/movie/coming_soon';
  static const fetchTop250 = '/v2/movie/top250';
  static const fetchMovie = '/v2/movie/subject';
}

class ConsString {
  static const name = 'ZzzM';
  static const mail = 'https://github.com/$name';

  static const avatar = 'http://dwz.date/ep8';


  static const douban_tv = 'https://m.douban.com/tv/';

  static const query_movie = 'https://m.douban.com/search/?type=movie&query=';
  static const query_subject = 'https://m.douban.com/movie/subject/';

}