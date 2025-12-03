@interface CCDValidation
+ (BOOL)validateCloudConfiguration:(id)configuration withResultDictionary:(id)dictionary;
+ (id)cloudConfigurationValidationDictionary;
@end

@implementation CCDValidation

+ (id)cloudConfigurationValidationDictionary
{
  if (qword_100025AB8 != -1)
  {
    sub_10000F9C4();
  }

  v3 = qword_100025AB0;

  return v3;
}

+ (BOOL)validateCloudConfiguration:(id)configuration withResultDictionary:(id)dictionary
{
  configurationCopy = configuration;
  dictionaryCopy = dictionary;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v27 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v24 = "Cloud configuration is not a dictionary!";
      v25 = v27;
      v26 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_20;
    }

LABEL_24:
    v9 = 0;
    goto LABEL_25;
  }

  v8 = [self validateGroupDependenciesInCloudConfiguration:configurationCopy];
  v9 = v8;
  if (v8)
  {
    v30 = v8;
    v10 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Cloud configuration group dependencies are valid.", buf, 2u);
    }

    [self cloudConfigurationValidationDictionary];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = v34 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v31 + 1) + 8 * i);
          v17 = [CCDValidationGroupInfo alloc];
          v18 = [v11 objectForKeyedSubscript:v16];
          v19 = [(CCDValidationGroupInfo *)v17 initWithName:v16 validationInfo:v18];

          if (![(CCDValidationInfo *)v19 validateSelfWithDictionary:configurationCopy resultsDictionary:dictionaryCopy])
          {
            v28 = *(DEPLogObjects() + 8);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Cloud configuration is NOT valid.", buf, 2u);
            }

            goto LABEL_24;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v9 = v30;
  }

  v20 = [configurationCopy objectForKeyedSubscript:@"is-multi-user"];
  if (v20)
  {
    v21 = v20;
    v22 = [configurationCopy objectForKeyedSubscript:@"is-return-to-service"];

    if (v22)
    {
      v23 = *(DEPLogObjects() + 8);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v24 = "is-multi-user & is-return-to-service is mutual exclusive.";
        v25 = v23;
        v26 = OS_LOG_TYPE_ERROR;
LABEL_20:
        _os_log_impl(&_mh_execute_header, v25, v26, v24, buf, 2u);
        goto LABEL_24;
      }

      goto LABEL_24;
    }
  }

LABEL_25:

  return v9;
}

@end