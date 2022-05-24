import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import '../models/article_model.dart';
import 'package:ted_gcc_mobile_app/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ArticleDetail extends StatelessWidget {
  final ArticleModel articleModel;
  const ArticleDetail(this.articleModel);

  List<Widget> _renderFacts(ArticleModel articleModel) {
    var x = <Widget>[];
    for (int i = 0; i < articleModel.description.length; i++) {
      x.add(Container(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
          child: Text(articleModel.description[i].title,
              textAlign: TextAlign.left,
              style: (SchedulerBinding.instance!.window.platformBrightness == Brightness.light ? Styles.header : DarkStyles.header)
        )
      ));
      x.add(Container(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
        child: Text(articleModel.description[i].text,
        style: (SchedulerBinding.instance!.window.platformBrightness == Brightness.light ? Styles.textDefault : DarkStyles.textDefault)),
      ));
    }
    return x;
  }

  Widget _bannerImage(String url, double height) {
    return Container(
        constraints: BoxConstraints.tightFor(height: height),
        child: CachedNetworkImage(
          imageUrl: url,
          placeholder: (context, url) => const Center(child: SizedBox(
            width: 60,
            height: 60,
            child: CircularProgressIndicator()
          )),
          errorWidget: (context, url, error) => const Icon(Icons.error),
          fit: BoxFit.fitWidth
      )
    );
  }

  List<Widget> _renderBody(BuildContext context, ArticleModel articleModel) {
    var x = <Widget>[];
    x.add(_bannerImage(articleModel.url, 200.0));
    x.addAll(_renderFacts(articleModel));
    return x;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(articleModel.heading, style: (SchedulerBinding.instance!.window.platformBrightness == Brightness.light ? Styles.appbarStyle : DarkStyles.appbarStyle)),
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: _renderBody(context, articleModel))
          )
        );
  }
}
