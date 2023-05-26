import 'package:busca_cep/image_assets.dart/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:path_provider/path_provider.dart';

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
            ListTile( //Adicionar aqui o logo
              leading: Image.asset(AppImages.image1)
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