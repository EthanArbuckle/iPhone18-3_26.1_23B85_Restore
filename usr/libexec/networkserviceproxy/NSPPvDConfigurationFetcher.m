@interface NSPPvDConfigurationFetcher
- (BOOL)configurationValidated:(id)a3 withURL:(id)a4;
- (BOOL)isIdentifier:(id)a3 presentIn:(id)a4;
- (id)formatExpirationDateFrom:(id)a3;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 taskIsWaitingForConnectivity:(id)a4;
- (void)dealloc;
- (void)didReceiveProxyConfig:(id)a3 from:(id)a4;
- (void)fetchIndividualProxyConfig:(id)a3 completionHander:(id)a4;
@end

@implementation NSPPvDConfigurationFetcher

- (void)dealloc
{
  if (self)
  {
    session = self->_session;
    if (session)
    {
      [(NSURLSession *)session invalidateAndCancel];
      objc_storeStrong(&self->_session, 0);
    }

    objc_storeStrong(&self->_queue, 0);
  }

  v4.receiver = self;
  v4.super_class = NSPPvDConfigurationFetcher;
  [(NSPPvDConfigurationFetcher *)&v4 dealloc];
}

- (BOOL)isIdentifier:(id)a3 presentIn:(id)a4
{
  v5 = a3;
  v6 = [a4 host];
  if (v6)
  {
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)formatExpirationDateFrom:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSDateFormatter);
  v5 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setLocale:v5];

  [v4 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
  v6 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [v4 setTimeZone:v6];

  v7 = [v4 dateFromString:v3];

  return v7;
}

- (BOOL)configurationValidated:(id)a3 withURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:@"expires"];
  v9 = [(NSPPvDConfigurationFetcher *)self formatExpirationDateFrom:v8];
  v10 = +[NSDate now];
  v11 = [v10 compare:v9];

  v12 = v11 == -1;
  if (v11 != -1)
  {
    v13 = nplog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Configuration is expired", &v18, 2u);
    }
  }

  v14 = [v6 objectForKey:@"identifier"];
  v15 = [(NSPPvDConfigurationFetcher *)self isIdentifier:v14 presentIn:v7];

  if ((v15 & 1) == 0)
  {
    v16 = nplog_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = v14;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Matching identifier was not found in response: %@", &v18, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

- (void)didReceiveProxyConfig:(id)a3 from:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    goto LABEL_67;
  }

  v8 = [v6 objectForKey:@"identifier"];
  if (!v8)
  {
    goto LABEL_67;
  }

  v9 = v8;
  v10 = [v6 objectForKey:@"expires"];

  if (!v10)
  {
    goto LABEL_67;
  }

  v11 = [v6 objectForKey:@"identifier"];
  if (![(NSPPvDConfigurationFetcher *)self configurationValidated:v6 withURL:v7])
  {
    goto LABEL_66;
  }

  [v6 objectForKey:@"proxies"];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v12 = v65 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v62 objects:v68 count:16];
  if (!v13)
  {

    v31 = 0;
LABEL_37:
    v32 = nplog_obj();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Did not find a masque proxy config in the list", buf, 2u);
    }

    goto LABEL_65;
  }

  v14 = v13;
  v54 = self;
  v55 = v6;
  v57 = 0;
  v56 = 0;
  v15 = *v63;
  v60 = v11;
  v61 = v12;
  while (2)
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v63 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v62 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          continue;
        }

        v20 = v17;
        v28 = [NSURL URLWithString:v20];
        v18 = v28;
        if (v28)
        {
          v19 = [v28 host];
          if (![v19 isEqualToString:v11])
          {
            goto LABEL_30;
          }

          v29 = [v18 path];
          v30 = [v29 containsString:@"/.well-known/masque/udp"];

          if (v30)
          {
            v31 = v18;

            v6 = v55;
            goto LABEL_40;
          }

          v12 = v61;
        }

LABEL_31:

        continue;
      }

      v18 = v17;
      v19 = [v18 objectForKeyedSubscript:@"protocol"];
      v20 = [v18 objectForKeyedSubscript:@"proxy"];
      if (!v19)
      {
        goto LABEL_30;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_30;
      }

      if (!v20)
      {
        goto LABEL_30;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_30;
      }

      v21 = [NSURL URLWithString:v20];
      v22 = v21;
      if (v21)
      {
        v23 = [v21 host];
        v24 = v11;
        v25 = v23;
        if (![v23 isEqualToString:v24])
        {
          goto LABEL_28;
        }

        v26 = [v22 path];
        if (([v26 containsString:@"masque"] & 1) == 0)
        {

          v12 = v61;
LABEL_28:

LABEL_29:
          v11 = v60;
LABEL_30:

          goto LABEL_31;
        }

        v58 = [v19 isEqualToString:@"connect-udp"];

        v12 = v61;
        if (!v58)
        {
          goto LABEL_29;
        }

        v27 = v22;

        v56 = 1;
        v57 = v27;
        v11 = v60;
        v12 = v61;
      }

      if (v22)
      {
        goto LABEL_34;
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v62 objects:v68 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_34:

  v6 = v55;
  v31 = v57;
  if ((v56 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_40:
  v32 = [NSString stringWithFormat:@"https://%@:443", v11];
  v33 = [v7 port];

  if (v33)
  {
    v34 = [v7 port];
    v35 = [NSString stringWithFormat:@"https://%@:%@", v11, v34];

    v32 = v35;
  }

  v36 = [NSURL URLWithString:v32];
  v12 = v61;
  if (!v36)
  {
    v45 = nplog_obj();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    *buf = 138412290;
    v67 = v11;
    v53 = "Could not create a proxyURL from identifier: %@";
    goto LABEL_63;
  }

  v37 = v11;
  if (v54)
  {
    WeakRetained = objc_loadWeakRetained(&v54->_serverDelegate);
    if (WeakRetained)
    {
      v39 = WeakRetained;
      v40 = objc_loadWeakRetained(&v54->_serverDelegate);
      v41 = objc_opt_respondsToSelector();

      v12 = v61;
      if (v41)
      {
        v42 = objc_loadWeakRetained(&v54->_serverDelegate);
        v43 = [v42 networkDiscoveredProxyInTrustedProxyList:v36];

        v44 = nplog_obj();
        v45 = v44;
        if (v43)
        {
          v11 = v37;
          v12 = v61;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "proxyURL found, setting up configuration", buf, 2u);
          }

          v46 = [v31 path];
          v45 = v46;
          if (v46 && (([v46 containsString:@"/.well-known/masque/udp"]& 1) != 0 || [v45 containsString:@"masque"]))
          {
            v47 = objc_alloc_init(NSPPrivacyProxyProxyInfo);
            [v47 setProxyURL:v32];
            [v47 setProxyVersion:@"RFC9298"];
            [v47 setProxyHop:1];
            [v47 setSupportsFallback:0];
            [v47 setVendor:v37];
            [v47 setTcpProxyFqdn:v32];
            v48 = +[NSData data];
            [v47 setTokenKeyInfo:v48];

            v49 = objc_loadWeakRetained(&v54->_delegate);
            if (v49)
            {
              v50 = v49;
              v51 = objc_loadWeakRetained(&v54->_delegate);
              v59 = objc_opt_respondsToSelector();

              if (v59)
              {
                v52 = objc_loadWeakRetained(&v54->_delegate);
                [v52 setupMasqueProxyWith:v47];
              }
            }

            v11 = v37;
            v12 = v61;
          }

          goto LABEL_64;
        }

        v11 = v37;
        v12 = v61;
        if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_64;
        }

        *buf = 138412290;
        v67 = v36;
        v53 = "proxyURL not found in the allow list: %@";
LABEL_63:
        _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, v53, buf, 0xCu);
        goto LABEL_64;
      }
    }
  }

  v45 = nplog_obj();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v67 = v36;
    _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Something went wrong. Could not confirm the proxyURL: %@", buf, 0xCu);
  }

  v11 = v37;
LABEL_64:

LABEL_65:
LABEL_66:

LABEL_67:
}

- (void)fetchIndividualProxyConfig:(id)a3 completionHander:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_100001F34;
  v18[4] = sub_1000490D0;
  v19 = 0;
  v8 = [NSURLRequest requestWithURL:v6 cachePolicy:1 timeoutInterval:30.0];
  if (self)
  {
    session = self->_session;
  }

  else
  {
    session = 0;
  }

  v10 = session;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000490D8;
  v14[3] = &unk_100109CA8;
  v11 = v6;
  v15 = v11;
  v17 = v18;
  v12 = v7;
  v16 = v12;
  v13 = [(NSURLSession *)v10 dataTaskWithRequest:v8 completionHandler:v14];

  [v13 resume];
  _Block_object_dispose(v18, 8);
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v19 = a5;
  v8 = a6;
  v9 = [v19 protectionSpace];
  v10 = [v9 authenticationMethod];
  if ([v10 isEqualToString:NSURLAuthenticationMethodServerTrust])
  {
    v11 = self == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained(&self->_serverDelegate);
  if (!WeakRetained)
  {
    goto LABEL_10;
  }

  v13 = WeakRetained;
  v14 = objc_loadWeakRetained(&self->_serverDelegate);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_10:
    goto LABEL_11;
  }

  v15 = objc_loadWeakRetained(&self->_serverDelegate);
  v16 = [v15 canIgnoreInvalidCertsOnInternalBuild];

  if (v16)
  {
    v17 = [v19 protectionSpace];
    v18 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [v17 serverTrust]);
    v8[2](v8, 0, v18);

    goto LABEL_12;
  }

LABEL_11:
  v8[2](v8, 1, 0);
LABEL_12:
}

- (void)URLSession:(id)a3 taskIsWaitingForConnectivity:(id)a4
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PvD configuration fetch is waiting for connectivity", v5, 2u);
  }
}

@end