import 'dart:convert';

Welcome2 welcome2FromJson(String str) => Welcome2.fromJson(json.decode(str));

String welcomeToJson(Welcome2 data) => json.encode(data.toJson());

class Welcome2 {
  List<Product2>? products;

  Welcome2({
    this.products,
  });

  factory Welcome2.fromJson(Map<String, dynamic> json) => Welcome2(
        products: json["products"] == null
            ? []
            : List<Product2>.from(
                json["products"]!.map((x) => Product2.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "products": products == null
            ? []
            : List<dynamic>.from(products!.map((x) => x.toJson())),
      };
}

class Product2 {
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
  bool isfavorited;

  Product2({
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
    this.isfavorited = false,
  });

  factory Product2.fromJson(Map<String, dynamic> json) => Product2(
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
