import 'package:shared_preferences/shared_preferences.dart';

class PreferenciaUsuario {
  
  static final PreferenciaUsuario _instancia = new PreferenciaUsuario._internal();

  factory PreferenciaUsuario(){
    return _instancia;
  }

  PreferenciaUsuario._internal();

  SharedPreferences _prefs;

  initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // GET y SET
  
  get genero{
    return _prefs.getInt('genero') ?? 1;
  }

  set genero(int value){
    _prefs.setInt('genero', value);
  }

  get colorSecundario{
    return _prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario(bool value){
    _prefs.setBool('colorSecundario', value);
  }

  get nombreUsuario{
    return _prefs.getString('nombreUsuario') ?? false;
  }

  set nombreUsuario(String value){
    _prefs.setString('nombreUsuario', value);
  }
  
}