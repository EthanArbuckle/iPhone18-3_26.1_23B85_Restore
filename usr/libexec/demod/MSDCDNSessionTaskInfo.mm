@interface MSDCDNSessionTaskInfo
- (BOOL)isValid;
- (id)getRequestForTimeout:(double)timeout;
@end

@implementation MSDCDNSessionTaskInfo

- (BOOL)isValid
{
  v9.receiver = self;
  v9.super_class = MSDCDNSessionTaskInfo;
  if (![(MSDSessionTaskInfo *)&v9 isValid])
  {
    return 0;
  }

  urlSchema = [(MSDCDNSessionTaskInfo *)self urlSchema];
  if (urlSchema)
  {
    fileHash = [(MSDCDNSessionTaskInfo *)self fileHash];
    if (fileHash)
    {
      serverType = [(MSDCDNSessionTaskInfo *)self serverType];
      if (serverType)
      {
        credentialHeaders = [(MSDCDNSessionTaskInfo *)self credentialHeaders];
        v7 = credentialHeaders != 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getRequestForTimeout:(double)timeout
{
  urlSchema = [(MSDCDNSessionTaskInfo *)self urlSchema];
  if (!urlSchema || (v6 = urlSchema, [(MSDCDNSessionTaskInfo *)self urlSchema], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, v6, (isKindOfClass & 1) == 0))
  {
    v18 = sub_100063A54();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000D1480();
    }

    goto LABEL_24;
  }

  credentialHeaders = [(MSDCDNSessionTaskInfo *)self credentialHeaders];
  if (!credentialHeaders || (v10 = credentialHeaders, [(MSDCDNSessionTaskInfo *)self credentialHeaders], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v12 = objc_opt_isKindOfClass(), v11, v10, (v12 & 1) == 0))
  {
    v18 = sub_100063A54();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000D1408();
    }

    goto LABEL_24;
  }

  urlSchema2 = [(MSDCDNSessionTaskInfo *)self urlSchema];
  v14 = [urlSchema2 rangeOfString:@"/<prefix-"];
  v16 = v15;

  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = sub_100063A54();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000D1378(self);
    }

    goto LABEL_24;
  }

  urlSchema3 = [(MSDCDNSessionTaskInfo *)self urlSchema];
  v18 = [urlSchema3 substringFromIndex:&v14[v16]];

  integerValue = [v18 integerValue];
  fileHash = [(MSDCDNSessionTaskInfo *)self fileHash];
  v21 = [fileHash length];

  if (v21 <= integerValue)
  {
    sub_1000D119C(self);
LABEL_24:
    request3 = 0;
    goto LABEL_29;
  }

  fileHash2 = [(MSDCDNSessionTaskInfo *)self fileHash];
  v23 = [fileHash2 substringToIndex:integerValue];

  urlSchema4 = [(MSDCDNSessionTaskInfo *)self urlSchema];
  v25 = [urlSchema4 substringToIndex:v14];
  fileHash3 = [(MSDCDNSessionTaskInfo *)self fileHash];
  v27 = [NSString stringWithFormat:@"%@/%@/%@", v25, v23, fileHash3];

  v28 = [NSURL URLWithString:v27];
  v29 = [NSMutableURLRequest requestWithURL:v28 cachePolicy:1 timeoutInterval:timeout];
  [(MSDSessionTaskInfo *)self setRequest:v29];

  request = [(MSDSessionTaskInfo *)self request];

  if (!request)
  {
    sub_1000D12F4(v27, v23);
    goto LABEL_24;
  }

  v44 = v27;
  v45 = v23;
  v46 = v18;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  selfCopy = self;
  credentialHeaders2 = [(MSDCDNSessionTaskInfo *)self credentialHeaders];
  v33 = [credentialHeaders2 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v48;
    while (2)
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v48 != v35)
        {
          objc_enumerationMutation(credentialHeaders2);
        }

        v37 = *(*(&v47 + 1) + 8 * i);
        v38 = [v37 objectForKey:@"name"];
        v39 = [v37 objectForKey:@"value"];
        if (!v38 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v39 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v42 = sub_100063A54();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            sub_1000D1280();
          }

          request3 = 0;
          goto LABEL_28;
        }

        request2 = [(MSDSessionTaskInfo *)selfCopy request];
        [request2 addValue:v39 forHTTPHeaderField:v38];
      }

      v34 = [credentialHeaders2 countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (v34)
      {
        continue;
      }

      break;
    }
  }

  request3 = [(MSDSessionTaskInfo *)selfCopy request];

LABEL_28:
  v18 = v46;
LABEL_29:

  return request3;
}

@end