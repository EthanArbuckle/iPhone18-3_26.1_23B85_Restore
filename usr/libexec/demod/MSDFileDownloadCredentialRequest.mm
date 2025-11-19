@interface MSDFileDownloadCredentialRequest
- (BOOL)isValid;
- (id)getQueryItems;
- (id)parseResponseForError:(id)a3 andPayload:(id)a4;
@end

@implementation MSDFileDownloadCredentialRequest

- (BOOL)isValid
{
  v6.receiver = self;
  v6.super_class = MSDFileDownloadCredentialRequest;
  if (![(MSDCommandServerRequest *)&v6 isValid])
  {
    return 0;
  }

  v3 = [(MSDFileDownloadCredentialRequest *)self manifestInfo];
  v4 = v3 != 0;

  return v4;
}

- (id)getQueryItems
{
  if ([(MSDFileDownloadCredentialRequest *)self isValid])
  {
    v3 = [NSMutableArray arrayWithCapacity:0];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = [(MSDFileDownloadCredentialRequest *)self manifestInfo];
    v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          v9 = [(MSDFileDownloadCredentialRequest *)self manifestInfo];
          v10 = [v9 objectForKey:v8];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [v10 stringValue];

            v10 = v11;
          }

          v12 = [NSURLQueryItem queryItemWithName:v8 value:v10];
          [v3 addObject:v12];
        }

        v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)parseResponseForError:(id)a3 andPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = MSDFileDownloadCredentialRequest;
  v8 = [(MSDServerRequest *)&v15 parseResponseForError:v6 andPayload:v7];
  v9 = [v8 error];

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v14 = v6;
    v10 = [(MSDCommandServerRequest *)self getDataDictFromPayload:v7 error:&v14];
    v11 = v14;

    if (v10)
    {
      [v8 setCredential:v10];
    }
  }

  v12 = [v8 error];

  if (!v12)
  {
    [v8 setError:v11];
  }

  return v8;
}

@end