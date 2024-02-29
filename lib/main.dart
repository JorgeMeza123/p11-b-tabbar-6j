import 'package:flutter/material.dart';

void main() => runApp(const AppTabBar());

class AppTabBar extends StatelessWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo TabBar",
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const MiPaginaInicial(),
    );
  }
}

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
}

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Refaccionaria Jorge Meza"),
          bottom: TabBar(isScrollable: true, tabs: [
            Tab(
              text: "Filtros",
              icon: const Icon(Icons.filter_alt_outlined),
            ),
            Tab(
              text: "Aceites",
              icon: const Icon(Icons.water_drop_sharp),
            ),
            Tab(
              text: "Frenos",
              icon: const Icon(Icons.disc_full_outlined),
            ),
            Tab(
              text: "Inicio",
              icon: const Icon(Icons.house_rounded),
            ),
            Tab(
              text: "Comentarios",
              icon: const Icon(Icons.comment_rounded),
            )
          ] //Texto Icono
              ),
        ),
        body: const TabBarView(children: <Widget>[
          Icon(Icons.filter_alt_outlined, size: 350, color: Color(0xfbd50606)),
          Icon(Icons.water_drop_sharp, size: 350, color: Color(0xe239d712)),
          Icon(Icons.disc_full_outlined, size: 350, color: Color(0xd90230ff)),
          Icon(Icons.house_rounded, size: 350, color: Color(0xe4077cdc)),
          Icon(Icons.comment_rounded, size: 350, color: Color(0xff037982)),
        ]),
      ),
    );
  }
}
