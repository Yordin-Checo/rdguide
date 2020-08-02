import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class MapaG extends StatefulWidget {
  @override
  _MapaG createState() => _MapaG();
}

class _MapaG extends State {
  //Latitud y longitud, cambiala a tu ubicacion...
  LatLng posicionAct = LatLng(19.3819089, -70.3804742);
  TextEditingController locationController = TextEditingController();
  GoogleMapController _mapController;
  bool buscandoUbi = false;
  String header = "";

  Future<void> getMoveCamera() async {
    List<Placemark> placemark = await Geolocator()
        .placemarkFromCoordinates(posicionAct.latitude, posicionAct.longitude);
    locationController.text = placemark[0].name;
    setState(() {
      header = placemark[0].name.toString();
    });
  }

//obtener la ubicacion del usuario
  void getUserUbicacion() async {
    Position posicion = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    List<Placemark> placemarker = await Geolocator()
        .placemarkFromCoordinates(posicion.latitude, posicion.longitude);
    posicionAct = LatLng(posicion.latitude, posicion.longitude);
    locationController.text = placemarker[0].name;
    _mapController.animateCamera(CameraUpdate.newLatLng(posicionAct));
  }

//funcion para crear el mapa
  void onCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  void onCameraMove(CameraPosition position) async {
    setState(() {});
    buscandoUbi = true;
    posicionAct = position.target;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Mapa",
            textAlign: TextAlign.center,
          ),
        ),
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: posicionAct,
                  zoom: 16,
                ),
                //boton de zoom + -
                zoomControlsEnabled: true,
                //tipo de mapa
                mapType: MapType.normal,
                zoomGesturesEnabled: true,
                myLocationEnabled: true,
                myLocationButtonEnabled: true,
                onCameraMove: onCameraMove,
                //aqui se llama la funcion para el mapa
                onMapCreated: onCreated,
                onCameraIdle: () async {
                  buscandoUbi = true;
                  setState(() {});
                  getMoveCamera();
                },
              ),
              Align(
                alignment: Alignment.center,
                //Aqui puedes cambiar la foto del marker
                child: Image.asset("assets/makeruser.png", height: 55),
              ),
              buscandoUbi == true
                  ? Positioned(
                      //Posicion del texto
                      top: MediaQuery.of(context).size.height / 3.45,
                      left: MediaQuery.of(context).size.width / 4.10,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.black.withOpacity(0.75),
                        ),
                        width: 200,
                        height: 50,
                        child: Center(
                          child: Text(
                            "$header",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    )

                  //Espacio donde se vizualisara el texto en donde estas
                  : Positioned(
                      top: MediaQuery.of(context).size.height / 3.45,
                      left: MediaQuery.of(context).size.width / 3.62,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 17, vertical: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.black.withOpacity(0.75),
                        ),
                        width: 50,
                        height: 40,
                        child: Center(
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation(Colors.white),
                            strokeWidth: 2.5,
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        ));
  }
}
