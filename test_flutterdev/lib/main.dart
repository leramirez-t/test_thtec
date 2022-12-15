import 'package:horizontal_card_pager/card_item.dart';
import 'package:horizontal_card_pager/horizontal_card_pager.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    List<CardItem>items=[
      IconTitleCardItem(
        text: "Alarm",
        iconData: Icons.access_alarms,
      ),
      IconTitleCardItem(
        text: "Add",
        iconData: Icons.add,
      ),
      IconTitleCardItem(
        text: "Call",
        iconData: Icons.add_call,
      ),
       IconTitleCardItem(
        text: "WiFi",
        iconData: Icons.wifi,
      ),
      IconTitleCardItem(
        text: "File",
        iconData: Icons.attach_file,
      ),
      IconTitleCardItem(
        text: "Air Play",
        iconData: Icons.airplay,
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contenido'),
        backgroundColor: Colors.blue,
      ),
      // backgroundColor: Color(0xf2f2f2),
         backgroundColor: Colors.grey,
      //passing in the ListView.builder
      body: Column(
        children: <Widget> [
          SizedBox(height: 20.0),
          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(4),
              crossAxisSpacing: 2,
              mainAxisSpacing: 1,
              crossAxisCount: 3,
              // childAspectRatio: (itemWidth / itemHeight),
              controller: ScrollController(keepScrollOffset: false),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue),
                  child: AspectRatio(
                    aspectRatio: 5 / 4,
                    child: Icon(
                      Icons.alarm,
                      size: 80,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue),
                  child: Icon(
                    Icons.phone,
                    size: 80,
                    color: Colors.white,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue),
                  child: Icon(
                    Icons.apple,
                    size: 80,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(1),
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 0,
                    crossAxisCount: 2,
                    // childAspectRatio: 0.857834621431423,
                    controller: ScrollController(keepScrollOffset: false),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/sucursales");
                        },
                        child: Container(
                          width: 200.0,
                          height: 200.0,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red),
                          child: AspectRatio(
                            aspectRatio: 1.2 / 1,
                            child: Container(
                              child: Container(
                                child: Icon(
                                  Icons.android,
                                  size: 60,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 200.0,
                        height: 200.0,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red),
                        child: AspectRatio(
                          aspectRatio: 1.2 / 1,
                          child: Container(
                            child: Container(
                              child: Icon(
                                Icons.android,
                                size: 60,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Column(
                  children: [
                    Container(
                      child: GridView.count(
                        primary: false,
                        padding: const EdgeInsets.all(1),
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 0,
                        crossAxisCount: 2,
                        // childAspectRatio: (itemWidth / itemHeight),
                        controller: ScrollController(keepScrollOffset: false),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "/sucursales");
                            },
                            child: Container(
                              width: 200.0,
                              height: 200.0,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.red),
                              child: AspectRatio(
                                aspectRatio: 1.2 / 1,
                                child: Container(
                                  child: Container(
                                    child: Icon(
                                      Icons.android,
                                      size: 60,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 200.0,
                            height: 200.0,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red),
                            child: AspectRatio(
                              aspectRatio: 1.2 / 1,
                              child: Container(
                                child: Container(
                                  child: Icon(
                                    Icons.android,
                                    size: 60,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
                Expanded(
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(1),
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 0,
                    crossAxisCount: 2,
                    // childAspectRatio: (itemWidth / itemHeight),
                    controller: ScrollController(keepScrollOffset: false),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/sucursales");
                        },
                        child: Container(
                          width: 200.0,
                          height: 200.0,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red),
                          child: AspectRatio(
                            aspectRatio: 1.2 / 1,
                            child: Container(
                              child: Container(
                                child: Icon(
                                  Icons.android,
                                  size: 60,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 200.0,
                        height: 200.0,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red),
                        child: AspectRatio(
                          aspectRatio: 1.2 / 1,
                          child: Container(
                            child: Container(
                              child: Icon(
                                Icons.android,
                                size: 60,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(10),
              crossAxisSpacing: 2,
              mainAxisSpacing: 1,
              crossAxisCount: 1,
              childAspectRatio: 1,
              controller: ScrollController(keepScrollOffset: false),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Container(
                  height: 200.0,
                  child: HorizontalCardPager(
                    onPageChanged: (page) => print("page : $page"),
                    onSelectedItem: (page) => print("selected : $page"),
                    items: items,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      extendBody: true,
    );
  }
}

 


// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Mi App",
//       home: Inicio(),
//     );
//   }
// }

// // Create a Form widget.
// class Inicio extends StatefulWidget {
//   Inicio({super.key});

//   @override
//   _InicioState createState() => _InicioState();
// }

// class _InicioState extends State<Inicio> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Mi App")
//       ),
//         // body: Row(children: [
//         //     Text("Hola 01"),
//         //     Text("Hola 02")
//         // ],),


//       body: Row(
        
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         mainAxisSize: MainAxisSize.max,
//           children: [
//             Container(
//               width: MediaQuery.of(context).size.width*0.5,
//               child: Text("Hola 01",textAlign: TextAlign.center,),
//             ),
              
//               Text("Hola 02")
//       ],),


//       // body:Center(
//       //   child: Text("Hola Mundo"),
//       //   )


//       // body: ListView(
//       //   children: [
//       //     Container(
//       //         padding: EdgeInsets.all(30.0),
//       //         child: Image.network("https://image.spreadshirtmedia.net/image-server/v1/mp/products/T1459A839PA4459PT28D16223707W7959H10000/views/1,width=800,height=800,appearanceId=839,backgroundColor=F2F2F2/gungnir-lanza-de-odin-runa-gar-vikingo-magia-pegatina.jpg"),
//       //       )
            
//       //   ],
//       // )
//     );
//   }
// }