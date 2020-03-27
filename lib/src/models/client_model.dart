// To parse this JSON data, do
//
//     final client = clientFromJson(jsonString);

import 'dart:convert';

Client clientFromJson(String str) => Client.fromJson(json.decode(str));

String clientToJson(Client data) => json.encode(data.toJson());

String clientToJsonUpdate(Client data) => json.encode(data.toJsonUpdate());

class Client {
    String id;
    String name;
    String identification;
    String phone;
    String email;
    String photo;
    String created;
    String updated;

    Client({
        this.id,
        this.name,
        this.identification,
        this.phone,
        this.email,
        this.photo,
        this.created,
        this.updated,
    });

    factory Client.fromJson(Map<String, dynamic> json) => Client(
        id: json["id"],
        name: json["name"],
        identification: json["identification"],
        phone: json["phone"],
        email: json["email"],
        photo: json["photo"],
        created: json["created"],
        updated: json["updated"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "identification": identification,
        "phone": phone,
        "email": email,
        "photo": photo,
        "created": created,
        "updated": updated,
    };

    Map<String, dynamic> toJsonUpdate() => {
        "name": name,
        "identification": identification,
        "phone": phone,
        "email": email,
        "photo": photo,
        "created": created,
        "updated": updated,
    };
}