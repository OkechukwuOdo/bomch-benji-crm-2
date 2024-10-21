import 'package:flutter/material.dart';

class DataCustomSearch extends SearchDelegate{
final citis=[
  "Edo",
  "Aba",
  "Oka",
  "Afa"
];

final recentSearch=[
  "Edo", 
  "Afa"
];



  @override
  List<Widget>? buildActions(BuildContext context) {
return [
  IconButton(onPressed: (){
    query='';
  }, icon: const Icon(Icons.clear))
];
  }

  @override
  Widget? buildLeading(BuildContext context) {
return IconButton(onPressed: (){
  Navigator.pop(context);
}, icon: const Icon(Icons.arrow_back_ios_new_outlined));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
  final sugestion=query.isEmpty?recentSearch:
  citis.where((element)=>element.contains(query)).toList();
  return ListView.separated(
    itemBuilder: (context,index){
      return null;
    },
    separatorBuilder: (context,index){
      return const SizedBox(height: 12,);
    }, 
    itemCount: recentSearch.length);
  }
}