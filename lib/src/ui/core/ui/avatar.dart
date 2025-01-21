import 'package:cached_network_image/cached_network_image.dart';
import 'package:core_module/di/injection.dart';
import 'package:core_module/src/config/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager_dio/flutter_cache_manager_dio.dart';

class Avatar extends StatelessWidget {
  final String url;
  final double width;
  final double height;
  const Avatar({
    super.key,
    required this.url,
    this.width = 24.0,
    this.height = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      cacheManager: getIt<DioCacheManager>(),
      placeholder: (context, url) => Image.asset(
        Assets.kDefaultAvatar,
        width: width,
        height: height,
      ),
      errorWidget: (context, url, error) => Image.asset(
        Assets.kDefaultAvatar,
        width: width,
        height: height,
      ),
      imageBuilder: (context, imageProvider) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
