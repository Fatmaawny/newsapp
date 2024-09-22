import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/widgets/DisplayNews.dart';

class Articles_view extends StatelessWidget {
  final List<ArticleModel> articles;
  const Articles_view({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: articles.length,
                (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15, top: 15),
                    child: DisplayNews(articleModel: articles[index]),
                  );
                },

              ),
            );
          }
}

