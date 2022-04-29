import 'package:flutter/material.dart';

class WalkThroughTemplate extends StatelessWidget {
  final String title;
  final String subtitle;
  final Image image;

  const WalkThroughTemplate(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: image,
            ),
          ),
          SizedBox(
            height: 180.0,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: _theme.textTheme.headline6,
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        subtitle,
                        style: _theme.textTheme.bodyText2!.merge(
                          TextStyle(
                            color: Colors.grey[600],
                            height: 1.3,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
