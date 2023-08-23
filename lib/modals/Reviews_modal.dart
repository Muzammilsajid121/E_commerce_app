import 'dart:convert';

RatingsReviews welcomerFromJson(String str) =>
    RatingsReviews.fromJson(json.decode(str));

String welcomeToJson(RatingsReviews data) => json.encode(data.toJson());

class RatingsReviews {
  List<Reviews>? reviews;

  RatingsReviews({
    this.reviews,
  });

  factory RatingsReviews.fromJson(Map<String, dynamic> json) => RatingsReviews(
        reviews: json["reviews"] == null
            ? []
            : List<Reviews>.from(
                json["reviews"]!.map((x) => Reviews.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "reviews": reviews == null
            ? []
            : List<dynamic>.from(reviews!.map((x) => x.toJson())),
      };
}

class Reviews {
  String? id;
  ProductsReview? product;
  User? user;
  String? rating;
  String? review;
  DateTime? dateModified;
  DateTime? dateCreated;

  Reviews({
    this.id,
    this.product,
    this.user,
    this.rating,
    this.review,
    this.dateModified,
    this.dateCreated,
  });

  factory Reviews.fromJson(Map<String, dynamic> json) => Reviews(
        id: json["id"],
        product: json["product"] == null
            ? null
            : ProductsReview.fromJson(json["product"]),
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        rating: json["rating"],
        review: json["review"],
        dateModified: json["date_modified"] == null
            ? null
            : DateTime.parse(json["date_modified"]),
        dateCreated: json["date_created"] == null
            ? null
            : DateTime.parse(json["date_created"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "product": product?.toJson(),
        "user": user?.toJson(),
        "rating": rating,
        "review": review,
        "date_modified": dateModified?.toIso8601String(),
        "date_created": dateCreated?.toIso8601String(),
      };
}

class ProductsReview {
  String? id;
  Category? category;
  Category? tag;
  String? name;
  String? price;
  String? description;
  String? image;
  String? rating;
  int? reviews;
  DateTime? dateModified;
  DateTime? dateCreated;

  ProductsReview({
    this.id,
    this.category,
    this.tag,
    this.name,
    this.price,
    this.description,
    this.image,
    this.rating,
    this.reviews,
    this.dateModified,
    this.dateCreated,
  });

  factory ProductsReview.fromJson(Map<String, dynamic> json) => ProductsReview(
        id: json["id"],
        category: json["category"] == null
            ? null
            : Category.fromJson(json["category"]),
        tag: json["tag"] == null ? null : Category.fromJson(json["tag"]),
        name: json["name"],
        price: json["price"],
        description: json["description"],
        image: json["image"],
        rating: json["rating"],
        reviews: json["reviews"],
        dateModified: json["date_modified"] == null
            ? null
            : DateTime.parse(json["date_modified"]),
        dateCreated: json["date_created"] == null
            ? null
            : DateTime.parse(json["date_created"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "category": category?.toJson(),
        "tag": tag?.toJson(),
        "name": name,
        "price": price,
        "description": description,
        "image": image,
        "rating": rating,
        "reviews": reviews,
        "date_modified": dateModified?.toIso8601String(),
        "date_created": dateCreated?.toIso8601String(),
      };
}

class Category {
  String? id;
  String? name;
  String? image;
  DateTime? dateModified;
  DateTime? dateCreated;

  Category({
    this.id,
    this.name,
    this.image,
    this.dateModified,
    this.dateCreated,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        dateModified: json["date_modified"] == null
            ? null
            : DateTime.parse(json["date_modified"]),
        dateCreated: json["date_created"] == null
            ? null
            : DateTime.parse(json["date_created"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "date_modified": dateModified?.toIso8601String(),
        "date_created": dateCreated?.toIso8601String(),
      };
}

class User {
  String? id;
  String? name;
  dynamic image;
  String? email;
  String? password;
  DateTime? dateModified;
  DateTime? dateCreated;

  User({
    this.id,
    this.name,
    this.image,
    this.email,
    this.password,
    this.dateModified,
    this.dateCreated,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        email: json["email"],
        password: json["password"],
        dateModified: json["date_modified"] == null
            ? null
            : DateTime.parse(json["date_modified"]),
        dateCreated: json["date_created"] == null
            ? null
            : DateTime.parse(json["date_created"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "email": email,
        "password": password,
        "date_modified": dateModified?.toIso8601String(),
        "date_created": dateCreated?.toIso8601String(),
      };
}
