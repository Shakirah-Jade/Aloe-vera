import 'package:alvera/plantlist.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  //Nullable Option (TabController?): If you're okay
  //with tabController being nullable, you can use the ? to
  // indicate that it can be null. This way,
  //you won't need to provide an initial value immediately.
  TabController? tabController;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 15.0,
          ),
          // container holding menu and shooping cart
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(right: 10.0),
            // row for the menu and the shooping cart
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.grey.withOpacity(0.1),
                  mini: true,
                  elevation: 0.0,
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                    size: 17.0,
                  ),
                ),
              ],
            ),
          ),
          //Padding holding the heading
          Padding(
            padding: EdgeInsets.all(14.0),
            child: Text(
              'Top Picks',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 40.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ////////////Padding for the 4 tabs
          Padding(
            padding: EdgeInsets.only(left: 5.0),
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.5),
              isScrollable: true,
              tabs: [
                Tab(
                  child: Text(
                    'Top',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Outdoor',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Indoor',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Plants',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),

          ///container holding the plants created in plantlist
          Container(
            height: MediaQuery.of(context).size.height - 200.0,
            child: TabBarView(
              controller: tabController,
              children: [
                PlantList(),
                PlantList(),
                PlantList(),
                PlantList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
