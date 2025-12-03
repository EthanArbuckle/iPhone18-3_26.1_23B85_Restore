@interface MSDDownloadIPARequest
- (BOOL)isValid;
- (id)copyWithZone:(_NSZone *)zone;
- (id)getPostData;
- (id)getQueryItems;
- (id)parseResponseForError:(id)error andPayload:(id)payload;
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

  appID = [(MSDDownloadIPARequest *)self appID];
  if (appID)
  {
    fileHash = [(MSDDownloadIPARequest *)self fileHash];
    if (fileHash)
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
    appID = [(MSDDownloadIPARequest *)self appID];
    v5 = [NSURLQueryItem queryItemWithName:@"AppID" value:appID];

    v6 = [(MSDDownloadIPARequest *)self uid];
    v7 = [NSURLQueryItem queryItemWithName:@"UID" value:v6];

    fileHash = [(MSDDownloadIPARequest *)self fileHash];
    v9 = [NSURLQueryItem queryItemWithName:@"FullIPAHash" value:fileHash];

    [v3 addObject:v5];
    [v3 addObject:v7];
    [v3 addObject:v9];
    currentUID = [(MSDDownloadIPARequest *)self currentUID];

    if (currentUID)
    {
      currentUID2 = [(MSDDownloadIPARequest *)self currentUID];
      v12 = [NSURLQueryItem queryItemWithName:@"CurrentUID" value:currentUID2];

      [v3 addObject:v12];
    }

    originServer = [(MSDDownloadIPARequest *)self originServer];

    if (originServer)
    {
      originServer2 = [(MSDDownloadIPARequest *)self originServer];
      v15 = [NSURLQueryItem queryItemWithName:@"OriginServer" value:originServer2];

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
    appID = [(MSDDownloadIPARequest *)self appID];
    v4 = [(MSDDownloadIPARequest *)self uid];
    fileHash = [(MSDDownloadIPARequest *)self fileHash];
    v6 = [NSMutableDictionary dictionaryWithObjectsAndKeys:appID, @"ApplicationID", v4, @"UID", fileHash, @"FullIPAHash", 0];

    currentUID = [(MSDDownloadIPARequest *)self currentUID];

    if (currentUID)
    {
      currentUID2 = [(MSDDownloadIPARequest *)self currentUID];
      [v6 setObject:currentUID2 forKey:@"CurrentUID"];
    }

    convertToNSData = [v6 convertToNSData];
  }

  else
  {
    convertToNSData = 0;
  }

  return convertToNSData;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MSDDownloadIPARequest;
  v4 = [(MSDCommandServerRequest *)&v6 copyWithZone:zone];
  [v4 setAppID:self->_appID];
  [v4 setFileHash:self->_fileHash];
  [v4 setUid:self->_uid];
  [v4 setCurrentUID:self->_currentUID];
  [v4 setOriginServer:self->_originServer];
  return v4;
}

- (id)parseResponseForError:(id)error andPayload:(id)payload
{
  errorCopy = error;
  payloadCopy = payload;
  v23.receiver = self;
  v23.super_class = MSDDownloadIPARequest;
  v8 = [(MSDServerRequest *)&v23 parseResponseForError:errorCopy andPayload:payloadCopy];
  error = [v8 error];

  if (error)
  {
    v10 = 0;
  }

  else
  {
    v22 = errorCopy;
    v10 = [(MSDCommandServerRequest *)self getDataDictFromPayload:payloadCopy error:&v22];
    v11 = v22;

    if (v10)
    {
      v12 = sub_100063A54();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        getName = [(MSDServerRequest *)self getName];
        *buf = 138543618;
        v25 = getName;
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