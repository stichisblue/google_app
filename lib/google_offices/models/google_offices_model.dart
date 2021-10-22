class GoogleOffices {

  GoogleOffices({
    required this.offices,
    required this.regions,
  });

  late final List<Offices> offices;
  late final List<Regions> regions;
  
  GoogleOffices.fromJson(Map<String, dynamic> json){
    offices = List.from(json['offices']).map((e)=>Offices.fromJson(e)).toList();
    regions = List.from(json['regions']).map((e)=>Regions.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['offices'] = offices.map((e)=>e.toJson()).toList();
    _data['regions'] = regions.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Offices {
  Offices({
    required this.address,
    required this.id,
    required this.image,
    required this.lat,
    required this.lng,
    required this.name,
    required this.phone,
    required this.region,
  });
  late final String address;
  late final String id;
  late final String image;
  late final double lat;
  late final double lng;
  late final String name;
  late final String phone;
  late final String region;
  
  Offices.fromJson(Map<String, dynamic> json){
    address = json['address'];
    id = json['id'];
    image = json['image'];
    lat = json['lat'];
    lng = json['lng'];
    name = json['name'];
    phone = json['phone'];
    region = json['region'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['address'] = address;
    _data['id'] = id;
    _data['image'] = image;
    _data['lat'] = lat;
    _data['lng'] = lng;
    _data['name'] = name;
    _data['phone'] = phone;
    _data['region'] = region;
    return _data;
  }
}

class Regions {
  Regions({
    required this.coords,
    required this.id,
    required this.name,
    required this.zoom,
  });
  late final Coords coords;
  late final String id;
  late final String name;
  late final double zoom;
  
  Regions.fromJson(Map<String, dynamic> json){
    coords = Coords.fromJson(json['coords']);
    id = json['id'];
    name = json['name'];
    zoom = json['zoom'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['coords'] = coords.toJson();
    _data['id'] = id;
    _data['name'] = name;
    _data['zoom'] = zoom;
    return _data;
  }
}

class Coords {
  Coords({
    required this.lat,
    required this.lng,
  });
  late final double lat;
  late final double lng;
  
  Coords.fromJson(Map<String, dynamic> json){
    lat = json['lat'];
    lng = json['lng'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['lat'] = lat;
    _data['lng'] = lng;
    return _data;
  }
}