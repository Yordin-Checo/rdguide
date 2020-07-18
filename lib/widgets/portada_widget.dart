import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:rdguide/models/publicidad.dart';


class PortadaWidget extends StatelessWidget{

  List<Publicidad> resultados;

  PortadaWidget({this.resultados});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8,left: 8),
      child: Container(
        alignment: Alignment.bottomCenter,
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),


        ),
        child:  ClipRRect(

          borderRadius: BorderRadius.circular(30.0),
          child: SizedBox(
              height: 200.0,
              width: double.infinity,
              child: Carousel(
                showIndicator: true,
                indicatorBgPadding:5,
                dotSpacing: 15,
                dotBgColor: Colors.transparent,
                dotIncreaseSize: 2,
                autoplay: true,
                dotSize: 5,
                //noRadiusForIndicator: true,

                images: getImages()
                ,
              )
          ),
        ),
      ),
    );
  }

  List<Widget> getImages(){
    final imagenes = List<Widget>();
    if(resultados != null && resultados.length >0){
    for (final p in resultados){
      final imagen = Image.network(p.img);
      imagenes.add(imagen);
    }
    }else{
      imagenes.add(Image.asset("assets/loading.gif"));
    }
    return imagenes;
  }
}

/*
* Widget _sliderpublicidad(){
  return Padding(
          padding: const EdgeInsets.only(right: 16,left: 16),
          child: Container(
            alignment: Alignment.bottomCenter,
width: double.infinity,
height: 250,

   decoration: BoxDecoration(
   borderRadius: BorderRadius.circular(30),
   boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0,
                          ),
                        ],

  ),
 child:  ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: SizedBox(
  height: 250.0,
  width: double.infinity,
  child: Carousel(
    showIndicator: true,
    indicatorBgPadding:5,
    dotSpacing: 15,
    dotBgColor: Colors.transparent,
    dotIncreaseSize: 2,
    autoplay: true,
    dotSize: 5,
    //noRadiusForIndicator: true,

    images: [

      ExactAssetImage("assets/images/publicidad.jpg"),
      ExactAssetImage("assets/images/publicidad.jpg"),
      ExactAssetImage("assets/images/publicidad.jpg"),


    ],
  )
),
                      ),
),
        );
}


* */