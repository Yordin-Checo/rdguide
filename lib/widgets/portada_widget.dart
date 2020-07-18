import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


class PortadaWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16,left: 16),
      child: Container(
        alignment: Alignment.bottomCenter,
        width: double.infinity,
        height: 200,

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

                images: [

                  NetworkImage("http://joelmieses-001-site1.ctempurl.com/publicidad.jpg"),
                  NetworkImage("http://joelmieses-001-site1.ctempurl.com/publicidad.jpg"),
                  NetworkImage("http://joelmieses-001-site1.ctempurl.com/publicidad.jpg"),
                  


                ],
              )
          ),
        ),
      ),
    );
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