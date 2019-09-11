import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageZoomView extends StatefulWidget {
  ImageZoomView({Key key}) : super(key: key);

  _ImageZoomViewState createState() => _ImageZoomViewState();
}

class _ImageZoomViewState extends State<ImageZoomView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HeroPhotoViewWrapper(
                                imageProvider: NetworkImage(
                                    "https://picsum.photos/id/1084/536/354?grayscale"),
                              ),
                        ));
                  },
                  child: Container(
                      child: Hero(
                    tag: "someTag",
                    child: Image.network(
                        "https://picsum.photos/id/1084/536/354?grayscale",
                        width: 150.0),
                  )))),
          RaisedButton(
            onPressed: () {
              showDialog(
                context: context,
                barrierDismissible: true,
                builder: (context) => PhotoView(
                      imageProvider: NetworkImage(
                          "https://picsum.photos/id/1084/536/354?grayscale"),
                    ),
              );
            },
            child: Text("Get Photo "),
          )
        ],
      ),
    );
  }
}

class HeroPhotoViewWrapper extends StatelessWidget {
  const HeroPhotoViewWrapper(
      {this.imageProvider,
      this.loadingChild,
      this.backgroundDecoration,
      this.minScale,
      this.maxScale});

  final ImageProvider imageProvider;
  final Widget loadingChild;
  final Decoration backgroundDecoration;
  final dynamic minScale;
  final dynamic maxScale;

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height,
        ),
        child: PhotoView(
          imageProvider: imageProvider,
          loadingChild: loadingChild,
          backgroundDecoration: backgroundDecoration,
          minScale: minScale,
          maxScale: maxScale,
          heroTag: "someTag",
        ));
  }
}
