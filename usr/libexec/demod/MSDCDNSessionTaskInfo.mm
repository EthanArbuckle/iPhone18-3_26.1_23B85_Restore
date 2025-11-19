@interface MSDCDNSessionTaskInfo
- (BOOL)isValid;
- (id)getRequestForTimeout:(double)a3;
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

  v3 = [(MSDCDNSessionTaskInfo *)self urlSchema];
  if (v3)
  {
    v4 = [(MSDCDNSessionTaskInfo *)self fileHash];
    if (v4)
    {
      v5 = [(MSDCDNSessionTaskInfo *)self serverType];
      if (v5)
      {
        v6 = [(MSDCDNSessionTaskInfo *)self credentialHeaders];
        v7 = v6 != 0;
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

- (id)getRequestForTimeout:(double)a3
{
  v5 = [(MSDCDNSessionTaskInfo *)self urlSchema];
  if (!v5 || (v6 = v5, [(MSDCDNSessionTaskInfo *)self urlSchema], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, v6, (isKindOfClass & 1) == 0))
  {
    v18 = sub_100063A54();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000D1480();
    }

    goto LABEL_24;
  }

  v9 = [(MSDCDNSessionTaskInfo *)self credentialHeaders];
  if (!v9 || (v10 = v9, [(MSDCDNSessionTaskInfo *)self credentialHeaders], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v12 = objc_opt_isKindOfClass(), v11, v10, (v12 & 1) == 0))
  {
    v18 = sub_100063A54();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000D1408();
    }

    goto LABEL_24;
  }

  v13 = [(MSDCDNSessionTaskInfo *)self urlSchema];
  v14 = [v13 rangeOfString:@"/<prefix-"];
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

  v17 = [(MSDCDNSessionTaskInfo *)self urlSchema];
  v18 = [v17 substringFromIndex:&v14[v16]];

  v19 = [v18 integerValue];
  v20 = [(MSDCDNSessionTaskInfo *)self fileHash];
  v21 = [v20 length];

  if (v21 <= v19)
  {
    sub_1000D119C(self);
LABEL_24:
    v41 = 0;
    goto LABEL_29;
  }

  v22 = [(MSDCDNSessionTaskInfo *)self fileHash];
  v23 = [v22 substringToIndex:v19];

  v24 = [(MSDCDNSessionTaskInfo *)self urlSchema];
  v25 = [v24 substringToIndex:v14];
  v26 = [(MSDCDNSessionTaskInfo *)self fileHash];
  v27 = [NSString stringWithFormat:@"%@/%@/%@", v25, v23, v26];

  v28 = [NSURL URLWithString:v27];
  v29 = [NSMutableURLRequest requestWithURL:v28 cachePolicy:1 timeoutInterval:a3];
  [(MSDSessionTaskInfo *)self setRequest:v29];

  v30 = [(MSDSessionTaskInfo *)self request];

  if (!v30)
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
  v31 = self;
  v32 = [(MSDCDNSessionTaskInfo *)self credentialHeaders];
  v33 = [v32 countByEnumeratingWithState:&v47 objects:v51 count:16];
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
          objc_enumerationMutation(v32);
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

          v41 = 0;
          goto LABEL_28;
        }

        v40 = [(MSDSessionTaskInfo *)v31 request];
        [v40 addValue:v39 forHTTPHeaderField:v38];
      }

      v34 = [v32 countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (v34)
      {
        continue;
      }

      break;
    }
  }

  v41 = [(MSDSessionTaskInfo *)v31 request];

LABEL_28:
  v18 = v46;
LABEL_29:

  return v41;
}

@end