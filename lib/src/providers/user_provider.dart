import 'dart:convert';

import 'package:prestamos_sm/src/share_prefs/preferencias_usuario.dart';
import 'package:http/http.dart' as http;

class UserProvider {

  final String _firebaseApiKey = 'AIzaSyCsnI6QwB-Qf6729DCiQsN_zjUjx2ONhp0';
  final _prefs = PreferenciasUsuarios(); 

  Future<Map<String, dynamic>> login (String email, String password) async {
    
    final authData = {
      'email'    : email,
      'password' : password,
      'returnSecureToken' : true
    };

    final resp = await http.post(
      'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=$_firebaseApiKey',
      body: json.encode(authData)
    );

    Map<String, dynamic> decodeResp = json.decode(resp.body);

    print(decodeResp);

    if (decodeResp.containsKey('idToken')) {
      return {'ok': true, 'token': decodeResp['idToken']};
    } else {
      return {'ok': false, 'mensaje': decodeResp['error']['message']};
    }
  }
  
  
  Future<Map<String, dynamic>> nuevoUsuario (String email, String password) async {
    
    final authData = {
      'email'    : email,
      'password' : password,
      'returnSecureToken' : true
    };

    final resp = await http.post(
      'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=$_firebaseApiKey',
      body: json.encode(authData)
    );

    Map<String, dynamic> decodeResp = json.decode(resp.body);

    print(decodeResp);

    if (decodeResp.containsKey('idToken')) {
      _prefs.token = decodeResp['idToken'];
      return {'ok': true, 'token': decodeResp['idToken']};
    } else {
      return {'ok': false, 'mensaje': decodeResp['error']['message']};
    }
  }
}