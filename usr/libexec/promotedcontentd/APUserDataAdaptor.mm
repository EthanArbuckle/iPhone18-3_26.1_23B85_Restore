@interface APUserDataAdaptor
- (BOOL)_validateParameters:(id *)parameters;
- (id)ageGenderData;
- (void)_run:(id)_run;
@end

@implementation APUserDataAdaptor

- (void)_run:(id)_run
{
  _runCopy = _run;
  v5 = +[APIDAccountProvider privateUserAccount];
  parameters = [(APDataAdaptor *)self parameters];
  v7 = [parameters objectForKeyedSubscript:@"storefront"];

  if (v7 && (-[APDataAdaptor parameters](self, "parameters"), v8 = objc_claimAutoreleasedReturnValue(), [v8 objectForKeyedSubscript:@"storefront"], v9 = objc_claimAutoreleasedReturnValue(), +[APIDAccountProvider userAccount](APIDAccountProvider, "userAccount"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "storefront"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v9, "isEqualToString:", v11), v11, v10, v9, v8, !v12) || (-[APDataAdaptor parameters](self, "parameters"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "objectForKeyedSubscript:", @"iTunesLoggedIn"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14) && !objc_msgSend(v5, "isiTunesLoggedIn") || (-[APDataAdaptor parameters](self, "parameters"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "objectForKeyedSubscript:", @"iCloudLoggedIn"), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16) && !objc_msgSend(v5, "isiCloudLoggedIn") || (-[APDataAdaptor parameters](self, "parameters"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "objectForKeyedSubscript:", @"isChild"), v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v18) && !objc_msgSend(v5, "isChild") || (-[APDataAdaptor parameters](self, "parameters"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "objectForKeyedSubscript:", @"isAdolescent"), v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v20) && !objc_msgSend(v5, "isAdolescent") || (-[APDataAdaptor parameters](self, "parameters"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "objectForKeyedSubscript:", @"isAdult"), v22 = objc_claimAutoreleasedReturnValue(), v22, v21, v22) && !objc_msgSend(v5, "isAdult"))
  {
    v39 = 0;
  }

  else
  {
    v64 = v5;
    parameters2 = [(APDataAdaptor *)self parameters];
    v24 = [parameters2 objectForKeyedSubscript:@"minAge"];

    if (v24 && (-[APDataAdaptor parameters](self, "parameters"), v25 = objc_claimAutoreleasedReturnValue(), [v25 objectForKeyedSubscript:@"minAge"], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "intValue"), -[APUserDataAdaptor ageGenderData](self, "ageGenderData"), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "objectForKeyedSubscript:", @"age"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "intValue"), v29, v28, v26, v25, v27 > v30) || (-[APDataAdaptor parameters](self, "parameters"), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "objectForKeyedSubscript:", @"maxAge"), v32 = objc_claimAutoreleasedReturnValue(), v32, v31, v32) && (-[APDataAdaptor parameters](self, "parameters"), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "objectForKeyedSubscript:", @"maxAge"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "intValue"), -[APUserDataAdaptor ageGenderData](self, "ageGenderData"), v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v36, "objectForKeyedSubscript:", @"age"), v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "intValue"), v37, v36, v34, v33, v35 < v38))
    {
      v39 = 0;
      v5 = v64;
    }

    else
    {
      parameters3 = [(APDataAdaptor *)self parameters];
      v42 = [parameters3 objectForKeyedSubscript:@"ageBand"];

      v5 = v64;
      if (v42)
      {
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        parameters4 = [(APDataAdaptor *)self parameters];
        v44 = [parameters4 objectForKeyedSubscript:@"ageBand"];

        obj = v44;
        v45 = [v44 countByEnumeratingWithState:&v65 objects:v69 count:16];
        if (v45)
        {
          v46 = v45;
          v63 = *v66;
LABEL_23:
          v47 = 0;
          while (1)
          {
            if (*v66 != v63)
            {
              objc_enumerationMutation(obj);
            }

            v48 = [qword_1004DF5D0 objectForKeyedSubscript:*(*(&v65 + 1) + 8 * v47)];
            intValue = [v48 intValue];
            ageGenderData = [(APUserDataAdaptor *)self ageGenderData];
            v51 = [ageGenderData objectForKeyedSubscript:@"ageGroup"];
            intValue2 = [v51 intValue];

            v5 = v64;
            if (intValue == intValue2)
            {
              break;
            }

            if (v46 == ++v47)
            {
              v46 = [obj countByEnumeratingWithState:&v65 objects:v69 count:16];
              if (v46)
              {
                goto LABEL_23;
              }

              v39 = 0;
              ageGenderData2 = obj;
              goto LABEL_33;
            }
          }
        }
      }

      parameters5 = [(APDataAdaptor *)self parameters];
      v55 = [parameters5 objectForKeyedSubscript:@"gender"];

      if (v55)
      {
        ageGenderData2 = [(APUserDataAdaptor *)self ageGenderData];
        v56 = [ageGenderData2 objectForKeyedSubscript:@"gender"];
        intValue3 = [v56 intValue];
        v58 = qword_1004DF5D8;
        parameters6 = [(APDataAdaptor *)self parameters];
        v60 = [parameters6 objectForKeyedSubscript:@"gender"];
        v61 = [v58 objectForKeyedSubscript:v60];
        v39 = intValue3 == [v61 intValue];

LABEL_33:
      }

      else
      {
        v39 = 1;
      }
    }
  }

  v40 = [NSNumber numberWithBool:v39];
  (*(_runCopy + 2))(_runCopy, v40, 0, 0);
}

- (BOOL)_validateParameters:(id *)parameters
{
  v61.receiver = self;
  v61.super_class = APUserDataAdaptor;
  if (![(APDataAdaptor *)&v61 _validateParameters:?])
  {
    return 0;
  }

  parameters = [(APDataAdaptor *)self parameters];
  v6 = [parameters objectForKeyedSubscript:@"storefront"];
  if (![(APDataAdaptor *)self _checkClassType:v6 name:@"storefront" expectedClass:objc_opt_class() error:parameters])
  {
    goto LABEL_15;
  }

  parameters2 = [(APDataAdaptor *)self parameters];
  v8 = [parameters2 objectForKeyedSubscript:@"iTunesLoggedIn"];
  if (![(APDataAdaptor *)self _checkClassType:v8 name:@"iTunesLoggedIn" expectedClass:objc_opt_class() error:parameters])
  {
LABEL_14:

    goto LABEL_15;
  }

  parameters3 = [(APDataAdaptor *)self parameters];
  v10 = [parameters3 objectForKeyedSubscript:@"iCloudLoggedIn"];
  if (![(APDataAdaptor *)self _checkClassType:v10 name:@"iCloudLoggedIn" expectedClass:objc_opt_class() error:parameters])
  {

    goto LABEL_14;
  }

  v55 = v10;
  v56 = parameters3;
  parameters4 = [(APDataAdaptor *)self parameters];
  v12 = [parameters4 objectForKeyedSubscript:@"isChild"];
  if (![(APDataAdaptor *)self _checkClassType:v12 name:@"isChild" expectedClass:objc_opt_class() error:parameters])
  {

LABEL_13:
    goto LABEL_14;
  }

  v54 = parameters4;
  parameters5 = [(APDataAdaptor *)self parameters];
  v14 = [parameters5 objectForKeyedSubscript:@"isAdolescent"];
  if (![(APDataAdaptor *)self _checkClassType:v14 name:@"isAdolescent" expectedClass:objc_opt_class() error:parameters])
  {

    goto LABEL_13;
  }

  v52 = v14;
  v53 = parameters5;
  parameters6 = [(APDataAdaptor *)self parameters];
  v50 = [parameters6 objectForKeyedSubscript:@"isAdult"];
  if ([(APDataAdaptor *)self _checkClassType:v50 name:@"isAdult" expectedClass:objc_opt_class() error:parameters])
  {
    parameters7 = [(APDataAdaptor *)self parameters];
    v47 = [parameters7 objectForKeyedSubscript:@"minAge"];
    if ([(APDataAdaptor *)self _checkClassType:v47 name:@"minAge" expectedClass:objc_opt_class() error:parameters])
    {
      parameters8 = [(APDataAdaptor *)self parameters];
      v16 = [parameters8 objectForKeyedSubscript:@"maxAge"];
      v49 = [(APDataAdaptor *)self _checkClassType:v16 name:@"maxAge" expectedClass:objc_opt_class() error:parameters];
    }

    else
    {
      v49 = 0;
    }

    v19 = v54;
    v20 = v52;
    parameters5 = v53;
  }

  else
  {
    v49 = 0;
    v19 = v54;
    v20 = v52;
  }

  if (!v49)
  {
    return 0;
  }

  parameters9 = [(APDataAdaptor *)self parameters];
  v22 = [parameters9 objectForKeyedSubscript:@"ageBand"];

  if (!v22)
  {
    goto LABEL_36;
  }

  if (qword_1004DF5E0 != -1)
  {
    sub_1003938A0();
  }

  parameters10 = [(APDataAdaptor *)self parameters];
  v24 = [parameters10 objectForKeyedSubscript:@"ageBand"];
  v25 = [(APDataAdaptor *)self _checkClassType:v24 name:@"ageBand" expectedClass:objc_opt_class() error:parameters];

  if (!v25)
  {
    return 0;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  parameters11 = [(APDataAdaptor *)self parameters];
  parameters = [parameters11 objectForKeyedSubscript:@"ageBand"];

  v27 = [parameters countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v58;
LABEL_29:
    v30 = 0;
    while (1)
    {
      if (*v58 != v29)
      {
        objc_enumerationMutation(parameters);
      }

      v31 = [qword_1004DF5D0 objectForKeyedSubscript:*(*(&v57 + 1) + 8 * v30)];

      if (!v31)
      {
        break;
      }

      if (v28 == ++v30)
      {
        v28 = [parameters countByEnumeratingWithState:&v57 objects:v66 count:16];
        if (v28)
        {
          goto LABEL_29;
        }

        goto LABEL_35;
      }
    }

    if (!parameters)
    {
      goto LABEL_16;
    }

    parameters12 = [(APDataAdaptor *)self parameters];
    v41 = [parameters12 objectForKeyedSubscript:@"ageBand"];
    allKeys = [qword_1004DF5D0 allKeys];
    v6 = [NSString stringWithFormat:@"Invalid ageBand argument '%@'. Must be one of %@", v41, allKeys];

    v64 = NSLocalizedDescriptionKey;
    v65 = v6;
    v43 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    *parameters = [NSError errorWithDomain:@"com.apple.ap.dataadaptors" code:5201 userInfo:v43];

    goto LABEL_15;
  }

LABEL_35:

LABEL_36:
  parameters13 = [(APDataAdaptor *)self parameters];
  v33 = [parameters13 objectForKeyedSubscript:@"gender"];

  if (!v33)
  {
    return 1;
  }

  if (qword_1004DF5E8 != -1)
  {
    sub_1003938C8();
  }

  parameters14 = [(APDataAdaptor *)self parameters];
  v35 = [parameters14 objectForKeyedSubscript:@"gender"];
  if ([(APDataAdaptor *)self _checkClassType:v35 name:@"gender" expectedClass:objc_opt_class() error:parameters])
  {
    v36 = qword_1004DF5D8;
    parameters15 = [(APDataAdaptor *)self parameters];
    v38 = [parameters15 objectForKeyedSubscript:@"gender"];
    v39 = [v36 objectForKeyedSubscript:v38];
    v17 = v39 != 0;
  }

  else
  {
    v17 = 0;
  }

  if (parameters && !v17)
  {
    parameters16 = [(APDataAdaptor *)self parameters];
    v45 = [parameters16 objectForKeyedSubscript:@"gender"];
    allKeys2 = [qword_1004DF5D8 allKeys];
    parameters = [NSString stringWithFormat:@"Invalid gender argument '%@'. Must be one of %@", v45, allKeys2];

    v62 = NSLocalizedDescriptionKey;
    v63 = parameters;
    v6 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    *parameters = [NSError errorWithDomain:@"com.apple.ap.dataadaptors" code:5201 userInfo:v6];
LABEL_15:

LABEL_16:
    return 0;
  }

  return v17;
}

- (id)ageGenderData
{
  if (qword_1004DF5F8 != -1)
  {
    sub_1003938F0();
  }

  v3 = qword_1004DF5F0;

  return v3;
}

@end