@interface W5DNSSDBrowser
- (BOOL)addServiceInstance:(const char *)a3 serviceType:(const char *)a4 domain:(const char *)a5;
- (id)_deconstructServiceType:(const void *)a3 rdlen:(unsigned __int16)a4;
- (id)_ipStringFromAddress:(const sockaddr *)a3;
- (id)addDomain:(const void *)a3 rdlen:(unsigned __int16)a4;
- (id)init:(BOOL)a3;
- (void)addBrowseResult:(id)a3 hostname:(const char *)a4 address:(const sockaddr *)a5 interfaceIndex:(unsigned int)a6;
- (void)dealloc;
- (void)stopBrowsing;
@end

@implementation W5DNSSDBrowser

- (id)init:(BOOL)a3
{
  v3 = a3;
  v14.receiver = self;
  v14.super_class = W5DNSSDBrowser;
  v4 = [(W5DNSSDBrowser *)&v14 init];
  if (!v4)
  {
    return v4;
  }

  *(v4 + 2) = dispatch_queue_create("com.apple.wifivelocity.dnssd", 0);
  Connection = DNSServiceCreateConnection(v4 + 1);
  if (Connection || (v6 = *(v4 + 1)) == 0)
  {
    v10 = sub_100098A04();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315906;
      v16 = "[W5DNSSDBrowser init:]";
      v17 = 2080;
      v18 = "W5LogManager.m";
      v19 = 1024;
      v20 = 10018;
      v21 = 1024;
      v22 = Connection;
LABEL_12:
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
    v7 = DNSServiceSetDispatchQueue(v6, *(v4 + 2));
    if (!v7)
    {
      *(v4 + 3) = +[NSMutableArray array];
      *(v4 + 4) = +[NSMutableDictionary dictionary];
      *(v4 + 40) = 0;
      *(v4 + 6) = 0;
      *(v4 + 7) = 0;
      if (v3)
      {
        *(v4 + 40) = 1;
        v8 = objc_opt_new();
        *(v4 + 6) = v8;
        [v8 setMaxConcurrentOperationCount:-1];
        *(v4 + 7) = objc_opt_new();
      }

      return v4;
    }

    v11 = v7;
    v12 = sub_100098A04();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315906;
      v16 = "[W5DNSSDBrowser init:]";
      v17 = 2080;
      v18 = "W5LogManager.m";
      v19 = 1024;
      v20 = 10021;
      v21 = 1024;
      v22 = v11;
      goto LABEL_12;
    }
  }

  v13 = sub_100098A04();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315650;
    v16 = "[W5DNSSDBrowser init:]";
    v17 = 2080;
    v18 = "W5LogManager.m";
    v19 = 1024;
    v20 = 10046;
    _os_log_send_and_compose_impl();
  }

  return 0;
}

- (id)addDomain:(const void *)a3 rdlen:(unsigned __int16)a4
{
  if (sub_10009A568(a3, 0, v8, 0))
  {
    v7 = sub_100098A04();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    return 0;
  }

  else
  {
    v5 = [NSString stringWithFormat:@"%s", v8];
    [(NSMutableDictionary *)self->browseResults setObject:+[NSMutableDictionary forKeyedSubscript:"dictionary"], v5];
  }

  return v5;
}

- (BOOL)addServiceInstance:(const char *)a3 serviceType:(const char *)a4 domain:(const char *)a5
{
  v8 = [(NSMutableDictionary *)self->browseResults objectForKey:[NSString stringWithFormat:@"%s", a5]];
  if (v8)
  {
    v8 = [v8 objectForKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", a4)}];
    if (v8)
    {
      v9 = v8;
      if (DNSServiceConstructFullName(fullName, a3, a4, a5))
      {
        LOBYTE(v8) = 0;
      }

      else
      {
        [v9 setValue:+[NSMutableArray arrayWithObject:](NSMutableArray forKey:{"arrayWithObject:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", a3)), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", fullName)}];
        LOBYTE(v8) = 1;
      }
    }
  }

  return v8;
}

- (void)addBrowseResult:(id)a3 hostname:(const char *)a4 address:(const sockaddr *)a5 interfaceIndex:(unsigned int)a6
{
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = [(NSMutableDictionary *)self->browseResults allValues];
  v11 = [v10 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v42;
    v32 = a5;
    v33 = self;
    v31 = a4;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v41 + 1) + 8 * i);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v16 = [v15 allValues];
        v17 = [v16 countByEnumeratingWithState:&v37 objects:v49 count:16];
        if (!v17)
        {
          continue;
        }

        v18 = v17;
        v19 = *v38;
        while (2)
        {
          for (j = 0; j != v18; j = j + 1)
          {
            if (*v38 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [*(*(&v37 + 1) + 8 * j) objectForKey:a3];
            if (v21)
            {
              v22 = v21;
              if_indextoname(a6, v48);
              v23 = [NSString stringWithFormat:@"%s", v48];
              v36 = 0;
              SocketGetInterfaceInfo();
              v24 = [(W5DNSSDBrowser *)v33 _ipStringFromAddress:v32, 0, &v36];
              v47[0] = [NSString stringWithFormat:@"%s", v31];
              v47[1] = v23;
              if (v36 <= 15)
              {
                if (v36 > 3)
                {
                  if (v36 == 4)
                  {
                    v25 = "AWDL";
                  }

                  else
                  {
                    if (v36 != 8)
                    {
                      goto LABEL_38;
                    }

                    v25 = "USB";
                  }
                }

                else if (v36 == 1)
                {
                  v25 = "Enet";
                }

                else
                {
                  if (v36 != 2)
                  {
                    goto LABEL_38;
                  }

                  v25 = "WiFi";
                }
              }

              else if (v36 <= 63)
              {
                if (v36 == 16)
                {
                  v25 = "Direct";
                }

                else
                {
                  if (v36 != 32)
                  {
                    goto LABEL_38;
                  }

                  v25 = "BTLE";
                }
              }

              else
              {
                switch(v36)
                {
                  case 64:
                    v25 = "WFD";
                    break;
                  case 128:
                    v25 = "NAN";
                    break;
                  case 256:
                    v25 = "IPsecBT";
                    break;
                  default:
LABEL_38:
                    if (v36 == 512)
                    {
                      v25 = "IPSecWiFi";
                    }

                    else
                    {
                      v25 = "?";
                    }

                    break;
                }
              }

              v47[2] = [NSString stringWithFormat:@"%s", v25];
              v47[3] = v24;
              [v22 addObject:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v47, 4)}];
              if (v33->doPing && v24 && ((v36 - 2) <= 0x3E && ((1 << (v36 - 2)) & 0x4000000040000005) != 0 || v36 == 128) && ([(NSMutableSet *)v33->pingedIPAddresses containsObject:v24]& 1) == 0)
              {
                sa_family = v32->sa_family;
                if (sa_family == 30)
                {
                  v45[0] = v24;
                  v45[1] = @"-c 1";
                  v45[2] = @"-B";
                  v45[3] = v23;
                  v45[4] = @"-I";
                  v45[5] = v23;
                  v27 = [NSArray arrayWithObjects:v45 count:6];
                  v28 = @"/sbin/ping6";
                }

                else if (sa_family == 2)
                {
                  v46[0] = v24;
                  v46[1] = @"-c 1";
                  v27 = [NSArray arrayWithObjects:v46 count:2];
                  v28 = @"/sbin/ping";
                }

                else
                {
                  v28 = 0;
                  v27 = 0;
                }

                pingQueue = v33->pingQueue;
                v35[0] = _NSConcreteStackBlock;
                v35[1] = 3221225472;
                v35[2] = sub_10007DDC4;
                v35[3] = &unk_1000E1948;
                v35[4] = v28;
                v35[5] = v27;
                v35[6] = v33;
                [(NSOperationQueue *)pingQueue addOperationWithBlock:v35];
                pingedIPAddresses = v33->pingedIPAddresses;
                ++v33->addedCount;
                [(NSMutableSet *)pingedIPAddresses addObject:v24];
              }

              return;
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v37 objects:v49 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v12);
  }
}

- (id)_deconstructServiceType:(const void *)a3 rdlen:(unsigned __int16)a4
{
  v4 = a3;
  v5 = a3 + a4;
  v6 = __dst;
  v7 = 1;
  while (1)
  {
    v8 = v7;
    if (v5 - v4 < 1)
    {
      break;
    }

    v9 = *v4;
    if ((v9 - 64) < 0xFFFFFFC1)
    {
      break;
    }

    v10 = v9 + 1;
    if (v5 - v4 < (v9 + 1))
    {
      break;
    }

    memcpy(v6, v4, v9 + 1);
    v7 = 0;
    v4 += v10;
    v6 += v10;
    if ((v8 & 1) == 0)
    {
      *v6 = 0;
      if (!sub_10009A568(__dst, 0, v13, 0))
      {
        return [NSString stringWithFormat:@"%s", v13];
      }

      v12 = sub_100098A04();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        _os_log_send_and_compose_impl();
      }

      return 0;
    }
  }

  return 0;
}

- (id)_ipStringFromAddress:(const sockaddr *)a3
{
  sa_family = a3->sa_family;
  if (sa_family == 30)
  {
    v4 = &a3->sa_data[6];
    v5 = 30;
    v6 = 46;
  }

  else
  {
    if (sa_family != 2)
    {
      *v8 = *"Unsupported";
      memset(v9, 0, sizeof(v9));
      return [NSString stringWithFormat:@"%s", v8];
    }

    v4 = &a3->sa_data[2];
    v5 = 2;
    v6 = 16;
  }

  inet_ntop(v5, v4, v8, v6);
  return [NSString stringWithFormat:@"%s", v8];
}

- (void)stopBrowsing
{
  sdRef = self->_sdRef;
  if (sdRef)
  {
    DNSServiceRefDeallocate(sdRef);
  }

  self->_sdRef = 0;
  pingQueue = self->pingQueue;
  if (pingQueue)
  {
    [(NSOperationQueue *)pingQueue cancelAllOperations];
  }

  self->browseContexts = 0;
  v5 = sub_100098A04();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    addedCount = self->addedCount;
    pingedCount = self->pingedCount;
    _os_log_send_and_compose_impl();
  }
}

- (void)dealloc
{
  sdRef = self->_sdRef;
  if (sdRef)
  {
    DNSServiceRefDeallocate(sdRef);
  }

  dsnsdQueue = self->dsnsdQueue;
  if (dsnsdQueue)
  {
    dispatch_release(dsnsdQueue);
  }

  browseContexts = self->browseContexts;
  if (browseContexts)
  {
  }

  pingQueue = self->pingQueue;
  if (pingQueue)
  {
  }

  pingedIPAddresses = self->pingedIPAddresses;
  if (pingedIPAddresses)
  {
  }

  v8.receiver = self;
  v8.super_class = W5DNSSDBrowser;
  [(W5DNSSDBrowser *)&v8 dealloc];
}

@end