
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:votingapp/pages/electiondetails.dart';
import 'package:votingapp/services/functions.dart';
import 'package:votingapp/utils/constants.dart';
import 'package:web3dart/web3dart.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Client? httpClient;
  Web3Client? ethClient;
  TextEditingController controller=TextEditingController();

  @override
  void initState(){
    httpClient=Client();
    ethClient=Web3Client(infura_url,httpClient!);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("START ELECTION"),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        TextField(
          controller: controller,
          decoration:InputDecoration(
            filled: true,
            hintText: 'enter election name',
          ) ,
        ),

              Container(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(onPressed: ()  {
                    if (controller.text.length > 0) {
                      startElection(controller.text, ethClient!);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Electioninfo(
                                  ethClient: ethClient!,
                                  electionName: controller.text)));
                    }
                  },
                    child: Text('start election'),)),
            ],
          ),
        ),

    );
  }
}
