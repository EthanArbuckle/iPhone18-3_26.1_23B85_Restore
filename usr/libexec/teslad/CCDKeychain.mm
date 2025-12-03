@interface CCDKeychain
+ (BOOL)setData:(id)data forService:(id)service account:(id)account label:(id)label description:(id)description access:(void *)access group:(id)group useSystemKeychain:(BOOL)self0 sysBound:(BOOL)self1 outError:(id *)self2;
+ (__CFDictionary)_newQueryWithService:(id)service account:(id)account label:(id)label description:(id)description group:(id)group useSystemKeychain:(BOOL)keychain outError:(id *)error;
@end

@implementation CCDKeychain

+ (BOOL)setData:(id)data forService:(id)service account:(id)account label:(id)label description:(id)description access:(void *)access group:(id)group useSystemKeychain:(BOOL)self0 sysBound:(BOOL)self1 outError:(id *)self2
{
  dataCopy = data;
  serviceCopy = service;
  accountCopy = account;
  labelCopy = label;
  descriptionCopy = description;
  groupCopy = group;
  v40 = accountCopy;
  if ([dataCopy length])
  {
    value = dataCopy;
    v41 = 0;
    v23 = [CCDKeychain _newQueryWithService:serviceCopy account:accountCopy label:labelCopy description:descriptionCopy group:groupCopy useSystemKeychain:keychain outError:&v41];
    v24 = v41;
    if (v24)
    {
      v25 = v24;
      if (v23)
      {
        CFRelease(v23);
      }

      dataCopy = value;
      goto LABEL_7;
    }

    v38 = serviceCopy;
    v31 = [CCDKeychain dataFromService:serviceCopy account:accountCopy label:labelCopy description:descriptionCopy group:groupCopy useSystemKeychain:keychain outError:0];
    v32 = v31;
    if (v31)
    {
      if ([v31 isEqualToData:value])
      {
        CFRelease(v23);
        v25 = 0;
        dataCopy = value;
        goto LABEL_21;
      }

      v44[0] = kSecValueData;
      v44[1] = kSecAttrAccessible;
      v45[0] = value;
      v45[1] = access;
      v34 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];
      v33 = SecItemUpdate(v23, v34);
    }

    else
    {
      CFDictionaryAddValue(v23, kSecValueData, value);
      CFDictionaryAddValue(v23, kSecAttrAccessible, access);
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

    dataCopy = value;
LABEL_21:

    serviceCopy = v38;
    if (!v25)
    {
      goto LABEL_22;
    }

    goto LABEL_7;
  }

  DEPErrorArray();
  v27 = v26 = serviceCopy;
  v25 = [NSError DEPErrorWithDomain:@"CCDKeychainErrorDomain" code:6001 descriptionArray:v27 errorType:DEPErrorTypeFatal, 0];

  serviceCopy = v26;
  if (!v25)
  {
LABEL_22:
    v30 = 1;
    goto LABEL_23;
  }

LABEL_7:
  if (error)
  {
    v28 = v25;
    *error = v25;
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

+ (__CFDictionary)_newQueryWithService:(id)service account:(id)account label:(id)label description:(id)description group:(id)group useSystemKeychain:(BOOL)keychain outError:(id *)error
{
  keychainCopy = keychain;
  serviceCopy = service;
  accountCopy = account;
  labelCopy = label;
  descriptionCopy = description;
  groupCopy = group;
  if ([serviceCopy length])
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
    CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
    CFDictionaryAddValue(Mutable, kSecAttrService, serviceCopy);
    if ([accountCopy length])
    {
      CFDictionaryAddValue(Mutable, kSecAttrAccount, accountCopy);
    }

    if ([labelCopy length])
    {
      CFDictionaryAddValue(Mutable, kSecAttrLabel, labelCopy);
    }

    if ([descriptionCopy length])
    {
      CFDictionaryAddValue(Mutable, kSecAttrDescription, descriptionCopy);
    }

    if ([groupCopy length])
    {
      CFDictionaryAddValue(Mutable, kSecAttrAccessGroup, groupCopy);
    }

    if (keychainCopy)
    {
      CFDictionaryAddValue(Mutable, kSecUseSystemKeychain, &__kCFBooleanTrue);
    }
  }

  else
  {
    if (error)
    {
      v20 = DEPErrorArray();
      *error = [NSError DEPErrorWithDomain:@"CCDKeychainErrorDomain" code:6002 descriptionArray:v20 errorType:DEPErrorTypeFatal, 0];
    }

    Mutable = 0;
  }

  return Mutable;
}

@end