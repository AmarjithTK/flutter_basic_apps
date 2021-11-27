import 'package:flutter/material.dart';
import 'package:myapp/storybrain.dart';

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  final StoryBrain _storyBrain = StoryBrain();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://raw.githubusercontent.com/londonappbrewery/destini-challenge-completed/master/images/background.png'),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 12,
                  child: Center(
                    child: Text(
                      _storyBrain.getStory(),
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: MaterialButton(
                    onPressed: () {
                      //Choice 1 made by user.
                      setState(() {
                        _storyBrain.nextStory(1);
                      });
                    },
                    color: Colors.red,
                    child: Text(
                      _storyBrain.getChoice(1),
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  flex: 2,
                  //TODO: Step 26 - Use a Flutter Visibility Widget to wrap this FlatButton.
                  //TODO: Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
                  child: Visibility(
                    visible: _storyBrain.buttonVisibility(),
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          _storyBrain.nextStory(2);
                        }); //Choice 2 made by user.
                        //TODO: Step 19 - Call the nextStory() method from storyBrain and pass the number 2 as the choice made by the user.
                      },
                      color: Colors.blue,
                      child: Text(
                        //TODO: Step 14 - Use the storyBrain to get the text for choice 2.
                        _storyBrain.getChoice(2),
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//TODO: Step 24 - Run the app and try to figure out what code you need to add to this file to make the story change when you press on the choice buttons.

//TODO: Step 29 - Run the app and test it against the Story Outline to make sure you've completed all the steps. The code for the completed app can be found here: https://github.com/londonappbrewery/destini-challenge-completed/