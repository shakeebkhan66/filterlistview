import 'package:flutter/material.dart';


class SelectItemInListView extends StatefulWidget {
  const SelectItemInListView({Key? key}) : super(key: key);

  @override
  State<SelectItemInListView> createState() => _SelectItemInListViewState();
}

class _SelectItemInListViewState extends State<SelectItemInListView> {

 List<String> friNames = ["Hassan Khan", "Zain Khan", "Wahid Malik", "Mani Rao", "Shehzad Aslam", "Sagheer Ali", "Umair Khan", "Muzammil Hassan", "Ameer", "Ahmer", "Hassan Khan", "Zain Khan", "Wahid Malik", "Mani Rao",];
 List<String> tempList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Select Item In ListView"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: friNames.length,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Card(
                      child: ListTile(
                        title: Text(friNames[index].toString(), style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                        trailing: GestureDetector(
                          onTap: (){
                            setState(() {
                              if(tempList.contains(friNames[index].toString())){
                                tempList.remove(friNames[index].toString());
                              }else{
                                tempList.add(friNames[index].toString());
                              }
                            });
                            print("New List Values");
                            print(tempList.toString());
                          },
                          child: Container(
                            height: 40,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                color: tempList.contains(friNames[index].toString()) ? Colors.orange : Colors.greenAccent,

                            ),
                            child: Center(
                              child: Text(tempList.contains(friNames[index].toString()) ? "Remove" : "Add", style: const TextStyle(fontWeight: FontWeight.w900),),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
