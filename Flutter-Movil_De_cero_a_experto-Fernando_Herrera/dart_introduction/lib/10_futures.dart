void futures() {
  print("Start of the program");
  httpGet("http://my-url.com").then((value) {
    print(value);
  }).catchError((onError){
    print("Error");
  });
  print("End of the program");
}

Future<dynamic> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 3), () {
    return "Reponse from the http request";
  });
}
