/// name : "London"
/// local_names : {"af":"Londen","ar":"لندن","ascii":"London","az":"London","bg":"Лондон","ca":"Londres","da":"London","de":"London","el":"Λονδίνο","en":"London","eu":"Londres","fa":"لندن","feature_name":"London","fi":"Lontoo","fr":"Londres","gl":"Londres","he":"לונדון","hi":"लंदन","hr":"London","hu":"London","id":"London","it":"Londra","ja":"ロンドン","la":"Londinium","lt":"Londonas","mk":"Лондон","nl":"Londen","no":"London","pl":"Londyn","pt":"Londres","ro":"Londra","ru":"Лондон","sk":"Londýn","sl":"London","sr":"Лондон","th":"ลอนดอน","tr":"Londra","vi":"Luân Đôn","zu":"ILondon"}
/// lat : 51.5085
/// lon : -0.1257
/// country : "GB"

class GeocodeResponse {
  GeocodeResponse({
      String? name, 
      LocalNames? localNames, 
      num? lat, 
      num? lon, 
      String? country,}){
    _name = name;
    _localNames = localNames;
    _lat = lat;
    _lon = lon;
    _country = country;
}

  GeocodeResponse.fromJson(dynamic json) {
    _name = json['name'];
    _localNames = json['local_names'] != null ? LocalNames.fromJson(json['local_names']) : null;
    _lat = json['lat'];
    _lon = json['lon'];
    _country = json['country'];
  }
  String? _name;
  LocalNames? _localNames;
  num? _lat;
  num? _lon;
  String? _country;
GeocodeResponse copyWith({  String? name,
  LocalNames? localNames,
  num? lat,
  num? lon,
  String? country,
}) => GeocodeResponse(  name: name ?? _name,
  localNames: localNames ?? _localNames,
  lat: lat ?? _lat,
  lon: lon ?? _lon,
  country: country ?? _country,
);
  String? get name => _name;
  LocalNames? get localNames => _localNames;
  num? get lat => _lat;
  num? get lon => _lon;
  String? get country => _country;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    if (_localNames != null) {
      map['local_names'] = _localNames?.toJson();
    }
    map['lat'] = _lat;
    map['lon'] = _lon;
    map['country'] = _country;
    return map;
  }

}

/// af : "Londen"
/// ar : "لندن"
/// ascii : "London"
/// az : "London"
/// bg : "Лондон"
/// ca : "Londres"
/// da : "London"
/// de : "London"
/// el : "Λονδίνο"
/// en : "London"
/// eu : "Londres"
/// fa : "لندن"
/// feature_name : "London"
/// fi : "Lontoo"
/// fr : "Londres"
/// gl : "Londres"
/// he : "לונדון"
/// hi : "लंदन"
/// hr : "London"
/// hu : "London"
/// id : "London"
/// it : "Londra"
/// ja : "ロンドン"
/// la : "Londinium"
/// lt : "Londonas"
/// mk : "Лондон"
/// nl : "Londen"
/// no : "London"
/// pl : "Londyn"
/// pt : "Londres"
/// ro : "Londra"
/// ru : "Лондон"
/// sk : "Londýn"
/// sl : "London"
/// sr : "Лондон"
/// th : "ลอนดอน"
/// tr : "Londra"
/// vi : "Luân Đôn"
/// zu : "ILondon"

class LocalNames {
  LocalNames({
      String? af, 
      String? ar, 
      String? ascii, 
      String? az, 
      String? bg, 
      String? ca, 
      String? da, 
      String? de, 
      String? el, 
      String? en, 
      String? eu, 
      String? fa, 
      String? featureName, 
      String? fi, 
      String? fr, 
      String? gl, 
      String? he, 
      String? hi, 
      String? hr, 
      String? hu, 
      String? id, 
      String? it, 
      String? ja, 
      String? la, 
      String? lt, 
      String? mk, 
      String? nl, 
      String? no, 
      String? pl, 
      String? pt, 
      String? ro, 
      String? ru, 
      String? sk, 
      String? sl, 
      String? sr, 
      String? th, 
      String? tr, 
      String? vi, 
      String? zu,}){
    _af = af;
    _ar = ar;
    _ascii = ascii;
    _az = az;
    _bg = bg;
    _ca = ca;
    _da = da;
    _de = de;
    _el = el;
    _en = en;
    _eu = eu;
    _fa = fa;
    _featureName = featureName;
    _fi = fi;
    _fr = fr;
    _gl = gl;
    _he = he;
    _hi = hi;
    _hr = hr;
    _hu = hu;
    _id = id;
    _it = it;
    _ja = ja;
    _la = la;
    _lt = lt;
    _mk = mk;
    _nl = nl;
    _no = no;
    _pl = pl;
    _pt = pt;
    _ro = ro;
    _ru = ru;
    _sk = sk;
    _sl = sl;
    _sr = sr;
    _th = th;
    _tr = tr;
    _vi = vi;
    _zu = zu;
}

  LocalNames.fromJson(dynamic json) {
    _af = json['af'];
    _ar = json['ar'];
    _ascii = json['ascii'];
    _az = json['az'];
    _bg = json['bg'];
    _ca = json['ca'];
    _da = json['da'];
    _de = json['de'];
    _el = json['el'];
    _en = json['en'];
    _eu = json['eu'];
    _fa = json['fa'];
    _featureName = json['feature_name'];
    _fi = json['fi'];
    _fr = json['fr'];
    _gl = json['gl'];
    _he = json['he'];
    _hi = json['hi'];
    _hr = json['hr'];
    _hu = json['hu'];
    _id = json['id'];
    _it = json['it'];
    _ja = json['ja'];
    _la = json['la'];
    _lt = json['lt'];
    _mk = json['mk'];
    _nl = json['nl'];
    _no = json['no'];
    _pl = json['pl'];
    _pt = json['pt'];
    _ro = json['ro'];
    _ru = json['ru'];
    _sk = json['sk'];
    _sl = json['sl'];
    _sr = json['sr'];
    _th = json['th'];
    _tr = json['tr'];
    _vi = json['vi'];
    _zu = json['zu'];
  }
  String? _af;
  String? _ar;
  String? _ascii;
  String? _az;
  String? _bg;
  String? _ca;
  String? _da;
  String? _de;
  String? _el;
  String? _en;
  String? _eu;
  String? _fa;
  String? _featureName;
  String? _fi;
  String? _fr;
  String? _gl;
  String? _he;
  String? _hi;
  String? _hr;
  String? _hu;
  String? _id;
  String? _it;
  String? _ja;
  String? _la;
  String? _lt;
  String? _mk;
  String? _nl;
  String? _no;
  String? _pl;
  String? _pt;
  String? _ro;
  String? _ru;
  String? _sk;
  String? _sl;
  String? _sr;
  String? _th;
  String? _tr;
  String? _vi;
  String? _zu;
LocalNames copyWith({  String? af,
  String? ar,
  String? ascii,
  String? az,
  String? bg,
  String? ca,
  String? da,
  String? de,
  String? el,
  String? en,
  String? eu,
  String? fa,
  String? featureName,
  String? fi,
  String? fr,
  String? gl,
  String? he,
  String? hi,
  String? hr,
  String? hu,
  String? id,
  String? it,
  String? ja,
  String? la,
  String? lt,
  String? mk,
  String? nl,
  String? no,
  String? pl,
  String? pt,
  String? ro,
  String? ru,
  String? sk,
  String? sl,
  String? sr,
  String? th,
  String? tr,
  String? vi,
  String? zu,
}) => LocalNames(  af: af ?? _af,
  ar: ar ?? _ar,
  ascii: ascii ?? _ascii,
  az: az ?? _az,
  bg: bg ?? _bg,
  ca: ca ?? _ca,
  da: da ?? _da,
  de: de ?? _de,
  el: el ?? _el,
  en: en ?? _en,
  eu: eu ?? _eu,
  fa: fa ?? _fa,
  featureName: featureName ?? _featureName,
  fi: fi ?? _fi,
  fr: fr ?? _fr,
  gl: gl ?? _gl,
  he: he ?? _he,
  hi: hi ?? _hi,
  hr: hr ?? _hr,
  hu: hu ?? _hu,
  id: id ?? _id,
  it: it ?? _it,
  ja: ja ?? _ja,
  la: la ?? _la,
  lt: lt ?? _lt,
  mk: mk ?? _mk,
  nl: nl ?? _nl,
  no: no ?? _no,
  pl: pl ?? _pl,
  pt: pt ?? _pt,
  ro: ro ?? _ro,
  ru: ru ?? _ru,
  sk: sk ?? _sk,
  sl: sl ?? _sl,
  sr: sr ?? _sr,
  th: th ?? _th,
  tr: tr ?? _tr,
  vi: vi ?? _vi,
  zu: zu ?? _zu,
);
  String? get af => _af;
  String? get ar => _ar;
  String? get ascii => _ascii;
  String? get az => _az;
  String? get bg => _bg;
  String? get ca => _ca;
  String? get da => _da;
  String? get de => _de;
  String? get el => _el;
  String? get en => _en;
  String? get eu => _eu;
  String? get fa => _fa;
  String? get featureName => _featureName;
  String? get fi => _fi;
  String? get fr => _fr;
  String? get gl => _gl;
  String? get he => _he;
  String? get hi => _hi;
  String? get hr => _hr;
  String? get hu => _hu;
  String? get id => _id;
  String? get it => _it;
  String? get ja => _ja;
  String? get la => _la;
  String? get lt => _lt;
  String? get mk => _mk;
  String? get nl => _nl;
  String? get no => _no;
  String? get pl => _pl;
  String? get pt => _pt;
  String? get ro => _ro;
  String? get ru => _ru;
  String? get sk => _sk;
  String? get sl => _sl;
  String? get sr => _sr;
  String? get th => _th;
  String? get tr => _tr;
  String? get vi => _vi;
  String? get zu => _zu;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['af'] = _af;
    map['ar'] = _ar;
    map['ascii'] = _ascii;
    map['az'] = _az;
    map['bg'] = _bg;
    map['ca'] = _ca;
    map['da'] = _da;
    map['de'] = _de;
    map['el'] = _el;
    map['en'] = _en;
    map['eu'] = _eu;
    map['fa'] = _fa;
    map['feature_name'] = _featureName;
    map['fi'] = _fi;
    map['fr'] = _fr;
    map['gl'] = _gl;
    map['he'] = _he;
    map['hi'] = _hi;
    map['hr'] = _hr;
    map['hu'] = _hu;
    map['id'] = _id;
    map['it'] = _it;
    map['ja'] = _ja;
    map['la'] = _la;
    map['lt'] = _lt;
    map['mk'] = _mk;
    map['nl'] = _nl;
    map['no'] = _no;
    map['pl'] = _pl;
    map['pt'] = _pt;
    map['ro'] = _ro;
    map['ru'] = _ru;
    map['sk'] = _sk;
    map['sl'] = _sl;
    map['sr'] = _sr;
    map['th'] = _th;
    map['tr'] = _tr;
    map['vi'] = _vi;
    map['zu'] = _zu;
    return map;
  }

}