import 'dart:convert';

Welcome1 welcome1FromJson(String str) => Welcome1.fromJson(json.decode(str));

String welcome1ToJson(Welcome1 data) => json.encode(data.toJson());

class Welcome1 {
  List<Product1>? productss;

  Welcome1({
    this.productss,
  });

  factory Welcome1.fromJson(Map<String, dynamic> json) => Welcome1(
        productss: json["products"] == null
            ? []
            : List<Product1>.from(
                json["products"]!.map((x) => Product1.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "products": productss == null
            ? []
            : List<dynamic>.from(productss!.map((x) => x.toJson())),
      };
}

class Product1 {
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

  Product1({
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

  factory Product1.fromJson(Map<String, dynamic> json) => Product1(
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
