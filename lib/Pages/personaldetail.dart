import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resumeapk/Pages/resumemodels.dart';

class PersonalDetail extends StatefulWidget {
  const PersonalDetail({Key? key}) : super(key: key);

  @override
  _PersonalDetailState createState() => _PersonalDetailState();
}

class _PersonalDetailState extends State<PersonalDetail> {
  final GlobalKey<FormState> _PersonalDetailFormKey = GlobalKey<FormState>();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _NetionalityController = TextEditingController();

  String? DOB;
  String? nationality;
  dynamic grpval = "Marital_States";

  TextStyle titlestyle = const TextStyle(
      color: Colors.blue, fontSize: 22, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (const Text(
          "Personal Detail",
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
                margin: const EdgeInsets.all(28),
                padding: const EdgeInsets.only(
                    bottom: 25, right: 12, left: 12, top: 12),
                color: Colors.white,
                child: Form(
                  key: _PersonalDetailFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "DOB",
                        style: titlestyle,
                      ),
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter DOB First";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          DOB = val;
                        },
                        controller: _dobController,
                        keyboardType: TextInputType.datetime,
                        decoration: const InputDecoration(
                          hintText: "DD/MM/YYYY",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Radio(
                              value: "single",
                              groupValue: grpval,
                              onChanged: (val) {
                                setState(() {
                                  grpval = val;
                                });
                              }),
                          const  Text("Single",style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.w600),)
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: "Married",
                              groupValue: grpval,
                              onChanged: (val) {
                                setState(() {
                                  grpval = val;
                                });
                              }),
                          const  Text("Married",style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.w600),)
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Nationality",
                        style: titlestyle,
                      ),
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Nationality First";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          nationality = val;
                        },
                        controller: _NetionalityController,
                        decoration: const InputDecoration(
                          hintText: "Indian",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_PersonalDetailFormKey.currentState!.validate()) {
                            _PersonalDetailFormKey.currentState!.save();
                          }
                          resume.DOB = DOB;
                          resume.nationality = nationality;
                          resume.grpval = grpval;
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
