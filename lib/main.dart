import 'package:flutter/material.dart';
import 'package:resumeapk/Pages/achievementspage.dart';
import 'package:resumeapk/Pages/carrierobjective.dart';
import 'package:resumeapk/Pages/contcatinfo.dart';
import 'package:resumeapk/Pages/declarationpage.dart';
import 'package:resumeapk/Pages/eduction.dart';
import 'package:resumeapk/Pages/experiencespage.dart';
import 'package:resumeapk/Pages/interestpage.dart';
import 'package:resumeapk/Pages/personaldetail.dart';
import 'package:resumeapk/Pages/projectpage.dart';
import 'package:resumeapk/Pages/references.dart';
import 'package:resumeapk/Pages/technicalpage.dart';
import 'Pages/builderoption.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ResumeBuilder(),
      routes: {
        "/": (context) => const ResumeBuilder(),
        "builderoption": (context) => const BuilderOption(),
        "contactinfo": (context) => const ContactInfo(),
        "personaldetail": (context) => const PersonalDetail(),
        "eduction": (context) => const EductionPage(),
        "experiencespage": (context) => const ExperiencePage(),
        "technicalpage": (context) => const TechnicalPage(),
        "interestpage": (context) => const InterestPage(),
        "projectpage": (context) => const ProjectPage(),
        "carrierobjective": (context) => const CarrierObjective(),
        "achievementspage": (context) => const AchievementPage(),
        "references": (context) => const ReferencesPage(),
        "declarationpage": (context) => const DeclarationPage(),
      },
    ),
  );
}

class ResumeBuilder extends StatefulWidget {
  const ResumeBuilder({Key? key}) : super(key: key);

  @override
  _ResumeBuilderState createState() => _ResumeBuilderState();
}

class _ResumeBuilderState extends State<ResumeBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (const Text(
          "Invoice Generator",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
        )),
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color(0xff0475ff),
      ),
      body: Column(
        children: [
          // Expanded(
          //   child: Container(
          //     color: const Color(0xff0475ff),
          //     alignment: const Alignment(0, 0.6),
          //     child: const Text(
          //       "RESUMES",
          //       style: TextStyle(
          //           color: Colors.white,
          //           fontSize: 22,
          //           fontWeight: FontWeight.w700),
          //     ),
          //   ),
          //   flex: 2,
          // ),
          Expanded(
            flex: 11,
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  const Spacer(),
                  Image.asset(
                    "assets/icons/open-cardboard-box.png",
                    height: 60,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "No Invoice + Create new Invoice.",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(
                    flex: 4,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed("builderoption");
        },
      ),
    );
  }
}
