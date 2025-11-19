@interface CCDValidationGroupInfo
- (BOOL)validateSelfUsingValidationInfoWithDictionary:(id)a3 resultsDictionary:(id)a4;
- (CCDValidationGroupInfo)initWithName:(id)a3 validationInfo:(id)a4;
- (id)_mutableKeyInfoArrayFromValidationInfo:(id)a3;
@end

@implementation CCDValidationGroupInfo

- (CCDValidationGroupInfo)initWithName:(id)a3 validationInfo:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = CCDValidationGroupInfo;
  v7 = [(CCDValidationInfo *)&v12 initWithName:a3 validationInfo:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [(CCDValidationGroupInfo *)v7 _mutableKeyInfoArrayFromValidationInfo:v6];
    keyInfo = v8->_keyInfo;
    v8->_keyInfo = v9;
  }

  return v8;
}

- (id)_mutableKeyInfoArrayFromValidationInfo:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 objectForKeyedSubscript:@"keyInfo"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:v10];
        v12 = [[CCDValidationKeyInfo alloc] initWithName:v10 validationInfo:v11];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)validateSelfUsingValidationInfoWithDictionary:(id)a3 resultsDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CCDValidationInfo *)self name];
  v9 = [v6 objectForKeyedSubscript:v8];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [(CCDValidationGroupInfo *)self keyInfo];
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        if (([v15 validateSelfWithDictionary:v9 resultsDictionary:v7] & 1) == 0)
        {
          v17 = *(DEPLogObjects() + 8);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = v17;
            v19 = [v9 description];
            v20 = [v15 description];
            *buf = 138543618;
            v27 = v19;
            v28 = 2114;
            v29 = v20;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Validation error in the following part of cloud config dictionary: \n%{public}@\nValidation information: %{public}@", buf, 0x16u);
          }

          v16 = 0;
          goto LABEL_13;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_13:

  return v16;
}

@end