import 'dart:convert';

MovieModel welcomeFromJson(String str) => MovieModel.fromJson(json.decode(str));

String welcomeToJson(MovieModel data) => json.encode(data.toJson());

class MovieModel {
  int rank;
  String title;
  String description;
  String image;
  String bigImage;
  List<String> genre;
  String thumbnail;
  String rating;
  String id;
  int year;
  String imdbid;
  String imdbLink;

  MovieModel({
    required this.rank,
    required this.title,
    required this.description,
    required this.image,
    required this.bigImage,
    required this.genre,
    required this.thumbnail,
    required this.rating,
    required this.id,
    required this.year,
    required this.imdbid,
    required this.imdbLink,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        rank: json["rank"],
        title: json["title"],
        description: json["description"],
        image: json["image"],
        bigImage: json["big_image"],
        genre: List<String>.from(json["genre"].map((x) => x)),
        thumbnail: json["thumbnail"],
        rating: json["rating"],
        id: json["id"],
        year: json["year"],
        imdbid: json["imdbid"],
        imdbLink: json["imdb_link"],
      );

  Map<String, dynamic> toJson() => {
        "rank": rank,
        "title": title,
        "description": description,
        "image": image,
        "big_image": bigImage,
        "genre": List<dynamic>.from(genre.map((x) => x)),
        "thumbnail": thumbnail,
        "rating": rating,
        "id": id,
        "year": year,
        "imdbid": imdbid,
        "imdb_link": imdbLink,
      };
}
