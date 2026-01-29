// ignore_for_file: constant_identifier_names

class DataModel {
  dynamic queryCost;
  dynamic latitude;
  dynamic longitude;
  dynamic resolvedAddress;
  dynamic address;
  dynamic timezone;
  dynamic tzoffset;
  dynamic description;

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
            : List<Days>.from(json["days"].map((x) => Days.fromJson(x))),
        alerts: json["alerts"] ?? [],
        stations:
            json["stations"] == null ? null : Stations.fromJson(json["stations"]),
        currentConditions: json["currentConditions"] == null
            ? null
            : CurrentConditions.fromJson(json["currentConditions"]),
      );
}




class Days {
  dynamic datetime;
  dynamic datetimeEpoch;
  dynamic tempmax;
  dynamic tempmin;
  dynamic temp;
  dynamic feelslikemax;
  dynamic feelslikemin;
  dynamic feelslike;
  dynamic dew;
  dynamic humidity;
  dynamic precip;
  dynamic precipprob;
  dynamic precipcover;
  List<dynamic>? preciptype;
  dynamic snow;
  dynamic snowdepth;
  dynamic windgust;
  dynamic windspeed;
  dynamic winddir;
  dynamic pressure;
  dynamic cloudcover;
  dynamic visibility;
  dynamic solarradiation;
  dynamic solarenergy;
  dynamic uvindex;
  dynamic severerisk;
  dynamic sunrise;
  dynamic sunriseEpoch;
  dynamic sunset;
  dynamic sunsetEpoch;
  dynamic moonphase;
  dynamic conditions;
  dynamic description;
  dynamic icon;
  List<dynamic>? stations;
  dynamic source;
  List<Hours>? hours;

  Days({
    this.datetime,
    this.datetimeEpoch,
    this.tempmax,
    this.tempmin,
    this.temp,
    this.feelslikemax,
    this.feelslikemin,
    this.feelslike,
    this.dew,
    this.humidity,
    this.precip,
    this.precipprob,
    this.precipcover,
    this.preciptype,
    this.snow,
    this.snowdepth,
    this.windgust,
    this.windspeed,
    this.winddir,
    this.pressure,
    this.cloudcover,
    this.visibility,
    this.solarradiation,
    this.solarenergy,
    this.uvindex,
    this.severerisk,
    this.sunrise,
    this.sunriseEpoch,
    this.sunset,
    this.sunsetEpoch,
    this.moonphase,
    this.conditions,
    this.description,
    this.icon,
    this.stations,
    this.source,
    this.hours,
  });

  factory Days.fromJson(Map<String, dynamic> json) => Days(
        datetime: json["datetime"],
        datetimeEpoch: json["datetimeEpoch"],
        tempmax: json["tempmax"]?.toDouble(),
        tempmin: json["tempmin"]?.toDouble(),
        temp: json["temp"]?.toDouble(),
        feelslikemax: json["feelslikemax"]?.toDouble(),
        feelslikemin: json["feelslikemin"]?.toDouble(),
        feelslike: json["feelslike"]?.toDouble(),
        dew: json["dew"]?.toDouble(),
        humidity: json["humidity"]?.toDouble(),
        precip: json["precip"]?.toDouble(),
        precipprob: json["precipprob"]?.toDouble(),
        precipcover: json["precipcover"]?.toDouble(),
        preciptype: json["preciptype"] == null
            ? []
            : List<Icon>.from(
                json["preciptype"].map((x) => iconValues.map[x]!)),
        snow: json["snow"]?.toDouble(),
        snowdepth: json["snowdepth"]?.toDouble(),
        windgust: json["windgust"]?.toDouble(),
        windspeed: json["windspeed"]?.toDouble(),
        winddir: json["winddir"]?.toDouble(),
        pressure: json["pressure"]?.toDouble(),
        cloudcover: json["cloudcover"]?.toDouble(),
        visibility: json["visibility"]?.toDouble(),
        solarradiation: json["solarradiation"]?.toDouble(),
        solarenergy: json["solarenergy"]?.toDouble(),
        uvindex: json["uvindex"]?.toDouble(),
        severerisk: json["severerisk"]?.toDouble(),
        sunrise: json["sunrise"],
        sunriseEpoch: json["sunriseEpoch"],
        sunset: json["sunset"],
        sunsetEpoch: json["sunsetEpoch"],
        moonphase: json["moonphase"]?.toDouble(),
        conditions: json["conditions"],
        description: json["description"],
        icon: iconValues.map[json["icon"]],
        stations: json["stations"] == null
            ? []
            : List<Station>.from(
                json["stations"].map((x) => stationValues.map[x]!)),
        source: sourceValues.map[json["source"]],
        hours: json["hours"] == null
            ? []
            : List<Hours>.from(json["hours"].map((x) => Hours.fromJson(x))),
      );
}




class Hours {
  dynamic datetime;
  dynamic datetimeEpoch;
  dynamic temp;
  dynamic feelslike;
  dynamic humidity;
  dynamic dew;
  dynamic precip;
  dynamic precipprob;
  dynamic snow;
  dynamic snowdepth;
  List<dynamic>? preciptype;
  dynamic windgust;
  dynamic windspeed;
  dynamic winddir;
  dynamic pressure;
  dynamic visibility;
  dynamic cloudcover;
  dynamic solarradiation;
  dynamic solarenergy;
  dynamic uvindex;
  dynamic severerisk;
  dynamic conditions;
  dynamic icon;
  List<dynamic>? stations;
  dynamic source;

  Hours({
    this.datetime,
    this.datetimeEpoch,
    this.temp,
    this.feelslike,
    this.humidity,
    this.dew,
    this.precip,
    this.precipprob,
    this.snow,
    this.snowdepth,
    this.preciptype,
    this.windgust,
    this.windspeed,
    this.winddir,
    this.pressure,
    this.visibility,
    this.cloudcover,
    this.solarradiation,
    this.solarenergy,
    this.uvindex,
    this.severerisk,
    this.conditions,
    this.icon,
    this.stations,
    this.source,
  });

  factory Hours.fromJson(Map<String, dynamic> json) => Hours(
        datetime: json["datetime"],
        datetimeEpoch: json["datetimeEpoch"],
        temp: json["temp"]?.toDouble(),
        feelslike: json["feelslike"]?.toDouble(),
        humidity: json["humidity"]?.toDouble(),
        dew: json["dew"]?.toDouble(),
        precip: json["precip"]?.toDouble(),
        precipprob: json["precipprob"]?.toDouble(),
        snow: json["snow"]?.toDouble(),
        snowdepth: json["snowdepth"]?.toDouble(),
        preciptype: json["preciptype"] == null
            ? []
            : List<Icon>.from(
                json["preciptype"].map((x) => iconValues.map[x]!)),
        windgust: json["windgust"]?.toDouble(),
        windspeed: json["windspeed"]?.toDouble(),
        winddir: json["winddir"]?.toDouble(),
        pressure: json["pressure"]?.toDouble(),
        visibility: json["visibility"]?.toDouble(),
        cloudcover: json["cloudcover"]?.toDouble(),
        solarradiation: json["solarradiation"]?.toDouble(),
        solarenergy: json["solarenergy"]?.toDouble(),
        uvindex: json["uvindex"]?.toDouble(),
        severerisk: json["severerisk"]?.toDouble(),
        conditions: json["conditions"],
        icon: iconValues.map[json["icon"]],
        stations: json["stations"] == null
            ? []
            : List<Station>.from(
                json["stations"].map((x) => stationValues.map[x]!)),
        source: sourceValues.map[json["source"]],
      );
}





class CurrentConditions {
  dynamic datetime;
  dynamic datetimeEpoch;
  dynamic temp;
  dynamic feelslike;
  dynamic humidity;
  dynamic dew;
  double? precip;
  dynamic precipprob;
  dynamic snow;
  dynamic snowdepth;
  List<dynamic>? preciptype;
  dynamic windgust;
  dynamic windspeed;
  dynamic winddir;
  dynamic pressure;
  dynamic visibility;
  dynamic cloudcover;
  dynamic solarradiation;
  dynamic solarenergy;
  dynamic uvindex;
  dynamic conditions;
  dynamic icon;
  List<dynamic>? stations;
  dynamic source;
  dynamic sunrise;
  dynamic sunriseEpoch;
  dynamic sunset;
  dynamic sunsetEpoch;
  dynamic moonphase;

  CurrentConditions({
    this.datetime,
    this.datetimeEpoch,
    this.temp,
    this.feelslike,
    this.humidity,
    this.dew,
    this.precip,
    this.precipprob,
    this.snow,
    this.snowdepth,
    this.preciptype,
    this.windgust,
    this.windspeed,
    this.winddir,
    this.pressure,
    this.visibility,
    this.cloudcover,
    this.solarradiation,
    this.solarenergy,
    this.uvindex,
    this.conditions,
    this.icon,
    this.stations,
    this.source,
    this.sunrise,
    this.sunriseEpoch,
    this.sunset,
    this.sunsetEpoch,
    this.moonphase,
  });

  factory CurrentConditions.fromJson(Map<String, dynamic> json) =>
      CurrentConditions(
        datetime: json["datetime"],
        datetimeEpoch: json["datetimeEpoch"],
        temp: json["temp"]?.toDouble(),
        feelslike: json["feelslike"]?.toDouble(),
        humidity: json["humidity"]?.toDouble(),
        dew: json["dew"]?.toDouble(),
        precip: json["precip"]?.toDouble(),
        precipprob: json["precipprob"]?.toDouble(),
        snow: json["snow"]?.toDouble(),
        snowdepth: json["snowdepth"]?.toDouble(),
        preciptype: json["preciptype"] == null
            ? []
            : List<Icon>.from(
                json["preciptype"].map((x) => iconValues.map[x]!)),
        windgust: json["windgust"]?.toDouble(),
        windspeed: json["windspeed"]?.toDouble(),
        winddir: json["winddir"]?.toDouble(),
        pressure: json["pressure"]?.toDouble(),
        visibility: json["visibility"]?.toDouble(),
        cloudcover: json["cloudcover"]?.toDouble(),
        solarradiation: json["solarradiation"]?.toDouble(),
        solarenergy: json["solarenergy"]?.toDouble(),
        uvindex: json["uvindex"]?.toDouble(),
        conditions: json["conditions"],
        icon: iconValues.map[json["icon"]],
        stations: json["stations"] == null
            ? []
            : List<Station>.from(
                json["stations"].map((x) => stationValues.map[x]!)),
        source: sourceValues.map[json["source"]],
        sunrise: json["sunrise"],
        sunriseEpoch: json["sunriseEpoch"],
        sunset: json["sunset"],
        sunsetEpoch: json["sunsetEpoch"],
        moonphase: json["moonphase"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "datetime": datetime,
        "datetimeEpoch": datetimeEpoch,
        "temp": temp,
        "feelslike": feelslike,
        "humidity": humidity,
        "dew": dew,
        "precip": precip,
        "precipprob": precipprob,
        "snow": snow,
        "snowdepth": snowdepth,
        "preciptype": preciptype == null
            ? []
            : List<dynamic>.from(
                preciptype!.map((x) => iconValues.reverse[x])),
        "windgust": windgust,
        "windspeed": windspeed,
        "winddir": winddir,
        "pressure": pressure,
        "visibility": visibility,
        "cloudcover": cloudcover,
        "solarradiation": solarradiation,
        "solarenergy": solarenergy,
        "uvindex": uvindex,
        "conditions": conditions,
        "icon": iconValues.reverse[icon],
        "stations": stations == null
            ? []
            : List<dynamic>.from(
                stations!.map((x) => stationValues.reverse[x])),
        "source": sourceValues.reverse[source],
        "sunrise": sunrise,
        "sunriseEpoch": sunriseEpoch,
        "sunset": sunset,
        "sunsetEpoch": sunsetEpoch,
        "moonphase": moonphase,
      };
}



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

enum Source { COMB, FCST, OBS }

final sourceValues = EnumValues({
  "comb": Source.COMB,
  "fcst": Source.FCST,
  "obs": Source.OBS,
});

enum Station { OPLA, VIAR }

final stationValues = EnumValues({
  "OPLA": Station.OPLA,
  "VIAR": Station.VIAR,
});



class Stations {
  VIAR? viar;
  VIAR? opla;

  Stations({this.viar, this.opla});

  factory Stations.fromJson(Map<String, dynamic> json) => Stations(
        viar: json["VIAR"] == null ? null : VIAR.fromJson(json["VIAR"]),
        opla: json["OPLA"] == null ? null : VIAR.fromJson(json["OPLA"]),
      );

  Map<String, dynamic> toJson() => {
        "VIAR": viar?.toJson(),
        "OPLA": opla?.toJson(),
      };
}

class VIAR {
  dynamic distance;
  dynamic latitude;
  dynamic longitude;
  dynamic useCount;
  dynamic id;
  dynamic name;
  dynamic quality;
  dynamic contribution;

  VIAR({
    this.distance,
    this.latitude,
    this.longitude,
    this.useCount,
    this.id,
    this.name,
    this.quality,
    this.contribution,
  });

  factory VIAR.fromJson(Map<String, dynamic> json) => VIAR(
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



class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
