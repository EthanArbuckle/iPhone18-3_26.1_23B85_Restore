@interface APLocationDataAdaptor
- (BOOL)_validateParameters:(id *)parameters;
- (NSString)adminArea;
- (NSString)locality;
- (NSString)subAdminArea;
- (void)_run:(id)_run;
@end

@implementation APLocationDataAdaptor

- (void)_run:(id)_run
{
  _runCopy = _run;
  v5 = +[APLocationManager sharedInstance];
  locationInfo = [v5 locationInfo];
  location = self->_location;
  self->_location = locationInfo;

  location = [(APLocationDataAdaptor *)self location];

  if (location)
  {
    parameters = [(APDataAdaptor *)self parameters];
    v10 = [parameters objectForKeyedSubscript:@"country"];

    if (v10 && (-[APDataAdaptor parameters](self, "parameters"), v11 = objc_claimAutoreleasedReturnValue(), [v11 objectForKeyedSubscript:@"country"], v12 = objc_claimAutoreleasedReturnValue(), -[APLocationDataAdaptor location](self, "location"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "isoCountryCode"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v12, "isEqualToString:", v14), v14, v13, v12, v11, !v15) || (-[APDataAdaptor parameters](self, "parameters"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "objectForKeyedSubscript:", @"postalCode"), v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v17) && (-[APDataAdaptor parameters](self, "parameters"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "objectForKeyedSubscript:", @"postalCode"), v19 = objc_claimAutoreleasedReturnValue(), -[APLocationDataAdaptor location](self, "location"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "postalCode"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v19, "isEqualToString:", v21), v21, v20, v19, v18, !v22) || (-[APDataAdaptor parameters](self, "parameters"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "objectForKeyedSubscript:", @"adminArea"), v24 = objc_claimAutoreleasedReturnValue(), v24, v23, v24) && (-[APDataAdaptor parameters](self, "parameters"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "objectForKeyedSubscript:", @"adminArea"), v26 = objc_claimAutoreleasedReturnValue(), -[APLocationDataAdaptor adminArea](self, "adminArea"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v26, "isEqualToString:", v27), v27, v26, v25, !v28) || (-[APDataAdaptor parameters](self, "parameters"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "objectForKeyedSubscript:", @"locality"), v30 = objc_claimAutoreleasedReturnValue(), v30, v29, v30) && (-[APDataAdaptor parameters](self, "parameters"), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "objectForKeyedSubscript:", @"locality"), v32 = objc_claimAutoreleasedReturnValue(), -[APLocationDataAdaptor locality](self, "locality"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v32, "isEqualToString:", v33), v33, v32, v31, !v34))
    {
      v40 = 0;
    }

    else
    {
      parameters2 = [(APDataAdaptor *)self parameters];
      v36 = [parameters2 objectForKeyedSubscript:@"subAdminArea"];

      if (v36)
      {
        parameters3 = [(APDataAdaptor *)self parameters];
        v38 = [parameters3 objectForKeyedSubscript:@"subAdminArea"];
        subAdminArea = [(APLocationDataAdaptor *)self subAdminArea];
        v40 = [v38 isEqualToString:subAdminArea];
      }

      else
      {
        v40 = 1;
      }
    }

    v45 = [NSNumber numberWithBool:v40];
    _runCopy[2](_runCopy);
  }

  else
  {
    identifier = [(APDataAdaptor *)self identifier];
    v42 = [NSString stringWithFormat:@"Adaptor '%@': Location Services disabled on this device", identifier];

    v46 = NSLocalizedDescriptionKey;
    v47 = v42;
    v43 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v44 = [NSError errorWithDomain:@"com.apple.ap.dataadaptors" code:5208 userInfo:v43];

    (_runCopy[2])(_runCopy, &__kCFBooleanFalse, 0, v44);
  }
}

- (BOOL)_validateParameters:(id *)parameters
{
  v17.receiver = self;
  v17.super_class = APLocationDataAdaptor;
  if (![(APDataAdaptor *)&v17 _validateParameters:?])
  {
    return 0;
  }

  parameters = [(APDataAdaptor *)self parameters];
  v6 = [parameters objectForKeyedSubscript:@"country"];
  if ([(APDataAdaptor *)self _checkClassType:v6 name:@"country" expectedClass:objc_opt_class() error:parameters])
  {
    parameters2 = [(APDataAdaptor *)self parameters];
    v8 = [parameters2 objectForKeyedSubscript:@"adminArea"];
    if ([(APDataAdaptor *)self _checkClassType:v8 name:@"adminArea" expectedClass:objc_opt_class() error:parameters])
    {
      parameters3 = [(APDataAdaptor *)self parameters];
      v10 = [parameters3 objectForKeyedSubscript:@"subAdminArea"];
      if ([(APDataAdaptor *)self _checkClassType:v10 name:@"subAdminArea" expectedClass:objc_opt_class() error:parameters])
      {
        parameters4 = [(APDataAdaptor *)self parameters];
        v15 = [parameters4 objectForKeyedSubscript:@"postalCode"];
        if ([(APDataAdaptor *)self _checkClassType:v15 name:@"postalCode" expectedClass:objc_opt_class() error:parameters])
        {
          parameters5 = [(APDataAdaptor *)self parameters];
          v11 = [parameters5 objectForKeyedSubscript:@"locality"];
          v12 = [(APDataAdaptor *)self _checkClassType:v11 name:@"locality" expectedClass:objc_opt_class() error:parameters];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NSString)adminArea
{
  location = [(APLocationDataAdaptor *)self location];
  isoCountryCode = [location isoCountryCode];
  location2 = [(APLocationDataAdaptor *)self location];
  administrativeArea = [location2 administrativeArea];
  v7 = [NSString stringWithFormat:@"%@|%@", isoCountryCode, administrativeArea];

  return v7;
}

- (NSString)subAdminArea
{
  location = [(APLocationDataAdaptor *)self location];
  isoCountryCode = [location isoCountryCode];
  location2 = [(APLocationDataAdaptor *)self location];
  administrativeArea = [location2 administrativeArea];
  location3 = [(APLocationDataAdaptor *)self location];
  subAdministrativeArea = [location3 subAdministrativeArea];
  v9 = [NSString stringWithFormat:@"%@|%@|%@", isoCountryCode, administrativeArea, subAdministrativeArea];

  return v9;
}

- (NSString)locality
{
  location = [(APLocationDataAdaptor *)self location];
  isoCountryCode = [location isoCountryCode];
  location2 = [(APLocationDataAdaptor *)self location];
  administrativeArea = [location2 administrativeArea];
  location3 = [(APLocationDataAdaptor *)self location];
  locality = [location3 locality];
  v9 = [NSString stringWithFormat:@"%@|%@|%@", isoCountryCode, administrativeArea, locality];

  return v9;
}

@end