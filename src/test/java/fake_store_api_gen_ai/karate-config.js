function fn() {

  var config = {
    baseUrl: 'https://fakestoreapi.com',
    authToken: ''
  };

  var loginResponse = karate.callSingle('classpath:fake_store_api/auth.feature', config);
  config.authToken = loginResponse.token;

  return config;
}