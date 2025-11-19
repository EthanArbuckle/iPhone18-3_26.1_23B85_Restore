@interface CCDKeychain
+ (BOOL)setData:(id)a3 forService:(id)a4 account:(id)a5 label:(id)a6 description:(id)a7 access:(void *)a8 group:(id)a9 useSystemKeychain:(BOOL)a10 sysBound:(BOOL)a11 outError:(id *)a12;
+ (__CFDictionary)_newQueryWithService:(id)a3 account:(id)a4 label:(id)a5 description:(id)a6 group:(id)a7 useSystemKeychain:(BOOL)a8 outError:(id *)a9;
@end

@implementation CCDKeychain

+ (BOOL)setData:(id)a3 forService:(id)a4 account:(id)a5 label:(id)a6 description:(id)a7 access:(void *)a8 group:(id)a9 useSystemKeychain:(BOOL)a10 sysBound:(BOOL)a11 outError:(id *)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a9;
  v40 = v19;
  if ([v17 length])
  {
    value = v17;
    v41 = 0;
    v23 = [CCDKeychain _newQueryWithService:v18 account:v19 label:v20 description:v21 group:v22 useSystemKeychain:a10 outError:&v41];
    v24 = v41;
    if (v24)
    {
      v25 = v24;
      if (v23)
      {
        CFRelease(v23);
      }

      v17 = value;
      goto LABEL_7;
    }

    v38 = v18;
    v31 = [CCDKeychain dataFromService:v18 account:v19 label:v20 description:v21 group:v22 useSystemKeychain:a10 outError:0];
    v32 = v31;
    if (v31)
    {
      if ([v31 isEqualToData:value])
      {
        CFRelease(v23);
        v25 = 0;
        v17 = value;
        goto LABEL_21;
      }

      v44[0] = kSecValueData;
      v44[1] = kSecAttrAccessible;
      v45[0] = value;
      v45[1] = a8;
      v34 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];
      v33 = SecItemUpdate(v23, v34);
    }

    else
    {
      CFDictionaryAddValue(v23, kSecValueData, value);
      CFDictionaryAddValue(v23, kSecAttrAccessible, a8);
      CFDictionaryAddValue(v23, kSecAttrSysBound, &__kCFBooleanTrue);
      v33 = SecItemAdd(v23, 0);
    }

    CFRelease(v23);
    if (v33)
    {
      v37 = [NSString stringWithFormat:@"%d", v33];
      v35 = DEPErrorArray();

      v25 = [NSError DEPErrorWithDomain:@"CCDKeychainErrorDomain" code:6000 descriptionArray:v35 errorType:DEPErrorTypeFatal, v37, 0];
    }

    else
    {
      v25 = 0;
    }

    v17 = value;
LABEL_21:

    v18 = v38;
    if (!v25)
    {
      goto LABEL_22;
    }

    goto LABEL_7;
  }

  DEPErrorArray();
  v27 = v26 = v18;
  v25 = [NSError DEPErrorWithDomain:@"CCDKeychainErrorDomain" code:6001 descriptionArray:v27 errorType:DEPErrorTypeFatal, 0];

  v18 = v26;
  if (!v25)
  {
LABEL_22:
    v30 = 1;
    goto LABEL_23;
  }

LABEL_7:
  if (a12)
  {
    v28 = v25;
    *a12 = v25;
  }

  v29 = *(DEPLogObjects() + 8);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v43 = v25;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to set data in keychain. Error: %{public}@", buf, 0xCu);
  }

  v30 = 0;
LABEL_23:

  return v30;
}

+ (__CFDictionary)_newQueryWithService:(id)a3 account:(id)a4 label:(id)a5 description:(id)a6 group:(id)a7 useSystemKeychain:(BOOL)a8 outError:(id *)a9
{
  v9 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if ([v14 length])
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
    CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
    CFDictionaryAddValue(Mutable, kSecAttrService, v14);
    if ([v15 length])
    {
      CFDictionaryAddValue(Mutable, kSecAttrAccount, v15);
    }

    if ([v16 length])
    {
      CFDictionaryAddValue(Mutable, kSecAttrLabel, v16);
    }

    if ([v17 length])
    {
      CFDictionaryAddValue(Mutable, kSecAttrDescription, v17);
    }

    if ([v18 length])
    {
      CFDictionaryAddValue(Mutable, kSecAttrAccessGroup, v18);
    }

    if (v9)
    {
      CFDictionaryAddValue(Mutable, kSecUseSystemKeychain, &__kCFBooleanTrue);
    }
  }

  else
  {
    if (a9)
    {
      v20 = DEPErrorArray();
      *a9 = [NSError DEPErrorWithDomain:@"CCDKeychainErrorDomain" code:6002 descriptionArray:v20 errorType:DEPErrorTypeFatal, 0];
    }

    Mutable = 0;
  }

  return Mutable;
}

@end