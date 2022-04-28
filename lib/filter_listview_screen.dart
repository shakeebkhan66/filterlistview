import 'package:flutter/material.dart';


class FilterListViewScreen extends StatefulWidget {
  const FilterListViewScreen({Key? key}) : super(key: key);

  @override
  State<FilterListViewScreen> createState() => _FilterListViewScreenState();
}

class _FilterListViewScreenState extends State<FilterListViewScreen> {
  
  TextEditingController searchController = TextEditingController();
  String search = "";
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: const Text("Filter ListView", style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              TextFormField(
                controller: searchController,
                onChanged: (String value){
                  setState(() {
                    search = value.toString();
                  });
                },
                decoration: const InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.black45),
                  labelText: "Search",
                  labelStyle: TextStyle(color: Colors.deepOrangeAccent, fontWeight: FontWeight.bold),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrangeAccent)
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 1000,
                  itemBuilder: (context, index){
                    late String position = index.toString();
                    if(searchController.text.isEmpty){
                      return ListTile(
                        title: Text("Kara Usman Bey    " +index.toString(), style: const TextStyle(fontWeight: FontWeight.bold),),
                        leading: const CircleAvatar(
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtoZPNAyKSwxjek2yDrbRNDbcKYitdIqtW_g&usqp=CAU'),
                        ),
                        subtitle: const Text("Son of Ertugrul Ghazi"),
                      );
                    }else if(position.toLowerCase().contains(searchController.text.toLowerCase())){
                      return ListTile(
                        // title: Text("Kara Usman Bey    " +index.toString(), style: const TextStyle(fontWeight: FontWeight.bold),),
                        title: RichText(
                          text: TextSpan(
                            text: "Kara Usman Bey    ",
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(text: index.toString(), style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 22))
                            ]
                          ),
                        ),
                        leading: const CircleAvatar(
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtoZPNAyKSwxjek2yDrbRNDbcKYitdIqtW_g&usqp=CAU'),
                        ),
                        subtitle: const Text("Son of Ertugrul Ghazi"),
                      );
                    }else{
                      return Container();
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
