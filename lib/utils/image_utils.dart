import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';

class ImageUtils {
  static Image getPlaceholderImage(String path,[String? placeholder]) {
    return Image.network(
      path,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        return loadingProgress == null
            ? child
            : Image.asset(placeholder ?? Assets.images.iconThumbPlaceholder.path);
      },
      errorBuilder: (
        BuildContext context,
        Object error,
        StackTrace? stackTrace,
      ) {
        return Image.asset(placeholder??Assets.images.iconThumbPlaceholder.path);
      },
    );
  }
}
