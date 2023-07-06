class Plant {
  Plant(this.id, this.name, this.picture, this.watering, this.sunlight);

  final int id;
  final String name;
  final String picture;
  final String watering;
  final String sunlight;

  Plant.fromJson(Map<String, dynamic> json)
      : id = json['data']['id'],
        name = json['data']['name'],
        picture = json['data']['default_image']['small_url'],
        watering = json['data']['watering'],
        sunlight = json['data']['sunlight'];
}
