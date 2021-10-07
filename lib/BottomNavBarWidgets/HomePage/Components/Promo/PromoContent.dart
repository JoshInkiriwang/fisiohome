import 'package:flutter/material.dart';

class PromoContent1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Column(
        children: [
          SizedBox(
            width: 10000,
            child: Image.asset('assets/images/Promo1.jpg', fit: BoxFit.cover,),
          ),
          SizedBox(height: 15.0),
          Container(
            padding: EdgeInsets.only(left : 15.0, top: 10.0,right: 15.0,bottom: 10.0),
            alignment: AlignmentDirectional.centerStart,
            child: Text('XXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)
            ),
          ),
          SizedBox(height: 5.0),
        ],
      ),
    );
  }

}

class PromoContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Column(
        children: [
          SizedBox(
            width: 10000,
            child: Image.asset('assets/images/Promo2.jpg', fit: BoxFit.cover,),
          ),
          SizedBox(height: 15.0),
          Container(
            padding: EdgeInsets.only(left : 15.0, top: 10.0,right: 15.0,bottom: 10.0),
            alignment: AlignmentDirectional.centerStart,
            child: Text('XXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)
            ),
          ),
          SizedBox(height: 5.0),
        ],
      ),
    );
  }
}