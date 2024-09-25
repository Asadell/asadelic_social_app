import 'package:asadelic_social_app2/model/comment.dart';
import 'package:asadelic_social_app2/model/feed.dart';
import 'package:flutter/material.dart';

class CommentScreen extends StatelessWidget {
  final Feed feed;
  const CommentScreen({Key? key, required this.feed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Commentss',
          style: TextStyle(
              fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: CustomPaint(
              size: const Size(double.infinity, 200),
              painter: LinePainter(),
            ),
          ),
          Positioned(
            top: 15,
            left: 0,
            right: 0,
            child: CustomPaint(
              size: const Size(double.infinity, 200),
              painter: ShortLinesPainter(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 50,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Like',
                          style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 45,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ...feed.likedBy.map((acc) {
                              return Stack(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(42),
                                    child: Image.asset(
                                      acc.imageAsset,
                                      width: 42,
                                      height: 42,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    bottom: 0,
                                    child: Container(
                                      width: 10,
                                      height: 10,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: acc.isActive
                                            ? Colors.green
                                            : Colors.red,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }).toList(),
                            Container(
                                width: 42,
                                height: 42,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFE6E7E9),
                                ),
                                child: Center(
                                  child: Text(
                                    '+${feed.likes - 6}',
                                    style: const TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      child: ListView.builder(
                    itemCount: feed.commentedBy.length,
                    itemBuilder: (BuildContext context, int index) {
                      final List<ValueNotifier<int>> likeCounts = feed
                          .commentedBy
                          .map((feed) => ValueNotifier<int>(feed.like))
                          .toList();
                      final Comment comment = feed.commentedBy[index];
                      return Card(
                        elevation: 0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 15,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                    bottom: 10,
                                  ),
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Container(
                                      clipBehavior: Clip.antiAlias,
                                      padding: const EdgeInsets.all(2.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xFF0779B8),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(80),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(300),
                                        child: Image.asset(
                                          comment.account.imageAsset,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
//
                                // Container(
                                //   clipBehavior: Clip.antiAlias,
                                //   padding: const EdgeInsets.all(2.0),
                                //   decoration: BoxDecoration(
                                //     border: Border.all(
                                //       color: const Color(0xFF0779B8),
                                //       width: 2,
                                //     ),
                                //     borderRadius: BorderRadius.circular(80),
                                //   ),
                                //   child: ClipRRect(
                                //     borderRadius: BorderRadius.circular(50),
                                //     child: Image.asset(
                                //       stories.imageAsset,
                                //       width: 78,
                                //       height: 78,
                                //       fit: BoxFit.cover,
                                //     ),
                                //   ),
                                // ),
//
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Expanded(
                                flex: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      comment.account.name,
                                      style: const TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      comment.time,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      comment.comment,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        ValueListenableBuilder(
                                            valueListenable: likeCounts[index],
                                            builder: (context, number, child) {
                                              return Text(
                                                '${number.toString()} Likes',
                                                style: const TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w200),
                                              );
                                            }),
                                        const SizedBox(
                                          width: 7,
                                        ),
                                        Text(
                                          comment.reply,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w200),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              FavoriteButton(
                                onLikeChanged: (isLiked) {
                                  if (isLiked) {
                                    likeCounts[index].value++;
                                  } else {
                                    likeCounts[index].value--;
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color(0xFF0779B8)
      ..strokeWidth = 1.0
      ..style = PaintingStyle.stroke
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2);

    Path path = Path();

    path.moveTo(0, 30);
    path.quadraticBezierTo(0, 0, 30, 0);

    path.lineTo(size.width - 30, 0);

    path.quadraticBezierTo(size.width, 0, size.width, 30);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class ShortLinesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color.fromARGB(255, 116, 187, 225)
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    double middleX = size.width / 2;

    canvas.drawLine(Offset(middleX - 20, 10), Offset(middleX + 20, 10), paint);

    canvas.drawLine(Offset(middleX - 10, 20), Offset(middleX + 10, 20), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class FavoriteButton extends StatefulWidget {
  final Function(bool) onLikeChanged;
  const FavoriteButton({Key? key, required this.onLikeChanged})
      : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
        widget.onLikeChanged(isFavorite);
      },
    );
  }
}
