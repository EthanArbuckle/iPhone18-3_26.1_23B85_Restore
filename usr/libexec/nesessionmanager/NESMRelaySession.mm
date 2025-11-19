@interface NESMRelaySession
- (BOOL)handleUpdateConfiguration:(id)a3;
- (BOOL)reportError:(int)a3 withOptions:(id)a4;
- (BOOL)shouldBeIdleForStatus:(int)a3;
- (NESMRelaySession)initWithConfiguration:(id)a3 andServer:(id)a4;
- (id)copyExtendedStatus;
- (void)configUpdated:(id)a3;
- (void)dealloc;
- (void)handleGetInfoMessage:(id)a3 withType:(int)a4;
- (void)handleNetworkDetectionNotification:(int)a3;
- (void)handleStartMessage:(id)a3;
- (void)install;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)uninstall;
@end

@implementation NESMRelaySession

- (void)configUpdated:(id)a3
{
  v4 = a3;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(NESMSession *)self description];
    *buf = 138412290;
    v104 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "PvD configuration updated for relay %@", buf, 0xCu);
  }

  v7 = [v4 rawDictionary];
  v9 = v7;
  if (!self)
  {

LABEL_83:
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Ignoring PvD update due to empty contents", buf, 2u);
    }

    goto LABEL_85;
  }

  objc_setProperty_atomic(self, v8, v7, 416);

  if (!objc_getProperty(self, v10, 416, 1))
  {
    goto LABEL_83;
  }

  v11 = ne_log_large_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    Property = objc_getProperty(self, v12, 416, 1);
    *buf = 138412290;
    v104 = Property;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "PvD contents: %@", buf, 0xCu);
  }

  v14 = [objc_getProperty(self v13];
  if (isa_nsarray())
  {
    if (([objc_getProperty(self v15] & 1) == 0)
    {
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v16 = v14;
      v73 = [v16 countByEnumeratingWithState:&v89 objects:v102 count:16];
      if (v73)
      {
        v17 = *v90;
        v71 = v16;
        v63 = v14;
        v69 = *v90;
        do
        {
          v18 = 0;
          do
          {
            if (*v90 != v17)
            {
              objc_enumerationMutation(v16);
            }

            v74 = v18;
            v19 = *(*(&v89 + 1) + 8 * v18);
            v20 = [v19 objectForKey:@"proxies"];
            if (isa_nsarray() && [v20 count])
            {
              v21 = [v19 objectForKey:@"domains"];
              v22 = objc_alloc_init(NSMutableArray);
              v70 = v21;
              v76 = objc_alloc_init(NSMutableArray);
              separateDomainsFromFQDNs();
              v87 = 0u;
              v88 = 0u;
              v85 = 0u;
              v86 = 0u;
              obj = v22;
              v23 = [obj countByEnumeratingWithState:&v85 objects:v101 count:16];
              if (v23)
              {
                v24 = v23;
                v25 = *v86;
                while (2)
                {
                  for (i = 0; i != v24; i = i + 1)
                  {
                    if (*v86 != v25)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v27 = *(*(&v85 + 1) + 8 * i);
                    if ((sub_100084938(self, v27) & 1) == 0)
                    {
                      v56 = ne_log_obj();
                      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v104 = v27;
                        _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Ignoring PvD configuration, domain %@ was not already configured", buf, 0xCu);
                      }

                      v57 = obj;
                      v58 = obj;
                      v16 = v71;
LABEL_72:
                      v59 = v70;
LABEL_76:

                      goto LABEL_85;
                    }
                  }

                  v24 = [obj countByEnumeratingWithState:&v85 objects:v101 count:16];
                  if (v24)
                  {
                    continue;
                  }

                  break;
                }
              }

              v66 = v20;

              v83 = 0u;
              v84 = 0u;
              v81 = 0u;
              v82 = 0u;
              v76 = v76;
              v28 = [v76 countByEnumeratingWithState:&v81 objects:v100 count:16];
              if (v28)
              {
                v29 = v28;
                v30 = *v82;
                while (2)
                {
                  for (j = 0; j != v29; j = j + 1)
                  {
                    if (*v82 != v30)
                    {
                      objc_enumerationMutation(v76);
                    }

                    v32 = *(*(&v81 + 1) + 8 * j);
                    if (([objc_getProperty(self v33] & 1) != 0 || sub_100084938(self, v32))
                    {
                    }

                    else
                    {
                      v35 = [objc_getProperty(self v34];
                      v36 = [v35 containsObject:v32];

                      if ((v36 & 1) == 0)
                      {
                        v56 = ne_log_obj();
                        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412290;
                          v104 = v32;
                          _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Ignoring PvD configuration, FQDN %@ was not already configured", buf, 0xCu);
                        }

                        v57 = obj;
                        v58 = v76;
                        v59 = v70;
                        v16 = v71;
                        v20 = v66;
                        goto LABEL_76;
                      }
                    }
                  }

                  v29 = [v76 countByEnumeratingWithState:&v81 objects:v100 count:16];
                  if (v29)
                  {
                    continue;
                  }

                  break;
                }
              }

              v37 = [v19 objectForKey:@"subnets"];
              v77 = 0u;
              v78 = 0u;
              v79 = 0u;
              v80 = 0u;
              v64 = v37;
              v16 = v71;
              v20 = v66;
              v17 = v69;
              v68 = [v64 countByEnumeratingWithState:&v77 objects:v99 count:16];
              if (v68)
              {
                v67 = *v78;
                v62 = v4;
                while (2)
                {
                  v38 = 0;
                  do
                  {
                    if (*v78 != v67)
                    {
                      objc_enumerationMutation(v64);
                    }

                    v72 = v38;
                    v39 = *(*(&v77 + 1) + 8 * v38);
                    if (![objc_getProperty(self v40])
                    {
                      v98 = 0;
                      [v39 UTF8String];
                      address_from_string = nw_endpoint_create_address_from_string();
                      if (address_from_string)
                      {
                        v65 = address_from_string;
                        v96 = 0u;
                        v97 = 0u;
                        v94 = 0u;
                        v95 = 0u;
                        v43 = [objc_getProperty(self v42];
                        v44 = [v43 countByEnumeratingWithState:&v94 objects:buf count:16];
                        if (v44)
                        {
                          v45 = v44;
                          v46 = *v95;
                          while (2)
                          {
                            for (k = 0; k != v45; k = k + 1)
                            {
                              if (*v95 != v46)
                              {
                                objc_enumerationMutation(v43);
                              }

                              v48 = *(*(&v94 + 1) + 8 * k);
                              v93 = 0;
                              [v48 UTF8String];
                              v49 = nw_endpoint_create_address_from_string();
                              v50 = v49;
                              if (v49 && v98 >= v93)
                              {
                                v51 = [v39 commonPrefixWithString:v48 options:2];
                                v52 = [v51 length];

                                if (v52)
                                {

                                  v4 = v62;
                                  v16 = v71;
                                  v20 = v66;
                                  v17 = v69;
                                  goto LABEL_56;
                                }
                              }

                              else
                              {
                              }
                            }

                            v45 = [v43 countByEnumeratingWithState:&v94 objects:buf count:16];
                            if (v45)
                            {
                              continue;
                            }

                            break;
                          }
                        }

                        v4 = v62;
                        v16 = v71;
                        v20 = v66;
                      }

                      else
                      {
                      }

                      v61 = ne_log_obj();
                      v57 = obj;
                      v56 = v64;
                      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v104 = v39;
                        _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "Ignoring PvD configuration, prefix %@ was not already configured", buf, 0xCu);
                      }

                      v58 = v64;
                      goto LABEL_72;
                    }

LABEL_56:
                    v38 = v72 + 1;
                  }

                  while ((v72 + 1) != v68);
                  v68 = [v64 countByEnumeratingWithState:&v77 objects:v99 count:16];
                  if (v68)
                  {
                    continue;
                  }

                  break;
                }
              }
            }

            v18 = v74 + 1;
          }

          while ((v74 + 1) != v73);
          v14 = v63;
          v73 = [v16 countByEnumeratingWithState:&v89 objects:v102 count:16];
        }

        while (v73);
      }
    }

    v53 = ne_log_obj();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      v54 = [(NESMSession *)self description];
      *buf = 138412290;
      v104 = v54;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "Updating policies due to PvD configuration change for %@", buf, 0xCu);
    }

    sub_100084AD8(self, 1);
  }

  else
  {
    v55 = ne_log_obj();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "Ignoring PvD update due to empty match rules", buf, 2u);
    }
  }

  v16 = v14;
LABEL_85:
}

- (BOOL)reportError:(int)a3 withOptions:(id)a4
{
  v7 = a4;
  v8 = 0;
  if (a3 > 59)
  {
    if (a3 <= 1199)
    {
      if (a3 <= 1103)
      {
        if (a3 == 60)
        {
          goto LABEL_26;
        }

        if (a3 == 1100)
        {
          v8 = 20;
          goto LABEL_26;
        }
      }

      else
      {
        if ((a3 - 1104) < 2)
        {
          goto LABEL_22;
        }

        if (a3 == 1106)
        {
          goto LABEL_4;
        }
      }
    }

    else if (a3 > 1205)
    {
      switch(a3)
      {
        case 1206:
          goto LABEL_4;
        case 1207:
          goto LABEL_26;
        case 1302:
          goto LABEL_22;
      }
    }

    else
    {
      if ((a3 - 1204) < 2)
      {
        goto LABEL_22;
      }

      if (a3 == 1200)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    v9 = (a3 + 9858);
    if (v9 <= 0x32)
    {
      if (((1 << (a3 - 126)) & 0x41807C0000001) != 0)
      {
LABEL_4:
        v8 = 28;
LABEL_26:
        v10 = &selRef_temporaryAllowMulticastNetworkName;
        v40 = v8;
        if (self)
        {
          if (!objc_getProperty(self, v6, 480, 1))
          {
            v12 = objc_alloc_init(NSMutableDictionary);
            objc_setProperty_atomic(self, v13, v12, 480);
          }

          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          Property = objc_getProperty(self, v11, 480, 1);
        }

        else
        {

          Property = 0;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
        }

        v41 = v7;
        obj = Property;
        v15 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
        if (v15)
        {
          v17 = v15;
          v43 = 0;
          v18 = 0;
          v19 = *v45;
          do
          {
            v20 = 0;
            do
            {
              if (*v45 != v19)
              {
                objc_enumerationMutation(obj);
              }

              v21 = *(*(&v44 + 1) + 8 * v20);
              if (!v18)
              {
                goto LABEL_39;
              }

              v22 = v10;
              v23 = self ? objc_getProperty(self, v16, *(v10 + 622), 1) : 0;
              v24 = v23;
              v25 = [v24 objectForKeyedSubscript:v21];
              v26 = [v18 compare:v25];

              v10 = v22;
              if (v26 == -1)
              {
LABEL_39:
                v43 = [v21 intValue];
                if (self)
                {
                  v28 = objc_getProperty(self, v27, *(v10 + 622), 1);
                }

                else
                {
                  v28 = 0;
                }

                v29 = v28;
                v30 = [v29 objectForKeyedSubscript:v21];

                v18 = v30;
              }

              v20 = v20 + 1;
            }

            while (v17 != v20);
            v31 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
            v17 = v31;
          }

          while (v31);
        }

        else
        {
          v43 = 0;
          v18 = 0;
        }

        v7 = v41;
        if (v43 != v40)
        {
          v32 = ne_log_obj();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = [(NESMSession *)self description];
            *buf = 138412802;
            v49 = v33;
            v50 = 1024;
            v51 = v43;
            v52 = 1024;
            v53 = v40;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Relay %@ last recorded error changing from %d to %d", buf, 0x18u);
          }
        }

        v35 = +[NSDate now];
        if (self)
        {
          v36 = objc_getProperty(self, v34, *(v10 + 622), 1);
        }

        else
        {
          v36 = 0;
        }

        v37 = v36;
        v38 = [NSNumber numberWithInt:v40];
        [v37 setObject:v35 forKeyedSubscript:v38];

        goto LABEL_56;
      }

      if (v9 == 42)
      {
LABEL_22:
        v8 = 21;
        goto LABEL_26;
      }
    }

    if ((a3 + 65568) <= 0x1E && ((1 << (a3 + 32)) & 0x4000C001) != 0)
    {
      v8 = 17;
      goto LABEL_26;
    }

    if (!a3)
    {
      goto LABEL_26;
    }
  }

  v18 = ne_log_obj();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v49) = a3;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Relay session ignoring unmapped error %d", buf, 8u);
  }

LABEL_56:

  return 1;
}

- (id)copyExtendedStatus
{
  v3 = [NSMutableDictionary alloc];
  v52.receiver = self;
  v52.super_class = NESMRelaySession;
  v4 = [(NESMSession *)&v52 copyExtendedStatus];
  v41 = [v3 initWithDictionary:v4];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  if (self)
  {
    Property = objc_getProperty(self, v5, 480, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v8 = [v7 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v49;
    do
    {
      v12 = 0;
      do
      {
        if (*v49 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v48 + 1) + 8 * v12);
        if (self)
        {
          v14 = objc_getProperty(self, v9, 480, 1);
        }

        else
        {
          v14 = 0;
        }

        v15 = [v14 objectForKeyedSubscript:{v13, v41}];
        [v15 timeIntervalSinceNow];
        v17 = v16;

        if (v17 > 86400.0)
        {
          if (self)
          {
            v18 = objc_getProperty(self, v9, 480, 1);
          }

          else
          {
            v18 = 0;
          }

          [v18 removeObjectForKey:v13];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v19 = [v7 countByEnumeratingWithState:&v48 objects:v54 count:16];
      v10 = v19;
    }

    while (v19);
  }

  if (self)
  {
    v21 = objc_getProperty(self, v20, 480, 1);
  }

  else
  {
    v21 = 0;
  }

  v22 = [v21 keysSortedByValueUsingComparator:{&stru_1000EA828, v41}];
  v23 = objc_alloc_init(NSMutableArray);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v22;
  v24 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v45;
    do
    {
      v27 = 0;
      do
      {
        if (*v45 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v44 + 1) + 8 * v27);
        v29 = objc_alloc_init(NSMutableDictionary);
        [v29 setObject:v28 forKeyedSubscript:@"LastCause"];
        if (self)
        {
          v31 = [objc_getProperty(self v30];
          [v31 timeIntervalSince1970];
          v32 = [NSNumber numberWithDouble:?];
          [v29 setObject:v32 forKeyedSubscript:@"TimeEpoch"];

          v34 = objc_getProperty(self, v33, 480, 1);
        }

        else
        {
          v37 = [0 objectForKeyedSubscript:v28];
          [v37 timeIntervalSince1970];
          v38 = [NSNumber numberWithDouble:?];
          [v29 setObject:v38 forKeyedSubscript:@"TimeEpoch"];

          v34 = 0;
        }

        v35 = [v34 objectForKeyedSubscript:v28];
        v36 = [v35 description];
        [v29 setObject:v36 forKeyedSubscript:@"TimeString"];

        [v23 addObject:v29];
        v27 = v27 + 1;
      }

      while (v25 != v27);
      v39 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
      v25 = v39;
    }

    while (v39);
  }

  [v42 setObject:v23 forKeyedSubscript:@"SortedRelayErrors"];
  return v42;
}

- (void)handleGetInfoMessage:(id)a3 withType:(int)a4
{
  xdict = a3;
  reply = xpc_dictionary_create_reply(xdict);
  if (a4 == 2)
  {
    v7 = [(NESMRelaySession *)self copyExtendedStatus];
    if (v7)
    {
      v8 = v7;
      v9 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(reply, "SessionInfo", v9);
    }
  }

  v10 = xpc_dictionary_get_remote_connection(xdict);
  xpc_connection_send_message(v10, reply);
}

- (void)dealloc
{
  sub_100085FD0(self, a2);
  [(NESMRelaySession *)self uninstall];
  v3.receiver = self;
  v3.super_class = NESMRelaySession;
  [(NESMSession *)&v3 dealloc];
}

- (void)uninstall
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v18 = 138412290;
    v19 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@ uninstalling relay session", &v18, 0xCu);
  }

  v4 = [(NESMSession *)self policySession];
  sub_100030D44(v4);

  v5 = [(NESMSession *)self policySession];
  sub_100031148(v5);

  sub_1000862AC(self, v6);
  sub_1000863C8(self, v7);
  if (self)
  {
    Property = objc_getProperty(self, v8, 448, 1);
    if (Property)
    {
      v10 = Property;
      objc_setProperty_atomic(self, v11, 0, 448);
      self->_dnsListenerPort = 0;
      nw_connection_group_cancel(v10);
    }
  }

  v12 = [(NESMSession *)self configuration];
  v13 = [v12 relay];
  v14 = [v13 isEnabled];

  if ((v14 & 1) == 0)
  {
    sub_100085FD0(self, v15);
  }

  if (self)
  {
    objc_setProperty_atomic(self, v15, 0, 488);
    objc_setProperty_atomic(self, v16, 0, 416);
    objc_setProperty_atomic(self, v17, 0, 480);
  }

  [(NESMSession *)self setStatus:1];
}

- (void)install
{
  selfa = self;
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v162 = selfa;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@ installing relay session", buf, 0xCu);
  }

  sub_1000862AC(selfa, v3);
  sub_1000863C8(selfa, v4);
  Property = selfa;
  if (selfa)
  {
    v7 = objc_getProperty(selfa, v5, 408, 1);
    if (v7)
    {
      v9 = v7;
      if ([objc_getProperty(selfa v8])
      {
        v11 = [objc_getProperty(selfa v10];
        v12 = [v11 count] == 0;

        if (!v12)
        {
          v156 = 0u;
          v157 = 0u;
          v154 = 0u;
          v155 = 0u;
          v13 = [objc_getProperty(selfa v8];
          v14 = [v13 countByEnumeratingWithState:&v154 objects:buf count:16];
          if (v14)
          {
            v15 = *v155;
            v16 = 1;
            v17 = 1;
            do
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v155 != v15)
                {
                  objc_enumerationMutation(v13);
                }

                v19 = *(*(&v154 + 1) + 8 * i);
                v20 = [v19 HTTP3RelayURL];
                v21 = v20 != 0;

                v22 = [v19 HTTP2RelayURL];
                LODWORD(v19) = v22 != 0;

                v17 &= v21;
                v16 &= v19;
              }

              v14 = [v13 countByEnumeratingWithState:&v154 objects:buf count:16];
            }

            while (v14);

            if (((v17 | v16) & 1) == 0)
            {
              v90 = ne_log_obj();
              if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
              {
                LODWORD(v167) = 138412290;
                *(&v167 + 4) = selfa;
                _os_log_error_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "%@ Invalid proxy hops, no consistent HTTP version supported", &v167, 0xCu);
              }

              objc_setProperty_atomic(selfa, v91, 0, 360);
              objc_setProperty_atomic(selfa, v92, 0, 368);
              goto LABEL_19;
            }

            v145 = nw_array_create();
            v24 = (v17 ^ 1) & v16;
            if ((v17 & v16) == 0)
            {
              v143 = 0;
              v144 = 0;
              goto LABEL_58;
            }
          }

          else
          {

            v145 = nw_array_create();
            v24 = 0;
          }

          v143 = nw_array_create();
          v144 = 1;
LABEL_58:
          v152 = 0u;
          v153 = 0u;
          v150 = 0u;
          v151 = 0u;
          v50 = [objc_getProperty(selfa v23];
          v51 = [v50 countByEnumeratingWithState:&v150 objects:v160 count:16];
          if (v51)
          {
            v52 = *v151;
            do
            {
              for (j = 0; j != v51; j = j + 1)
              {
                if (*v151 != v52)
                {
                  objc_enumerationMutation(v50);
                }

                v54 = *(*(&v150 + 1) + 8 * j);
                if (v24)
                {
                  [*(*(&v150 + 1) + 8 * j) HTTP2RelayURL];
                }

                else
                {
                  [*(*(&v150 + 1) + 8 * j) HTTP3RelayURL];
                }
                v55 = ;
                v56 = [v55 absoluteString];

                if (v56)
                {
                  v57 = sub_100087AC8(v56, v54);
                  nw_array_append();
                  if (v144)
                  {
                    v58 = [v54 HTTP2RelayURL];
                    v59 = [v58 absoluteString];

                    if (v59)
                    {
                      v60 = sub_100087AC8(v59, v54);
                      nw_array_append();
                    }
                  }

                  else
                  {
                    v59 = 0;
                  }
                }
              }

              v51 = [v50 countByEnumeratingWithState:&v150 objects:v160 count:16];
            }

            while (v51);
          }

          if (!v144)
          {
            sub_1000862AC(selfa, v61);
            goto LABEL_102;
          }

          fallback_privacy_proxy = nw_proxy_config_create_fallback_privacy_proxy();
          objc_setProperty_atomic(selfa, v63, fallback_privacy_proxy, 368);

          objc_getProperty(selfa, v64, 368, 1);
          nw_proxy_config_set_ignore_privacy_stance();
          objc_getProperty(selfa, v65, 368, 1);
          nw_proxy_config_set_use_over_privacy_proxy();
          v66 = [NERelayNetworkAgent alloc];
          v67 = [(NESMSession *)selfa configuration];
          v68 = [v67 identifier];
          v69 = [v66 initWithConfigUUID:v68 sessionType:-[NESMRelaySession type](selfa name:{"type"), @"h2-fallback"}];
          objc_setProperty_atomic(selfa, v70, v69, 376);

          [objc_getProperty(selfa v71];
          v72 = [(NESMSession *)selfa configuration];
          v73 = [v72 name];
          [objc_getProperty(selfa v74];

          v75 = [NWNetworkAgentRegistration alloc];
          objc_getProperty(selfa, v76, 376, 1);
          v77 = [v75 initWithNetworkAgentClass:objc_opt_class()];
          objc_setProperty_atomic(selfa, v78, v77, 384);

          v80 = objc_getProperty(selfa, v79, 368, 1);
          v82 = [objc_getProperty(selfa v81];
          is_equal = nw_proxy_config_is_equal();

          if ((is_equal & 1) == 0)
          {
            [objc_getProperty(selfa v84];
          }

          *&v167 = 0;
          *(&v167 + 1) = &v167;
          v168 = 0x3032000000;
          v169 = sub_100084BF8;
          v170 = sub_100084C08;
          v171 = 0;
          v85 = +[NEFileHandleMaintainer sharedMaintainer];
          v158[0] = _NSConcreteStackBlock;
          v158[1] = 3221225472;
          v158[2] = sub_1000891F0;
          v158[3] = &unk_1000EA8C8;
          v158[4] = selfa;
          v158[5] = &v167;
          [v85 iterateFileHandlesWithBlock:v158];

          v86 = *(*(&v167 + 1) + 40);
          if (v86)
          {
            [v86 agentUUID];
          }

          else
          {
            +[NSUUID UUID];
          }
          v87 = ;
          v89 = objc_getProperty(selfa, v88, 376, 1);
          [v89 setAgentUUID:v87];

          v93 = *(*(&v167 + 1) + 40);
          if (v93)
          {
            v94 = [v93 handle];
            v95 = dup([v94 fileDescriptor]);

            v97 = objc_getProperty(selfa, v96, 384, 1);
            v99 = objc_getProperty(selfa, v98, 376, 1);
            v100 = [v97 setRegisteredNetworkAgent:v99 fileDescriptor:v95];

            v102 = selfa;
            if ((v100 & 1) == 0)
            {
              close(v95);
              sub_10008C510(selfa);
            }
          }

          else
          {
            v102 = selfa;
            sub_10008C510(selfa);
          }

          v103 = objc_getProperty(v102, v101, 384, 1);
          v104 = [v103 isRegistered];

          if (v104)
          {
            v106 = selfa;
            if (is_equal)
            {
LABEL_101:
              sub_100086814(v106);
              _Block_object_dispose(&v167, 8);

LABEL_102:
              if (v24)
              {
                default_privacy_proxy = nw_proxy_config_create_fallback_privacy_proxy();
              }

              else
              {
                default_privacy_proxy = nw_proxy_config_create_default_privacy_proxy();
              }

              v128 = default_privacy_proxy;
              objc_setProperty_atomic(selfa, v127, default_privacy_proxy, 360);

              objc_getProperty(selfa, v129, 360, 1);
              nw_proxy_config_set_ignore_privacy_stance();
              objc_getProperty(selfa, v130, 360, 1);
              nw_proxy_config_set_use_over_privacy_proxy();
              if (v144)
              {
                v132 = [objc_getProperty(selfa v131];
                v133 = v132 == 0;

                if (!v133)
                {
                  v167 = 0uLL;
                  v134 = [objc_getProperty(selfa v131];
                  [v134 getUUIDBytes:&v167];

                  objc_getProperty(selfa, v135, 360, 1);
                  nw_proxy_config_set_fallback_proxy_agent();
                }
              }

              v136 = [objc_getProperty(selfa v131];
              v137 = [v136 lastObject];

              v138 = [v137 dnsOverHTTPSURL];
              if (v138)
              {
              }

              else if (!sub_100087DF4(selfa, v139))
              {
LABEL_112:

                goto LABEL_19;
              }

              sub_100087E8C(selfa, 1);
              goto LABEL_112;
            }

            v107 = objc_getProperty(selfa, v105, 384, 1);
            v109 = objc_getProperty(selfa, v108, 376, 1);
            v110 = [v107 updateNetworkAgent:v109];

            if (v110)
            {
              v111 = ne_log_obj();
              if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
              {
                v113 = objc_getProperty(selfa, v112, 376, 1);
                v114 = [v113 agentUUID];
                *v163 = 138412546;
                v164 = selfa;
                v165 = 2114;
                v166 = v114;
                _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "%@: Updated fallback relay network agent %{public}@", v163, 0x16u);
              }
            }

            else
            {
              v111 = ne_log_obj();
              if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
              {
                v140 = objc_getProperty(selfa, v125, 376, 1);
                v141 = [v140 agentUUID];
                *v163 = 138412546;
                v164 = selfa;
                v165 = 2114;
                v166 = v141;
                _os_log_error_impl(&_mh_execute_header, v111, OS_LOG_TYPE_ERROR, "%@: Update failed for fallback relay network agent %{public}@", v163, 0x16u);
              }
            }
          }

          else
          {
            v115 = objc_getProperty(selfa, v105, 384, 1);
            v117 = objc_getProperty(selfa, v116, 376, 1);
            v118 = [v115 registerNetworkAgent:v117];

            if (v118)
            {
              v111 = ne_log_obj();
              if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
              {
                v120 = objc_getProperty(selfa, v119, 376, 1);
                v121 = [v120 agentUUID];
                *v163 = 138412546;
                v164 = selfa;
                v165 = 2114;
                v166 = v121;
                _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "%@: Registered fallback relay network agent %{public}@", v163, 0x16u);
              }
            }

            else
            {
              v111 = ne_log_obj();
              if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
              {
                v123 = objc_getProperty(selfa, v122, 376, 1);
                v124 = [v123 agentUUID];
                *v163 = 138412546;
                v164 = selfa;
                v165 = 2114;
                v166 = v124;
                _os_log_error_impl(&_mh_execute_header, v111, OS_LOG_TYPE_ERROR, "%@: Registration failed for fallback relay network agent %{public}@", v163, 0x16u);
              }
            }
          }

          v106 = selfa;
          goto LABEL_101;
        }
      }

      else
      {
      }
    }

    objc_setProperty_atomic(selfa, v8, 0, 360);
    objc_setProperty_atomic(selfa, v25, 0, 368);
LABEL_19:
    if (objc_getProperty(selfa, v26, 488, 1))
    {
      sub_100084AD8(selfa, 1);
      goto LABEL_50;
    }

    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    Property = objc_getProperty(selfa, v27, 408, 1);
    goto LABEL_22;
  }

  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
LABEL_22:
  v29 = [Property relays];
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = [v29 countByEnumeratingWithState:&v146 objects:v159 count:16];
  if (!v33)
  {
    goto LABEL_42;
  }

  v34 = *v147;
  do
  {
    for (k = 0; k != v33; k = k + 1)
    {
      if (*v147 != v34)
      {
        objc_enumerationMutation(v29);
      }

      v36 = *(*(&v146 + 1) + 8 * k);
      if (v32)
      {
        if (v31)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v32 = [*(*(&v146 + 1) + 8 * k) HTTP3RelayURL];
        if (v31)
        {
          goto LABEL_32;
        }
      }

      v31 = [v36 HTTP2RelayURL];
LABEL_32:
      v37 = [v36 identity];
      if (v37)
      {
        v38 = v30 == 0;
      }

      else
      {
        v38 = 0;
      }

      v39 = v38;

      if (v39)
      {
        v30 = [v36 copySecIdentityRef];
      }
    }

    v33 = [v29 countByEnumeratingWithState:&v146 objects:v159 count:16];
  }

  while (v33);
LABEL_42:

  if (v32 | v31)
  {
    v40 = [NEPvDFetcher alloc];
    v41 = [(NESMSession *)selfa queue];
    if (v32)
    {
      v42 = v32;
    }

    else
    {
      v42 = v31;
    }

    v44 = [v40 initWithDelegate:selfa queue:v41 url:v42 identityRef:v30];
    if (selfa)
    {
      objc_setProperty_atomic(selfa, v43, v44, 488);
    }
  }

  sub_100084AD8(selfa, 1);
  if (selfa)
  {
LABEL_50:
    v45 = objc_getProperty(selfa, v28, 408, 1);
    if (v45)
    {
      v47 = v45;
      v48 = objc_getProperty(selfa, v46, 360, 1) == 0;

      if (!v48)
      {
        [(NESMSession *)selfa setStatus:3];
        return;
      }
    }
  }

  v49 = ne_log_obj();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v162 = selfa;
    _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%@ relay is not ready, not moving to connected", buf, 0xCu);
  }
}

- (void)handleNetworkDetectionNotification:(int)a3
{
  if (a3 == 1)
  {
    block[7] = v3;
    block[8] = v4;
    v6 = [(NESMSession *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100089328;
    block[3] = &unk_1000EB1C0;
    block[4] = self;
    dispatch_async(v6, block);
  }
}

- (BOOL)handleUpdateConfiguration:(id)a3
{
  v4 = a3;
  if (v4 && (v11.receiver = self, v11.super_class = NESMRelaySession, [(NESMSession *)&v11 handleUpdateConfiguration:v4]))
  {
    v5 = [v4 relay];
    v7 = v5;
    if (self)
    {
      objc_setProperty_atomic(self, v6, v5, 408);

      sub_100089454(self, v8);
    }

    else
    {
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)handleStartMessage:(id)a3
{
  v4 = a3;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ handling start for relay session", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = NESMRelaySession;
  [(NESMSession *)&v7 handleStartMessage:v4];

  sub_100089454(self, v6);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a3;
  v10 = a4;
  v12 = a5;
  if (self)
  {
    Property = objc_getProperty(self, v11, 432, 1);
  }

  else
  {
    Property = 0;
  }

  if (Property == v10 && [v9 isEqualToString:@"bestAvailableNetworkDescription"])
  {
    v15 = objc_alloc_init(NEOnDemandRuleConnect);
    if (self)
    {
      v16 = objc_getProperty(self, v14, 432, 1);
    }

    else
    {
      v16 = 0;
    }

    v52 = [v16 bestAvailableNetworkDescription];
    if (v52)
    {
      if (self)
      {
        v18 = objc_getProperty(self, v17, 432, 1);
      }

      else
      {
        v18 = 0;
      }

      v19 = [v18 networkDescriptionArray];
      v20 = [v19 indexOfObject:v52];

      if (self)
      {
        v22 = objc_getProperty(self, v21, 408, 1);
      }

      else
      {
        v22 = 0;
      }

      v23 = [v22 onDemandRules];
      v24 = [v23 count];

      if (v24 > v20)
      {
        if (self)
        {
          v26 = objc_getProperty(self, v25, 408, 1);
        }

        else
        {
          v26 = 0;
        }

        v27 = [v26 onDemandRules];
        v28 = [v27 objectAtIndex:v20];

        v15 = v28;
      }

      v29 = ne_log_obj();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
LABEL_21:

        if ([v15 action] == 3)
        {
          v34 = objc_alloc_init(NSMutableArray);
          v51 = v15;
          v35 = [v15 connectionRules];
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v36 = [v35 countByEnumeratingWithState:&v53 objects:v57 count:16];
          if (v36)
          {
            v38 = v36;
            v39 = *v54;
            do
            {
              for (i = 0; i != v38; i = i + 1)
              {
                if (*v54 != v39)
                {
                  objc_enumerationMutation(v35);
                }

                v41 = *(*(&v53 + 1) + 8 * i);
                if ([v41 action] == 2)
                {
                  v42 = [v41 matchDomains];
                  [v34 addObjectsFromArray:v42];
                }
              }

              v38 = [v35 countByEnumeratingWithState:&v53 objects:v57 count:16];
            }

            while (v38);
          }

          if (self)
          {
            v43 = objc_getProperty(self, v37, 440, 1);
          }

          else
          {
            v43 = 0;
          }

          v44 = [v34 isEqual:v43];
          v46 = v44 ^ 1;
          if (self)
          {
            v15 = v51;
            if ((v44 & 1) == 0)
            {
              objc_setProperty_atomic(self, v45, v34, 440);
              v46 = 1;
            }
          }

          else
          {
            v15 = v51;
          }
        }

        else if (self)
        {
          v46 = objc_getProperty(self, v33, 440, 1) != 0;
          objc_setProperty_atomic(self, v47, 0, 440);
        }

        else
        {
          v46 = 0;
        }

        if (-[NESMSession status](self, "status") != 1 && ([v15 action] == 2 || objc_msgSend(v15, "action") == 4))
        {
          v50 = [(NESMSession *)self server];
          [v50 requestUninstallForSession:self];
        }

        else
        {
          if (-[NESMSession status](self, "status") == 3 || [v15 action] != 1 && objc_msgSend(v15, "action") != 3)
          {
            if ((([(NESMSession *)self status]== 3) & v46) == 1)
            {
              v48 = self;
              v49 = 0;
            }

            else
            {
              if (!self || !self->_configurationUpdatePending)
              {
                goto LABEL_55;
              }

              self->_configurationUpdatePending = 0;
              v48 = self;
              v49 = 1;
            }

            sub_100084AD8(v48, v49);
LABEL_55:

            goto LABEL_56;
          }

          v50 = [(NESMSession *)self server];
          [v50 requestInstallForSession:self withParentSession:0 exclusive:0];
        }

        goto LABEL_55;
      }

      *buf = 138412546;
      v59 = self;
      v60 = 2112;
      v61 = v15;
      v30 = "%@ Matched Relay On Demand rule %@";
      v31 = v29;
      v32 = 22;
    }

    else
    {
      v29 = ne_log_obj();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      *buf = 138412290;
      v59 = self;
      v30 = "%@ Matched no Relay On Demand rule";
      v31 = v29;
      v32 = 12;
    }

    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
    goto LABEL_21;
  }

LABEL_56:
}

- (BOOL)shouldBeIdleForStatus:(int)a3
{
  if (a3 != 3)
  {
    return a3 < 2;
  }

  if (sub_100087DF4(self, a2))
  {
    return 0;
  }

  if (!self)
  {
    return 1;
  }

  v5 = 1;
  v6 = objc_getProperty(self, v4, 488, 1);
  if (v6)
  {
    v8 = v6;
    v9 = [objc_getProperty(self v7];

    if (v9)
    {
      return 0;
    }
  }

  return v5;
}

- (NESMRelaySession)initWithConfiguration:(id)a3 andServer:(id)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = NESMRelaySession;
  v7 = [(NESMSession *)&v18 initWithConfiguration:v6 andServer:a4];
  if (!v7)
  {
LABEL_6:
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@ initialized relay session", buf, 0xCu);
    }

    v15 = v7;
    goto LABEL_12;
  }

  v8 = [v6 relay];

  if (v8)
  {
    v9 = [v6 relay];
    relayConfig = v7->_relayConfig;
    v7->_relayConfig = v9;

    v11 = [NESMPolicySession alloc];
    v12 = [v6 identifier];
    v13 = [v6 grade];
    if (v11)
    {
      v11 = sub_100033D18(&v11->super.isa, v12, 9, v13, 2, 1);
    }

    [(NESMSession *)v7 setPolicySession:v11];

    sub_10008E79C(v7);
    goto LABEL_6;
  }

  v16 = ne_log_obj();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v20 = v7;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@ relay configuration is nil", buf, 0xCu);
  }

  v15 = 0;
LABEL_12:

  return v15;
}

@end