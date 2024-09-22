import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';

class DisplayNews extends StatelessWidget {
  final ArticleModel articleModel;
  const DisplayNews({
    super.key,
    required this.articleModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            articleModel.picture != null && articleModel.picture!.isNotEmpty
                ? articleModel.picture!
                : 'https://i.pinimg.com/564x/c7/69/f0/c769f0ebda03f60ef1854bbd01f64814.jpg',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Image.network(
                'https://i.pinimg.com/564x/c7/69/f0/c769f0ebda03f60ef1854bbd01f64814.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              );
            },
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subtitle ?? '',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
