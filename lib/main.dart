import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:QuoteList()
  ));
}
class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<String> Quotes = [
    "“The purpose of our lives is to be happy.” — Dalai Lama",
    "“Get busy living or get busy dying.” — Stephen King",
    "“You only live once, but if you do it right, once is enough.” — Mae West",
    "“Never let the fear of striking out keep you from playing the game.”– Babe Ruth",
    "“Money and success don’t change people; they merely amplify what is already there.” — Will Smith",
    "“Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma – which is living with the results of other people’s thinking.” – Steve Jobs",
    " “Not how long, but how well you have lived is the main thing.” — Seneca",
    "“The big lesson in life, baby, is never be scared of anyone or anything.”– Frank Sinatra",
    "“The big lesson in life, baby, is never be scared of anyone or anything.”– Frank Sinatra",
    "“The big lesson in life, baby, is never be scared of anyone or anything.”– Frank Sinatra",
    "“The big lesson in life, baby, is never be scared of anyone or anything.”– Frank Sinatra",
    "“The big lesson in life, baby, is never be scared of anyone or anything.”– Frank Sinatra",
    "“The big lesson in life, baby, is never be scared of anyone or anything.”– Frank Sinatra",
    "“The big lesson in life, baby, is never be scared of anyone or anything.”– Frank Sinatra",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent
      ),
      body: Column(
        children:Quotes.map((Quote) =>Text(Quote) ).toList(),
      ),

    );
  }
}

