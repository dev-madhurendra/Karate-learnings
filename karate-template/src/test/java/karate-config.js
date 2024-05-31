function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);

  // Define a default configuration
  var config = {
    env: env,
    baseUrl: 'https://jsonplaceholder.typicode.com', // default baseUrl
    baseUserUrl: 'https://reqres.in/api',
    fileBaseUrl: 'https://filebin.net',
    apiToken: 'default-token', // default token
    graphqlBaseUrl: 'https://rickandmortyapi.com',
    githubUrl: 'https://www.github.com/login'
  };

  karate.log('Config:', config); // Debug log to ensure config is loaded
  return config;
}
