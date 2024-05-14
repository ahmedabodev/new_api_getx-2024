class HomeModel{
  String? status;
  int? totalResults;
  List<ArticlesModel>articles=[];
  HomeModel.forJson(Map<String,dynamic>json){
    status=json['status'];
    totalResults=json['totalResults'];
    json['articles'].forEach((e){
      articles.add(ArticlesModel.fromJson(e));
    });
  }
}
class ArticlesModel{
  String? author;
  String? title;
  String? description;
  String? url;
  String? publishedAt;
  String? urlToImage;
  String? content;
  SourceModel? source;
  ArticlesModel.fromJson(Map<String,dynamic>json){
    author=json['author']??'';
    title=json['title']??'';
    description=json['description']??'';
    url=json['url']??'';
    publishedAt=json['publishedAt']??'';
    urlToImage=json['urlToImage']??'';
    content=json['content']??'';
    content=json['content']??'';
    source=SourceModel.fromJson(json['source']);
  }
}
class SourceModel{
  String? id;
  String? name;
  SourceModel.fromJson(Map<String,dynamic>json){
    id=json['id']??'';
    name=json['name']??'';

  }
}