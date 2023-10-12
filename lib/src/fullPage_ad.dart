import 'package:flutter/material.dart';

class FullPageAd extends StatefulWidget {
  final String? picture;

  const FullPageAd({
    super.key,
    this.picture,
  });
  

  @override
  State<FullPageAd> createState() => _FullPageAdState();
}

class _FullPageAdState extends State<FullPageAd> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[100],
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.purple,
          onPressed: () {},
          label: const Text('Learn More'),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 320),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        'X',
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Column(
                    children: [
                      Text(
                        'facebook',
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontStyle: FontStyle.italic,
                          fontSize: 25,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ads',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontStyle: FontStyle.italic,
                                fontSize: 25),
                          ),
                          const Text(
                            '101',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Container(
                          height: 200,
                          width: 250,
                          color: Colors.white,
                          child: widget.picture != null &&
                                  widget.picture!.isNotEmpty
                              ? Image(
                                  image: AssetImage(widget.picture!),
                                  fit: BoxFit.cover,
                                )
                              : Container(),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Column(
                        children: [
                          Text('data'),
                          Text('data'),
                          Text('data'),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
