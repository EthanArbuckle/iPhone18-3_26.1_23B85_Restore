@interface TransparencyIDSConfigBagSupport
+ (id)parseConfigInput:(id)input forVersion:(id)version error:(id *)error;
@end

@implementation TransparencyIDSConfigBagSupport

+ (id)parseConfigInput:(id)input forVersion:(id)version error:(id *)error
{
  inputCopy = input;
  versionCopy = version;
  if ([inputCopy containsString:@"{"] && (objc_msgSend(inputCopy, "containsString:", @"}") & 1) != 0)
  {
    errorCopy = error;
    v9 = +[NSMutableDictionary dictionary];
    v29 = [inputCopy stringByReplacingOccurrencesOfString:@"{" withString:&stru_100096EB8];
    v28 = [v29 stringByReplacingOccurrencesOfString:@"}" withString:&stru_100096EB8];
    [v28 componentsSeparatedByString:{@", "}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = v33 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      v26 = versionCopy;
LABEL_5:
      v14 = 0;
      while (1)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v30 + 1) + 8 * v14);
        if (([v15 containsString:{@":", v26}] & 1) == 0)
        {
          break;
        }

        v16 = [v15 componentsSeparatedByString:@":"];
        if ([v16 count] != 2)
        {
          *errorCopy = [TransparencyError errorWithDomain:kTransparencyErrorEligibility code:-401 description:@"Config bag key value pair invalid format"];

          v22 = 0;
          goto LABEL_18;
        }

        v17 = [v16 objectAtIndexedSubscript:1];
        v18 = [v16 objectAtIndexedSubscript:0];
        [v9 setValue:v17 forKey:v18];

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
          versionCopy = v26;
          if (v12)
          {
            goto LABEL_5;
          }

          goto LABEL_12;
        }
      }

      [TransparencyError errorWithDomain:kTransparencyErrorEligibility code:-401 description:@"Config bag value missing colon"];
      *errorCopy = v22 = 0;
LABEL_18:
      v19 = v10;
      versionCopy = v26;
      v24 = v29;
      goto LABEL_23;
    }

LABEL_12:

    v19 = objc_alloc_init(NSNumberFormatter);
    [v19 setNumberStyle:1];
    v20 = [v9 objectForKey:versionCopy];
    if (v20)
    {
      v21 = [v19 numberFromString:v20];
      v22 = v21;
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        *errorCopy = [TransparencyError errorWithDomain:kTransparencyErrorEligibility code:-401 description:@"value is not a number"];
      }
    }

    else
    {
      [TransparencyError errorWithDomain:kTransparencyErrorEligibility code:-401 description:@"IDS version is not present in the config values"];
      *errorCopy = v22 = 0;
    }

    v24 = v29;

LABEL_23:
  }

  else
  {
    [TransparencyError errorWithDomain:kTransparencyErrorEligibility code:-401 description:@"Config bag value missing brackets"];
    *error = v22 = 0;
  }

  return v22;
}

@end