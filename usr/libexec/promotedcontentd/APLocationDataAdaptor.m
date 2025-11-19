@interface APLocationDataAdaptor
- (BOOL)_validateParameters:(id *)a3;
- (NSString)adminArea;
- (NSString)locality;
- (NSString)subAdminArea;
- (void)_run:(id)a3;
@end

@implementation APLocationDataAdaptor

- (void)_run:(id)a3
{
  v4 = a3;
  v5 = +[APLocationManager sharedInstance];
  v6 = [v5 locationInfo];
  location = self->_location;
  self->_location = v6;

  v8 = [(APLocationDataAdaptor *)self location];

  if (v8)
  {
    v9 = [(APDataAdaptor *)self parameters];
    v10 = [v9 objectForKeyedSubscript:@"country"];

    if (v10 && (-[APDataAdaptor parameters](self, "parameters"), v11 = objc_claimAutoreleasedReturnValue(), [v11 objectForKeyedSubscript:@"country"], v12 = objc_claimAutoreleasedReturnValue(), -[APLocationDataAdaptor location](self, "location"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "isoCountryCode"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v12, "isEqualToString:", v14), v14, v13, v12, v11, !v15) || (-[APDataAdaptor parameters](self, "parameters"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "objectForKeyedSubscript:", @"postalCode"), v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v17) && (-[APDataAdaptor parameters](self, "parameters"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "objectForKeyedSubscript:", @"postalCode"), v19 = objc_claimAutoreleasedReturnValue(), -[APLocationDataAdaptor location](self, "location"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "postalCode"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v19, "isEqualToString:", v21), v21, v20, v19, v18, !v22) || (-[APDataAdaptor parameters](self, "parameters"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "objectForKeyedSubscript:", @"adminArea"), v24 = objc_claimAutoreleasedReturnValue(), v24, v23, v24) && (-[APDataAdaptor parameters](self, "parameters"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "objectForKeyedSubscript:", @"adminArea"), v26 = objc_claimAutoreleasedReturnValue(), -[APLocationDataAdaptor adminArea](self, "adminArea"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v26, "isEqualToString:", v27), v27, v26, v25, !v28) || (-[APDataAdaptor parameters](self, "parameters"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "objectForKeyedSubscript:", @"locality"), v30 = objc_claimAutoreleasedReturnValue(), v30, v29, v30) && (-[APDataAdaptor parameters](self, "parameters"), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "objectForKeyedSubscript:", @"locality"), v32 = objc_claimAutoreleasedReturnValue(), -[APLocationDataAdaptor locality](self, "locality"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v32, "isEqualToString:", v33), v33, v32, v31, !v34))
    {
      v40 = 0;
    }

    else
    {
      v35 = [(APDataAdaptor *)self parameters];
      v36 = [v35 objectForKeyedSubscript:@"subAdminArea"];

      if (v36)
      {
        v37 = [(APDataAdaptor *)self parameters];
        v38 = [v37 objectForKeyedSubscript:@"subAdminArea"];
        v39 = [(APLocationDataAdaptor *)self subAdminArea];
        v40 = [v38 isEqualToString:v39];
      }

      else
      {
        v40 = 1;
      }
    }

    v45 = [NSNumber numberWithBool:v40];
    v4[2](v4);
  }

  else
  {
    v41 = [(APDataAdaptor *)self identifier];
    v42 = [NSString stringWithFormat:@"Adaptor '%@': Location Services disabled on this device", v41];

    v46 = NSLocalizedDescriptionKey;
    v47 = v42;
    v43 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v44 = [NSError errorWithDomain:@"com.apple.ap.dataadaptors" code:5208 userInfo:v43];

    (v4[2])(v4, &__kCFBooleanFalse, 0, v44);
  }
}

- (BOOL)_validateParameters:(id *)a3
{
  v17.receiver = self;
  v17.super_class = APLocationDataAdaptor;
  if (![(APDataAdaptor *)&v17 _validateParameters:?])
  {
    return 0;
  }

  v5 = [(APDataAdaptor *)self parameters];
  v6 = [v5 objectForKeyedSubscript:@"country"];
  if ([(APDataAdaptor *)self _checkClassType:v6 name:@"country" expectedClass:objc_opt_class() error:a3])
  {
    v7 = [(APDataAdaptor *)self parameters];
    v8 = [v7 objectForKeyedSubscript:@"adminArea"];
    if ([(APDataAdaptor *)self _checkClassType:v8 name:@"adminArea" expectedClass:objc_opt_class() error:a3])
    {
      v9 = [(APDataAdaptor *)self parameters];
      v10 = [v9 objectForKeyedSubscript:@"subAdminArea"];
      if ([(APDataAdaptor *)self _checkClassType:v10 name:@"subAdminArea" expectedClass:objc_opt_class() error:a3])
      {
        v16 = [(APDataAdaptor *)self parameters];
        v15 = [v16 objectForKeyedSubscript:@"postalCode"];
        if ([(APDataAdaptor *)self _checkClassType:v15 name:@"postalCode" expectedClass:objc_opt_class() error:a3])
        {
          v14 = [(APDataAdaptor *)self parameters];
          v11 = [v14 objectForKeyedSubscript:@"locality"];
          v12 = [(APDataAdaptor *)self _checkClassType:v11 name:@"locality" expectedClass:objc_opt_class() error:a3];
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
  v3 = [(APLocationDataAdaptor *)self location];
  v4 = [v3 isoCountryCode];
  v5 = [(APLocationDataAdaptor *)self location];
  v6 = [v5 administrativeArea];
  v7 = [NSString stringWithFormat:@"%@|%@", v4, v6];

  return v7;
}

- (NSString)subAdminArea
{
  v3 = [(APLocationDataAdaptor *)self location];
  v4 = [v3 isoCountryCode];
  v5 = [(APLocationDataAdaptor *)self location];
  v6 = [v5 administrativeArea];
  v7 = [(APLocationDataAdaptor *)self location];
  v8 = [v7 subAdministrativeArea];
  v9 = [NSString stringWithFormat:@"%@|%@|%@", v4, v6, v8];

  return v9;
}

- (NSString)locality
{
  v3 = [(APLocationDataAdaptor *)self location];
  v4 = [v3 isoCountryCode];
  v5 = [(APLocationDataAdaptor *)self location];
  v6 = [v5 administrativeArea];
  v7 = [(APLocationDataAdaptor *)self location];
  v8 = [v7 locality];
  v9 = [NSString stringWithFormat:@"%@|%@|%@", v4, v6, v8];

  return v9;
}

@end