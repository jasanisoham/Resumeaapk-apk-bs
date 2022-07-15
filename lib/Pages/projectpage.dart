import 'package:flutter/material.dart';
import 'package:resumeapk/Pages/resumemodels.dart';


class ProjectPage extends StatefulWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  final GlobalKey<FormState> _ProjectDetailFormKey = GlobalKey<FormState>();
  final TextEditingController _projecttitleController = TextEditingController();
  final TextEditingController _rolesController = TextEditingController();
  final TextEditingController _technologiesController = TextEditingController();
  final TextEditingController _descripationController = TextEditingController();

  TextStyle titlestyle = const TextStyle(
      color: Colors.blue, fontSize: 22, fontWeight: FontWeight.bold);

  String? projecttitle;
  String? roles;
  String? technologies;
  String? descripation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (const Text(
          "Projects",
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
                    bottom: 28, right: 28, left: 28, top: 28),
                padding: const EdgeInsets.only(
                    bottom: 25, right: 12, left: 12, top: 12),
                color: Colors.white,
                child: Form(
                  key: _ProjectDetailFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Project Title",
                        style: titlestyle,
                      ),
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Project title First";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          projecttitle = val;
                        },
                        controller: _projecttitleController,
                        keyboardType: TextInputType.datetime,
                        decoration: const InputDecoration(
                          hintText: "Resume Builder App",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Roles",
                        style: titlestyle,
                      ),
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Roles First";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          roles = val;
                        },
                        controller: _rolesController,
                        keyboardType: TextInputType.datetime,
                        decoration: const InputDecoration(
                          hintText: "Organize team members,Code analysis",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Technologies",
                        style: titlestyle,
                      ),
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Technologies First";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          technologies = val;
                        },
                        controller: _technologiesController,
                        decoration: const InputDecoration(
                          hintText: "5 - Programmers",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Project Descripation",
                        style: titlestyle,
                      ),
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Project Descripation First";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          descripation = val;
                        },
                        controller: _descripationController,
                        decoration: const InputDecoration(
                          hintText: "Enter Your Project Descripation",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_ProjectDetailFormKey.currentState!.validate()) {
                            _ProjectDetailFormKey.currentState!.save();
                          }
                          resume.projecttitle = projecttitle;
                          resume.roles= roles;
                          resume.technologies = technologies;
                          resume.descripation = descripation;
                          // print(resume.projecttitle);
                          // print(resume.technologies);
                          // print(resume.roles);
                          // print(resume.descripation);
                        },
                        child: Text("save"),
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

