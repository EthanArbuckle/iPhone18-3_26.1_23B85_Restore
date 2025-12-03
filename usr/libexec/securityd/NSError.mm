@interface NSError
+ (NSError)errorWithDomain:(id)domain code:(int64_t)code description:(id)description underlying:(id)underlying;
- (BOOL)_isCKServerInternalError;
- (BOOL)_isRetryableAKError;
- (BOOL)_isRetryableNSURLError;
- (BOOL)ckksIsCKErrorRecordChangedError;
- (BOOL)isCKInternalServerHTTPError;
- (BOOL)isCKKSServerPluginError:(int64_t)error;
- (BOOL)isCKServerInternalError;
- (BOOL)isCuttlefishError:(int64_t)error;
- (BOOL)isRetryable;
- (double)cuttlefishRetryAfter;
- (double)retryInterval;
@end

@implementation NSError

+ (NSError)errorWithDomain:(id)domain code:(int64_t)code description:(id)description underlying:(id)underlying
{
  underlyingCopy = underlying;
  descriptionCopy = description;
  domainCopy = domain;
  v12 = objc_alloc_init(NSMutableDictionary);
  [v12 setObject:descriptionCopy forKeyedSubscript:NSLocalizedDescriptionKey];

  [v12 setObject:underlyingCopy forKeyedSubscript:NSUnderlyingErrorKey];
  v13 = [NSError errorWithDomain:domainCopy code:code userInfo:v12];

  return v13;
}

- (BOOL)isCKInternalServerHTTPError
{
  userInfo = [(NSError *)self userInfo];
  v4 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

  domain = [(NSError *)self domain];
  if ([domain isEqualToString:CKErrorDomain])
  {
    code = [(NSError *)self code];
    v7 = 0;
    if (code == 15 && v4)
    {
      domain2 = [v4 domain];
      if ([domain2 isEqualToString:CKUnderlyingErrorDomain])
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
  userInfo = [(NSError *)self userInfo];
  v4 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

  domain = [(NSError *)self domain];
  if ([domain isEqualToString:CKErrorDomain])
  {
    code = [(NSError *)self code];
    v7 = 0;
    if (code == 15 && v4)
    {
      domain2 = [v4 domain];
      if ([domain2 isEqualToString:CKUnderlyingErrorDomain])
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

- (BOOL)isCKKSServerPluginError:(int64_t)error
{
  userInfo = [(NSError *)self userInfo];
  v6 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

  userInfo2 = [v6 userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:NSUnderlyingErrorKey];

  domain = [(NSError *)self domain];
  if ([domain isEqualToString:CKErrorDomain])
  {
    v10 = 0;
    if ([(NSError *)self code]== 15 && v6)
    {
      domain2 = [v6 domain];
      if (![domain2 isEqualToString:CKUnderlyingErrorDomain] || (objc_msgSend(v6, "code") == 6000 ? (v12 = v8 == 0) : (v12 = 1), v12))
      {
        v10 = 0;
      }

      else
      {
        domain3 = [v8 domain];
        if ([domain3 isEqualToString:@"CloudkitKeychainService"])
        {
          v10 = [v8 code] == error;
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
  userInfo = [(NSError *)self userInfo];
  v4 = [userInfo objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

  domain = [(NSError *)self domain];
  if (![domain isEqualToString:CKErrorDomain] || -[NSError code](self, "code") != 2)
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
  objectEnumerator = [v4 objectEnumerator];
  v7 = [objectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        domain2 = [v11 domain];
        if (![domain2 isEqualToString:CKErrorDomain])
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
          code = [v11 code];

          if (code != 11)
          {
            goto LABEL_21;
          }
        }
      }

      v8 = [objectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  selfCopy = self;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1001DB650;
  v18 = sub_1001DB660;
  v19 = 0;
  domain = [(NSError *)selfCopy domain];
  v4 = [domain isEqualToString:@"CKErrorDomain"];

  if (v4)
  {
    if ([(NSError *)selfCopy code]== 2)
    {
      userInfo = [(NSError *)selfCopy userInfo];
      userInfo2 = [userInfo objectForKeyedSubscript:@"CKPartialErrors"];

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1001DB668;
      v13[3] = &unk_1003445E8;
      v13[4] = &v14;
      [userInfo2 enumerateKeysAndObjectsUsingBlock:v13];
    }

    else
    {
      userInfo2 = [(NSError *)selfCopy userInfo];
      v7 = [userInfo2 objectForKeyedSubscript:@"CKRetryAfter"];
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

  [(NSError *)selfCopy cuttlefishRetryAfter];
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
  selfCopy = self;
  domain = [(NSError *)selfCopy domain];
  v4 = 0.0;
  if (![domain isEqualToString:@"CKErrorDomain"])
  {
    goto LABEL_9;
  }

  code = [(NSError *)selfCopy code];

  if (code == 15)
  {
    userInfo = [(NSError *)selfCopy userInfo];
    domain = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

    v3Domain = [domain domain];
    if ([v3Domain isEqualToString:@"CKInternalErrorDomain"])
    {
      code2 = [domain code];

      if (code2 != 6000)
      {
LABEL_9:

        goto LABEL_10;
      }

      userInfo2 = [domain userInfo];
      v3Domain = [userInfo2 objectForKeyedSubscript:NSUnderlyingErrorKey];

      v7Domain = [v3Domain domain];
      LODWORD(userInfo2) = [v7Domain isEqualToString:@"CuttlefishError"];

      if (userInfo2)
      {
        userInfo3 = [v3Domain userInfo];
        v12 = [userInfo3 objectForKeyedSubscript:@"retryafter"];

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

  domain = [(NSError *)self domain];
  v6 = [domain isEqualToString:@"com.apple.security.trustedpeers.container"];

  if (v6)
  {
    LOBYTE(v3) = [(NSError *)self code]== 36;
    return v3 & 1;
  }

  if ([(NSError *)self _isRetryableNSURLError])
  {
    goto LABEL_8;
  }

  domain2 = [(NSError *)self domain];
  v8 = [domain2 isEqualToString:@"CKErrorDomain"];

  if (v8)
  {
    userInfo = [(NSError *)self userInfo];
    v10 = [userInfo objectForKeyedSubscript:@"CKRetryAfter"];

    if (!v10)
    {
      code = [(NSError *)self code];
      if (code >= 8)
      {
        LOBYTE(v3) = 0;
      }

      else
      {
        v3 = 0x98u >> code;
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
  userInfo = [(NSError *)self userInfo];
  v4 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

  domain = [(NSError *)self domain];
  _isRetryableNSURLError = 0;
  if ([domain isEqualToString:@"AKAuthenticationError"] && v4)
  {
    _isRetryableNSURLError = [v4 _isRetryableNSURLError];
  }

  return _isRetryableNSURLError;
}

- (BOOL)_isRetryableNSURLError
{
  selfCopy = self;
  domain = [(NSError *)selfCopy domain];
  v4 = [domain isEqualToString:NSURLErrorDomain];

  if (v4)
  {
    v5 = (([(NSError *)selfCopy code]+ 1009) & 0xFFFFFFFFFFFFFFF7) == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isCuttlefishError:(int64_t)error
{
  selfCopy = self;
  domain = [(NSError *)selfCopy domain];
  if (![domain isEqualToString:@"CKErrorDomain"])
  {
    goto LABEL_8;
  }

  code = [(NSError *)selfCopy code];

  if (code == 15)
  {
    userInfo = [(NSError *)selfCopy userInfo];
    domain = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

    v5Domain = [domain domain];
    if (![v5Domain isEqualToString:@"CKInternalErrorDomain"])
    {
      goto LABEL_11;
    }

    code2 = [domain code];

    if (code2 == 6000)
    {
      userInfo2 = [domain userInfo];
      v5Domain = [userInfo2 objectForKeyedSubscript:NSUnderlyingErrorKey];

      v8Domain = [v5Domain domain];
      if ([v8Domain isEqualToString:@"CuttlefishError"])
      {
        code3 = [v5Domain code];

        if (code3 == error)
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
  userInfo = [(NSError *)self userInfo];
  v4 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

  domain = [(NSError *)self domain];
  if ([domain isEqualToString:@"CKErrorDomain"])
  {
    code = [(NSError *)self code];
    v7 = 0;
    if (code == 15 && v4)
    {
      domain2 = [v4 domain];
      if ([domain2 isEqualToString:@"CKInternalErrorDomain"])
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