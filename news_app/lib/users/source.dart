class Source {
  Source({
    this.id,
    this.name,
    this.description,
    this.url,
    this.category,
    this.language,
    this.country,
  });

  String? id;
  String? name;
  String? description;
  String? url;
  String? category;
  String? language;
  String? country;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        description: json["description"] == null ? null : json["description"],
        url: json["url"] == null ? null : json["url"],
        category: json["category"] == null ? null : json["category"],
        language: json["language"] == null ? null : json["language"],
        country: json["country"] == null ? null : json["country"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "description": description == null ? null : description,
        "url": url == null ? null : url,
        "category": category == null ? null : category,
        "language": language == null ? null : language,
        "country": country == null ? null : country,
      };
}
