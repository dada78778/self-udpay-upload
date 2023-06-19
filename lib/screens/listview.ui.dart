import 'package:flutter/material.dart';
import 'package:sayansir/screens/text.field.add.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("List View Task"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            for(int i=1; i<5;i++)
           InkWell(
             onTap: (){
               Navigator.of(context).push(
                 MaterialPageRoute(builder: (c)=>const TextFieldAdd()),
               );
             },
             child: Container(
               margin: EdgeInsets.symmetric(vertical: height * .02),
               padding: const EdgeInsets.all(10),
               width: width,
               height: height * .4,
               decoration: BoxDecoration(
                 border: Border.all(),
                 borderRadius: BorderRadius.circular(12),
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Expanded(
                     flex:3,
                       child: Image.asset("assets/images/product.png")),
                   const Expanded(
                     flex: 1,
                       child: Text("HIGH-CALORIE FORMULA: MB Super Gainer is exquisitely crafted for elite fitness enthusiasts who strive to gain muscle mass & a sturdy physique with a high-calorie formula that helps you meet your increased calorie requirements",textAlign: TextAlign.center,maxLines: 3,)),
                   Expanded(child: Container(
                     alignment: Alignment.center,
                     width: width,
                     decoration: BoxDecoration(
                       color: Colors.green,
                       borderRadius: BorderRadius.circular(32),
                     ),
                       child: const Text("Add To Card",style: TextStyle(
                         fontSize: 20.0,color: Colors.white,
                       ),))),
                 ],
               ),
             ),
           ),
            SizedBox(height: height * .02,),
          ],
        ),
      ),
    );
  }
}
