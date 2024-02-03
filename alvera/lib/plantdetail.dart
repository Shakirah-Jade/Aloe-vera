import 'package:flutter/material.dart';

class PlantDetail extends StatelessWidget {
  const PlantDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 78, 188, 124),
                ),
              ),
              // HAVING THE OTHER WHITE SHADE BELOW THE GREEN ONE
              Positioned(
                top: MediaQuery.of(context).size.height / 2,
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      color: Colors.white),
                ),
              ),
              /////THE TOP ICONS  //
              ///
              ///first the backward arrow
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              ////Second is the shopping cart

              Padding(
                padding: EdgeInsets.only(
                  top: 10.0,
                  left: MediaQuery.of(context).size.width - 60.0,
                ),
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Color(0xFF4DA774),
                  mini: true,
                  elevation: 0.0,
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 15.0,
                  ),
                ),
              ),
              ////
              Positioned(
                top: 10.0,
                left: MediaQuery.of(context).size.width - 30.0,
                child: Container(
                  height: 18.0,
                  width: 18.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.0),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                          color: Color(0xFF399D63), fontFamily: 'Montserrat'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0, top: 60.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'INDOOR',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(225, 9, 130, 61)),
                    ),
                    Text(
                      'LEMON',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 45.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'FROM',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(225, 9, 130, 61),
                      ),
                    ),
                    Text(
                      '\$30',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'SIZES',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(225, 9, 130, 61)),
                    ),
                    Text(
                      'small',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black),
                      child: Center(
                          child: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                        size: 25.0,
                      )),
                    )
                  ],
                ),
              ),
              //FOR THE PLANT
              Positioned(
                top: MediaQuery.of(context).size.height / 3.5,
                left: MediaQuery.of(context).size.width / 3.5,
                child: Image(
                  image: AssetImage('assets/Lemon 2.png'),
                  fit: BoxFit.cover,
                  height: 250.0,
                ),
              ),
              // description
              Padding(
                padding: EdgeInsets.only(
                    top: (MediaQuery.of(context).size.height / 2) + 50,
                    left: 20.0,
                    right: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'All to Know',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 25.0,
                      ),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      'Choose the option that aligns with your programs requirements. If you choose the nullable option, you may need to handle cases where tabController is null to avoid runtime errors. If you choose the late initialization, make sure to initialize it before using it in your code.',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      'Details',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Plant height: 35-45cm;',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14.0,
                      ),
                    ),
                    Text(
                      'Nursery Pot Width: 12cm',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
