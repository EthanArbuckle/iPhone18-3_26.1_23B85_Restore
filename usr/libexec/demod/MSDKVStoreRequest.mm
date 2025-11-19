@interface MSDKVStoreRequest
- (BOOL)isValid;
- (id)getEndpoint;
- (id)getPostData;
- (id)parseResponseForError:(id)a3 andPayload:(id)a4;
@end

@implementation MSDKVStoreRequest

- (BOOL)isValid
{
  v10.receiver = self;
  v10.super_class = MSDKVStoreRequest;
  v3 = [(MSDCommandServerRequest *)&v10 isValid];
  v4 = [(MSDKVStoreRequest *)self isPost];
  v5 = [(MSDKVStoreRequest *)self key];
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      v7 = [(MSDKVStoreRequest *)self value];
      if (v7)
      {
        v8 = v3;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else if (v5)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)getPostData
{
  v3 = [NSMutableDictionary dictionaryWithCapacity:0];
  v4 = [(MSDKVStoreRequest *)self value];
  [v3 setObject:v4 forKey:@"value"];

  v5 = [(MSDKVStoreRequest *)self ttl];

  if (v5)
  {
    v6 = [(MSDKVStoreRequest *)self ttl];
    [v3 setObject:v6 forKey:@"ttl"];
  }

  v7 = [v3 convertToNSData];

  return v7;
}

- (id)parseResponseForError:(id)a3 andPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v48.receiver = self;
  v48.super_class = MSDKVStoreRequest;
  v8 = [(MSDServerRequest *)&v48 parseResponseForError:v6 andPayload:v7];
  v9 = [v8 error];

  if (v9)
  {
    v10 = 0;
    v11 = v6;
LABEL_31:
    v44 = [v8 error];

    if (!v44)
    {
      v46 = v11;
      sub_1000C1390(&v46, 3727744512, @"Unexpected server response.");
      v45 = v46;

      [v8 setError:v45];
      v11 = v45;
    }

    goto LABEL_26;
  }

  if ([(MSDKVStoreRequest *)self isPost])
  {
    goto LABEL_27;
  }

  v47 = v6;
  v10 = [(MSDCommandServerRequest *)self getDataDictFromPayload:v7 error:&v47];
  v11 = v47;

  if (!v10)
  {
    goto LABEL_31;
  }

  v12 = [v10 objectForKeyedSubscript:@"value"];
  [v8 setValue:v12];

  v13 = [v8 value];
  if (!v13 || (v14 = v13, [v8 value], v15 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v15, v14, (isKindOfClass & 1) == 0))
  {
    sub_1000CA478(self);
    goto LABEL_31;
  }

  v17 = [v10 objectForKeyedSubscript:@"creationDate"];
  [v8 setCreationDate:v17];

  v18 = [v8 creationDate];
  if (v18)
  {
    v19 = v18;
    v20 = [v8 creationDate];
    objc_opt_class();
    v21 = objc_opt_isKindOfClass();

    if ((v21 & 1) == 0)
    {
      v22 = sub_100063A54();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000CA1F8();
      }

      [v8 setCreationDate:0];
    }
  }

  v23 = [v10 objectForKeyedSubscript:@"setBy"];
  v24 = [v23 objectForKeyedSubscript:@"serial"];
  [v8 setCreatorSN:v24];

  v25 = [v8 creatorSN];
  if (v25)
  {
    v26 = v25;
    v27 = [v8 creationDate];
    objc_opt_class();
    v28 = objc_opt_isKindOfClass();

    if ((v28 & 1) == 0)
    {
      v29 = sub_100063A54();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1000CA298();
      }

      [v8 setCreatorSN:0];
    }
  }

  v30 = [v10 objectForKeyedSubscript:@"setBy"];
  v31 = [v30 objectForKeyedSubscript:@"udid"];
  [v8 setCreatorUDID:v31];

  v32 = [v8 creatorUDID];
  if (v32)
  {
    v33 = v32;
    v34 = [v8 creationDate];
    objc_opt_class();
    v35 = objc_opt_isKindOfClass();

    if ((v35 & 1) == 0)
    {
      v36 = sub_100063A54();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_1000CA338();
      }

      [v8 setCreatorUDID:0];
    }
  }

  v37 = [v10 objectForKeyedSubscript:@"modificationDate"];
  [v8 setModificationDate:v37];

  v38 = [v8 modificationDate];
  if (v38)
  {
    v39 = v38;
    v40 = [v8 modificationDate];
    objc_opt_class();
    v41 = objc_opt_isKindOfClass();

    if ((v41 & 1) == 0)
    {
      v42 = sub_100063A54();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_1000CA3D8();
      }

      [v8 setModificationDate:0];
    }
  }

LABEL_26:

  v6 = v11;
LABEL_27:

  return v8;
}

- (id)getEndpoint
{
  v2 = [(MSDKVStoreRequest *)self key];
  v3 = [NSString stringWithFormat:@"%@/%@", @"/KVStore", v2];

  return v3;
}

@end