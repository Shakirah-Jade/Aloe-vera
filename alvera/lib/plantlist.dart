import 'package:alvera/plantdetail.dart';
import 'package:flutter/material.dart';

class PlantList extends StatefulWidget {
  const PlantList({super.key});

  @override
  State<PlantList> createState() => _PlantListState();
}

class _PlantListState extends State<PlantList> {
  ScrollController? _scrollController;

  List allDescription = [
    'Lemon is a succelent fruit of the genus citrus. Its medicinal uses and air purification.Lemon is a succelent fruit of the genus citrus. Its medicinal uses and air purification',
    'Some other description. Some other description. Some other description. Some other description. Some other description. Some other description. Some other description',
    'Third description. Some other description. Some other description. Some other description. Third description.Third description.Third description.Third description.'
  ];

  String description = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    _scrollController?.addListener(changedesc);

    setState(() {
      description = allDescription[0];
    });
  }

  changedesc() {
    var value = _scrollController?.offset?.round();
    var descindex = (value ?? 0) ~/ 150;

    setState(() {
      description = allDescription[descindex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 350.0,
          child: ListView(
            padding: EdgeInsets.only(left: 25.0),
            controller: _scrollController,
            scrollDirection: Axis.horizontal,

            ///geting the function getplantcard
            children: [
              getPlantCard('assets/Lemon 2.png', '25', 'OUTDOOR', 'Lemon'),
              SizedBox(
                width: 15.0,
              ),
              getPlantCard('assets/Lemon 3.png', '25', 'OUTDOOR', 'Lemon'),
              SizedBox(
                width: 15.0,
              ),
              getPlantCard('assets/Leaf.png', '25', 'INDOOR', 'Lemon'),
              SizedBox(
                width: 15.0,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.0, top: 10.0),
          child: Text(
            'Description',
            style: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.black,
              fontSize: 17.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.0, top: 10.0),
          child: Text(
            description,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 17.0,
            ),
          ),
        ),
      ],
    );
  }

  getPlantCard(
      String imgpath, String price, String planttype, String plantname) {
    return Stack(
      children: [
        Container(
          height: 325.0,
          width: 225.0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xFF399D63),
            ),
            height: 250.0,
            width: 225.0,
            child: Column(
              children: [
                /////Row for from and the price///////
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'FROM',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF8AC7A4),
                          ),
                        ),
                        Text(
                          '\$' + price,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
                // image section
                Image(
                  image: AssetImage(imgpath),
                  height: 150.0,
                ),
///////////////////////////
                Row(
                  children: [
                    SizedBox(
                      width: 25.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          planttype,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF8AC7A4),
                          ),
                        ),
                        Text(
                          plantname,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 25.0,
                    ),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF8AC7A4),
                            style: BorderStyle.solid,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color(0xFF399D63)),
                      child: Icon(
                        Icons.wb_sunny,
                        color: Colors.white.withOpacity(0.4),
                        size: 20.0,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF8AC7A4),
                            style: BorderStyle.solid,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color(0xFF399D63)),
                      child: Icon(
                        Icons.bloodtype,
                        color: Colors.white.withOpacity(0.4),
                        size: 20.0,
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF8AC7A4),
                            style: BorderStyle.solid,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color(0xFF399D63)),
                      child: Icon(
                        Icons.thermostat,
                        color: Colors.white.withOpacity(0.4),
                        size: 20.0,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    ///////////TO THE SECOND SCREEN ////////////
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PlantDetail()));
                      },
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(color: Color(0xFF399D63)),
                        child: Icon(
                          Icons.help_outline,
                          color: Colors.white.withOpacity(0.4),
                          size: 20.0,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        // blach box and cart
        Padding(
          padding: EdgeInsets.only(left: 90.0, top: 300.0),
          child: Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0), color: Colors.black),
            child: Center(
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
