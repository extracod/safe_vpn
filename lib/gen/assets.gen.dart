/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/icon_add_card.webp
  AssetGenImage get iconAddCard =>
      const AssetGenImage('assets/images/icon_add_card.webp');

  /// File path: assets/images/icon_back.webp
  AssetGenImage get iconBack =>
      const AssetGenImage('assets/images/icon_back.webp');

  /// File path: assets/images/icon_btn_arrow.webp
  AssetGenImage get iconBtnArrow =>
      const AssetGenImage('assets/images/icon_btn_arrow.webp');

  /// File path: assets/images/icon_close_eye.webp
  AssetGenImage get iconCloseEye =>
      const AssetGenImage('assets/images/icon_close_eye.webp');

  /// File path: assets/images/icon_copy.webp
  AssetGenImage get iconCopy =>
      const AssetGenImage('assets/images/icon_copy.webp');

  /// File path: assets/images/icon_delete_account_success.webp
  AssetGenImage get iconDeleteAccountSuccess =>
      const AssetGenImage('assets/images/icon_delete_account_success.webp');

  /// File path: assets/images/icon_email_sent_success.webp
  AssetGenImage get iconEmailSentSuccess =>
      const AssetGenImage('assets/images/icon_email_sent_success.webp');

  /// File path: assets/images/icon_empty_placeholder.webp
  AssetGenImage get iconEmptyPlaceholder =>
      const AssetGenImage('assets/images/icon_empty_placeholder.webp');

  /// File path: assets/images/icon_login_close.webp
  AssetGenImage get iconLoginClose =>
      const AssetGenImage('assets/images/icon_login_close.webp');

  /// File path: assets/images/icon_login_email.webp
  AssetGenImage get iconLoginEmail =>
      const AssetGenImage('assets/images/icon_login_email.webp');

  /// File path: assets/images/icon_login_gmail.webp
  AssetGenImage get iconLoginGmail =>
      const AssetGenImage('assets/images/icon_login_gmail.webp');

  /// File path: assets/images/icon_login_google.webp
  AssetGenImage get iconLoginGoogle =>
      const AssetGenImage('assets/images/icon_login_google.webp');

  /// File path: assets/images/icon_login_pwd.webp
  AssetGenImage get iconLoginPwd =>
      const AssetGenImage('assets/images/icon_login_pwd.webp');

  /// File path: assets/images/icon_open_eye.webp
  AssetGenImage get iconOpenEye =>
      const AssetGenImage('assets/images/icon_open_eye.webp');

  /// File path: assets/images/icon_splash.webp
  AssetGenImage get iconSplash =>
      const AssetGenImage('assets/images/icon_splash.webp');

  /// File path: assets/images/icon_thumb_placeholder.webp
  AssetGenImage get iconThumbPlaceholder =>
      const AssetGenImage('assets/images/icon_thumb_placeholder.webp');

  /// File path: assets/images/icon_withdraw_record.webp
  AssetGenImage get iconWithdrawRecord =>
      const AssetGenImage('assets/images/icon_withdraw_record.webp');

  /// List of all assets
  List<AssetGenImage> get values => [
    iconAddCard,
    iconBack,
    iconBtnArrow,
    iconCloseEye,
    iconCopy,
    iconDeleteAccountSuccess,
    iconEmailSentSuccess,
    iconEmptyPlaceholder,
    iconLoginClose,
    iconLoginEmail,
    iconLoginGmail,
    iconLoginGoogle,
    iconLoginPwd,
    iconOpenEye,
    iconSplash,
    iconThumbPlaceholder,
    iconWithdrawRecord,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
