import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final heroTag;
  final BookName;
  final BookPrice;

  const Details({Key key, this.heroTag, this.BookName, this.BookPrice}) : super(key: key);
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                  height: 300.0
              ),
              Container(
                height: 200.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/cover.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
              ),
              Positioned(
                  top: 50.0,
                  left: (MediaQuery.of(context).size.width / 2) - 125,
                  child: Hero(
                      tag: widget.heroTag,
                      child: Container(
                        height: 250.0,
                        width: 250.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(widget.heroTag),
                                fit: BoxFit.scaleDown
                            )
                        ),
                      )
                  )
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(Icons.more_horiz),
                  color: Colors.white,
                  onPressed: () {},
                ),
              )
            ],
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(widget.BookName,
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,

                    )
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    Text(
                      '4.9',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17.0),
                    ),
                    SizedBox(width: 10.0),
                    Icon(Icons.star,
                        color: Colors.green, size: 16.0),
                    Icon(Icons.star,
                        color: Colors.green, size: 16.0),
                    Icon(Icons.star,
                        color: Colors.green, size: 16.0),
                    Icon(Icons.star,
                        color: Colors.green, size: 16.0),
                    Icon(Icons.star,
                        color: Colors.green, size: 16.0),
                  ],
                ),
                SizedBox(height: 25.0),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        widget.BookPrice,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 17.0),
                      ),
                      Container(
                          width: 125.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: Color(0xFFEDFEE5)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.remove_circle_outline, color: Color(0xFF5CB238)),
                                onPressed: () {},
                              ),
                              Text('3',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Color(0xFF5CB238)
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.add_circle, color: Color(0xFF5AC035)),
                                onPressed: () {},
                              )
                            ],
                          )
                      )
                    ]
                ),
                SizedBox(height: 15.0),
                Text('About the Book',
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black
                    )
                ),
                SizedBox(height: 15.0),
                Container(
                  child: Text('Information About the Book',
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0xFF5AC035),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Total',
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.white,

                          ),
                        ),
                        SizedBox(width: 10.0),
                        Text('\$84.00',
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
