import 'package:flutter/material.dart';

class MovieAd extends StatefulWidget {
  final Function() okButtonpressed;
  const MovieAd({
    super.key,
    required this.okButtonpressed,
  });

  @override
  State<MovieAd> createState() => _MovieAdState();
}

class _MovieAdState extends State<MovieAd> {
  callBack() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      contentPadding: const EdgeInsets.all(0),
      actionsPadding: const EdgeInsets.all(25),
      actions: [
        const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Movie Added',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '"Captain America" has been added',
            )
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          children: [
            Container(
              height: 40,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: TextButton(
                  onPressed: callBack,
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              width: 110,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: TextButton(
                  onPressed: () {
                    widget.okButtonpressed();
                    callBack();
                  },
                  child: const Text(
                    'Ok',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
      content: const ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        child: Image(
          image: NetworkImage('https://wallpaper.dog/large/20494133.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
