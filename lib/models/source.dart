class Source {
  const Source({
    this.id,
    this.name,
  });

  final String? id;
  final String? name;

  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
      id:json["id"],
      name:json["name"],
    );
  }
}

  // factory Source.fromJson(Map<String, dynamic> json) {
    // return Source(
    //  id: json['id'] != null ? json['id'] as String : null,
    //  name: json['name'] != null ? json['name'] as String : null,
