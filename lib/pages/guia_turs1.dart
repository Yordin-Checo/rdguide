import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Guia1Page extends StatefulWidget {
  @override
  _Guia1Page createState() => new _Guia1Page();
}

class _Guia1Page extends State<Guia1Page> {
  TextStyle _style() {
    return TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
  }

  TextStyle _stylem() {
    return TextStyle(fontSize: 16.0);
  }

  final String url = 'https://latin.news/wp-content/uploads/2020/06/mario-casas.jpg';
  final Color green = Color(0xFF1E8161);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        elevation: 0,
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // _redesSociales(),
            Container(
              padding: EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(32),
                    bottomLeft: Radius.circular(32)),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 135,
                        height: 135,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill, image: NetworkImage(url))),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 15),
                    child: Text(
                      'Joel Mieses',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star_half, color: Colors.yellow)
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 16),
                  Text(
                    "Nombre",
                    style: _style(),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Joel Mieses",
                    style: _stylem(),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Email",
                    style: _style(),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Joelnieses@gmail.com",
                    style: _stylem(),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Teléfono",
                    style: _style(),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "809-xxx-xxxx",
                    style: _stylem(),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Ubicación",
                    style: _style(),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "jarabacoa",
                    style: _stylem(),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Idiomas",
                    style: _style(),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Español, English, Frances",
                    style: _stylem(),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Ocupación",
                    style: _style(),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Guia Turistico",
                    style: _stylem(),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(FontAwesomeIcons.facebook, size: 40, color: Colors.blue[800],),
                  Icon(FontAwesomeIcons.twitter, size: 40, color: Colors.blue,),
                  Icon(FontAwesomeIcons.instagram, size: 40, color: Colors.orange,)
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 40),
                  Text(
                    "Comentarios",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Maria Gonzales: Excelente servicio me encanto la forma en como das las informaciones, el turs y lo dinamico que eres, sigue así Joel Mieses.",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                  // Text("Maria Gonzales: ", style: TextStyle(fontSize: 16),textAlign: TextAlign.left,),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Maria Gonzales: Excelente servicio me encanto la forma en como das las informaciones, el turs y lo dinamico que eres, sigue así Joel Mieses.",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                  // Text("Maria Gonzales: ", style: TextStyle(fontSize: 16),textAlign: TextAlign.left,),
                ],
              ),
            ),

            Container(
               margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                 
                  Text(
                    "Maria Gonzales: Excelente servicio me encanto la forma en como das las informaciones, el turs y lo dinamico que eres, sigue así Joel Mieses.",
                    style: TextStyle(fontSize: 16, 
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            //   Container(
            //   padding: EdgeInsets.all( 8.0),
            //   child: CircleAvatar(
            //     backgroundImage: NetworkImage('https://s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2019/05/31162949/Daddy-Yankee_Courtesy-of-Cartel-Records.jpg'),
            //     radius: 20.0,
            //   ),
            // ),

            // SafeArea(
            //   child: Container(
            //     padding: EdgeInsets.symmetric(horizontal: 16.0),
            //     child: Text(
            //       'Excelente servicio me encanto la forma en como das las informaciones, el turs y lo dinamico que eres, sigue así Joel Mieses.',
            //       overflow: TextOverflow.ellipsis,
            //       textAlign: TextAlign.justify,
            //       maxLines: 10,
            //       style: TextStyle(fontSize: 16),
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 16,
            // ),
            // Container(
            //   padding: EdgeInsets.symmetric(horizontal: 16),
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: <Widget>[
            //       SizedBox(height: 26),
            //       Text(
            //         "Luisa Martínez: ",
            //         style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            //         textAlign: TextAlign.left,
            //       ),
            //       // Text("Maria Gonzales: ", style: TextStyle(fontSize: 16),textAlign: TextAlign.left,),
            //       SizedBox(
            //         height: 20,
            //       ),
            //     ],
            //   ),
            // ),

            // SafeArea(
            //   child: Container(
            //     padding: EdgeInsets.symmetric(horizontal: 16.0),
            //     child: Text(
            //       'Excelente servicio me encanto la forma en como das las informaciones, ecio me encanto la forma en como dcio me encanto la forma en como dl turs y lo dinamico que eres, sigue así Joel Mieses.',
            //       overflow: TextOverflow.ellipsis,
            //       textAlign: TextAlign.justify,
            //       maxLines: 10,
            //       style: TextStyle(fontSize: 16),
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 16,
            // ),
            // Container(
            //   padding: EdgeInsets.symmetric(horizontal: 16),
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: <Widget>[
            //       SizedBox(height: 26),
            //       Text(
            //         "Juan Ramon Garcia: ",
            //         style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            //         textAlign: TextAlign.left,
            //       ),
            //       // Text("Maria Gonzales: ", style: TextStyle(fontSize: 16),textAlign: TextAlign.left,),
            //       SizedBox(
            //         height: 20,
            //       ),
            //     ],
            //   ),
            // ),

            // SafeArea(
            //   child: Container(
            //     padding: EdgeInsets.symmetric(horizontal: 16.0),
            //     child: Text(
            //       'Excelente servicio me encanto la forma en como das las informaciones, ecio me encanto la forma en como dcio me encanto la forma en como dl turs y lo dinamico que eres, sigue así Joel Mieses.',
            //       overflow: TextOverflow.ellipsis,
            //       textAlign: TextAlign.justify,
            //       maxLines: 10,
            //       style: TextStyle(fontSize: 16),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
