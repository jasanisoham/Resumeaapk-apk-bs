import 'package:flutter/material.dart';
import 'package:resumeapk/Pages/resumemodels.dart';


class EductionPage extends StatefulWidget {
  const EductionPage({Key? key}) : super(key: key);

  @override
  _EductionPageState createState() => _EductionPageState();
}

class _EductionPageState extends State<EductionPage> {

  final GlobalKey<FormState> _EductionDetailFormKey = GlobalKey<FormState>();
  final TextEditingController _instituteController = TextEditingController();
  final TextEditingController _gradeController = TextEditingController();
  final TextEditingController _passyearController = TextEditingController();
  final TextEditingController _courseController = TextEditingController();

  TextStyle titlestyle = const TextStyle(
      color: Colors.blue, fontSize: 22, fontWeight: FontWeight.bold);

  String? course;
  String? institute;
  String? grade;
  int? passyear;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (const Text(
          "Eduction",
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
              alignment: Alignment.center,
              color: Colors.grey.withOpacity(0.35),
              child: Container(
                margin: const EdgeInsets.only(
                    bottom: 100, right: 28, left: 28, top: 28),
                padding: const EdgeInsets.only(
                    bottom: 25, right: 12, left: 12, top: 12),
                color: Colors.white,
                child: Form(
                  key: _EductionDetailFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Course/Degree",
                        style: titlestyle,
                      ),
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Course/Degree First";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          course = val;
                        },
                        controller: _courseController,
                        keyboardType: TextInputType.datetime,
                        decoration: const InputDecoration(
                          hintText: "B.Tech Information Technology",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "School/Collage/Institute",
                        style: titlestyle,
                      ),
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter School/Collage/Institute First";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          institute = val;
                        },
                        controller: _instituteController,
                        keyboardType: TextInputType.datetime,
                        decoration: const InputDecoration(
                          hintText: "Bhagavan Mahavir University ",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "School/Collage/Institute",
                        style: titlestyle,
                      ),
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Institute Grade First";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          grade = val;
                        },
                        controller: _gradeController,
                        decoration: const InputDecoration(
                          hintText: "70% (or) 7.0 CGPA",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Year Of Pass",
                        style: titlestyle,
                      ),
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Passing year First";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          passyear = int.parse(val!);
                        },
                        controller: _passyearController,
                        decoration: const InputDecoration(
                          hintText: "2019",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_EductionDetailFormKey.currentState!.validate()) {
                            _EductionDetailFormKey.currentState!.save();
                          }
                          resume.course = course;
                          resume.institute= institute;
                          resume.grade = grade;
                          resume.passyear = passyear;
                          // print(resume.course);
                          // print(resume.institute);
                          // print(resume.grade);
                          // print(resume.passyear);
                        },
                        child: const Text("save"),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
