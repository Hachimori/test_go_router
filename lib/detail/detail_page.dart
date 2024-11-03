import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
    required this.id,
    required this.msg,
    required this.complexParam,
  });

  final String id;
  final String msg;
  final List<String> complexParam;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('ID: $id'),
            Text('Message: $msg'),
            Text('Complex Param: ${complexParam.join(', ')}'),
          ],
        ),
      ),
    );
  }
}
