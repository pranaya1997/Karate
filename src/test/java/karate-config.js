function fn() {
	
	var config = {
		baseUrl : 'https://gorest.co.in/public/v2/users',
		token : 'f32162f833c40154c6a26e8eb620d54d48d42da0e4f3f36d77852d5203aedd08'
	};
	
	var env = karate.env
	karate.log("The environment is :", env)
	
	if(!env){
		env='dev' // default environment
	}
	
	karate.configure('connectTimeout',5000)
	karate.configure('readTimeout',5000)
	
	return config;
}