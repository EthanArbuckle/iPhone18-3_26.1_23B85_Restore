@interface CCDValidationKeyInfo
- (BOOL)_validateCertificateArrayInDictionary:(id)a3;
- (BOOL)_validateCredentialTokenInDictionary:(id)a3;
- (BOOL)_validateDictionaryInDictionary:(id)a3 resultsDictionary:(id)a4;
- (BOOL)_validateHttpsURLStringInDictionary:(id)a3;
- (BOOL)_validateNumberInDictionary:(id)a3;
- (BOOL)_validateStringArrayInDictionary:(id)a3;
- (BOOL)_validateStringInDictionary:(id)a3;
- (BOOL)_validateUnstructureddDictionaryInDictionary:(id)a3;
- (BOOL)validateSelfUsingValidationInfoWithDictionary:(id)a3 resultsDictionary:(id)a4;
- (CCDValidationKeyInfo)initWithName:(id)a3 validationInfo:(id)a4;
- (id)_certificateDataFromBase64EncodedString:(id)a3;
- (id)description;
@end

@implementation CCDValidationKeyInfo

- (CCDValidationKeyInfo)initWithName:(id)a3 validationInfo:(id)a4
{
  v6 = a4;
  v31.receiver = self;
  v31.super_class = CCDValidationKeyInfo;
  v7 = [(CCDValidationInfo *)&v31 initWithName:a3 validationInfo:v6];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"validationType"];
    v7->_validationType = [v8 integerValue];

    v9 = [v6 objectForKeyedSubscript:@"destinationKey"];
    destinationKey = v7->_destinationKey;
    v7->_destinationKey = v9;

    if (v7->_validationType == 8)
    {
      v11 = [v6 objectForKeyedSubscript:@"subKey"];

      if (v11)
      {
        v26 = v6;
        v12 = [v6 objectForKeyedSubscript:@"subKey"];
        v13 = objc_opt_new();
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v14 = v12;
        v15 = [v14 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v28;
          do
          {
            v18 = 0;
            do
            {
              if (*v28 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v27 + 1) + 8 * v18);
              v20 = [CCDValidationKeyInfo alloc];
              v21 = [v14 objectForKeyedSubscript:v19];
              v22 = [(CCDValidationKeyInfo *)v20 initWithName:v19 validationInfo:v21];
              [v13 addObject:v22];

              v18 = v18 + 1;
            }

            while (v16 != v18);
            v16 = [v14 countByEnumeratingWithState:&v27 objects:v32 count:16];
          }

          while (v16);
        }

        v23 = [v13 copy];
        subKeys = v7->_subKeys;
        v7->_subKeys = v23;

        v6 = v26;
      }
    }
  }

  return v7;
}

- (id)description
{
  v3 = [(CCDValidationInfo *)self name];
  if ([(CCDValidationInfo *)self isRequired])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = [(CCDValidationInfo *)self validationInfo];
  v6 = [v5 objectForKeyedSubscript:@"validationType"];
  v7 = [(CCDValidationKeyInfo *)self destinationKey];
  v8 = [NSString stringWithFormat:@"\n***********\nCloud Config Key Name: %@\nRequired: %@\nValidation Type: %@\nDestination Key: %@\n***********\n", v3, v4, v6, v7];

  return v8;
}

- (BOOL)validateSelfUsingValidationInfoWithDictionary:(id)a3 resultsDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CCDValidationKeyInfo *)self validationType];
  v9 = 0;
  LOBYTE(v10) = 0;
  if (v8 <= 4)
  {
    if (v8 <= 1)
    {
      if (v8)
      {
        if (v8 != 1)
        {
          goto LABEL_47;
        }

        v11 = [(CCDValidationKeyInfo *)self _validateCertificateArrayInDictionary:v6];
        goto LABEL_20;
      }

LABEL_16:
      v11 = [(CCDValidationKeyInfo *)self _validateBooleanInDictionary:v6];
      goto LABEL_20;
    }

    if (v8 != 2)
    {
      if (v8 != 3)
      {
        v11 = [(CCDValidationKeyInfo *)self _validateNumberInDictionary:v6];
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    v11 = [(CCDValidationKeyInfo *)self _validateHttpsURLStringInDictionary:v6];
LABEL_20:
    LODWORD(v10) = v11;
    v9 = 0;
    if (!v7)
    {
      goto LABEL_47;
    }

    goto LABEL_21;
  }

  if (v8 <= 6)
  {
    if (v8 == 5)
    {
      v11 = [(CCDValidationKeyInfo *)self _validateStringInDictionary:v6];
    }

    else
    {
      v11 = [(CCDValidationKeyInfo *)self _validateStringArrayInDictionary:v6];
    }

    goto LABEL_20;
  }

  if (v8 == 7)
  {
    v11 = [(CCDValidationKeyInfo *)self _validateCredentialTokenInDictionary:v6];
    goto LABEL_20;
  }

  if (v8 != 8)
  {
    if (v8 != 9)
    {
      goto LABEL_47;
    }

    v11 = [(CCDValidationKeyInfo *)self _validateUnstructureddDictionaryInDictionary:v6];
    goto LABEL_20;
  }

  v9 = objc_opt_new();
  LODWORD(v10) = [(CCDValidationKeyInfo *)self _validateDictionaryInDictionary:v6 resultsDictionary:v9];
  if (!v7)
  {
    goto LABEL_47;
  }

LABEL_21:
  if (v10)
  {
    v12 = [(CCDValidationInfo *)self name];
    v10 = [v6 objectForKeyedSubscript:v12];

    if (!v10)
    {
LABEL_46:

      LOBYTE(v10) = 1;
      goto LABEL_47;
    }

    v13 = [(CCDValidationKeyInfo *)self validationType];
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v17 = [(CCDValidationKeyInfo *)self destinationKey];
        v19 = &__kCFBooleanTrue;
        v18 = v7;
        goto LABEL_45;
      }

      if (v13 == 8)
      {
        v14 = [v9 copy];
        goto LABEL_30;
      }
    }

    else
    {
      if (v13 == 1)
      {
        v30 = v10;
        v20 = v10;
        v21 = objc_opt_new();
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v22 = v20;
        v23 = [v22 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v32;
          do
          {
            for (i = 0; i != v24; i = i + 1)
            {
              if (*v32 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = [(CCDValidationKeyInfo *)self _certificateDataFromBase64EncodedString:*(*(&v31 + 1) + 8 * i)];
              if (v27)
              {
                [v21 addObject:v27];
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v31 objects:v35 count:16];
          }

          while (v24);
        }

        v28 = [(CCDValidationKeyInfo *)self destinationKey];
        [v7 setObject:v21 forKeyedSubscript:v28];

        v10 = v30;
        goto LABEL_46;
      }

      if (v13 == 3)
      {
        v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v10 BOOLValue] ^ 1);
LABEL_30:
        v15 = v14;
        v16 = [(CCDValidationKeyInfo *)self destinationKey];
        [v7 setObject:v15 forKeyedSubscript:v16];

        goto LABEL_46;
      }
    }

    v17 = [(CCDValidationKeyInfo *)self destinationKey];
    v18 = v7;
    v19 = v10;
LABEL_45:
    [v18 setObject:v19 forKeyedSubscript:v17];

    goto LABEL_46;
  }

LABEL_47:

  return v10;
}

- (id)_certificateDataFromBase64EncodedString:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [CCDCertificateSupport decodeCertificateFromBase64String:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_validateCertificateArrayInDictionary:(id)a3
{
  v4 = a3;
  v5 = [(CCDValidationInfo *)self name];
  v6 = [v4 objectForKeyedSubscript:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [(CCDValidationKeyInfo *)self _certificateDataFromBase64EncodedString:*(*(&v15 + 1) + 8 * i), v15];

          if (!v12)
          {
            v13 = 0;
            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_13:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_validateHttpsURLStringInDictionary:(id)a3
{
  v4 = a3;
  if ([(CCDValidationKeyInfo *)self _validateStringInDictionary:v4])
  {
    v5 = [(CCDValidationInfo *)self name];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (v6)
    {
      v7 = [NSURL URLWithString:v6];
      v8 = [v7 scheme];
      v9 = [@"https" isEqualToString:v8];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_validateNumberInDictionary:(id)a3
{
  v4 = a3;
  v5 = [(CCDValidationInfo *)self name];
  v6 = [v4 objectForKeyedSubscript:v5];

  objc_opt_class();
  LOBYTE(v4) = objc_opt_isKindOfClass();

  return v4 & 1;
}

- (BOOL)_validateStringInDictionary:(id)a3
{
  v4 = a3;
  v5 = [(CCDValidationInfo *)self name];
  v6 = [v4 objectForKeyedSubscript:v5];

  objc_opt_class();
  LOBYTE(v4) = objc_opt_isKindOfClass();

  return v4 & 1;
}

- (BOOL)_validateStringArrayInDictionary:(id)a3
{
  v4 = a3;
  v5 = [(CCDValidationInfo *)self name];
  v6 = [v4 objectForKeyedSubscript:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v13 = 0;
            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_13:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_validateCredentialTokenInDictionary:(id)a3
{
  v4 = a3;
  v5 = [(CCDValidationInfo *)self name];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [CCDKeychain dataFromString:v6];
  v14 = 0;
  LOWORD(v13) = 0;
  [CCDKeychain setData:v7 forService:@"DEP-FastTime-Service" account:@"DEP-FastTime-Account" label:0 description:0 access:kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly group:0 useSystemKeychain:v13 sysBound:&v14 outError:?];
  v8 = v14;

  if (v8)
  {
    v9 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      v11 = [v8 description];
      *buf = 138543362;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error trying to store credentials in keychain!! \n Error:  %{public}@ \n Failing CloudConfig Validation...", buf, 0xCu);
    }
  }

  return v8 == 0;
}

- (BOOL)_validateDictionaryInDictionary:(id)a3 resultsDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CCDValidationInfo *)self name];
  v9 = [v6 objectForKeyedSubscript:v8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = [v9 allKeys];
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * v14);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
          if (v12)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v10 = [(CCDValidationKeyInfo *)self subKeys];
      v16 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (!v16)
      {
        v20 = 1;
        goto LABEL_21;
      }

      v17 = v16;
      v18 = *v23;
LABEL_12:
      v19 = 0;
      while (1)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v10);
        }

        if (![*(*(&v22 + 1) + 8 * v19) validateSelfWithDictionary:v9 resultsDictionary:v7])
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
          v20 = 1;
          if (v17)
          {
            goto LABEL_12;
          }

          goto LABEL_21;
        }
      }
    }

    v20 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v20 = 0;
LABEL_22:

  return v20;
}

- (BOOL)_validateUnstructureddDictionaryInDictionary:(id)a3
{
  v4 = a3;
  v5 = [(CCDValidationInfo *)self name];
  v6 = [v4 objectForKeyedSubscript:v5];

  objc_opt_class();
  LOBYTE(v5) = objc_opt_isKindOfClass();

  return v5 & 1;
}

@end