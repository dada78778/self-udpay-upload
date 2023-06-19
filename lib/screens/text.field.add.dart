import 'package:flutter/material.dart';

class TextFieldAdd extends StatefulWidget {
  const TextFieldAdd({super.key});

  @override
  State<TextFieldAdd> createState() => _TextFieldAddState();
}

class _TextFieldAddState extends State<TextFieldAdd> {

  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController titlecontroller = TextEditingController();
  final TextEditingController pricecontroller = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add field"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Form(
        key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: titlecontroller,
                decoration: const InputDecoration(
                  label: Text("Title Name"),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'plz enter field title';
                  }
                  if(value.length<=3){
                    return 'title must be greaterthen 3';
                  }
                  return null;
                },
              ),
              SizedBox(height: height * .02,),
              TextFormField(
                controller: namecontroller,
                decoration: const InputDecoration(
                  label: Text("Enter Description"),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'plz enter field';
                  }
                  if(value.length<=10){
                    return 'word must be greaterthen 10';
                  }
                  return null;
                },
              ),
              SizedBox(height: height * .02,),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: pricecontroller,
                decoration: const InputDecoration(
                  label: Text("Price"),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'enter field Price';
                  }
                  if(value.isEmpty){
                    return 'minimum price must be lessthen 1';
                  }
                  return null;
                },
              ),
              SizedBox(height: height * .02,),
              TextFormField(
                readOnly: true,
                decoration: const InputDecoration(
                  hintText: "upload file",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: height * .02,),
              InkWell(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Success...')),
                );
                      }
                },
                child: Container(
                    alignment: Alignment.center,
                    width: width,
                    height: height * .07,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(35),
                    ),
                      child: const Text("Add Product",style: TextStyle(
                        color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22.0,
                      ),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
