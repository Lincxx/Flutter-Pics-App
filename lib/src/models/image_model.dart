class ImageModel {
  int id;
  String title;
  String url;

  ImageModel(this.id, this.title, this.url);

  //We have a Map with key that are Strings and values that are dynamic, so we really don't know what the values are
  ImageModel.fromJson(Map<String, dynamic> parsedJson){
    this.id = parsedJson["id"];
    this.title = parsedJson["title"];
    this.url = parsedJson["url"];
  }

  //shorten form for the name constructor
  // ImageModel.fromJson(Map<String, dynamic> parsedJson)
  //   : id = parsedJson["id"],
  //   title = parsedJson["title"],
  //   url = parsedJson["url"];
  
}