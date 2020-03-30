import 'package:flutter/material.dart';
import 'package:preferenciasusuario/src/widgets/menu_widget.dart';
import 'package:preferenciasusuario/src/share_prefs/preferencias_usuario.dart';

class HomePage extends StatelessWidget {

  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {

    final prefs = new PreferenciaUsuario();

    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de Usuario'),
        backgroundColor: (prefs.colorSecundario)? Colors.teal : Colors.blue,
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color Secundario: ${ prefs.colorSecundario }'),
          Divider(),
          Text('Genero: ${ prefs.genero } '),
          Divider(),
          Text('Nombre de usaurio: ${prefs.nombreUsuario}'),
          Divider(),
        ],
      ),
    );
  }
}