import 'package:asadelic_social_app2/comment_screen.dart';
import 'package:asadelic_social_app2/model/feed.dart';
import 'package:asadelic_social_app2/model/story.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          scrolledUnderElevation: 0,
          title: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'ASADE',
                  style: TextStyle(
                    fontFamily: 'Mexon',
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'LIC',
                  style: TextStyle(
                    fontFamily: 'Mexon',
                    fontSize: 17,
                    color: Color(0xFF0779B8),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a search icon')));
              },
              icon: const Icon(
                Icons.search_outlined,
                color: Colors.black,
              ),
              tooltip: 'Search Icon',
            ),
            IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('This is a notification icon')));
              },
              icon: const Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
              tooltip: 'Notif Icon',
            ),
            IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a message icon')));
              },
              icon: const Icon(
                Icons.message_outlined,
                color: Colors.black,
              ),
              tooltip: 'Message Icon',
            ),
          ],
        ),
        body: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 240.633,
                height: 267.786,
                decoration: BoxDecoration(
                  color: const Color(0xFFD8F1FE),
                  borderRadius: BorderRadius.circular(267.786),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.2),
                      blurRadius: 150.0,
                      spreadRadius: 30.0,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 240.633,
                height: 267.786,
                decoration: BoxDecoration(
                  color: const Color(0xFFD8F1FE),
                  borderRadius: BorderRadius.circular(267.786),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.2),
                      blurRadius: 200.0,
                      spreadRadius: 40.0,
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    height: 110,
                    child: ListView.builder(
                      itemCount: storyList.length + 1,
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 0) {
                          return Column(
                            children: <Widget>[
                              const SizedBox(
                                height: 1,
                              ),
                              DottedBorder(
                                color: const Color(0xFF0779B8),
                                strokeWidth: 2,
                                borderType: BorderType.RRect,
                                radius: const Radius.circular(80),
                                dashPattern: const [8, 4],
                                padding: const EdgeInsets.all(2.0),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(85),
                                  ),
                                  child: Container(
                                    padding: const EdgeInsets.all(2.0),
                                    width: 81,
                                    height: 81,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFB4D6EA),
                                      shape: BoxShape.circle,
                                    ),
                                    child: IconButton(
                                        padding: EdgeInsets.zero,
                                        onPressed: () {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                                  content: Text(
                                                      'This is a messenger icon')));
                                        },
                                        icon: const Icon(
                                          Icons.add_circle_outline_sharp,
                                          color: Color(0xFF0779B8),
                                        )),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Text(
                                'Your Story',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          );
                        }

                        final Story stories = storyList[index - 1];
                        return Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 13,
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  clipBehavior: Clip.antiAlias,
                                  padding: const EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xFF0779B8),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(80),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      stories.imageAsset,
                                      width: 78,
                                      height: 78,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  stories.name,
                                  style: const TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ListView.builder(
                          itemCount: feedList.length,
                          itemBuilder: (context, index) {
                            final Feed feed = feedList[index];
                            final List<ValueNotifier<int>> likeCounts = feedList
                                .map((feed) => ValueNotifier<int>(feed.likes))
                                .toList();
                            return InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return CommentScreen(feed: feed);
                                  }));
                                },
                                child: Card(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 25, horizontal: 35),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                child: Image.asset(
                                                  feed.imageAsset,
                                                  width: 50,
                                                  height: 50,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              const SizedBox(width: 16),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: <Widget>[
                                                    Text(
                                                      feed.name,
                                                      style: const TextStyle(
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Text(
                                                      feed.clock,
                                                      style: const TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w300),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                top: 10, bottom: 15),
                                            child: Text(feed.paragraph,
                                                style: const TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w300)),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            child: Image.asset(
                                              feed.content,
                                              width: double.infinity,
                                              height: 170,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            margin: const EdgeInsets.all(0.0),
                                            padding: const EdgeInsets.all(0.0),
                                            child: Row(children: <Widget>[
                                              LikeButton(
                                                onLikeChanged: (isLiked) {
                                                  if (isLiked) {
                                                    likeCounts[index].value++;
                                                  } else {
                                                    likeCounts[index].value--;
                                                  }
                                                },
                                              ),
                                              ValueListenableBuilder(
                                                  valueListenable:
                                                      likeCounts[index],
                                                  builder:
                                                      (context, number, child) {
                                                    return Text(
                                                        number.toString(),
                                                        style: const TextStyle(
                                                            fontSize: 12.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500));
                                                  }),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  IconButton(
                                                      padding: EdgeInsets.zero,
                                                      onPressed: () {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                                const SnackBar(
                                                                    content: Text(
                                                                        'Messenger')));
                                                      },
                                                      icon: const Icon(Icons
                                                          .messenger_outline)),
                                                  Text(feed.comment,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: const TextStyle(
                                                          fontSize: 12.0,
                                                          fontWeight:
                                                              FontWeight.w500)),
                                                ],
                                              ),
                                              IconButton(
                                                  padding: EdgeInsets.zero,
                                                  onPressed: () {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                            const SnackBar(
                                                                content: Text(
                                                                    'Send')));
                                                  },
                                                  icon: const Icon(
                                                      Icons.send_outlined)),
                                              Expanded(child: Container()),
                                              IconButton(
                                                  padding: EdgeInsets.zero,
                                                  onPressed: () {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                            const SnackBar(
                                                                content: Text(
                                                                    'Bookmark')));
                                                  },
                                                  icon: const Icon(Icons
                                                      .bookmark_add_outlined)),
                                            ]),
                                          )
                                        ],
                                      )),
                                ));
                          })),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LikeButton extends StatefulWidget {
  final Function(bool) onLikeChanged;
  const LikeButton({Key? key, required this.onLikeChanged}) : super(key: key);

  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          setState(() {
            isLike = !isLike;
          });
          widget.onLikeChanged(isLike);
        },
        icon: Icon(
          isLike ? Icons.thumb_up : Icons.thumb_up_alt_outlined,
          color: isLike ? const Color(0xFF0779B8) : Colors.black,
        ));
  }
}
