import 'package:flutter/material.dart';
import 'story_brain.dart';


void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

StoryBrain mstoryBrain = StoryBrain();


class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background.png'),
              fit: BoxFit.cover,
            )
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child:


        SafeArea(
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(

                    mstoryBrain.getStory(),
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    setState(() {

                      mstoryBrain.nextStory(1);
                    });


                  },
                  child:
                  Container(
                    padding: EdgeInsets.all(15)
,                    height: 80,
                    width: 400,
                    color: Colors.red,
                    child: Center(
                      child: Text(

                        mstoryBrain.getChoice1(),
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,


              ),
              Expanded(
                flex: 2,

                child: Visibility(
                  visible: mstoryBrain.buttonShouldBeVisible(),
                  child:
                  TextButton(
                    onPressed: () {
                      setState(() {
                        mstoryBrain.nextStory(2);
                      });

                    },
                    child:
                    Container(
                      padding: EdgeInsets.all(15),
                      height: 80,
                      width: 400,
                      color: Colors.blue,
                      child: Center(
                        child: Text(

                          mstoryBrain.getChoice2(),
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


