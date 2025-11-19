// To parse this JSON data, do
//
//     final productEntry = productEntryFromJson(jsonString);

import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
    String id;
    Name name;
    String description;
    int price;
    int quantity;
    Category category;
    String thumbnail;
    DateTime createdAt;
    bool isFeatured;
    int userId;

    ProductEntry({
        required this.id,
        required this.name,
        required this.description,
        required this.price,
        required this.quantity,
        required this.category,
        required this.thumbnail,
        required this.createdAt,
        required this.isFeatured,
        required this.userId,
    });

    factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
        id: json["id"],
        name: nameValues.map[json["name"]]!,
        description: json["description"],
        price: json["price"],
        quantity: json["quantity"],
        category: categoryValues.map[json["category"]]!,
        thumbnail: json["thumbnail"],
        createdAt: DateTime.parse(json["created_at"]),
        isFeatured: json["is_featured"],
        userId: json["user_id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": nameValues.reverse[name],
        "description": description,
        "price": price,
        "quantity": quantity,
        "category": categoryValues.reverse[category],
        "thumbnail": thumbnail,
        "created_at": createdAt.toIso8601String(),
        "is_featured": isFeatured,
        "user_id": userId,
    };
}

enum Category {
    CLOTH,
    SHOE,
    TOOLS
}

final categoryValues = EnumValues({
    "cloth": Category.CLOTH,
    "shoe": Category.SHOE,
    "tools": Category.TOOLS
});

enum Name {
    NIKE_KOBE_MAMBA_FOCUS_LAKERS,
    NIKE_LE_BRON_17_LAKERS_7_Y_BLACK,
    TES
}

final nameValues = EnumValues({
    "Nike Kobe Mamba Focus Lakers": Name.NIKE_KOBE_MAMBA_FOCUS_LAKERS,
    "Nike LeBron 17 Lakers 7Y Black": Name.NIKE_LE_BRON_17_LAKERS_7_Y_BLACK,
    "tes": Name.TES
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
