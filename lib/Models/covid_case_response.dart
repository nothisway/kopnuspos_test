import 'dart:convert';

CovidCaseResponse covidCaseResponseFromJson(String str) => CovidCaseResponse.fromJson(json.decode(str));

String covidCaseResponseToJson(CovidCaseResponse data) => json.encode(data.toJson());

class CovidCaseResponse {
  CovidCaseResponse({
    this.confirmed,
    this.recovered,
    this.deaths,
    this.lastUpdate,
  });

  Confirmed confirmed;
  Confirmed recovered;
  Confirmed deaths;
  DateTime lastUpdate;

  factory CovidCaseResponse.fromJson(Map<String, dynamic> json) => CovidCaseResponse(
    confirmed: json["confirmed"] == null ? null : Confirmed.fromJson(json["confirmed"]),
    recovered: json["recovered"] == null ? null : Confirmed.fromJson(json["recovered"]),
    deaths: json["deaths"] == null ? null : Confirmed.fromJson(json["deaths"]),
    lastUpdate: json["lastUpdate"] == null ? null : DateTime.parse(json["lastUpdate"]),
  );

  Map<String, dynamic> toJson() => {
    "confirmed": confirmed == null ? null : confirmed.toJson(),
    "recovered": recovered == null ? null : recovered.toJson(),
    "deaths": deaths == null ? null : deaths.toJson(),
    "lastUpdate": lastUpdate == null ? null : lastUpdate.toIso8601String(),
  };
}

class Confirmed {
  Confirmed({
    this.value,
    this.detail,
  });

  int value;
  String detail;

  factory Confirmed.fromJson(Map<String, dynamic> json) => Confirmed(
    value: json["value"] == null ? null : json["value"],
    detail: json["detail"] == null ? null : json["detail"],
  );

  Map<String, dynamic> toJson() => {
    "value": value == null ? null : value,
    "detail": detail == null ? null : detail,
  };
}
