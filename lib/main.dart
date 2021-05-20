import 'package:flutter/material.dart';

void main() => runApp(CruzApp());

class CruzApp extends StatefulWidget {
  @override
  //generando el estado de el widget
  _CruzAppState createState() => _CruzAppState();
} //fin de clase CruzApp

class _CruzAppState extends State<CruzApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(brightness: Brightness.dark), home: Principal());
  }
} //fin de clase _CruzAppState

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
} //fin de clase principal

class _PrincipalState extends State<Principal> with SingleTickerProviderStateMixin {
  TabController controller;
  void initState() {
    super.initState();
    controller = TabController(
      length: 5,
      vsync: this,
      initialIndex: 0,
    );
  } //fin de void iniState con 5 iconos

  Widget card(String text) {
    return Card(
      color: Colors.cyan[900],
      child: Container(
        height: 200.0,
        width: 200.0,
        child: Center(child: Text(text)),
      ),
    );
  } //fin de tarjeta

  Tab tab(String text, Icon icon) {
    return Tab(
      icon: icon,
      text: text,
    );
  } //fin de tab enviando texto e icono

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navegador con Icons cruz"),
        centerTitle: true,
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0.0,
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          card("soy la tarjeta No. 1"),
          card("soy la tarjeta No. 2"),
          card("soy la tarjeta No. 3"),
          card("soy la tarjeta No. 4"),
          card("soy la tarjeta No. 5"),
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: controller,
        isScrollable: true,
        tabs: <Widget>[
          tab("Inicio", Icon(Icons.home)),
          tab("Ideas", Icon(Icons.lightbulb_outline)),
          tab("Compañia", Icon(Icons.atm)),
          tab("Señal", Icon(Icons.signal_wifi_off)),
          tab("Wifi", Icon(Icons.wifi)),
        ],
      ),
    ); //fin de scaffold
  } //fin de ejecutor
} //fin de principalstate
