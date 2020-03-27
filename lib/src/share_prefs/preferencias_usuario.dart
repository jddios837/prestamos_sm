import 'package:prestamos_sm/src/pages/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuarios {

  static final PreferenciasUsuarios _instancia = new PreferenciasUsuarios._internal();

  factory PreferenciasUsuarios() {
    return _instancia;
  }

  PreferenciasUsuarios._internal();

  SharedPreferences _prefs; 

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

//  bool   _colorSecundario;
//   int    _genero;
//   String _nombre;
  // GET & SET values
  get genero {
    return _prefs.getInt('genero') ?? 1;
  }

  set genero(int value) {
    _prefs.setInt('genero', value);
  }

  // GET & SET values
  get colorSecundario {
    return _prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario(bool value) {
    _prefs.setBool('colorSecundario', value);
  }

  // GET & SET values
  get nombre {
    return _prefs.getString('nombre') ?? 'Pedro';
  }

  set nombre(String value) {
    _prefs.setString('nombre', value);
  }

  // GET & SET values
  get ultimaPagina {
    return _prefs.getString('ultimaPagina') ?? HomePage.routeName;
  }

  set ultimaPagina(String value) {
    _prefs.setString('ultimaPagina', value);
  }


}