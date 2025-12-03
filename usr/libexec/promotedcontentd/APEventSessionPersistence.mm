@interface APEventSessionPersistence
- (BOOL)_isNoFileExistsError:(id)error;
- (id)rootUrl;
@end

@implementation APEventSessionPersistence

- (id)rootUrl
{
  if (qword_1004EA1C8 != -1)
  {
    sub_100396990();
  }

  v3 = qword_1004EA1C0;

  return v3;
}

- (BOOL)_isNoFileExistsError:(id)error
{
  errorCopy = error;
  if ([errorCopy code] == 2 && (objc_msgSend(errorCopy, "domain"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", NSPOSIXErrorDomain), v4, (v5 & 1) != 0))
  {
    v6 = 1;
  }

  else
  {
    underlyingErrors = [errorCopy underlyingErrors];
    firstObject = [underlyingErrors firstObject];

    if (firstObject && [firstObject code] == 2)
    {
      domain = [firstObject domain];
      v6 = [domain isEqualToString:NSPOSIXErrorDomain];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end