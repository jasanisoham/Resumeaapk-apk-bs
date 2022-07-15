import 'package:flutter/material.dart';

class BuilderOption extends StatefulWidget {
  const BuilderOption({Key? key}) : super(key: key);

  @override
  _BuilderOptionState createState() => _BuilderOptionState();
}

class _BuilderOptionState extends State<BuilderOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (const Text(
          "Invoice Generator",
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
          // Expanded(
          //   child: Container(
          //     color: const Color(0xff0475ff),
          //     alignment: const Alignment(0, 0.6),
          //     child: const Text(
          //       "Build Option",
          //       style: TextStyle(
          //           color: Colors.white,
          //           fontSize: 22,
          //           fontWeight: FontWeight.w700),
          //     ),
          //   ),
          //   flex: 1,
          // ),
          Expanded(
            flex: 11,
            child: Container(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    displaybuild(
                        img: "account.png",
                        title: "Contact info",
                        pagename: "contactinfo"),
                    displaybuild(
                        img: "briefcase.png",
                        title: "Carrier Objective",
                        pagename: "carrierobjective"),
                    displaybuild(
                        img: "account.png",
                        title: "Personal Details",
                        pagename: "personaldetail"),
                    displaybuild(
                        img: "graduation-cap.png",
                        title: "Eduction",
                        pagename: "eduction"),
                    displaybuild(
                        img: "logical-thinking.png",
                        title: "Experiences",
                        pagename: "experiencespage"),
                    displaybuild(
                        img: "certificate.png",
                        title: "Technical Skills",
                        pagename: "technicalpage"),
                    displaybuild(
                        img: "open-book.png",
                        title: "Interest/hobbies",
                        pagename: "interestpage"),
                    displaybuild(
                        img: "project-management.png",
                        title: "Project",
                        pagename: "projectpage"),
                    displaybuild(
                        img: "experience.png",
                        title: "Achievements",
                        pagename: "achievementspage"),
                    displaybuild(
                        img: "handshake.png",
                        title: "References",
                        pagename: "references"),
                    displaybuild(
                        img: "declaration.png",
                        title: "Declaration",
                        pagename: "declarationpage"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget displaybuild(
      {required String img, required String title, required String pagename}) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(pagename);
          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Image.asset(
                  "assets/icons/$img",
                  height: 30,
                ),
                const SizedBox(
                  width: 35,
                ),
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Spacer(
                  flex: 6,
                ),
                const Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ),
        const Divider(
          color: Colors.grey,
          thickness: 1,
        ),
      ],
    );
  }
}
