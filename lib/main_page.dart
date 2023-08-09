import 'package:busca_cep/image_assets.dart/image_assets.dart';
import 'package:busca_cep/repository/viacep_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:path_provider/path_provider.dart';

import 'model/viacep_model.dart';

class MainPage extends StatefulWidget {
  const MainPage ({Key? key}) : super(key: key);
  
  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  //VARIAVEIS:
  var cepController = TextEditingController(text: "");
  bool loading = false;
  var viacepModel = ViaCEPModel();
  var ViaCEPRepository = ViaCepRepository();
  //ApiFunction apifunc = ApiFunctionService();

  @override
  Widget build(BuildContext context) {

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
            const SizedBox(height: 100,),
            const Text("Busca CEP", style: TextStyle(fontSize: 22),
            ),
            /*ListTile( //Adicionar aqui o logo
              leading: Image.asset(AppImages.image1),
            ),*/
            TextField( 
              controller: cepController,
              keyboardType: TextInputType.number,
               onChanged: (String value) async {
                var cep = value.trim().replaceAll(new RegExp(r'[^0-9]'),'');
                if (cep.length == 8){
                  setState(() {
                    loading = true;
                  });
                  viacepModel = await ViaCEPRepository.consultarCEP(cep);
                }
                setState(() {
                  loading = false;
                });
               },
            ),
            const SizedBox(height: 50,),
            Text(
              viacepModel.logradouro ?? "",
              style: const TextStyle(fontSize: 22),
            ),
            Text(
              "${viacepModel.localidade ?? ""} - ${viacepModel.uf ?? ""}",
              style: const TextStyle(fontSize: 22),
            ),
            Visibility(visible: loading,child: const CircularProgressIndicator()),
          ],
        )
      )
    ),);
  }
}
