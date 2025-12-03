@interface CCDValidationKeyInfo
- (BOOL)_validateCertificateArrayInDictionary:(id)dictionary;
- (BOOL)_validateCredentialTokenInDictionary:(id)dictionary;
- (BOOL)_validateDictionaryInDictionary:(id)dictionary resultsDictionary:(id)resultsDictionary;
- (BOOL)_validateHttpsURLStringInDictionary:(id)dictionary;
- (BOOL)_validateNumberInDictionary:(id)dictionary;
- (BOOL)_validateStringArrayInDictionary:(id)dictionary;
- (BOOL)_validateStringInDictionary:(id)dictionary;
- (BOOL)_validateUnstructureddDictionaryInDictionary:(id)dictionary;
- (BOOL)validateSelfUsingValidationInfoWithDictionary:(id)dictionary resultsDictionary:(id)resultsDictionary;
- (CCDValidationKeyInfo)initWithName:(id)name validationInfo:(id)info;
- (id)_certificateDataFromBase64EncodedString:(id)string;
- (id)description;
@end

@implementation CCDValidationKeyInfo

- (CCDValidationKeyInfo)initWithName:(id)name validationInfo:(id)info
{
  infoCopy = info;
  v31.receiver = self;
  v31.super_class = CCDValidationKeyInfo;
  v7 = [(CCDValidationInfo *)&v31 initWithName:name validationInfo:infoCopy];
  if (v7)
  {
    v8 = [infoCopy objectForKeyedSubscript:@"validationType"];
    v7->_validationType = [v8 integerValue];

    v9 = [infoCopy objectForKeyedSubscript:@"destinationKey"];
    destinationKey = v7->_destinationKey;
    v7->_destinationKey = v9;

    if (v7->_validationType == 8)
    {
      v11 = [infoCopy objectForKeyedSubscript:@"subKey"];

      if (v11)
      {
        v26 = infoCopy;
        v12 = [infoCopy objectForKeyedSubscript:@"subKey"];
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

        infoCopy = v26;
      }
    }
  }

  return v7;
}

- (id)description
{
  name = [(CCDValidationInfo *)self name];
  if ([(CCDValidationInfo *)self isRequired])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  validationInfo = [(CCDValidationInfo *)self validationInfo];
  v6 = [validationInfo objectForKeyedSubscript:@"validationType"];
  destinationKey = [(CCDValidationKeyInfo *)self destinationKey];
  v8 = [NSString stringWithFormat:@"\n***********\nCloud Config Key Name: %@\nRequired: %@\nValidation Type: %@\nDestination Key: %@\n***********\n", name, v4, v6, destinationKey];

  return v8;
}

- (BOOL)validateSelfUsingValidationInfoWithDictionary:(id)dictionary resultsDictionary:(id)resultsDictionary
{
  dictionaryCopy = dictionary;
  resultsDictionaryCopy = resultsDictionary;
  validationType = [(CCDValidationKeyInfo *)self validationType];
  v9 = 0;
  LOBYTE(v10) = 0;
  if (validationType <= 4)
  {
    if (validationType <= 1)
    {
      if (validationType)
      {
        if (validationType != 1)
        {
          goto LABEL_47;
        }

        v11 = [(CCDValidationKeyInfo *)self _validateCertificateArrayInDictionary:dictionaryCopy];
        goto LABEL_20;
      }

LABEL_16:
      v11 = [(CCDValidationKeyInfo *)self _validateBooleanInDictionary:dictionaryCopy];
      goto LABEL_20;
    }

    if (validationType != 2)
    {
      if (validationType != 3)
      {
        v11 = [(CCDValidationKeyInfo *)self _validateNumberInDictionary:dictionaryCopy];
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    v11 = [(CCDValidationKeyInfo *)self _validateHttpsURLStringInDictionary:dictionaryCopy];
LABEL_20:
    LODWORD(v10) = v11;
    v9 = 0;
    if (!resultsDictionaryCopy)
    {
      goto LABEL_47;
    }

    goto LABEL_21;
  }

  if (validationType <= 6)
  {
    if (validationType == 5)
    {
      v11 = [(CCDValidationKeyInfo *)self _validateStringInDictionary:dictionaryCopy];
    }

    else
    {
      v11 = [(CCDValidationKeyInfo *)self _validateStringArrayInDictionary:dictionaryCopy];
    }

    goto LABEL_20;
  }

  if (validationType == 7)
  {
    v11 = [(CCDValidationKeyInfo *)self _validateCredentialTokenInDictionary:dictionaryCopy];
    goto LABEL_20;
  }

  if (validationType != 8)
  {
    if (validationType != 9)
    {
      goto LABEL_47;
    }

    v11 = [(CCDValidationKeyInfo *)self _validateUnstructureddDictionaryInDictionary:dictionaryCopy];
    goto LABEL_20;
  }

  v9 = objc_opt_new();
  LODWORD(v10) = [(CCDValidationKeyInfo *)self _validateDictionaryInDictionary:dictionaryCopy resultsDictionary:v9];
  if (!resultsDictionaryCopy)
  {
    goto LABEL_47;
  }

LABEL_21:
  if (v10)
  {
    name = [(CCDValidationInfo *)self name];
    v10 = [dictionaryCopy objectForKeyedSubscript:name];

    if (!v10)
    {
LABEL_46:

      LOBYTE(v10) = 1;
      goto LABEL_47;
    }

    validationType2 = [(CCDValidationKeyInfo *)self validationType];
    if (validationType2 > 6)
    {
      if (validationType2 == 7)
      {
        destinationKey = [(CCDValidationKeyInfo *)self destinationKey];
        v19 = &__kCFBooleanTrue;
        v18 = resultsDictionaryCopy;
        goto LABEL_45;
      }

      if (validationType2 == 8)
      {
        v14 = [v9 copy];
        goto LABEL_30;
      }
    }

    else
    {
      if (validationType2 == 1)
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

        destinationKey2 = [(CCDValidationKeyInfo *)self destinationKey];
        [resultsDictionaryCopy setObject:v21 forKeyedSubscript:destinationKey2];

        v10 = v30;
        goto LABEL_46;
      }

      if (validationType2 == 3)
      {
        v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v10 BOOLValue] ^ 1);
LABEL_30:
        v15 = v14;
        destinationKey3 = [(CCDValidationKeyInfo *)self destinationKey];
        [resultsDictionaryCopy setObject:v15 forKeyedSubscript:destinationKey3];

        goto LABEL_46;
      }
    }

    destinationKey = [(CCDValidationKeyInfo *)self destinationKey];
    v18 = resultsDictionaryCopy;
    v19 = v10;
LABEL_45:
    [v18 setObject:v19 forKeyedSubscript:destinationKey];

    goto LABEL_46;
  }

LABEL_47:

  return v10;
}

- (id)_certificateDataFromBase64EncodedString:(id)string
{
  stringCopy = string;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [CCDCertificateSupport decodeCertificateFromBase64String:stringCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_validateCertificateArrayInDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  name = [(CCDValidationInfo *)self name];
  v6 = [dictionaryCopy objectForKeyedSubscript:name];

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

- (BOOL)_validateHttpsURLStringInDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([(CCDValidationKeyInfo *)self _validateStringInDictionary:dictionaryCopy])
  {
    name = [(CCDValidationInfo *)self name];
    v6 = [dictionaryCopy objectForKeyedSubscript:name];

    if (v6)
    {
      v7 = [NSURL URLWithString:v6];
      scheme = [v7 scheme];
      v9 = [@"https" isEqualToString:scheme];
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

- (BOOL)_validateNumberInDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  name = [(CCDValidationInfo *)self name];
  v6 = [dictionaryCopy objectForKeyedSubscript:name];

  objc_opt_class();
  LOBYTE(dictionaryCopy) = objc_opt_isKindOfClass();

  return dictionaryCopy & 1;
}

- (BOOL)_validateStringInDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  name = [(CCDValidationInfo *)self name];
  v6 = [dictionaryCopy objectForKeyedSubscript:name];

  objc_opt_class();
  LOBYTE(dictionaryCopy) = objc_opt_isKindOfClass();

  return dictionaryCopy & 1;
}

- (BOOL)_validateStringArrayInDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  name = [(CCDValidationInfo *)self name];
  v6 = [dictionaryCopy objectForKeyedSubscript:name];

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

- (BOOL)_validateCredentialTokenInDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  name = [(CCDValidationInfo *)self name];
  v6 = [dictionaryCopy objectForKeyedSubscript:name];

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

- (BOOL)_validateDictionaryInDictionary:(id)dictionary resultsDictionary:(id)resultsDictionary
{
  dictionaryCopy = dictionary;
  resultsDictionaryCopy = resultsDictionary;
  name = [(CCDValidationInfo *)self name];
  v9 = [dictionaryCopy objectForKeyedSubscript:name];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    allKeys = [v9 allKeys];
    v11 = [allKeys countByEnumeratingWithState:&v26 objects:v31 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v15 = *(*(&v26 + 1) + 8 * v14);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [allKeys countByEnumeratingWithState:&v26 objects:v31 count:16];
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
      allKeys = [(CCDValidationKeyInfo *)self subKeys];
      v16 = [allKeys countByEnumeratingWithState:&v22 objects:v30 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        if (![*(*(&v22 + 1) + 8 * v19) validateSelfWithDictionary:v9 resultsDictionary:resultsDictionaryCopy])
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [allKeys countByEnumeratingWithState:&v22 objects:v30 count:16];
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

- (BOOL)_validateUnstructureddDictionaryInDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  name = [(CCDValidationInfo *)self name];
  v6 = [dictionaryCopy objectForKeyedSubscript:name];

  objc_opt_class();
  LOBYTE(name) = objc_opt_isKindOfClass();

  return name & 1;
}

@end