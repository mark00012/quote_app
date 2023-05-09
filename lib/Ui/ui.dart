import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  const Wisdom({super.key});

  @override
  State<Wisdom> createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int _index = 0;

  List Quotes = [
    "We cannot solve problems with the kind of thinking we employed when we came up with them. — Albert Einstein",
    "Learn as if you will live forever, live like you will die tomorrow. — Mahatma Gandhi",
    "Stay away from those people who try to disparage your ambitions. Small minds will always do that, but great minds will give you a feeling that you can become great too. — Mark Twain",
    "When you give joy to other people, you get more joy in return. You should give a good thought to happiness that you can give out. — Eleanor Roosevelt",
    "When you change your thoughts, remember to also change your world. —Norman Vincent Peale",
    "It is only when we take chances, when our lives improve. The initial and the most difficult risk that we need to take is to become honest. —Walter Anderson",
    "Nature has given us all the pieces required to achieve exceptional wellness and health, but has left it to us to put these pieces together. —Diane McLaren",
    "No woman wants to be in submission to a man who isn’t in submission to God!  ― T D Jakes",
    "A witty woman is a treasure; a witty beauty is a power. ― George Meredith",
    "When a woman becomes her own best friend life is easier.  Diane Von Furstenberg",
    "If you want something said, ask a man; if you want something done, ask a woman.  Margaret Thatcher",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                    width: 400,
                    height: 200,
                    margin: const EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(14.5)),
                    child: Center(
                        child: Text(
                      Quotes[_index % Quotes.length],
                      style: const TextStyle(
                          color: Colors.grey,
                          fontStyle: FontStyle.italic,
                          fontSize: 16.0),
                    ))),
              ),
            ),
            const Divider(
              thickness: 3.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: TextButton.icon(
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.greenAccent)),
                onPressed: _showQuote,
                icon: const Icon(
                  Icons.wb_sunny,
                  color: Colors.black,
                ),
                label: const Text(
                  'Inspire me!',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }

  _showQuote() {
    setState(() {
      _index++;
    });
  }
}
