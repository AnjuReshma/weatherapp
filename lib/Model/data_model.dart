// ignore_for_file: constant_identifier_names

import 'dart:convert';

DataModel dataModelFromJson(String str) =>
    DataModel.fromJson(json.decode(str));

String dataModelToJson(DataModel data) =>
    json.encode(data.toJson());

/* =========================
   MAIN DATA MODEL
========================= */

class DataModel {
  int? queryCost;
  double? latitude;
  double? longitude;
  String? resolvedAddress;
  String? address;
  String? timezone;
  int? tzoffset;
  String? description;
  List<Days>? days;
  List<dynamic>? alerts;
  Stations? stations;
  CurrentConditions? currentConditions;

  DataModel({
    this.queryCost,
    this.latitude,
    this.longitude,
    this.resolvedAddress,
    this.address,
    this.timezone,
    this.tzoffset,
    this.description,
    this.days,
    this.alerts,
    this.stations,
    this.currentConditions,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        queryCost: json["queryCost"],
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
        resolvedAddress: json["resolvedAddress"],
        address: json["address"],
        timezone: json["timezone"],
        tzoffset: json["tzoffset"],
        description: json["description"],
        days: json["days"] == null
            ? []
            : List<Days>.from(
                json["days"].map((x) => Days.fromJson(x))),
        alerts: json["alerts"] == null
            ? []
            : List<dynamic>.from(json["alerts"]),
        stations: json["stations"] == null
            ? null
            : Stations.fromJson(json["stations"]),
        currentConditions: json["currentConditions"] == null
            ? null
            : CurrentConditions.fromJson(json["currentConditions"]),
      );

  Map<String, dynamic> toJson() => {
        "queryCost": queryCost,
        "latitude": latitude,
        "longitude": longitude,
        "resolvedAddress": resolvedAddress,
        "address": address,
        "timezone": timezone,
        "tzoffset": tzoffset,
        "description": description,
        "days": days == null
            ? []
            : List<dynamic>.from(days!.map((x) => x.toJson())),
        "alerts": alerts == null ? [] : List<dynamic>.from(alerts!),
        "stations": stations?.toJson(),
        "currentConditions": currentConditions?.toJson(),
      };
}

/* =========================
   CURRENT CONDITIONS
========================= */

class CurrentConditions {
  String? datetime;
  int? datetimeEpoch;
  double? temp;
  double? feelslike;
  double? humidity;
  double? windspeed;
  double? winddir;
  double? pressure;
  double? visibility;
  double? cloudcover;
  int? uvindex;
  Conditions? conditions;
  Icon? icon;

  CurrentConditions({
    this.datetime,
    this.datetimeEpoch,
    this.temp,
    this.feelslike,
    this.humidity,
    this.windspeed,
    this.winddir,
    this.pressure,
    this.visibility,
    this.cloudcover,
    this.uvindex,
    this.conditions,
    this.icon,
  });

  factory CurrentConditions.fromJson(Map<String, dynamic> json) =>
      CurrentConditions(
        datetime: json["datetime"],
        datetimeEpoch: json["datetimeEpoch"],
        temp: json["temp"]?.toDouble(),
        feelslike: json["feelslike"]?.toDouble(),
        humidity: json["humidity"]?.toDouble(),
        windspeed: json["windspeed"]?.toDouble(),
        winddir: json["winddir"]?.toDouble(),
        pressure: json["pressure"]?.toDouble(),
        visibility: json["visibility"]?.toDouble(),
        cloudcover: json["cloudcover"]?.toDouble(),
        uvindex: json["uvindex"],
        conditions: conditionsValues.map[json["conditions"]],
        icon: iconValues.map[json["icon"]],
      );

  Map<String, dynamic> toJson() => {
        "datetime": datetime,
        "datetimeEpoch": datetimeEpoch,
        "temp": temp,
        "feelslike": feelslike,
        "humidity": humidity,
        "windspeed": windspeed,
        "winddir": winddir,
        "pressure": pressure,
        "visibility": visibility,
        "cloudcover": cloudcover,
        "uvindex": uvindex,
        "conditions": conditionsValues.reverse[conditions],
        "icon": iconValues.reverse[icon],
      };
}

/* =========================
   DAYS (DAILY WEATHER)
========================= */

class Days {
  String? datetime;
  int? datetimeEpoch;
  double? tempmax;
  double? tempmin;
  double? temp;
  double? humidity;
  double? precip;
  double? precipprob;
  List<Icon>? preciptype;
  double? windspeed;
  double? winddir;
  double? pressure;
  double? cloudcover;
  int? uvindex;
  Conditions? conditions;
  Icon? icon;
  String? description;
  List<Hours>? hours;

  Days({
    this.datetime,
    this.datetimeEpoch,
    this.tempmax,
    this.tempmin,
    this.temp,
    this.humidity,
    this.precip,
    this.precipprob,
    this.preciptype,
    this.windspeed,
    this.winddir,
    this.pressure,
    this.cloudcover,
    this.uvindex,
    this.conditions,
    this.icon,
    this.description,
    this.hours,
  });

  factory Days.fromJson(Map<String, dynamic> json) => Days(
        datetime: json["datetime"],
        datetimeEpoch: json["datetimeEpoch"],
        tempmax: json["tempmax"]?.toDouble(),
        tempmin: json["tempmin"]?.toDouble(),
        temp: json["temp"]?.toDouble(),
        humidity: json["humidity"]?.toDouble(),
        precip: json["precip"]?.toDouble(),
        precipprob: json["precipprob"]?.toDouble(),
        preciptype: json["preciptype"] == null
            ? []
            : List<Icon>.from(
                json["preciptype"].map((x) => iconValues.map[x])),
        windspeed: json["windspeed"]?.toDouble(),
        winddir: json["winddir"]?.toDouble(),
        pressure: json["pressure"]?.toDouble(),
        cloudcover: json["cloudcover"]?.toDouble(),
        uvindex: json["uvindex"],
        conditions: conditionsValues.map[json["conditions"]],
        icon: iconValues.map[json["icon"]],
        description: json["description"],
        hours: json["hours"] == null
            ? []
            : List<Hours>.from(
                json["hours"].map((x) => Hours.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "datetime": datetime,
        "datetimeEpoch": datetimeEpoch,
        "tempmax": tempmax,
        "tempmin": tempmin,
        "temp": temp,
        "humidity": humidity,
        "precip": precip,
        "precipprob": precipprob,
        "preciptype": preciptype == null
            ? []
            : List<dynamic>.from(
                preciptype!.map((x) => iconValues.reverse[x])),
        "windspeed": windspeed,
        "winddir": winddir,
        "pressure": pressure,
        "cloudcover": cloudcover,
        "uvindex": uvindex,
        "conditions": conditionsValues.reverse[conditions],
        "icon": iconValues.reverse[icon],
        "description": description,
        "hours": hours == null
            ? []
            : List<dynamic>.from(hours!.map((x) => x.toJson())),
      };
}

/* =========================
   HOURS (HOURLY WEATHER)
========================= */

class Hours {
  String? datetime;
  int? datetimeEpoch;
  double? temp;
  double? feelslike;
  double? humidity;
  double? precip;
  double? precipprob;
  List<Icon>? preciptype;
  double? windspeed;
  double? winddir;
  double? pressure;
  double? cloudcover;
  int? uvindex;
  Conditions? conditions;
  Icon? icon;

  Hours({
    this.datetime,
    this.datetimeEpoch,
    this.temp,
    this.feelslike,
    this.humidity,
    this.precip,
    this.precipprob,
    this.preciptype,
    this.windspeed,
    this.winddir,
    this.pressure,
    this.cloudcover,
    this.uvindex,
    this.conditions,
    this.icon,
  });

  factory Hours.fromJson(Map<String, dynamic> json) => Hours(
        datetime: json["datetime"],
        datetimeEpoch: json["datetimeEpoch"],
        temp: json["temp"]?.toDouble(),
        feelslike: json["feelslike"]?.toDouble(),
        humidity: json["humidity"]?.toDouble(),
        precip: json["precip"]?.toDouble(),
        precipprob: json["precipprob"]?.toDouble(),
        preciptype: json["preciptype"] == null
            ? []
            : List<Icon>.from(
                json["preciptype"].map((x) => iconValues.map[x])),
        windspeed: json["windspeed"]?.toDouble(),
        winddir: json["winddir"]?.toDouble(),
        pressure: json["pressure"]?.toDouble(),
        cloudcover: json["cloudcover"]?.toDouble(),
        uvindex: json["uvindex"],
        conditions: conditionsValues.map[json["conditions"]],
        icon: iconValues.map[json["icon"]],
      );

  Map<String, dynamic> toJson() => {
        "datetime": datetime,
        "datetimeEpoch": datetimeEpoch,
        "temp": temp,
        "feelslike": feelslike,
        "humidity": humidity,
        "precip": precip,
        "precipprob": precipprob,
        "preciptype": preciptype == null
            ? []
            : List<dynamic>.from(
                preciptype!.map((x) => iconValues.reverse[x])),
        "windspeed": windspeed,
        "winddir": winddir,
        "pressure": pressure,
        "cloudcover": cloudcover,
        "uvindex": uvindex,
        "conditions": conditionsValues.reverse[conditions],
        "icon": iconValues.reverse[icon],
      };
}

/* =========================
   ENUMS & HELPERS
========================= */

enum Conditions {
  CLEAR,
  OVERCAST,
  PARTIALLY_CLOUDY,
  RAIN_OVERCAST,
  RAIN_PARTIALLY_CLOUDY
}

final conditionsValues = EnumValues({
  "Clear": Conditions.CLEAR,
  "Overcast": Conditions.OVERCAST,
  "Partially cloudy": Conditions.PARTIALLY_CLOUDY,
  "Rain, Overcast": Conditions.RAIN_OVERCAST,
  "Rain, Partially cloudy": Conditions.RAIN_PARTIALLY_CLOUDY,
});

enum Icon {
  CLEAR_DAY,
  CLEAR_NIGHT,
  CLOUDY,
  PARTLY_CLOUDY_DAY,
  PARTLY_CLOUDY_NIGHT,
  RAIN
}

final iconValues = EnumValues({
  "clear-day": Icon.CLEAR_DAY,
  "clear-night": Icon.CLEAR_NIGHT,
  "cloudy": Icon.CLOUDY,
  "partly-cloudy-day": Icon.PARTLY_CLOUDY_DAY,
  "partly-cloudy-night": Icon.PARTLY_CLOUDY_NIGHT,
  "rain": Icon.RAIN,
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse =>
      reverseMap = map.map((k, v) => MapEntry(v, k));
}
/* =========================
   STATIONS
========================= */

class Stations {
  Opla? viar;
  Opla? opla;

  Stations({
    this.viar,
    this.opla,
  });

  factory Stations.fromJson(Map<String, dynamic> json) => Stations(
        viar: json["VIAR"] == null ? null : Opla.fromJson(json["VIAR"]),
        opla: json["OPLA"] == null ? null : Opla.fromJson(json["OPLA"]),
      );

  Map<String, dynamic> toJson() => {
        "VIAR": viar?.toJson(),
        "OPLA": opla?.toJson(),
      };
}

class Opla {
  int? distance;
  double? latitude;
  double? longitude;
  int? useCount;
  Station? id;
  Station? name;
  int? quality;
  int? contribution;

  Opla({
    this.distance,
    this.latitude,
    this.longitude,
    this.useCount,
    this.id,
    this.name,
    this.quality,
    this.contribution,
  });

  factory Opla.fromJson(Map<String, dynamic> json) => Opla(
        distance: json["distance"],
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
        useCount: json["useCount"],
        id: stationValues.map[json["id"]],
        name: stationValues.map[json["name"]],
        quality: json["quality"],
        contribution: json["contribution"],
      );

  Map<String, dynamic> toJson() => {
        "distance": distance,
        "latitude": latitude,
        "longitude": longitude,
        "useCount": useCount,
        "id": stationValues.reverse[id],
        "name": stationValues.reverse[name],
        "quality": quality,
        "contribution": contribution,
      };
}

/* =========================
   STATION ENUM
========================= */

enum Station {
  OPLA,
  VIAR,
}

final stationValues = EnumValues({
  "OPLA": Station.OPLA,
  "VIAR": Station.VIAR,
});

/* =========================
   SOURCE ENUM (OPTIONAL)
========================= */

enum Source {
  COMB,
  FCST,
  OBS,
}

final sourceValues = EnumValues({
  "comb": Source.COMB,
  "fcst": Source.FCST,
  "obs": Source.OBS,
});
