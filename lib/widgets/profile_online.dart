import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_ui/config/palette.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  final bool hasBorder;

  ProfileAvatar({
    Key key,
    @required this.imageUrl,
    this.isActive = false,
    this.hasBorder = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 33.0,
          backgroundColor: Palette.facebookBlue,
          child: CircleAvatar(
            radius: hasBorder ? 30.0 : 33.0,
            backgroundColor: Colors.grey.shade200,
            backgroundImage: CachedNetworkImageProvider(imageUrl),
          ),
        ),
        Positioned(
          bottom: 0.0,
          right: 0.0,
          child: isActive
              ? Container(
                  height: 12.0,
                  width: 12.0,
                  decoration: BoxDecoration(
                      color: Palette.online, shape: BoxShape.circle),
                )
              : SizedBox.shrink(),
        )
      ],
    );
  }
}
