//with async and await

void asynAwait() async {
  print("Start of the program");

  try {
    final value = await httpGet("http://my-url.com");
    print(value);
  } catch (e) {
    print(e);
  }
  /* .then((value) {
    print(value);
  }).catchError((onError) {
    print("Error");
  });
   */

  print("End of the program");
}

Future<dynamic> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 3));
  return "we have a response";
  /* return Future.delayed(const Duration(seconds: 3), () {
    return "Reponse from the http request";
  }); */
}
