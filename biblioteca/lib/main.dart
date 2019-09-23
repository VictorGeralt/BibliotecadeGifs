import 'package:flutter/material.dart';
import 'package:biblioteca/view/home_page.dart';

void main() {
  runApp(new MaterialApp(
    home: HomePage(),
    theme: ThemeData(hintColor: Colors.white),
  ));
}

class _HomePage extends StatefulWidget {
  @override
  __HomePageState createState() => __HomePageState();
}

class __HomePageState extends State<_HomePage> {
  @override
  String _criterioBusca;
  int _paginacao = 0;

  dynamic _buscarGifs() async{
    http.Response response;
    
    if(_criterioBusca == null || _criterioBusca == '')
      response = await http.get('https://api.giphy.com/v1/gifs/trending?api_key=rJioAB5oDYCLwNw199o8JJK11L3eVlyS&limit=25&rating=R');
    
    else 
      response = wait http.get('https://api.giphy.com/v1/gifs/search?api_key=rJioAB5oDYCLwNw199o8JJK11L3eVlyS&q=$_criterioBusca&limit=25&offset=$_paginacao&rating=R&lang=pt')
  }



  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}