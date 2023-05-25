import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage ({Key? key}) : super(key: key);
  
  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {

  //ApiFunction apifunc = ApiFunctionService();

  @override
  Widget build(BuildContext context) {
    //VARIAVEIS:
    var cepController = TextEditingController(text: "");

   return SafeArea(
    child: Scaffold(
      appBar: AppBar(title: const Text("Correios", style: TextStyle(color: Colors.black),),
      centerTitle: true,
      backgroundColor: Colors.yellowAccent,
      shadowColor: Colors.yellow,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            const Text("Busca CEP", style: TextStyle(fontSize: 22),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField( 
                    controller: cepController,
                    keyboardType: TextInputType.number,
                    //onChanged: (){},
                    decoration: const InputDecoration(hintText: 'CEP'),
                  )
                ],
              )
            )
          ],
        ),
      ),
    ));
  }

}