import 'package:flutter/material.dart';

class ScoreCard extends StatelessWidget{
  final ValueNotifier<int> score;

  const ScoreCard({
    super.key,
    required this.score,
});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
        valueListenable: score,
        builder: (context, score, child){
          return Padding(
              padding: const EdgeInsets.fromLTRB(12, 6, 12, 18),
          child: Text(
          'Score: $score'.toUpperCase(),
          style: Theme.of(context).textTheme.titleLarge!,),
          );
        },
    );
  }
}