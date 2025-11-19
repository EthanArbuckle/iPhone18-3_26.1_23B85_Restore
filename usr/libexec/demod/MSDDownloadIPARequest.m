@interface MSDDownloadIPARequest
- (BOOL)isValid;
- (id)copyWithZone:(_NSZone *)a3;
- (id)getPostData;
- (id)getQueryItems;
- (id)parseResponseForError:(id)a3 andPayload:(id)a4;
@end

@implementation MSDDownloadIPARequest

- (BOOL)isValid
{
  v8.receiver = self;
  v8.super_class = MSDDownloadIPARequest;
  if (![(MSDCommandServerRequest *)&v8 isValid])
  {
    return 0;
  }

  v3 = [(MSDDownloadIPARequest *)self appID];
  if (v3)
  {
    v4 = [(MSDDownloadIPARequest *)self fileHash];
    if (v4)
    {
      v5 = [(MSDDownloadIPARequest *)self uid];
      v6 = v5 != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getQueryItems
{
  if ([(MSDDownloadIPARequest *)self isValid])
  {
    v3 = [NSMutableArray arrayWithCapacity:0];
    v4 = [(MSDDownloadIPARequest *)self appID];
    v5 = [NSURLQueryItem queryItemWithName:@"AppID" value:v4];

    v6 = [(MSDDownloadIPARequest *)self uid];
    v7 = [NSURLQueryItem queryItemWithName:@"UID" value:v6];

    v8 = [(MSDDownloadIPARequest *)self fileHash];
    v9 = [NSURLQueryItem queryItemWithName:@"FullIPAHash" value:v8];

    [v3 addObject:v5];
    [v3 addObject:v7];
    [v3 addObject:v9];
    v10 = [(MSDDownloadIPARequest *)self currentUID];

    if (v10)
    {
      v11 = [(MSDDownloadIPARequest *)self currentUID];
      v12 = [NSURLQueryItem queryItemWithName:@"CurrentUID" value:v11];

      [v3 addObject:v12];
    }

    v13 = [(MSDDownloadIPARequest *)self originServer];

    if (v13)
    {
      v14 = [(MSDDownloadIPARequest *)self originServer];
      v15 = [NSURLQueryItem queryItemWithName:@"OriginServer" value:v14];

      [v3 addObject:v15];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)getPostData
{
  if ([(MSDDownloadIPARequest *)self isValid])
  {
    v3 = [(MSDDownloadIPARequest *)self appID];
    v4 = [(MSDDownloadIPARequest *)self uid];
    v5 = [(MSDDownloadIPARequest *)self fileHash];
    v6 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v3, @"ApplicationID", v4, @"UID", v5, @"FullIPAHash", 0];

    v7 = [(MSDDownloadIPARequest *)self currentUID];

    if (v7)
    {
      v8 = [(MSDDownloadIPARequest *)self currentUID];
      [v6 setObject:v8 forKey:@"CurrentUID"];
    }

    v9 = [v6 convertToNSData];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = MSDDownloadIPARequest;
  v4 = [(MSDCommandServerRequest *)&v6 copyWithZone:a3];
  [v4 setAppID:self->_appID];
  [v4 setFileHash:self->_fileHash];
  [v4 setUid:self->_uid];
  [v4 setCurrentUID:self->_currentUID];
  [v4 setOriginServer:self->_originServer];
  return v4;
}

- (id)parseResponseForError:(id)a3 andPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = MSDDownloadIPARequest;
  v8 = [(MSDServerRequest *)&v23 parseResponseForError:v6 andPayload:v7];
  v9 = [v8 error];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v22 = v6;
    v10 = [(MSDCommandServerRequest *)self getDataDictFromPayload:v7 error:&v22];
    v11 = v22;

    if (v10)
    {
      v12 = sub_100063A54();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(MSDServerRequest *)self getName];
        *buf = 138543618;
        v25 = v13;
        v26 = 2114;
        v27 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Details to download files are: %{public}@", buf, 0x16u);
      }

      v14 = [v10 objectForKey:@"FileName"];
      if (v14)
      {
        v15 = v14;
        [v8 setFileName:v14];
        v16 = [v10 objectForKey:@"FileType"];
        v17 = v16;
        if (v16 && [v16 isEqualToString:@"Patch"])
        {
          [v8 setIsDiffPatch:1];
        }

        v18 = [v10 objectForKey:@"OriginServer"];
        [v8 setOriginServer:v18];
      }

      else
      {
        v21 = v11;
        sub_1000C1390(&v21, 3727744512, @"Unexpected server response.");
        v15 = v11;
        v11 = v21;
      }
    }

    v6 = v11;
  }

  v19 = [v8 error];

  if (!v19)
  {
    [v8 setError:v6];
  }

  return v8;
}

@end