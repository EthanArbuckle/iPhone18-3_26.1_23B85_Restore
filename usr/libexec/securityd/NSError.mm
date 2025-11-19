@interface NSError
+ (NSError)errorWithDomain:(id)a3 code:(int64_t)a4 description:(id)a5 underlying:(id)a6;
- (BOOL)_isCKServerInternalError;
- (BOOL)_isRetryableAKError;
- (BOOL)_isRetryableNSURLError;
- (BOOL)ckksIsCKErrorRecordChangedError;
- (BOOL)isCKInternalServerHTTPError;
- (BOOL)isCKKSServerPluginError:(int64_t)a3;
- (BOOL)isCKServerInternalError;
- (BOOL)isCuttlefishError:(int64_t)a3;
- (BOOL)isRetryable;
- (double)cuttlefishRetryAfter;
- (double)retryInterval;
@end

@implementation NSError

+ (NSError)errorWithDomain:(id)a3 code:(int64_t)a4 description:(id)a5 underlying:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = objc_alloc_init(NSMutableDictionary);
  [v12 setObject:v10 forKeyedSubscript:NSLocalizedDescriptionKey];

  [v12 setObject:v9 forKeyedSubscript:NSUnderlyingErrorKey];
  v13 = [NSError errorWithDomain:v11 code:a4 userInfo:v12];

  return v13;
}

- (BOOL)isCKInternalServerHTTPError
{
  v3 = [(NSError *)self userInfo];
  v4 = [v3 objectForKeyedSubscript:NSUnderlyingErrorKey];

  v5 = [(NSError *)self domain];
  if ([v5 isEqualToString:CKErrorDomain])
  {
    v6 = [(NSError *)self code];
    v7 = 0;
    if (v6 == 15 && v4)
    {
      v8 = [v4 domain];
      if ([v8 isEqualToString:CKUnderlyingErrorDomain])
      {
        v7 = [v4 code] == 2001;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isCKServerInternalError
{
  v3 = [(NSError *)self userInfo];
  v4 = [v3 objectForKeyedSubscript:NSUnderlyingErrorKey];

  v5 = [(NSError *)self domain];
  if ([v5 isEqualToString:CKErrorDomain])
  {
    v6 = [(NSError *)self code];
    v7 = 0;
    if (v6 == 15 && v4)
    {
      v8 = [v4 domain];
      if ([v8 isEqualToString:CKUnderlyingErrorDomain])
      {
        v7 = [v4 code] == 2000;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isCKKSServerPluginError:(int64_t)a3
{
  v5 = [(NSError *)self userInfo];
  v6 = [v5 objectForKeyedSubscript:NSUnderlyingErrorKey];

  v7 = [v6 userInfo];
  v8 = [v7 objectForKeyedSubscript:NSUnderlyingErrorKey];

  v9 = [(NSError *)self domain];
  if ([v9 isEqualToString:CKErrorDomain])
  {
    v10 = 0;
    if ([(NSError *)self code]== 15 && v6)
    {
      v11 = [v6 domain];
      if (![v11 isEqualToString:CKUnderlyingErrorDomain] || (objc_msgSend(v6, "code") == 6000 ? (v12 = v8 == 0) : (v12 = 1), v12))
      {
        v10 = 0;
      }

      else
      {
        v13 = [v8 domain];
        if ([v13 isEqualToString:@"CloudkitKeychainService"])
        {
          v10 = [v8 code] == a3;
        }

        else
        {
          v10 = 0;
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)ckksIsCKErrorRecordChangedError
{
  v3 = [(NSError *)self userInfo];
  v4 = [v3 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

  v5 = [(NSError *)self domain];
  if (![v5 isEqualToString:CKErrorDomain] || -[NSError code](self, "code") != 2)
  {

    goto LABEL_18;
  }

  if (!v4)
  {
LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v4 objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 domain];
        if (![v12 isEqualToString:CKErrorDomain])
        {

LABEL_21:
          v14 = 0;
          goto LABEL_22;
        }

        if ([v11 code] == 22 || objc_msgSend(v11, "code") == 14)
        {
        }

        else
        {
          v13 = [v11 code];

          if (v13 != 11)
          {
            goto LABEL_21;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_22:

LABEL_19:
  return v14;
}

- (double)retryInterval
{
  v2 = self;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1001DB650;
  v18 = sub_1001DB660;
  v19 = 0;
  v3 = [(NSError *)v2 domain];
  v4 = [v3 isEqualToString:@"CKErrorDomain"];

  if (v4)
  {
    if ([(NSError *)v2 code]== 2)
    {
      v5 = [(NSError *)v2 userInfo];
      v6 = [v5 objectForKeyedSubscript:@"CKPartialErrors"];

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1001DB668;
      v13[3] = &unk_1003445E8;
      v13[4] = &v14;
      [v6 enumerateKeysAndObjectsUsingBlock:v13];
    }

    else
    {
      v6 = [(NSError *)v2 userInfo];
      v7 = [v6 objectForKeyedSubscript:@"CKRetryAfter"];
      v8 = v15[5];
      v15[5] = v7;
    }
  }

  v9 = v15[5];
  if (v9)
  {
    [v9 doubleValue];
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  _Block_object_dispose(&v14, 8);

  [(NSError *)v2 cuttlefishRetryAfter];
  if (v11 >= result)
  {
    result = v11;
  }

  if (result == 0.0)
  {
    return *&qword_10039D068;
  }

  return result;
}

- (double)cuttlefishRetryAfter
{
  v2 = self;
  v3 = [(NSError *)v2 domain];
  v4 = 0.0;
  if (![v3 isEqualToString:@"CKErrorDomain"])
  {
    goto LABEL_9;
  }

  v5 = [(NSError *)v2 code];

  if (v5 == 15)
  {
    v6 = [(NSError *)v2 userInfo];
    v3 = [v6 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v7 = [v3 domain];
    if ([v7 isEqualToString:@"CKInternalErrorDomain"])
    {
      v8 = [v3 code];

      if (v8 != 6000)
      {
LABEL_9:

        goto LABEL_10;
      }

      v9 = [v3 userInfo];
      v7 = [v9 objectForKeyedSubscript:NSUnderlyingErrorKey];

      v10 = [v7 domain];
      LODWORD(v9) = [v10 isEqualToString:@"CuttlefishError"];

      if (v9)
      {
        v11 = [v7 userInfo];
        v12 = [v11 objectForKeyedSubscript:@"retryafter"];

        if (v12)
        {
          [v12 doubleValue];
          v4 = v13;
        }
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v4;
}

- (BOOL)isRetryable
{
  if ([(NSError *)self isCuttlefishError:1021]|| [(NSError *)self isCuttlefishError:1019]|| [(NSError *)self isCuttlefishError:1002]|| [(NSError *)self isCuttlefishError:1004]|| [(NSError *)self isCuttlefishError:1016]|| [(NSError *)self isCuttlefishError:1017]|| [(NSError *)self isCuttlefishError:1038])
  {
    goto LABEL_8;
  }

  v5 = [(NSError *)self domain];
  v6 = [v5 isEqualToString:@"com.apple.security.trustedpeers.container"];

  if (v6)
  {
    LOBYTE(v3) = [(NSError *)self code]== 36;
    return v3 & 1;
  }

  if ([(NSError *)self _isRetryableNSURLError])
  {
    goto LABEL_8;
  }

  v7 = [(NSError *)self domain];
  v8 = [v7 isEqualToString:@"CKErrorDomain"];

  if (v8)
  {
    v9 = [(NSError *)self userInfo];
    v10 = [v9 objectForKeyedSubscript:@"CKRetryAfter"];

    if (!v10)
    {
      v11 = [(NSError *)self code];
      if (v11 >= 8)
      {
        LOBYTE(v3) = 0;
      }

      else
      {
        v3 = 0x98u >> v11;
      }

      return v3 & 1;
    }

    goto LABEL_8;
  }

  if ([(NSError *)self _isCKServerInternalError])
  {
LABEL_8:
    LOBYTE(v3) = 1;
    return v3 & 1;
  }

  return [(NSError *)self _isRetryableAKError];
}

- (BOOL)_isRetryableAKError
{
  v3 = [(NSError *)self userInfo];
  v4 = [v3 objectForKeyedSubscript:NSUnderlyingErrorKey];

  v5 = [(NSError *)self domain];
  v6 = 0;
  if ([v5 isEqualToString:@"AKAuthenticationError"] && v4)
  {
    v6 = [v4 _isRetryableNSURLError];
  }

  return v6;
}

- (BOOL)_isRetryableNSURLError
{
  v2 = self;
  v3 = [(NSError *)v2 domain];
  v4 = [v3 isEqualToString:NSURLErrorDomain];

  if (v4)
  {
    v5 = (([(NSError *)v2 code]+ 1009) & 0xFFFFFFFFFFFFFFF7) == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isCuttlefishError:(int64_t)a3
{
  v4 = self;
  v5 = [(NSError *)v4 domain];
  if (![v5 isEqualToString:@"CKErrorDomain"])
  {
    goto LABEL_8;
  }

  v6 = [(NSError *)v4 code];

  if (v6 == 15)
  {
    v7 = [(NSError *)v4 userInfo];
    v5 = [v7 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v8 = [v5 domain];
    if (![v8 isEqualToString:@"CKInternalErrorDomain"])
    {
      goto LABEL_11;
    }

    v9 = [v5 code];

    if (v9 == 6000)
    {
      v10 = [v5 userInfo];
      v8 = [v10 objectForKeyedSubscript:NSUnderlyingErrorKey];

      v11 = [v8 domain];
      if ([v11 isEqualToString:@"CuttlefishError"])
      {
        v12 = [v8 code];

        if (v12 == a3)
        {
          v13 = 1;
LABEL_12:

          goto LABEL_13;
        }
      }

      else
      {
      }

LABEL_11:
      v13 = 0;
      goto LABEL_12;
    }

LABEL_8:
    v13 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v13 = 0;
LABEL_14:

  return v13;
}

- (BOOL)_isCKServerInternalError
{
  v3 = [(NSError *)self userInfo];
  v4 = [v3 objectForKeyedSubscript:NSUnderlyingErrorKey];

  v5 = [(NSError *)self domain];
  if ([v5 isEqualToString:@"CKErrorDomain"])
  {
    v6 = [(NSError *)self code];
    v7 = 0;
    if (v6 == 15 && v4)
    {
      v8 = [v4 domain];
      if ([v8 isEqualToString:@"CKInternalErrorDomain"])
      {
        v7 = [v4 code] == 2000;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end