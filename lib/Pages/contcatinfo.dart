import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resumeapk/Pages/resumemodels.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ContactInfo extends StatefulWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  _ContactInfoState createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  final ImagePicker _picker = ImagePicker();
  final GlobalKey<FormState> _contactInfoFormKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _address1Controller = TextEditingController();
  final TextEditingController _address2Controller = TextEditingController();
  final TextEditingController _address3Controller = TextEditingController();

  File? _image;
  String? name;
  String? email;
  String? address;
  int? phone;
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (const Text(
          "Invoice  Workspace",
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
            flex: 1,
            child: Container(
              color: const Color(0xff0475ff),
              alignment: const Alignment(0, 0.6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          index = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            "Contact",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          (index == 0)
                              ? Container(
                            height: 4,
                            width:
                            MediaQuery.of(context).size.width * 0.5,
                            color: Colors.amber.shade400,
                          )
                              : const SizedBox(
                            height: 4,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          index = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            "Photo",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          (index == 1)
                              ? Container(
                            height: 4,
                            width:
                            MediaQuery.of(context).size.width * 0.5,
                            color: Colors.amber.shade400,
                          )
                              : const SizedBox(
                            height: 4,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 11,
            child: Container(
                alignment: Alignment.center,
                color: Colors.grey.withOpacity(0.35),
                child: IndexedStack(
                  index: index,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          top: 0, bottom: 28, right: 28, left: 28),
                      padding: const EdgeInsets.only(
                          bottom: 25, right: 12, left: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Form(
                        key: _contactInfoFormKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Image.asset(
                                  "assets/icons/account.png",
                                  height: 30,
                                  color: Colors.grey,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  flex: 10,
                                  child: TextFormField(
                                    controller: _nameController,
                                    onSaved: (val) {
                                      name = val;
                                    },
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter your name first...";
                                      }
                                      return null;
                                    },
                                    decoration: const InputDecoration(
                                      label: Text("Name"),
                                      hintText: "Enter your name Here",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Image.asset(
                                  "assets/icons/email.png",
                                  height: 30,
                                  color: Colors.grey,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  flex: 10,
                                  child: TextFormField(
                                    controller: _emailController,
                                    onSaved: (val) {
                                      email = val;
                                    },
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter your email first...";
                                      }
                                      return null;
                                    },
                                    decoration: const InputDecoration(
                                      label: Text("Email"),
                                      hintText: "Enter your Email Here",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Image.asset(
                                  "assets/icons/smartphone-call.png",
                                  height: 30,
                                  color: Colors.grey,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  flex: 10,
                                  child: TextFormField(
                                    controller: _phoneController,
                                    onSaved: (val) {
                                      phone = int.parse(val!);
                                    },
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter your phone number first...";
                                      } else if (val.length != 10) {
                                        return "Invalid length of your phone number...";
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                      label: Text("Phone"),
                                      hintText: "Enter your phone number Here",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Image.asset(
                                  "assets/icons/pin.png",
                                  height: 30,
                                  color: Colors.grey,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  flex: 10,
                                  child: TextFormField(
                                    controller: _address1Controller,
                                    onSaved: (val) {
                                      address = val;
                                    },
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter your address first...";
                                      }
                                      return null;
                                    },
                                    decoration: const InputDecoration(
                                      label: Text("Address"),
                                      hintText: "Enter your address Here",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(child: Container()),
                                const SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  flex: 10,
                                  child: TextFormField(
                                    controller: _address2Controller,
                                    onSaved: (val) {
                                      address = address! + ", " + val!;
                                    },
                                    // validator: (val) {},
                                    decoration: const InputDecoration(
                                      label: Text("Address Line 2"),
                                      // border: UnderlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(child: Container()),
                                const SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  flex: 10,
                                  child: TextFormField(
                                    controller: _address3Controller,
                                    onSaved: (val) {
                                      address = address! + ", " + val!;
                                    },
                                    // validator: (val) {},
                                    decoration: const InputDecoration(
                                      label: Text("Address Line 3"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    if (_contactInfoFormKey.currentState!
                                        .validate()) {
                                      _contactInfoFormKey.currentState!.save();

                                      resume.name = name;
                                      resume.email = email;
                                      resume.phone = phone;
                                      resume.address = address;

                                      print(resume.name);
                                      print(resume.email);
                                      print(resume.phone);
                                      print(resume.address);
                                    }
                                  },
                                  child: const Text("Submit"),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _contactInfoFormKey.currentState!.reset();
                                    });
                                    _nameController.clear();
                                    _emailController.clear();
                                    _phoneController.clear();
                                    _address1Controller.clear();
                                    _address2Controller.clear();
                                    _address3Controller.clear();

                                    name = "";
                                    email = "";
                                    address = "";
                                    phone = 0;

                                    resume.name = "";
                                    resume.email = "";
                                    resume.phone = 0;
                                    resume.address = "";
                                  },
                                  child: const Text("Reset"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.3,
                          margin: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey.withOpacity(0.3),
                          radius: 80,
                          backgroundImage:
                          (_image != null) ? FileImage(_image!) : null,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              (_image == null)
                                  ? const Text(
                                "ADD",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              )
                                  : Container(),
                              Align(
                                alignment: const Alignment(0.95, 0.95),
                                child: FloatingActionButton(
                                  onPressed: () async {
                                    XFile? xfile = await _picker.pickImage(
                                        source: ImageSource.gallery);

                                    String path = xfile!.path;
                                    // print(path);
                                    File file = File(path);

                                    setState(() {
                                      _image = file;
                                    });
                                    resume.image = _image;
                                  },

                                  child: const Icon(Icons.add),
                                  mini: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
