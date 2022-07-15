import 'package:flutter/material.dart';

class CarrierObjective extends StatefulWidget {
  const CarrierObjective({Key? key}) : super(key: key);

  @override
  _CarrierObjectiveState createState() => _CarrierObjectiveState();
}

class _CarrierObjectiveState extends State<CarrierObjective> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (const Text(
          "Carrier Objective",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        )),
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color(0xff0475ff),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: const Color(0xff0475ff),
            ),
            flex: 1,
          ),
          Expanded(
            flex: 11,
            child: Container(
              color: Colors.grey.withOpacity(0.35),
              alignment: Alignment.center,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 25,
                    ),
                    height: MediaQuery.of(context).size.height * 0.42,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12, left: 18),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: const EdgeInsets.only(top: 8),
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                "Carrier objective",
                                style: TextStyle(
                                    color: Color(0xff0475ff),
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              )),
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 70,
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Transform.scale(
                              scale: 1,
                              child: Image.asset(
                                "assets/icons/target.png",
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 170,
                            padding: const EdgeInsets.only(top: 18, left: 10),
                            width: MediaQuery.of(context).size.width * 0.8,
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: const Text("Description"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // SizedBox(height: 20,),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 16,
                    ),
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Container(
                              padding: const EdgeInsets.only(left: 7),
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                "Current Designation (Experienced Candidate)",
                                style: TextStyle(
                                    color: Color(0xff0475ff),
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              )),
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 56,
                            width: MediaQuery.of(context).size.width * 0.8,
                            padding: const EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                            ),
                            child: const Text("Software Engineer"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
