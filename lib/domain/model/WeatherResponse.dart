/// city : {"id":3163858,"name":"Zocca","coord":{"lon":10.99,"lat":44.34},"country":"IT","population":4593,"timezone":3600}
/// cod : "200"
/// message : 4.7039383
/// cnt : 7
/// list : [{"dt":1677927600,"sunrise":1677908950,"sunset":1677949613,"temp":{"day":280.6,"min":274.01,"max":281.44,"night":275.58,"eve":277.89,"morn":274.19},"feels_like":{"day":279.29,"night":273.32,"eve":277.89,"morn":272.51},"pressure":1017,"humidity":61,"weather":[{"id":800,"main":"Clear","description":"sky is clear","icon":"01d"}],"speed":2.19,"deg":211,"gust":3.83,"clouds":7,"pop":0},{"dt":1678014000,"sunrise":1677995244,"sunset":1678036091,"temp":{"day":282.93,"min":273.96,"max":283.51,"night":275.87,"eve":278.69,"morn":274.14},"feels_like":{"day":282.93,"night":272.93,"eve":276.77,"morn":271.56},"pressure":1012,"humidity":45,"weather":[{"id":800,"main":"Clear","description":"sky is clear","icon":"01d"}],"speed":3.02,"deg":207,"gust":4.78,"clouds":2,"pop":0.04},{"dt":1678100400,"sunrise":1678081539,"sunset":1678122569,"temp":{"day":281.11,"min":274.75,"max":282.18,"night":276.26,"eve":278.65,"morn":274.77},"feels_like":{"day":280.12,"night":273.49,"eve":276.95,"morn":271.97},"pressure":1009,"humidity":66,"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04d"}],"speed":2.87,"deg":207,"gust":4.68,"clouds":62,"pop":0.32},{"dt":1678186800,"sunrise":1678167832,"sunset":1678209046,"temp":{"day":280.91,"min":274.79,"max":280.91,"night":278.18,"eve":278.74,"morn":275.23},"feels_like":{"day":279,"night":275.78,"eve":276.62,"morn":272.46},"pressure":1005,"humidity":64,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"speed":2.98,"deg":207,"gust":7.37,"clouds":66,"pop":0.57,"rain":0.94},{"dt":1678273200,"sunrise":1678254125,"sunset":1678295523,"temp":{"day":280.61,"min":277.59,"max":280.97,"night":279.12,"eve":280.17,"morn":277.59},"feels_like":{"day":279.3,"night":277.43,"eve":279.08,"morn":275.21},"pressure":1001,"humidity":80,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"speed":2.8,"deg":197,"gust":6.92,"clouds":95,"pop":0.53,"rain":1.26},{"dt":1678359600,"sunrise":1678340418,"sunset":1678382000,"temp":{"day":285.68,"min":279.17,"max":285.68,"night":281.07,"eve":281.07,"morn":279.48},"feels_like":{"day":284.48,"night":278.91,"eve":279.06,"morn":277.13},"pressure":1003,"humidity":57,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"speed":3.41,"deg":207,"gust":6.77,"clouds":100,"pop":0.12},{"dt":1678446000,"sunrise":1678426710,"sunset":1678468476,"temp":{"day":284.7,"min":277.4,"max":285.29,"night":277.4,"eve":281.44,"morn":278.49},"feels_like":{"day":283.48,"night":276.37,"eve":277.78,"morn":276.5},"pressure":1000,"humidity":60,"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04d"}],"speed":7.36,"deg":302,"gust":16.58,"clouds":53,"pop":0.16}]

class WeatherResponse {
  WeatherResponse({
    City? city,
    String? cod,
    num? message,
    num? cnt,
    List<WeatherList>? list,
  }) {
    _city = city;
    _cod = cod;
    _message = message;
    _cnt = cnt;
    _list = list;
  }

  WeatherResponse.fromJson(dynamic json) {
    _city = json['city'] != null ? City.fromJson(json['city']) : null;
    _cod = json['cod'];
    _message = json['message'];
    _cnt = json['cnt'];
    if (json['list'] != null) {
      _list = [];
      json['list'].forEach((v) {
        _list?.add(WeatherList.fromJson(v));
      });
    }
  }

  City? _city;
  String? _cod;
  num? _message;
  num? _cnt;
  List<WeatherList>? _list;

  WeatherResponse copyWith({
    City? city,
    String? cod,
    num? message,
    num? cnt,
    List<WeatherList>? list,
  }) =>
      WeatherResponse(
        city: city ?? _city,
        cod: cod ?? _cod,
        message: message ?? _message,
        cnt: cnt ?? _cnt,
        list: list ?? _list,
      );

  City? get city => _city;

  String? get cod => _cod;

  num? get message => _message;

  num? get cnt => _cnt;

  List<WeatherList>? get list => _list;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_city != null) {
      map['city'] = _city?.toJson();
    }
    map['cod'] = _cod;
    map['message'] = _message;
    map['cnt'] = _cnt;
    if (_list != null) {
      map['list'] = _list?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// dt : 1677927600
/// sunrise : 1677908950
/// sunset : 1677949613
/// temp : {"day":280.6,"min":274.01,"max":281.44,"night":275.58,"eve":277.89,"morn":274.19}
/// feels_like : {"day":279.29,"night":273.32,"eve":277.89,"morn":272.51}
/// pressure : 1017
/// humidity : 61
/// weather : [{"id":800,"main":"Clear","description":"sky is clear","icon":"01d"}]
/// speed : 2.19
/// deg : 211
/// gust : 3.83
/// clouds : 7
/// pop : 0

class WeatherList {
  WeatherList({
    num? dt,
    num? sunrise,
    num? sunset,
    Temp? temp,
    FeelsLike? feelsLike,
    num? pressure,
    num? humidity,
    List<Weather>? weather,
    num? speed,
    num? deg,
    num? gust,
    num? clouds,
    num? pop,
  }) {
    _dt = dt;
    _sunrise = sunrise;
    _sunset = sunset;
    _temp = temp;
    _feelsLike = feelsLike;
    _pressure = pressure;
    _humidity = humidity;
    _weather = weather;
    _speed = speed;
    _deg = deg;
    _gust = gust;
    _clouds = clouds;
    _pop = pop;
  }

  WeatherList.fromJson(dynamic json) {
    _dt = json['dt'];
    _sunrise = json['sunrise'];
    _sunset = json['sunset'];
    _temp = json['temp'] != null ? Temp.fromJson(json['temp']) : null;
    _feelsLike = json['feels_like'] != null
        ? FeelsLike.fromJson(json['feels_like'])
        : null;
    _pressure = json['pressure'];
    _humidity = json['humidity'];
    if (json['weather'] != null) {
      _weather = [];
      json['weather'].forEach((v) {
        _weather?.add(Weather.fromJson(v));
      });
    }
    _speed = json['speed'];
    _deg = json['deg'];
    _gust = json['gust'];
    _clouds = json['clouds'];
    _pop = json['pop'];
  }

  num? _dt;
  num? _sunrise;
  num? _sunset;
  Temp? _temp;
  FeelsLike? _feelsLike;
  num? _pressure;
  num? _humidity;
  List<Weather>? _weather;
  num? _speed;
  num? _deg;
  num? _gust;
  num? _clouds;
  num? _pop;

  WeatherList copyWith({
    num? dt,
    num? sunrise,
    num? sunset,
    Temp? temp,
    FeelsLike? feelsLike,
    num? pressure,
    num? humidity,
    List<Weather>? weather,
    num? speed,
    num? deg,
    num? gust,
    num? clouds,
    num? pop,
  }) =>
      WeatherList(
        dt: dt ?? _dt,
        sunrise: sunrise ?? _sunrise,
        sunset: sunset ?? _sunset,
        temp: temp ?? _temp,
        feelsLike: feelsLike ?? _feelsLike,
        pressure: pressure ?? _pressure,
        humidity: humidity ?? _humidity,
        weather: weather ?? _weather,
        speed: speed ?? _speed,
        deg: deg ?? _deg,
        gust: gust ?? _gust,
        clouds: clouds ?? _clouds,
        pop: pop ?? _pop,
      );

  num? get dt => _dt;

  num? get sunrise => _sunrise;

  num? get sunset => _sunset;

  Temp? get temp => _temp;

  FeelsLike? get feelsLike => _feelsLike;

  num? get pressure => _pressure;

  num? get humidity => _humidity;

  List<Weather>? get weather => _weather;

  num? get speed => _speed;

  num? get deg => _deg;

  num? get gust => _gust;

  num? get clouds => _clouds;

  num? get pop => _pop;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dt'] = _dt;
    map['sunrise'] = _sunrise;
    map['sunset'] = _sunset;
    if (_temp != null) {
      map['temp'] = _temp?.toJson();
    }
    if (_feelsLike != null) {
      map['feels_like'] = _feelsLike?.toJson();
    }
    map['pressure'] = _pressure;
    map['humidity'] = _humidity;
    if (_weather != null) {
      map['weather'] = _weather?.map((v) => v.toJson()).toList();
    }
    map['speed'] = _speed;
    map['deg'] = _deg;
    map['gust'] = _gust;
    map['clouds'] = _clouds;
    map['pop'] = _pop;
    return map;
  }
}

/// id : 800
/// main : "Clear"
/// description : "sky is clear"
/// icon : "01d"

class Weather {
  Weather({
    num? id,
    String? main,
    String? description,
    String? icon,
  }) {
    _id = id;
    _main = main;
    _description = description;
    _icon = icon;
  }

  Weather.fromJson(dynamic json) {
    _id = json['id'];
    _main = json['main'];
    _description = json['description'];
    _icon = json['icon'];
  }

  num? _id;
  String? _main;
  String? _description;
  String? _icon;

  Weather copyWith({
    num? id,
    String? main,
    String? description,
    String? icon,
  }) =>
      Weather(
        id: id ?? _id,
        main: main ?? _main,
        description: description ?? _description,
        icon: icon ?? _icon,
      );

  num? get id => _id;

  String? get main => _main;

  String? get description => _description;

  String? get icon => _icon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['main'] = _main;
    map['description'] = _description;
    map['icon'] = _icon;
    return map;
  }
}

/// day : 279.29
/// night : 273.32
/// eve : 277.89
/// morn : 272.51

class FeelsLike {
  FeelsLike({
    num? day,
    num? night,
    num? eve,
    num? morn,
  }) {
    _day = day;
    _night = night;
    _eve = eve;
    _morn = morn;
  }

  FeelsLike.fromJson(dynamic json) {
    _day = json['day'];
    _night = json['night'];
    _eve = json['eve'];
    _morn = json['morn'];
  }

  num? _day;
  num? _night;
  num? _eve;
  num? _morn;

  FeelsLike copyWith({
    num? day,
    num? night,
    num? eve,
    num? morn,
  }) =>
      FeelsLike(
        day: day ?? _day,
        night: night ?? _night,
        eve: eve ?? _eve,
        morn: morn ?? _morn,
      );

  num? get day => _day;

  num? get night => _night;

  num? get eve => _eve;

  num? get morn => _morn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = _day;
    map['night'] = _night;
    map['eve'] = _eve;
    map['morn'] = _morn;
    return map;
  }
}

/// day : 280.6
/// min : 274.01
/// max : 281.44
/// night : 275.58
/// eve : 277.89
/// morn : 274.19

class Temp {
  Temp({
    num? day,
    num? min,
    num? max,
    num? night,
    num? eve,
    num? morn,
  }) {
    _day = day;
    _min = min;
    _max = max;
    _night = night;
    _eve = eve;
    _morn = morn;
  }

  Temp.fromJson(dynamic json) {
    _day = json['day'];
    _min = json['min'];
    _max = json['max'];
    _night = json['night'];
    _eve = json['eve'];
    _morn = json['morn'];
  }

  num? _day;
  num? _min;
  num? _max;
  num? _night;
  num? _eve;
  num? _morn;

  Temp copyWith({
    num? day,
    num? min,
    num? max,
    num? night,
    num? eve,
    num? morn,
  }) =>
      Temp(
        day: day ?? _day,
        min: min ?? _min,
        max: max ?? _max,
        night: night ?? _night,
        eve: eve ?? _eve,
        morn: morn ?? _morn,
      );

  num? get day => _day;

  num? get min => _min;

  num? get max => _max;

  num? get night => _night;

  num? get eve => _eve;

  num? get morn => _morn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = _day;
    map['min'] = _min;
    map['max'] = _max;
    map['night'] = _night;
    map['eve'] = _eve;
    map['morn'] = _morn;
    return map;
  }
}

/// id : 3163858
/// name : "Zocca"
/// coord : {"lon":10.99,"lat":44.34}
/// country : "IT"
/// population : 4593
/// timezone : 3600

class City {
  City({
    num? id,
    String? name,
    Coord? coord,
    String? country,
    num? population,
    num? timezone,
  }) {
    _id = id;
    _name = name;
    _coord = coord;
    _country = country;
    _population = population;
    _timezone = timezone;
  }

  City.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _coord = json['coord'] != null ? Coord.fromJson(json['coord']) : null;
    _country = json['country'];
    _population = json['population'];
    _timezone = json['timezone'];
  }

  num? _id;
  String? _name;
  Coord? _coord;
  String? _country;
  num? _population;
  num? _timezone;

  City copyWith({
    num? id,
    String? name,
    Coord? coord,
    String? country,
    num? population,
    num? timezone,
  }) =>
      City(
        id: id ?? _id,
        name: name ?? _name,
        coord: coord ?? _coord,
        country: country ?? _country,
        population: population ?? _population,
        timezone: timezone ?? _timezone,
      );

  num? get id => _id;

  String? get name => _name;

  Coord? get coord => _coord;

  String? get country => _country;

  num? get population => _population;

  num? get timezone => _timezone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    if (_coord != null) {
      map['coord'] = _coord?.toJson();
    }
    map['country'] = _country;
    map['population'] = _population;
    map['timezone'] = _timezone;
    return map;
  }
}

/// lon : 10.99
/// lat : 44.34

class Coord {
  Coord({
    num? lon,
    num? lat,
  }) {
    _lon = lon;
    _lat = lat;
  }

  Coord.fromJson(dynamic json) {
    _lon = json['lon'];
    _lat = json['lat'];
  }

  num? _lon;
  num? _lat;

  Coord copyWith({
    num? lon,
    num? lat,
  }) =>
      Coord(
        lon: lon ?? _lon,
        lat: lat ?? _lat,
      );

  num? get lon => _lon;

  num? get lat => _lat;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lon'] = _lon;
    map['lat'] = _lat;
    return map;
  }
}
