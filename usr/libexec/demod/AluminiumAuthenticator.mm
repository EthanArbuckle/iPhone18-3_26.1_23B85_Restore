@interface AluminiumAuthenticator
+ (id)_defaultIncludedHeaders;
- (AluminiumAuthenticator)initWithASCIIEncodedKey:(id)key;
- (AluminiumAuthenticator)initWithHexEncodedKey:(id)key;
- (BOOL)addAuthenticationHeadersToRequest:(id)request includedHeaders:(id)headers body:(id)body algorithm:(unsigned int)defaultAlgorithm error:(id *)error;
- (BOOL)verifyAuthenticationWithRequest:(__CFHTTPMessage *)request includedHeaders:(id)headers algorithm:(unsigned int)defaultAlgorithm error:(id *)error;
@end

@implementation AluminiumAuthenticator

+ (id)_defaultIncludedHeaders
{
  if (qword_1001A5930 != -1)
  {
    sub_1000DEECC();
  }

  v3 = qword_1001A5928;

  return v3;
}

- (AluminiumAuthenticator)initWithHexEncodedKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    sub_1000DEEE0();
  }

  v13.receiver = self;
  v13.super_class = AluminiumAuthenticator;
  v5 = [(AluminiumAuthenticator *)&v13 init];
  if (v5)
  {
    _dataUsingHexEncoding = [keyCopy _dataUsingHexEncoding];
    key = v5->_key;
    v5->_key = _dataUsingHexEncoding;

    v8 = v5->_key;
    if (!v8 || ![(NSData *)v8 length])
    {
      v11 = 0;
      goto LABEL_9;
    }

    v9 = +[AluminiumAuthenticator _defaultIncludedHeaders];
    defaultIncludedHeaders = v5->_defaultIncludedHeaders;
    v5->_defaultIncludedHeaders = v9;

    v5->_defaultAlgorithm = 0;
  }

  v11 = v5;
LABEL_9:

  return v11;
}

- (AluminiumAuthenticator)initWithASCIIEncodedKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    sub_1000DEF54();
  }

  v13.receiver = self;
  v13.super_class = AluminiumAuthenticator;
  v5 = [(AluminiumAuthenticator *)&v13 init];
  if (v5)
  {
    v6 = [keyCopy dataUsingEncoding:1];
    key = v5->_key;
    v5->_key = v6;

    v8 = v5->_key;
    if (!v8 || ![(NSData *)v8 length])
    {
      v11 = 0;
      goto LABEL_9;
    }

    v9 = +[AluminiumAuthenticator _defaultIncludedHeaders];
    defaultIncludedHeaders = v5->_defaultIncludedHeaders;
    v5->_defaultIncludedHeaders = v9;

    v5->_defaultAlgorithm = 0;
  }

  v11 = v5;
LABEL_9:

  return v11;
}

- (BOOL)addAuthenticationHeadersToRequest:(id)request includedHeaders:(id)headers body:(id)body algorithm:(unsigned int)defaultAlgorithm error:(id *)error
{
  requestCopy = request;
  headersCopy = headers;
  bodyCopy = body;
  if (requestCopy)
  {
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_1000DEFC8();
  if (error)
  {
LABEL_3:
    *error = 0;
  }

LABEL_4:
  if (defaultAlgorithm == -1)
  {
    defaultAlgorithm = self->_defaultAlgorithm;
  }

  if (defaultAlgorithm < 6)
  {
    v15 = qword_1001121E8[defaultAlgorithm];
    if ([(NSData *)self->_key length]< v15)
    {
      if (error)
      {
        v85 = NSLocalizedDescriptionKey;
        v86 = @"Key size too short";
        v16 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
        v17 = 6;
LABEL_12:
        [NSError errorWithDomain:@"AluminiumAuthenticatorErrorDomain" code:v17 userInfo:v16];
        *error = v18 = 0;
LABEL_63:

        goto LABEL_64;
      }

      goto LABEL_13;
    }

    if (!headersCopy)
    {
      headersCopy = self->_defaultIncludedHeaders;
    }

    v19 = headersCopy;
    _lowercaseSet = [(NSSet *)headersCopy _lowercaseSet];

    if (qword_1001A5938 != -1)
    {
      sub_1000DF03C();
    }

    v73 = bodyCopy;
    v69 = v15;
    selfCopy = self;
    if (![(NSSet *)_lowercaseSet containsObject:qword_1001A5940])
    {
      v21 = [(NSSet *)_lowercaseSet setByAddingObject:qword_1001A5940];

      _lowercaseSet = v21;
    }

    allObjects = [(NSSet *)_lowercaseSet allObjects];
    v16 = [allObjects sortedArrayUsingSelector:"compare:"];

    v23 = [requestCopy valueForHTTPHeaderField:@"X-Apple-HMAC-Sent-Timestamp"];
    v24 = v23;
    if (!v23 || ![v23 length])
    {
      v25 = +[NSDate date];
      [v25 timeIntervalSince1970];
      v27 = (v26 * 1000.0);

      v28 = [NSString stringWithFormat:@"%lld", v27];
      [requestCopy addValue:v28 forHTTPHeaderField:@"X-Apple-HMAC-Sent-Timestamp"];
    }

    v72 = v24;
    v29 = [requestCopy URL];
    v30 = [requestCopy valueForHTTPHeaderField:@"Host"];
    v74 = _lowercaseSet;
    if (-[NSSet containsObject:](_lowercaseSet, "containsObject:", @"host") && (!v30 || ![v30 length]))
    {
      host = [v29 host];

      if (host)
      {
        host2 = [v29 host];
        [requestCopy addValue:host2 forHTTPHeaderField:@"Host"];
      }
    }

    v71 = v30;
    v75 = v29;
    v33 = objc_opt_new();
    hTTPMethod = [requestCopy HTTPMethod];
    lowercaseString = [hTTPMethod lowercaseString];
    v36 = [v33 _addHMACComponent:lowercaseString error:error];

    v77 = v33;
    if (v36)
    {
      v37 = v75;
      path = [v75 path];
      v39 = path;
      if (!path)
      {
        path = @"/";
      }

      lowercaseString2 = [(__CFString *)path lowercaseString];
      v41 = [v33 _addHMACComponent:lowercaseString2 error:error];

      if (v41)
      {
        query = [v75 query];
        headersCopy = v74;
        v68 = query;
        if (query && (v43 = query, [query length]) && !objc_msgSend(v77, "_addHMACComponent:error:", v43, error))
        {
          v18 = 0;
          v54 = v72;
          bodyCopy = v73;
        }

        else
        {
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v67 = v16;
          v44 = v16;
          v45 = [v44 countByEnumeratingWithState:&v78 objects:v84 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = *v79;
            v76 = v44;
            while (2)
            {
              for (i = 0; i != v46; i = i + 1)
              {
                if (*v79 != v47)
                {
                  objc_enumerationMutation(v76);
                }

                v49 = *(*(&v78 + 1) + 8 * i);
                v50 = [requestCopy valueForHTTPHeaderField:v49];
                v51 = v50;
                if (v50 && [v50 length] && (!objc_msgSend(v77, "_addHMACComponent:error:", v49, error) || !objc_msgSend(v77, "_addHMACComponent:error:", v51, error)))
                {

                  v18 = 0;
                  v54 = v72;
                  bodyCopy = v73;
                  v16 = v67;
                  v37 = v75;
                  goto LABEL_60;
                }
              }

              v44 = v76;
              v46 = [v76 countByEnumeratingWithState:&v78 objects:v84 count:16];
              if (v46)
              {
                continue;
              }

              break;
            }
          }

          bodyCopy = v73;
          if (v73 && [v73 length])
          {
            v52 = [v73 base64EncodedStringWithOptions:0];
            v53 = v77;
            [v77 addObject:v52];
          }

          else
          {
            v53 = v77;
            [v77 addObject:&stru_10016D9D8];
          }

          v37 = v75;
          v55 = [v53 componentsJoinedByString:@"|"];
          v56 = [v55 dataUsingEncoding:1];

          v76 = v56;
          if (v56)
          {
            v66 = &v66;
            v58 = v73;
            v59 = v69;
            __chkstk_darwin(v57);
            CCHmac(defaultAlgorithm, -[NSData bytes](selfCopy->_key, "bytes"), -[NSData length](selfCopy->_key, "length"), [v56 bytes], objc_msgSend(v56, "length"), &v66 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
            v60 = &v66 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
            v61 = v59;
            bodyCopy = v58;
            v37 = v75;
            v62 = [NSData dataWithBytesNoCopy:v60 length:v61 freeWhenDone:0];
            v63 = [v62 base64EncodedStringWithOptions:0];

            [requestCopy addValue:v63 forHTTPHeaderField:@"X-Apple-HMAC-Digest"];
            v18 = 1;
            v16 = v67;
            v54 = v72;
            headersCopy = v74;
          }

          else
          {
            headersCopy = v74;
            if (error)
            {
              v82 = NSLocalizedDescriptionKey;
              v83 = @"Cannot encode HMAC text";
              v64 = [NSDictionary dictionaryWithObjects:&v83 forKeys:&v82 count:1];
              *error = [NSError errorWithDomain:@"AluminiumAuthenticatorErrorDomain" code:1 userInfo:v64];
            }

            v18 = 0;
            v16 = v67;
            v54 = v72;
          }

LABEL_60:
        }

        goto LABEL_62;
      }

      v18 = 0;
      v54 = v72;
    }

    else
    {
      v18 = 0;
      v54 = v72;
      v37 = v75;
    }

    bodyCopy = v73;
    headersCopy = v74;
LABEL_62:

    goto LABEL_63;
  }

  if (error)
  {
    v87 = NSLocalizedDescriptionKey;
    v88 = @"Invalid HMAC algorithm";
    v16 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
    v17 = 2;
    goto LABEL_12;
  }

LABEL_13:
  v18 = 0;
LABEL_64:

  return v18;
}

- (BOOL)verifyAuthenticationWithRequest:(__CFHTTPMessage *)request includedHeaders:(id)headers algorithm:(unsigned int)defaultAlgorithm error:(id *)error
{
  headersCopy = headers;
  if (!request)
  {
    sub_1000DF050();
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (error)
  {
LABEL_3:
    *error = 0;
  }

LABEL_4:
  v11 = CFHTTPMessageCopyHeaderFieldValue(request, @"X-Apple-HMAC-Digest");
  v12 = CFHTTPMessageCopyHeaderFieldValue(request, @"X-Apple-HMAC-Sent-Timestamp");
  if (!v11 || ![(__CFString *)v11 length])
  {
    if (error)
    {
      v94 = NSLocalizedDescriptionKey;
      v95 = @"Missing digest header in HTTP request";
      v18 = &v95;
      v19 = &v94;
LABEL_19:
      v13 = [NSDictionary dictionaryWithObjects:v18 forKeys:v19 count:1];
      [NSError errorWithDomain:@"AluminiumAuthenticatorErrorDomain" code:3 userInfo:v13];
      *error = v20 = 0;
      goto LABEL_20;
    }

LABEL_21:
    v20 = 0;
    goto LABEL_22;
  }

  if (!v12 || ![(__CFString *)v12 length])
  {
    if (error)
    {
      v92 = NSLocalizedDescriptionKey;
      v93 = @"Missing timestamp header in HTTP request";
      v18 = &v93;
      v19 = &v92;
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v13 = [NSDate dateWithTimeIntervalSince1970:[(__CFString *)v12 integerValue]/ 1000.0];
  if (v13)
  {
    if (defaultAlgorithm == -1)
    {
      defaultAlgorithm = self->_defaultAlgorithm;
    }

    if (defaultAlgorithm >= 6)
    {
      if (error)
      {
        v88 = NSLocalizedDescriptionKey;
        v89 = @"Invalid HMAC algorithm";
        v16 = [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];
        v17 = 2;
        goto LABEL_27;
      }
    }

    else
    {
      v14 = qword_1001121E8[defaultAlgorithm];
      v15 = [(NSData *)self->_key length];
      v70 = v14;
      if (v15 >= v14)
      {
        if (!headersCopy)
        {
          headersCopy = self->_defaultIncludedHeaders;
        }

        selfCopy = self;
        v22 = headersCopy;
        headersCopy = [(NSSet *)headersCopy _lowercaseSet];

        if (qword_1001A5938 != -1)
        {
          sub_1000DF0C4();
        }

        if (![(NSSet *)headersCopy containsObject:qword_1001A5940])
        {
          v23 = [(NSSet *)headersCopy setByAddingObject:qword_1001A5940];

          headersCopy = v23;
        }

        allObjects = [(NSSet *)headersCopy allObjects];
        v71 = [allObjects sortedArrayUsingSelector:"compare:"];

        v73 = CFHTTPMessageCopyRequestURL(request);
        v25 = CFHTTPMessageCopyRequestMethod(request);
        v26 = objc_opt_new();
        v69 = v25;
        lowercaseString = [(__CFString *)v25 lowercaseString];
        LODWORD(v76) = [v26 _addHMACComponent:lowercaseString error:error];

        v74 = v26;
        if (!v76)
        {
          goto LABEL_56;
        }

        path = [(__CFURL *)v73 path];
        v29 = path;
        if (!path)
        {
          path = @"/";
        }

        lowercaseString2 = [(__CFString *)path lowercaseString];
        LODWORD(v76) = [v74 _addHMACComponent:lowercaseString2 error:error];

        if (v76)
        {
          v31 = v73;
          query = [(__CFURL *)v73 query];
          v67 = query;
          if (query && [query length] && (v33 = objc_msgSend(v74, "_addHMACComponent:error:", v67, error), v34 = v67, !v33))
          {
            v20 = 0;
            v16 = v71;
            v47 = v69;
          }

          else
          {
            v66 = v13;
            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            v35 = v71;
            v76 = [(__CFData *)v35 countByEnumeratingWithState:&v77 objects:v85 count:16];
            if (v76)
            {
              v75 = *v78;
              v65 = headersCopy;
              v72 = v35;
              while (2)
              {
                for (i = 0; i != v76; i = i + 1)
                {
                  if (*v78 != v75)
                  {
                    objc_enumerationMutation(v35);
                  }

                  v37 = *(*(&v77 + 1) + 8 * i);
                  v38 = CFHTTPMessageCopyHeaderFieldValue(request, v37);
                  v39 = v38;
                  if (v38)
                  {
                    v40 = v38;
                    v41 = [(__CFString *)v38 length];
                    v39 = v40;
                    if (v41)
                    {
                      if (![v74 _addHMACComponent:v37 error:error])
                      {
                        v20 = 0;
                        v16 = v71;
                        v47 = v69;
                        v39 = v40;
                        headersCopy = v65;
                        v13 = v66;
                        goto LABEL_70;
                      }

                      v42 = [v74 _addHMACComponent:v40 error:error];
                      v39 = v40;
                      v35 = v72;
                      if (!v42)
                      {
                        v20 = 0;
                        headersCopy = v65;
                        v13 = v66;
                        goto LABEL_65;
                      }
                    }
                  }
                }

                headersCopy = v65;
                v76 = [(__CFData *)v35 countByEnumeratingWithState:&v77 objects:v85 count:16];
                if (v76)
                {
                  continue;
                }

                break;
              }
            }

            v43 = CFHTTPMessageCopyBody(request);
            v44 = v43;
            if (v43 && [(__CFData *)v43 length])
            {
              v45 = [(__CFData *)v44 base64EncodedStringWithOptions:0];
              v46 = v74;
              [v74 addObject:v45];
            }

            else
            {
              v46 = v74;
              [v74 addObject:&stru_10016D9D8];
            }

            v48 = [v46 componentsJoinedByString:@"|"];
            v49 = [v48 dataUsingEncoding:1];

            v39 = v49;
            v13 = v66;
            v72 = v44;
            if (v49)
            {
              v75 = &v63;
              __chkstk_darwin(v50);
              v52 = &v63 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
              v53 = selfCopy;
              v55 = v54;
              bytes = [(NSData *)selfCopy->_key bytes];
              selfCopy = [(NSData *)v53->_key length];
              bytes2 = [v55 bytes];
              v76 = v55;
              v57 = [v55 length];
              CCHmac(defaultAlgorithm, bytes, selfCopy, bytes2, v57, v52);
              v58 = [NSData dataWithBytesNoCopy:v52 length:v70 freeWhenDone:0];
              v59 = [v58 base64EncodedStringWithOptions:0];

              v60 = [v59 isEqualToString:v11];
              v20 = v60;
              if (error && (v60 & 1) == 0)
              {
                v81 = NSLocalizedDescriptionKey;
                v82 = @"HMAC verification failed";
                v61 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
                *error = [NSError errorWithDomain:@"AluminiumAuthenticatorErrorDomain" code:5 userInfo:v61];
              }

              v39 = v76;
LABEL_65:
              v16 = v71;
              v47 = v69;
            }

            else
            {
              v47 = v69;
              if (error)
              {
                v83 = NSLocalizedDescriptionKey;
                v84 = @"Cannot encode HMAC text";
                v62 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
                *error = [NSError errorWithDomain:@"AluminiumAuthenticatorErrorDomain" code:1 userInfo:v62];

                v39 = 0;
              }

              v20 = 0;
              v16 = v71;
            }

LABEL_70:

            v31 = v73;
            v34 = v67;
          }
        }

        else
        {
LABEL_56:
          v20 = 0;
          v16 = v71;
          v31 = v73;
          v47 = v69;
        }

        goto LABEL_73;
      }

      if (error)
      {
        v86 = NSLocalizedDescriptionKey;
        v87 = @"Key size too short";
        v16 = [NSDictionary dictionaryWithObjects:&v87 forKeys:&v86 count:1];
        v17 = 6;
LABEL_27:
        [NSError errorWithDomain:@"AluminiumAuthenticatorErrorDomain" code:v17 userInfo:v16];
        *error = v20 = 0;
LABEL_73:

        goto LABEL_20;
      }
    }
  }

  else if (error)
  {
    v90 = NSLocalizedDescriptionKey;
    v91 = @"Invalid timestamp value in HTTP request";
    v16 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
    v17 = 4;
    goto LABEL_27;
  }

  v20 = 0;
LABEL_20:

LABEL_22:
  return v20;
}

@end