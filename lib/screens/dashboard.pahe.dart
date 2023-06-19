import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + height * .03,left: width * .03,right: width * .03),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: width * .04),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  const Icon(Icons.search,color: Colors.black),
                  SizedBox(width: width * .02,),
                  Expanded(child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search product",
                    ),
                  )),
                ],
              ),
            ),
            SizedBox(height: height * .02,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("categoies",style: TextStyle(
                  fontWeight: FontWeight.bold,color: Colors.black,fontSize: 17.0,
                ),),
                Text("View All",style: TextStyle(
                  fontWeight: FontWeight.bold,color: Colors.black,fontSize: 17.0,
                ),),
              ],
            ),
            SizedBox(height: height * .03,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for(int i=1;i<7;i++)
                  Container(
                    alignment: Alignment.center,
                    width: width * .2,
                    height: height * .05,
                    margin: EdgeInsets.symmetric(horizontal: width * .02),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text("here",style: TextStyle(
                      color: Colors.white,fontSize: 15.0,
                    ))),
                ],
              ),
            ),
            SizedBox(height: height * .01,),
            GridView.count(
              crossAxisCount: 2,
              childAspectRatio: .7,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              shrinkWrap: true,
              children: [
                for(int i=1;i<=4;i++)
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex:5,
                        child: Image.asset("assets/images/product.png")),
                    const Expanded(
                      flex: 2,
                        child: Text("HIGH-CALORIE FORMULA: MB Super Gainer is exquisitely crafted for elite fitness enthusiasts who strive to gain muscle.",maxLines: 2,textAlign: TextAlign.center,)),
                    const Expanded(child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("\u{20B9}999",style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.red,fontWeight: FontWeight.bold,
                        ),),
                        Text("\u{20B9}799",style: TextStyle(
                          color: Colors.green,fontWeight: FontWeight.bold,
                        ),),
                      ],
                    )),
                    SizedBox(height: height * .01,),
                    Expanded(child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12),
                      ),
                        child: const Text("View Info"))),
                    SizedBox(height: height * .01,),
                    Expanded(child: Container(
                      width: width * .3,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text("Add To Card"))),
                  ],
                ),),
              ],
            )
          ],
        )
      ),
    );
  }
}
