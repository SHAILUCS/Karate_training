function fn() {
	
	
	var env = karate.env; // get system property 'karate.env'
	karate.log('karate.env system property was:', env);
	
	
	if (!env) {
		env = 'DEV';
	}
	
	
	
	var config = {
		env: env,
		myVarName: 'someValue'
	}
	
	
	if (env == 'DEV') {
		config.globalVar1 = "DEV VALUE";
	} else if (env == 'QA') {
		config.globalVar1 = "QA VALUE";
	} else if (env == 'STG') {
		config.globalVar1 = "STG VALUE";
	}

	karate.configure('connectTimeout', 10000);
	karate.configure('readTimeout', 10000);

	return config;
}