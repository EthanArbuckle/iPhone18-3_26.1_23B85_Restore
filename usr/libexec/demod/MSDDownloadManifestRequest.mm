@interface MSDDownloadManifestRequest
- (BOOL)isValid;
- (id)getQueryItems;
- (id)parseResponseForError:(id)error andPayload:(id)payload;
@end

@implementation MSDDownloadManifestRequest

- (BOOL)isValid
{
  v6.receiver = self;
  v6.super_class = MSDDownloadManifestRequest;
  if (![(MSDCommandServerRequest *)&v6 isValid])
  {
    return 0;
  }

  manifestInfo = [(MSDDownloadManifestRequest *)self manifestInfo];
  v4 = manifestInfo != 0;

  return v4;
}

- (id)getQueryItems
{
  if ([(MSDDownloadManifestRequest *)self isValid])
  {
    v3 = [NSMutableArray arrayWithCapacity:0];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = [(MSDDownloadManifestRequest *)self manifestInfo];
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
          manifestInfo = [(MSDDownloadManifestRequest *)self manifestInfo];
          v10 = [manifestInfo objectForKey:v8];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            stringValue = [v10 stringValue];

            v10 = stringValue;
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

- (id)parseResponseForError:(id)error andPayload:(id)payload
{
  errorCopy = error;
  payloadCopy = payload;
  v21.receiver = self;
  v21.super_class = MSDDownloadManifestRequest;
  v8 = [(MSDServerRequest *)&v21 parseResponseForError:errorCopy andPayload:payloadCopy];
  error = [v8 error];

  if (error)
  {
    v10 = 0;
  }

  else
  {
    v20 = errorCopy;
    v10 = [(MSDCommandServerRequest *)self getDataDictFromPayload:payloadCopy error:&v20];
    v11 = v20;

    if (v10)
    {
      v12 = sub_100063A54();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        getName = [(MSDServerRequest *)self getName];
        *buf = 138543618;
        v23 = getName;
        v24 = 2114;
        v25 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Details to download files are: %{public}@", buf, 0x16u);
      }

      v14 = [v10 objectForKey:@"FileName"];
      if (v14)
      {
        v15 = v14;
        [v8 setFileName:v14];
        v16 = [v10 objectForKey:@"OriginServer"];
        [v8 setOriginServer:v16];
      }

      else
      {
        v19 = v11;
        sub_1000C1390(&v19, 3727744512, @"Unexpected server response.");
        v15 = v11;
        v11 = v19;
      }
    }

    errorCopy = v11;
  }

  error2 = [v8 error];

  if (!error2)
  {
    [v8 setError:errorCopy];
  }

  return v8;
}

@end