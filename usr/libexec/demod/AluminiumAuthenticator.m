@interface AluminiumAuthenticator
+ (id)_defaultIncludedHeaders;
- (AluminiumAuthenticator)initWithASCIIEncodedKey:(id)a3;
- (AluminiumAuthenticator)initWithHexEncodedKey:(id)a3;
- (BOOL)addAuthenticationHeadersToRequest:(id)a3 includedHeaders:(id)a4 body:(id)a5 algorithm:(unsigned int)defaultAlgorithm error:(id *)a7;
- (BOOL)verifyAuthenticationWithRequest:(__CFHTTPMessage *)a3 includedHeaders:(id)a4 algorithm:(unsigned int)defaultAlgorithm error:(id *)a6;
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

- (AluminiumAuthenticator)initWithHexEncodedKey:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    sub_1000DEEE0();
  }

  v13.receiver = self;
  v13.super_class = AluminiumAuthenticator;
  v5 = [(AluminiumAuthenticator *)&v13 init];
  if (v5)
  {
    v6 = [v4 _dataUsingHexEncoding];
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

- (AluminiumAuthenticator)initWithASCIIEncodedKey:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    sub_1000DEF54();
  }

  v13.receiver = self;
  v13.super_class = AluminiumAuthenticator;
  v5 = [(AluminiumAuthenticator *)&v13 init];
  if (v5)
  {
    v6 = [v4 dataUsingEncoding:1];
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

- (BOOL)addAuthenticationHeadersToRequest:(id)a3 includedHeaders:(id)a4 body:(id)a5 algorithm:(unsigned int)defaultAlgorithm error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (v12)
  {
    if (!a7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_1000DEFC8();
  if (a7)
  {
LABEL_3:
    *a7 = 0;
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
      if (a7)
      {
        v85 = NSLocalizedDescriptionKey;
        v86 = @"Key size too short";
        v16 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
        v17 = 6;
LABEL_12:
        [NSError errorWithDomain:@"AluminiumAuthenticatorErrorDomain" code:v17 userInfo:v16];
        *a7 = v18 = 0;
LABEL_63:

        goto LABEL_64;
      }

      goto LABEL_13;
    }

    if (!v13)
    {
      v13 = self->_defaultIncludedHeaders;
    }

    v19 = v13;
    v20 = [(NSSet *)v13 _lowercaseSet];

    if (qword_1001A5938 != -1)
    {
      sub_1000DF03C();
    }

    v73 = v14;
    v69 = v15;
    v70 = self;
    if (![(NSSet *)v20 containsObject:qword_1001A5940])
    {
      v21 = [(NSSet *)v20 setByAddingObject:qword_1001A5940];

      v20 = v21;
    }

    v22 = [(NSSet *)v20 allObjects];
    v16 = [v22 sortedArrayUsingSelector:"compare:"];

    v23 = [v12 valueForHTTPHeaderField:@"X-Apple-HMAC-Sent-Timestamp"];
    v24 = v23;
    if (!v23 || ![v23 length])
    {
      v25 = +[NSDate date];
      [v25 timeIntervalSince1970];
      v27 = (v26 * 1000.0);

      v28 = [NSString stringWithFormat:@"%lld", v27];
      [v12 addValue:v28 forHTTPHeaderField:@"X-Apple-HMAC-Sent-Timestamp"];
    }

    v72 = v24;
    v29 = [v12 URL];
    v30 = [v12 valueForHTTPHeaderField:@"Host"];
    v74 = v20;
    if (-[NSSet containsObject:](v20, "containsObject:", @"host") && (!v30 || ![v30 length]))
    {
      v31 = [v29 host];

      if (v31)
      {
        v32 = [v29 host];
        [v12 addValue:v32 forHTTPHeaderField:@"Host"];
      }
    }

    v71 = v30;
    v75 = v29;
    v33 = objc_opt_new();
    v34 = [v12 HTTPMethod];
    v35 = [v34 lowercaseString];
    v36 = [v33 _addHMACComponent:v35 error:a7];

    v77 = v33;
    if (v36)
    {
      v37 = v75;
      v38 = [v75 path];
      v39 = v38;
      if (!v38)
      {
        v38 = @"/";
      }

      v40 = [(__CFString *)v38 lowercaseString];
      v41 = [v33 _addHMACComponent:v40 error:a7];

      if (v41)
      {
        v42 = [v75 query];
        v13 = v74;
        v68 = v42;
        if (v42 && (v43 = v42, [v42 length]) && !objc_msgSend(v77, "_addHMACComponent:error:", v43, a7))
        {
          v18 = 0;
          v54 = v72;
          v14 = v73;
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
                v50 = [v12 valueForHTTPHeaderField:v49];
                v51 = v50;
                if (v50 && [v50 length] && (!objc_msgSend(v77, "_addHMACComponent:error:", v49, a7) || !objc_msgSend(v77, "_addHMACComponent:error:", v51, a7)))
                {

                  v18 = 0;
                  v54 = v72;
                  v14 = v73;
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

          v14 = v73;
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
            CCHmac(defaultAlgorithm, -[NSData bytes](v70->_key, "bytes"), -[NSData length](v70->_key, "length"), [v56 bytes], objc_msgSend(v56, "length"), &v66 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
            v60 = &v66 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
            v61 = v59;
            v14 = v58;
            v37 = v75;
            v62 = [NSData dataWithBytesNoCopy:v60 length:v61 freeWhenDone:0];
            v63 = [v62 base64EncodedStringWithOptions:0];

            [v12 addValue:v63 forHTTPHeaderField:@"X-Apple-HMAC-Digest"];
            v18 = 1;
            v16 = v67;
            v54 = v72;
            v13 = v74;
          }

          else
          {
            v13 = v74;
            if (a7)
            {
              v82 = NSLocalizedDescriptionKey;
              v83 = @"Cannot encode HMAC text";
              v64 = [NSDictionary dictionaryWithObjects:&v83 forKeys:&v82 count:1];
              *a7 = [NSError errorWithDomain:@"AluminiumAuthenticatorErrorDomain" code:1 userInfo:v64];
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

    v14 = v73;
    v13 = v74;
LABEL_62:

    goto LABEL_63;
  }

  if (a7)
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

- (BOOL)verifyAuthenticationWithRequest:(__CFHTTPMessage *)a3 includedHeaders:(id)a4 algorithm:(unsigned int)defaultAlgorithm error:(id *)a6
{
  v10 = a4;
  if (!a3)
  {
    sub_1000DF050();
    if (!a6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a6)
  {
LABEL_3:
    *a6 = 0;
  }

LABEL_4:
  v11 = CFHTTPMessageCopyHeaderFieldValue(a3, @"X-Apple-HMAC-Digest");
  v12 = CFHTTPMessageCopyHeaderFieldValue(a3, @"X-Apple-HMAC-Sent-Timestamp");
  if (!v11 || ![(__CFString *)v11 length])
  {
    if (a6)
    {
      v94 = NSLocalizedDescriptionKey;
      v95 = @"Missing digest header in HTTP request";
      v18 = &v95;
      v19 = &v94;
LABEL_19:
      v13 = [NSDictionary dictionaryWithObjects:v18 forKeys:v19 count:1];
      [NSError errorWithDomain:@"AluminiumAuthenticatorErrorDomain" code:3 userInfo:v13];
      *a6 = v20 = 0;
      goto LABEL_20;
    }

LABEL_21:
    v20 = 0;
    goto LABEL_22;
  }

  if (!v12 || ![(__CFString *)v12 length])
  {
    if (a6)
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
      if (a6)
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
        if (!v10)
        {
          v10 = self->_defaultIncludedHeaders;
        }

        v68 = self;
        v22 = v10;
        v10 = [(NSSet *)v10 _lowercaseSet];

        if (qword_1001A5938 != -1)
        {
          sub_1000DF0C4();
        }

        if (![(NSSet *)v10 containsObject:qword_1001A5940])
        {
          v23 = [(NSSet *)v10 setByAddingObject:qword_1001A5940];

          v10 = v23;
        }

        v24 = [(NSSet *)v10 allObjects];
        v71 = [v24 sortedArrayUsingSelector:"compare:"];

        v73 = CFHTTPMessageCopyRequestURL(a3);
        v25 = CFHTTPMessageCopyRequestMethod(a3);
        v26 = objc_opt_new();
        v69 = v25;
        v27 = [(__CFString *)v25 lowercaseString];
        LODWORD(v76) = [v26 _addHMACComponent:v27 error:a6];

        v74 = v26;
        if (!v76)
        {
          goto LABEL_56;
        }

        v28 = [(__CFURL *)v73 path];
        v29 = v28;
        if (!v28)
        {
          v28 = @"/";
        }

        v30 = [(__CFString *)v28 lowercaseString];
        LODWORD(v76) = [v74 _addHMACComponent:v30 error:a6];

        if (v76)
        {
          v31 = v73;
          v32 = [(__CFURL *)v73 query];
          v67 = v32;
          if (v32 && [v32 length] && (v33 = objc_msgSend(v74, "_addHMACComponent:error:", v67, a6), v34 = v67, !v33))
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
              v65 = v10;
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
                  v38 = CFHTTPMessageCopyHeaderFieldValue(a3, v37);
                  v39 = v38;
                  if (v38)
                  {
                    v40 = v38;
                    v41 = [(__CFString *)v38 length];
                    v39 = v40;
                    if (v41)
                    {
                      if (![v74 _addHMACComponent:v37 error:a6])
                      {
                        v20 = 0;
                        v16 = v71;
                        v47 = v69;
                        v39 = v40;
                        v10 = v65;
                        v13 = v66;
                        goto LABEL_70;
                      }

                      v42 = [v74 _addHMACComponent:v40 error:a6];
                      v39 = v40;
                      v35 = v72;
                      if (!v42)
                      {
                        v20 = 0;
                        v10 = v65;
                        v13 = v66;
                        goto LABEL_65;
                      }
                    }
                  }
                }

                v10 = v65;
                v76 = [(__CFData *)v35 countByEnumeratingWithState:&v77 objects:v85 count:16];
                if (v76)
                {
                  continue;
                }

                break;
              }
            }

            v43 = CFHTTPMessageCopyBody(a3);
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
              v53 = v68;
              v55 = v54;
              v64 = [(NSData *)v68->_key bytes];
              v68 = [(NSData *)v53->_key length];
              v56 = [v55 bytes];
              v76 = v55;
              v57 = [v55 length];
              CCHmac(defaultAlgorithm, v64, v68, v56, v57, v52);
              v58 = [NSData dataWithBytesNoCopy:v52 length:v70 freeWhenDone:0];
              v59 = [v58 base64EncodedStringWithOptions:0];

              v60 = [v59 isEqualToString:v11];
              v20 = v60;
              if (a6 && (v60 & 1) == 0)
              {
                v81 = NSLocalizedDescriptionKey;
                v82 = @"HMAC verification failed";
                v61 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
                *a6 = [NSError errorWithDomain:@"AluminiumAuthenticatorErrorDomain" code:5 userInfo:v61];
              }

              v39 = v76;
LABEL_65:
              v16 = v71;
              v47 = v69;
            }

            else
            {
              v47 = v69;
              if (a6)
              {
                v83 = NSLocalizedDescriptionKey;
                v84 = @"Cannot encode HMAC text";
                v62 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
                *a6 = [NSError errorWithDomain:@"AluminiumAuthenticatorErrorDomain" code:1 userInfo:v62];

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

      if (a6)
      {
        v86 = NSLocalizedDescriptionKey;
        v87 = @"Key size too short";
        v16 = [NSDictionary dictionaryWithObjects:&v87 forKeys:&v86 count:1];
        v17 = 6;
LABEL_27:
        [NSError errorWithDomain:@"AluminiumAuthenticatorErrorDomain" code:v17 userInfo:v16];
        *a6 = v20 = 0;
LABEL_73:

        goto LABEL_20;
      }
    }
  }

  else if (a6)
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