part of yapily_sdk.api;

class HttpBasicAuth implements Authentication {

  String username;
  String password;

  HttpBasicAuth.setCredentials({this.username, this.password});

  HttpBasicAuth();

  @override
  void applyToParams(List<QueryParam> queryParams, Map<String, String> headerParams) {
    String str = (username == null ? "" : username) + ":" + (password == null ? "" : password);
    CONVERTER.Encoding utf = CONVERTER.Encoding.getByName('utf-8');
    headerParams["Authorization"] = "Basic " + CONVERTER.base64Encode(utf.encode(str));
  }

}