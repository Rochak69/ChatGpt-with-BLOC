String endPoint(String endPoint) => "https://api.openai.com/v1/$endPoint";

Map<String, String> headerBearerOption(String token) => {
      "Content-Type": "application/json",
      'Authorization': 'Bearer $token',
    };
