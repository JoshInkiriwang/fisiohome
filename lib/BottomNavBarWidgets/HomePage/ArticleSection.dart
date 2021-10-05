import 'package:flutter/material.dart';

class ArticleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        fontFamily: 'Raleway',
      ),
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Text('Row 1'),
                Text('Row 2'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
