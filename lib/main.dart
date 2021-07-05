import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

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
  List<Quote> Quotes = [
    Quote(author:"Dalai Lama" ,text:"“The purpose of our lives is to be happy.”" ),
    Quote(author:" Stephen King" ,text:"“Get busy living or get busy dying.”" ),
    Quote(author:"Mae West" ,text:"“You only live once, but if you do it right, once is enough.”" ),
    Quote(author:"Will Smith" ,text:"“Not how long, but how well you have lived is the main thing.”" ),
    Quote(author:"Seneca" ,text:"“The purpose of our lives is to be happy.”" ),
    Quote(author:"Frank Sinatra" ,text:"“The big lesson in life, baby, is never be scared of anyone or anything.”" ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent
      ),

      body: Column(
        children:Quotes.map((getQuote) =>QuoteCard(
            quote:getQuote,
          delete:(){
              setState(() {
                Quotes.remove(getQuote);
              });
          }
        )).toList(),
      ),

    );
  }
}

