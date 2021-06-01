import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_ui/models/models.dart';
import 'package:flutter_facebook_ui/widgets/widgets.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;
  CreatePostContainer({
    Key key,
    @required this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 20.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: currentUser.imageUrl),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'what\'s on your mind'),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Divider(height: 1.0, thickness: 1.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                onPressed: () => print('Live'),
                icon: Icon(
                  Icons.videocam,
                  color: Colors.red,
                  size: 22.0,
                ),
                label: Text(
                  'Live',
                  style: TextStyle(
                    fontSize: 17.0,
                  ),
                ),
              ),
              const VerticalDivider(width: 20.0),
              TextButton.icon(
                onPressed: () => print('Photos'),
                icon: Icon(
                  Icons.photo_album,
                  color: Colors.green,
                  size: 22.0,
                ),
                label: Text(
                  'Photos',
                  style: TextStyle(
                    fontSize: 17.0,
                  ),
                ),
              ),
              const VerticalDivider(width: 20.0),
              TextButton.icon(
                onPressed: () => print('Rooms'),
                icon: Icon(
                  Icons.video_call,
                  color: Colors.red,
                  size: 22.0,
                ),
                label: Text(
                  'Video',
                  style: TextStyle(
                    fontSize: 17.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
