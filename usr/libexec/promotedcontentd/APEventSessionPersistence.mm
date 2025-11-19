@interface APEventSessionPersistence
- (BOOL)_isNoFileExistsError:(id)a3;
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

- (BOOL)_isNoFileExistsError:(id)a3
{
  v3 = a3;
  if ([v3 code] == 2 && (objc_msgSend(v3, "domain"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", NSPOSIXErrorDomain), v4, (v5 & 1) != 0))
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 underlyingErrors];
    v8 = [v7 firstObject];

    if (v8 && [v8 code] == 2)
    {
      v9 = [v8 domain];
      v6 = [v9 isEqualToString:NSPOSIXErrorDomain];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end