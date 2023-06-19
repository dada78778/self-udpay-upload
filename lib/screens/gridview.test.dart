import 'package:flutter/material.dart';
import 'package:sayansir/screens/listview.ui.dart';

class GridviewDart extends StatelessWidget {
  const GridviewDart({super.key});

  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View Task"),
      ),
      body:  SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              shrinkWrap: true,
              childAspectRatio: .89,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (c)=>const ListViewPage()),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex:5,
                            child: Image.asset("assets/images/product.png"),
                        ),
                        const Expanded(
                          flex: 3,
                            child: Text("HIGH-CALORIE FORMULA: MB Super Gainer is exquisitely crafted for elite fitness enthusiasts who strive to gain muscle mass & a sturdy physique with a high-calorie formula that helps you meet your increased calorie requirements",maxLines: 3,textAlign: TextAlign.center,),
                        ),
                        Expanded(
                            child: Container(
                              width: width * .33,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(12),
                              ),
                                child: const Text("Add to Card",style: TextStyle(
                                  color: Colors.white,
                                ),))),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex:5,
                        child: Image.asset("assets/images/product.png"),
                      ),
                      const Expanded(
                        flex: 3,
                        child: Text("HIGH-CALORIE FORMULA: MB Super Gainer is exquisitely crafted for elite fitness enthusiasts who strive to gain muscle mass & a sturdy physique with a high-calorie formula that helps you meet your increased calorie requirements",maxLines: 3,textAlign: TextAlign.center,),
                      ),
                      Expanded(
                          child: Container(
                              width: width * .33,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Text("Add to Card",style: TextStyle(
                                color: Colors.white,
                              ),))),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex:5,
                        child: Image.asset("assets/images/product.png"),
                      ),
                      const Expanded(
                        flex: 3,
                        child: Text("HIGH-CALORIE FORMULA: MB Super Gainer is exquisitely crafted for elite fitness enthusiasts who strive to gain muscle mass & a sturdy physique with a high-calorie formula that helps you meet your increased calorie requirements",maxLines: 3,textAlign: TextAlign.center,),
                      ),
                      Expanded(
                          child: Container(
                              width: width * .33,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Text("Add to Card",style: TextStyle(
                                color: Colors.white,
                              ),))),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex:5,
                        child: Image.asset("assets/images/product.png"),
                      ),
                      const Expanded(
                        flex: 3,
                        child: Text("HIGH-CALORIE FORMULA: MB Super Gainer is exquisitely crafted for elite fitness enthusiasts who strive to gain muscle mass & a sturdy physique with a high-calorie formula that helps you meet your increased calorie requirements",maxLines: 3,textAlign: TextAlign.center,),
                      ),
                      Expanded(
                          child: Container(
                              width: width * .33,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Text("Add to Card",style: TextStyle(
                                color: Colors.white,
                              ),))),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex:5,
                        child: Image.asset("assets/images/product.png"),
                      ),
                      const Expanded(
                        flex: 3,
                        child: Text("HIGH-CALORIE FORMULA: MB Super Gainer is exquisitely crafted for elite fitness enthusiasts who strive to gain muscle mass & a sturdy physique with a high-calorie formula that helps you meet your increased calorie requirements",maxLines: 3,textAlign: TextAlign.center,),
                      ),
                      Expanded(
                          child: Container(
                              width: width * .33,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Text("Add to Card",style: TextStyle(
                                color: Colors.white,
                              ),))),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex:5,
                        child: Image.asset("assets/images/product.png"),
                      ),
                      const Expanded(
                        flex: 3,
                        child: Text("HIGH-CALORIE FORMULA: MB Super Gainer is exquisitely crafted for elite fitness enthusiasts who strive to gain muscle mass & a sturdy physique with a high-calorie formula that helps you meet your increased calorie requirements",maxLines: 3,textAlign: TextAlign.center,),
                      ),
                      Expanded(
                          child: Container(
                              width: width * .33,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Text("Add to Card",style: TextStyle(
                                color: Colors.white,
                              ),))),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
