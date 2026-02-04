import 'package:flutter/material.dart';
import 'package:my_app/services/widget_support.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                    child: Image.asset("images/hotel1.jpg", fit: BoxFit.cover),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(top: 50.0, left: 20.0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.0),
                  Text("Hotel Beach", style: AppWidget.headlinetextstyle(27.0)),
                  Text("\$20", style: AppWidget.normaltextstyle(27.0)),
                  Divider(thickness: 2.0),
                  SizedBox(height: 10.0),
                  Text(
                    "What this place offers",
                    style: AppWidget.headlinetextstyle(22.0),
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    children: [
                      Icon(
                        Icons.wifi,
                        color: const Color.fromARGB(255, 18, 108, 182),
                        size: 30.0,
                      ),
                      SizedBox(width: 10.0),
                      Text("WiFi", style: AppWidget.normaltextstyle(23.0)),
                    ],
                  ),
                  SizedBox(height: 20.0),

                  Row(
                    children: [
                      Icon(
                        Icons.tv,
                        color: const Color.fromARGB(255, 18, 108, 182),
                        size: 30.0,
                      ),
                      SizedBox(width: 10.0),
                      Text("HDTV", style: AppWidget.normaltextstyle(23.0)),
                    ],
                  ),

                  SizedBox(height: 20.0),
                  Row(
                    children: [
                      Icon(
                        Icons.kitchen,
                        color: const Color.fromARGB(255, 18, 108, 182),
                        size: 30.0,
                      ),
                      SizedBox(width: 10.0),
                      Text("Kitchen", style: AppWidget.normaltextstyle(23.0)),
                    ],
                  ),
                  SizedBox(height: 20.0),

                  Row(
                    children: [
                      Icon(
                        Icons.bathroom,
                        color: const Color.fromARGB(255, 18, 108, 182),
                        size: 30.0,
                      ),
                      SizedBox(width: 10.0),
                      Text("Bathroom", style: AppWidget.normaltextstyle(23.0)),
                    ],
                  ),
                  Divider(thickness: 2.0),
                  SizedBox(height: 5.0),
                  Text(
                    "About this place",
                    style: AppWidget.headlinetextstyle(22.0),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "Cet hôtel de plage offre un cadre idyllique pour un séjour de détente au bord de la mer. Entouré de palmiers et d’une nature luxuriante, il dispose d’une grande piscine extérieure et d’espaces aménagés pour se relaxer en toute tranquillité. Les hébergements sont pensés pour le confort, avec des équipements essentiels comme le Wi-Fi, une cuisine fonctionnelle, une salle de bain privée et des installations modernes. C’est un lieu parfait pour profiter du soleil, se reposer et vivre une expérience paisible dans une ambiance tropicale.",
                    style: AppWidget.normaltextstyle(16.0),
                  ),
                  SizedBox(height: 20.0),
                  Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.0),
                          Text(
                            "\$100 for 4 nights",
                            style: AppWidget.headlinetextstyle(20.0),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            "Check-in Date",
                            style: AppWidget.normaltextstyle(20.0),
                          ),
                          Divider(),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(
                                  Icons.calendar_month,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                "02,Apr 2026",
                                style: AppWidget.normaltextstyle(20.0),
                              ),
                            ],
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            "Check-out Date",
                            style: AppWidget.normaltextstyle(20.0),
                          ),
                          Divider(),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(
                                  Icons.calendar_month,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                "05,Apr 2026",
                                style: AppWidget.normaltextstyle(20.0),
                              ),
                            ],
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            "Number of Guests",
                            style: AppWidget.normaltextstyle(20.0),
                          ),
                          SizedBox(height: 5.0),
                          Container(
                            padding: EdgeInsets.only(left: 20.0),
                            decoration: BoxDecoration(
                              color: Color(0xFFececf8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "1",
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "Book Now",
                                style: AppWidget.whitetextstyle(22.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
