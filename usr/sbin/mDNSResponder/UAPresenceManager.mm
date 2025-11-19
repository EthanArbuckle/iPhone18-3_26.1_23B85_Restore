@interface UAPresenceManager
- (BOOL)_addRecordsFromPresence:(id)a3;
- (BOOL)newSharableAddresses:(id)a3;
- (UAPresenceManager)init;
- (void)dealloc;
- (void)initialCloudKitImportReceived:(id)a3;
- (void)releaseSubscriptions;
- (void)removeQhash:(unsigned int)a3 forInterface:(mDNSInterfaceID_dummystruct *)a4;
- (void)retainSubscription;
- (void)updateCacheFromPresence;
- (void)updateInvalidFromPresence;
@end

@implementation UAPresenceManager

- (void)initialCloudKitImportReceived:(id)a3
{
  [s_presence setPresenceReady:1];
  v3 = _unicast_assist_cache_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "unicast assist SKPresence initialCloudKitImportReceived called", v4, 2u);
  }
}

- (void)updateCacheFromPresence
{
  v3 = [(UAPresenceManager *)self presence];
  v4 = [v3 presentDevices];
  v5 = [v4 filterObjectsUsingBlock:&__block_literal_global_115];

  v97 = self;
  v6 = [(UAPresenceManager *)self skUpdates];
  v7 = [v6 allKeys];

  if ([v5 count])
  {
    v111[0] = _NSConcreteStackBlock;
    v111[1] = 3221225472;
    v111[2] = __44__UAPresenceManager_updateCacheFromPresence__block_invoke_116;
    v111[3] = &unk_1001515F0;
    v112 = v5;
    v8 = [v7 filterObjectsUsingBlock:v111];

    v7 = v8;
  }

  if ([v7 count])
  {
    v9 = [v7 count];
    sUAPresence_Count_update_devices_missing += v9;
  }

  ++sUAPresence_Count_update;
  v10 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v10, v11, v12, v13, v14, v15, v16, v17);
  mDNS_Lock_(mDNSStorage, "[UAPresenceManager updateCacheFromPresence]", 1362);
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  obj = v7;
  v18 = [obj countByEnumeratingWithState:&v107 objects:v123 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v108;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v108 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v107 + 1) + 8 * i);
        v23 = [(UAPresenceManager *)v97 skUpdates];
        v24 = [v23 objectForKeyedSubscript:v22];

        v25 = [v24 objectForKeyedSubscript:@"auth_records"];
        v26 = _unicast_assist_cache_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = [v25 count];
          *buf = 134218242;
          v127 = v27;
          v128 = 2112;
          v129 = v22;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "unicast assist updateCacheFromPresence: remove missing device (auth) count %lu from %@", buf, 0x16u);
        }

        __44__UAPresenceManager_updateCacheFromPresence__block_invoke(v25);
        v28 = [(UAPresenceManager *)v97 skUpdates];
        [v28 setObject:0 forKeyedSubscript:v22];
      }

      v19 = [obj countByEnumeratingWithState:&v107 objects:v123 count:16];
    }

    while (v19);
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v88 = v5;
  v91 = [v88 countByEnumeratingWithState:&v103 objects:v122 count:16];
  if (v91)
  {
    v90 = *v104;
    v30 = @"qhashes";
    *&v29 = 138412546;
    v87 = v29;
    do
    {
      v31 = 0;
      do
      {
        if (*v104 != v90)
        {
          objc_enumerationMutation(v88);
        }

        v94 = v31;
        v32 = *(*(&v103 + 1) + 8 * v31);
        v33 = [v32 presencePayload];
        v96 = [v33 payloadDictionary];

        v34 = [(UAPresenceManager *)v97 skUpdates];
        v35 = [v32 deviceIdentifier];
        v36 = [v34 objectForKey:v35];

        v95 = v36;
        v37 = [v36 objectForKeyedSubscript:@"time"];
        if (!v37 || ([v32 assertionTime], v38 = objc_claimAutoreleasedReturnValue(), v39 = v37, v40 = objc_msgSend(v38, "compare:", v37), v38, v41 = v40 == 1, v37 = v39, v41))
        {
          v92 = v37;
          v93 = v32;
          v42 = [v96 objectForKeyedSubscript:@"auth_records"];
          v43 = [v36 objectForKeyedSubscript:@"auth_records"];
          v44 = v42;
          v102 = +[NSMutableArray array];
          v116 = 0u;
          v117 = 0u;
          v118 = 0u;
          v119 = 0u;
          v101 = v43;
          v45 = [v101 countByEnumeratingWithState:&v116 objects:buf count:16];
          v99 = v44;
          if (v45)
          {
            v46 = v45;
            v47 = *v117;
            v98 = *v117;
            do
            {
              v48 = 0;
              v100 = v46;
              do
              {
                if (*v117 != v47)
                {
                  objc_enumerationMutation(v101);
                }

                v49 = *(*(&v116 + 1) + 8 * v48);
                v115[0] = _NSConcreteStackBlock;
                v115[1] = 3221225472;
                v115[2] = __44__UAPresenceManager_updateCacheFromPresence__block_invoke_2;
                v115[3] = &unk_100151538;
                v115[4] = v49;
                v50 = [v44 indexOfObjectPassingTest:v115];
                if (v50 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  [v102 addObject:v49];
                }

                else
                {
                  v51 = [v44 objectAtIndex:v50];
                  v52 = [v49 objectForKeyedSubscript:v30];
                  v53 = [v51 objectForKeyedSubscript:v30];
                  v113[0] = _NSConcreteStackBlock;
                  v113[1] = 3221225472;
                  v113[2] = __44__UAPresenceManager_updateCacheFromPresence__block_invoke_3;
                  v113[3] = &unk_100151560;
                  v54 = v30;
                  v55 = v53;
                  v114 = v55;
                  v56 = [v52 filterObjectsUsingBlock:v113];
                  if ([v56 count])
                  {
                    v57 = [v49 objectForKeyedSubscript:@"ifhash"];
                    v58 = [v49 objectForKeyedSubscript:@"addr"];
                    v124[0] = @"ifhash";
                    v124[1] = @"addr";
                    v125[0] = v57;
                    v125[1] = v58;
                    v124[2] = v54;
                    v125[2] = v56;
                    v59 = [NSDictionary dictionaryWithObjects:v125 forKeys:v124 count:3];
                    [v102 addObject:v59];
                  }

                  v30 = v54;
                  v47 = v98;
                  v44 = v99;
                  v46 = v100;
                }

                v48 = v48 + 1;
              }

              while (v46 != v48);
              v46 = [v101 countByEnumeratingWithState:&v116 objects:buf count:16];
            }

            while (v46);
          }

          if ([v102 count])
          {
            v60 = v102;
          }

          else
          {
            v60 = 0;
          }

          v61 = v60;

          v62 = v93;
          if ([v61 count])
          {
            v63 = _unicast_assist_cache_log();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
            {
              v64 = [v61 count];
              v65 = [v93 deviceIdentifier];
              *buf = 134218242;
              v127 = v64;
              v128 = 2112;
              v129 = v65;
              _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "unicast assist updateCacheFromPresence: remove diffed (auth) count %lu from %@", buf, 0x16u);
            }

            __44__UAPresenceManager_updateCacheFromPresence__block_invoke(v61);
          }

          v66 = _unicast_assist_cache_log();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
          {
            v67 = [v99 count];
            v68 = [v93 deviceIdentifier];
            v69 = [v93 assertionTime];
            *buf = 134218498;
            v127 = v67;
            v128 = 2112;
            v129 = v68;
            v130 = 2112;
            v131 = v69;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "unicast assist updateCacheFromPresence: next (auth) count %lu from %@ time %@", buf, 0x20u);

            v62 = v93;
          }

          v70 = [(UAPresenceManager *)v97 _addRecordsFromPresence:v99];
          v120[0] = @"time";
          v71 = [v62 assertionTime];
          v121[0] = v71;
          v121[1] = v99;
          v120[1] = @"auth_records";
          v120[2] = @"had_invalid_addr";
          v72 = &__kCFBooleanFalse;
          if (v70)
          {
            v72 = &__kCFBooleanTrue;
          }

          v121[2] = v72;
          v73 = [NSDictionary dictionaryWithObjects:v121 forKeys:v120 count:3];
          v74 = [(UAPresenceManager *)v97 skUpdates];
          v75 = [v62 deviceIdentifier];
          [v74 setObject:v73 forKeyedSubscript:v75];

          ++sUAPresence_Count_update_devices;
          v37 = v92;
        }

        else
        {
          v76 = _unicast_assist_cache_log();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
          {
            v78 = [v32 deviceIdentifier];
            v79 = [v32 assertionTime];
            *buf = v87;
            v127 = v78;
            v128 = 2112;
            v129 = v79;
            _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_INFO, "unicast assist updateCacheFromPresence: skipping stale update from %@ time %@", buf, 0x16u);

            v37 = v39;
          }

          ++sUAPresence_Count_update_devices_old;
        }

        v31 = v94 + 1;
      }

      while ((v94 + 1) != v91);
      v91 = [v88 countByEnumeratingWithState:&v103 objects:v122 count:16];
    }

    while (v91);
  }

  mDNS_Unlock_(mDNSStorage, "[UAPresenceManager updateCacheFromPresence]", 1414);
  KQueueUnlock("UAPresence updateCacheFromPresence", v80, v81, v82, v83, v84, v85, v86);
}

BOOL __44__UAPresenceManager_updateCacheFromPresence__block_invoke_116(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __44__UAPresenceManager_updateCacheFromPresence__block_invoke_2_117;
  v8[3] = &unk_1001515C8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 indexOfObjectPassingTest:v8] == 0x7FFFFFFFFFFFFFFFLL;

  return v6;
}

void __44__UAPresenceManager_updateCacheFromPresence__block_invoke(void *a1)
{
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = a1;
  v28 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v28)
  {
    v27 = *v37;
    *&v1 = 138413059;
    v25 = v1;
    do
    {
      v2 = 0;
      do
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v2;
        v3 = *(*(&v36 + 1) + 8 * v2);
        v4 = [v3 objectForKey:{@"ifhash", v25}];
        v5 = [v4 unsignedIntValue];

        v6 = [v3 objectForKey:@"addr"];
        v7 = [v3 objectForKey:@"qhashes"];
        v8 = _unicast_assist_cache_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = [v7 describeQHashes];
          v10 = [v6 describeAddr];
          *buf = v25;
          *v42 = v9;
          *&v42[8] = 2160;
          *&v42[10] = 1752392040;
          *&v42[18] = 2117;
          *&v42[20] = v10;
          *&v42[28] = 1024;
          v43 = v5;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "unicast assist updateCacheFromPresence: remove qhashes %@ addr %{sensitive, mask.hash}@ ifhash %x", buf, 0x26u);
        }

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v11 = v7;
        v12 = [v11 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v33;
          do
          {
            v15 = 0;
            do
            {
              if (*v33 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v32 + 1) + 8 * v15);
              v30[0] = 0;
              v30[1] = 0;
              v31 = 0;
              if (!_unicast_assist_data_to_addr(v6, v30))
              {
                v17 = [v16 unsignedIntValue];
                v18 = s_interface_head_0;
                if (!s_interface_head_0)
                {
                  goto LABEL_33;
                }

                while (*(v18 + 32) != v5 || LODWORD(v30[0]) != -1 && *(v18 + 36) != LODWORD(v30[0]))
                {
                  v18 = *v18;
                  if (!v18)
                  {
                    goto LABEL_33;
                  }
                }

                v19 = *(v18 + 8);
                if (!v19)
                {
LABEL_33:
                  v20 = -6727;
LABEL_34:
                  v22 = _unicast_assist_cache_log();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    v23 = [v6 describeAddr];
                    *buf = 67109891;
                    *v42 = v17;
                    *&v42[4] = 2160;
                    *&v42[6] = 1752392040;
                    *&v42[14] = 2117;
                    *&v42[16] = v23;
                    *&v42[24] = 1024;
                    *&v42[26] = v20;
                    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "unicast assist updateCacheFromPresence: (removed) FAILED qhash %x addr %{sensitive, mask.hash}@ err %d", buf, 0x22u);
                  }

                  goto LABEL_37;
                }

                v20 = -6727;
                do
                {
LABEL_22:
                  if (mDNSSameAddress(v19 + 4, v30))
                  {
                    v21 = v19 + 1;
                    while (1)
                    {
                      v21 = *v21;
                      if (!v21)
                      {
                        break;
                      }

                      if (*(v21 + 2) == v17)
                      {
                        if (*(v21 + 18))
                        {
                          v20 = 0;
                          *(v21 + 18) = 0;
                          v19 = *v19;
                          if (v19)
                          {
                            goto LABEL_22;
                          }

                          goto LABEL_37;
                        }

                        v19 = *v19;
                        v20 = -6709;
                        if (v19)
                        {
                          goto LABEL_22;
                        }

                        goto LABEL_34;
                      }
                    }
                  }

                  v19 = *v19;
                }

                while (v19);
                if (v20)
                {
                  goto LABEL_34;
                }
              }

LABEL_37:
              v15 = v15 + 1;
            }

            while (v15 != v13);
            v24 = [v11 countByEnumeratingWithState:&v32 objects:v40 count:16];
            v13 = v24;
          }

          while (v24);
        }

        v2 = v29 + 1;
      }

      while ((v29 + 1) != v28);
      v28 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v28);
  }
}

uint64_t __44__UAPresenceManager_updateCacheFromPresence__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"ifhash"];
  v8 = [v6 objectForKeyedSubscript:@"addr"];

  v9 = [*(a1 + 32) objectForKeyedSubscript:@"ifhash"];
  if ([v7 isEqual:v9])
  {
    v10 = [*(a1 + 32) objectForKeyedSubscript:@"addr"];
    *a4 = [v8 isEqual:v10];
  }

  else
  {
    *a4 = 0;
  }

  v11 = *a4;
  return v11;
}

id __44__UAPresenceManager_updateCacheFromPresence__block_invoke_2_117(uint64_t a1, void *a2)
{
  v3 = [a2 deviceIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

BOOL __44__UAPresenceManager_updateCacheFromPresence__block_invoke_4(id a1, SKPresentDevice *a2)
{
  v2 = a2;
  if (([(SKPresentDevice *)v2 isSelfDevice]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v4 = [(SKPresentDevice *)v2 presencePayload];
    v5 = [v4 payloadDictionary];
    v6 = [v5 objectForKeyedSubscript:@"version"];

    v3 = [v6 isEqualToNumber:&off_1001555F0];
    if ((v3 & 1) == 0)
    {
      v7 = _unicast_assist_cache_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = [(SKPresentDevice *)v2 deviceIdentifier];
        v10 = 138412802;
        v11 = v6;
        v12 = 2112;
        v13 = v9;
        v14 = 2112;
        v15 = &off_1001555F0;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "unicast assist updateCacheFromPresence: skipping version %@ from %@ expected %@", &v10, 0x20u);
      }
    }
  }

  return v3;
}

- (void)updateInvalidFromPresence
{
  v2 = self;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = [(UAPresenceManager *)self skUpdates];
  v4 = [v3 allKeys];

  v5 = [v4 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v26;
    *&v6 = 134218498;
    v22 = v6;
    do
    {
      v9 = 0;
      v23 = v7;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v11 = [(UAPresenceManager *)v2 skUpdates];
        v12 = [v11 objectForKeyedSubscript:v10];

        v13 = [v12 objectForKeyedSubscript:@"had_invalid_addr"];
        if ([v13 BOOLValue])
        {
          v24 = [v12 objectForKeyedSubscript:@"time"];
          v14 = [v12 objectForKeyedSubscript:@"auth_records"];
          v15 = _unicast_assist_cache_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [v14 count];
            *buf = v22;
            v32 = v16;
            v33 = 2112;
            v34 = v10;
            v35 = 2112;
            v36 = v24;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "unicast assist updateInvalidFromPresence: next (auth) count %lu from %@ time %@", buf, 0x20u);
          }

          if (![(UAPresenceManager *)v2 _addRecordsFromPresence:v14])
          {
            v29[0] = @"time";
            v29[1] = @"auth_records";
            v30[0] = v24;
            v30[1] = v14;
            v29[2] = @"had_invalid_addr";
            v30[2] = &__kCFBooleanFalse;
            v17 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];
            [(UAPresenceManager *)v2 skUpdates];
            v18 = v2;
            v19 = v8;
            v21 = v20 = v4;
            [v21 setObject:v17 forKeyedSubscript:v10];

            v4 = v20;
            v8 = v19;
            v2 = v18;
          }

          v7 = v23;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v7);
  }
}

- (BOOL)_addRecordsFromPresence:(id)a3
{
  v3 = a3;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (!v4)
  {
    goto LABEL_76;
  }

  v5 = v4;
  v41 = 0;
  v43 = *v53;
  v39 = v3;
  do
  {
    v6 = 0;
    v42 = v5;
    do
    {
      if (*v53 != v43)
      {
        objc_enumerationMutation(v3);
      }

      v7 = *(*(&v52 + 1) + 8 * v6);
      v8 = [v7 objectForKey:@"ifhash"];
      v9 = [v8 unsignedIntValue];

      v10 = [v7 objectForKey:@"addr"];
      v11 = [v7 objectForKey:@"qhashes"];
      v50 = 0uLL;
      v51 = 0;
      if (_unicast_assist_data_to_addr(v10, &v50))
      {
        goto LABEL_32;
      }

      v12 = _unicast_assist_cache_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        [v11 describeQHashes];
        v14 = v13 = v11;
        *buf = 138413315;
        *v58 = v14;
        *&v58[8] = 2160;
        *&v58[10] = 1752392040;
        *&v58[18] = 1045;
        *&v58[20] = 20;
        *&v58[24] = 2101;
        *&v58[26] = &v50;
        *&v58[34] = 1024;
        *&v58[36] = v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "unicast assist _addRecordsFromPresence: add qhashes %@ addr %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P ifhash %x", buf, 0x2Cu);

        v11 = v13;
      }

      v15 = *mDNSStorage[0];
      if (!*mDNSStorage[0])
      {
LABEL_28:
        ++sUAPresence_Count_addrs_invalid;
        v18 = _unicast_assist_cache_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 141558531;
          *v58 = 1752392040;
          *&v58[8] = 1045;
          *&v58[10] = 20;
          *&v58[14] = 2101;
          *&v58[16] = &v50;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "unicast assist _addRecordsFromPresence: no subnet for addr %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P", buf, 0x1Cu);
        }

        v41 = 1;
        goto LABEL_31;
      }

      while (1)
      {
        if (*(v15 + 3606) != 101)
        {
          goto LABEL_27;
        }

        if (*(v15 + 3607) != 110)
        {
          goto LABEL_27;
        }

        if (!*(v15 + 3696))
        {
          goto LABEL_27;
        }

        if (!*(v15 + 3671))
        {
          goto LABEL_27;
        }

        *buf = 0;
        if (_unicast_assist_hash_for_interface(*(v15 + 3552), v50, buf) || *buf != v9)
        {
          goto LABEL_27;
        }

        if (v50 != 4)
        {
          break;
        }

        if (*(v15 + 3560) == 4)
        {
          v16 = DWORD1(v50) ^ *(v15 + 3564);
          v17 = *(v15 + 3584);
          goto LABEL_26;
        }

LABEL_27:
        v15 = *(v15 + 3680);
        if (!v15)
        {
          goto LABEL_28;
        }
      }

      if (v50 != 6 || *(v15 + 3560) != 6 || *(v15 + 3564) != 254 || (*(v15 + 3565) & 0xC0) != 0x80 || ((*(&v50 + 4) ^ *(v15 + 3564)) & *(v15 + 3584)) != 0 || ((HIDWORD(v50) ^ *(v15 + 3572)) & *(v15 + 3592)) != 0)
      {
        goto LABEL_27;
      }

      v16 = v51 ^ *(v15 + 3576);
      v17 = *(v15 + 3596);
LABEL_26:
      if ((v16 & v17) != 0)
      {
        goto LABEL_27;
      }

      v19 = *(v15 + 3552);
      ++sUAPresence_Count_addrs;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v40 = v11;
      v18 = v11;
      v20 = [v18 countByEnumeratingWithState:&v46 objects:v56 count:16];
      if (!v20)
      {
        goto LABEL_72;
      }

      v21 = v20;
      v44 = *v47;
      while (2)
      {
        v22 = 0;
        while (2)
        {
          if (*v47 != v44)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v46 + 1) + 8 * v22) unsignedIntValue];
          v45 = 0;
          v24 = _unicast_assist_addr_update_ex("\bpresence", v23, 12, 8, &v50, v19, v9, 0, 0, &v45);
          if (v24)
          {
            v25 = v24;
            v26 = _unicast_assist_cache_log();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 67110147;
              *v58 = v23;
              *&v58[4] = 2160;
              *&v58[6] = 1752392040;
              *&v58[14] = 1045;
              *&v58[16] = 20;
              *&v58[20] = 2101;
              *&v58[22] = &v50;
              *&v58[30] = 1024;
              *&v58[32] = v25;
              _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "unicast assist _addRecordsFromPresence: (error) qhash %x addr %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P err %d", buf, 0x28u);
            }

            goto LABEL_42;
          }

          ++sUAPresence_Count_qhashes;
          v27 = xmmword_10016D2D8;
          if (!xmmword_10016D2D8)
          {
LABEL_53:
            v30 = mDNSLogCategory_Default;
            if (mDNS_SensitiveLoggingEnableCount)
            {
              v31 = mDNSLogCategory_Default == mDNSLogCategory_State;
            }

            else
            {
              v31 = 1;
            }

            if (v31)
            {
              if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_43;
              }
            }

            else
            {
              v30 = mDNSLogCategory_Default_redacted;
              if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_43;
              }
            }

            *buf = 67109120;
            *v58 = v23;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "unicast assist (restart) - no active question for qnamehash %x", buf, 8u);
            goto LABEL_43;
          }

          while (1)
          {
            if (*(v27 + 342) == 12 && *(v27 + 200) == v23)
            {
              v28 = *(v27 + 136);
              if (v28 == v19 || v28 == 0)
              {
                break;
              }
            }

            v27 = *(v27 + 8);
            if (!v27)
            {
              goto LABEL_53;
            }
          }

          v33 = &mDNSStorage[v23 % 0x1F3 + 34];
          while (1)
          {
            v33 = *v33;
            if (!v33)
            {
              break;
            }

            if (*(v33 + 2) == v23)
            {
              if (CacheGroupHasAddressOnInterface(v33, 12, &v50, v19))
              {
                goto LABEL_43;
              }

              break;
            }
          }

          mDNSCoreRestartQuestion(mDNSStorage, v27);
          v26 = _unicast_assist_cache_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v34 = "presence only";
            if (*(v45 + 19))
            {
              v34 = "known";
            }

            *buf = 136316163;
            *v58 = v34;
            *&v58[8] = 1024;
            *&v58[10] = v23;
            *&v58[14] = 2160;
            *&v58[16] = 1752392040;
            *&v58[24] = 1045;
            *&v58[26] = 20;
            *&v58[30] = 2101;
            *&v58[32] = &v50;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "unicast assist _addRecordsFromPresence: restarted (%s) qhash %x addr %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P", buf, 0x2Cu);
          }

LABEL_42:

LABEL_43:
          if (++v22 != v21)
          {
            continue;
          }

          break;
        }

        v35 = [v18 countByEnumeratingWithState:&v46 objects:v56 count:16];
        v21 = v35;
        if (v35)
        {
          continue;
        }

        break;
      }

      v3 = v39;
LABEL_72:
      v11 = v40;
LABEL_31:

      v5 = v42;
LABEL_32:

      v6 = v6 + 1;
    }

    while (v6 != v5);
    v36 = [v3 countByEnumeratingWithState:&v52 objects:v59 count:16];
    v5 = v36;
  }

  while (v36);
  if ((v41 & 1) == 0)
  {
LABEL_76:
    v37 = 0;
    goto LABEL_77;
  }

  ++sUAPresence_Count_update_devices_invalid;
  v37 = 1;
LABEL_77:

  return v37;
}

void __36__UAPresenceManager_assertPresence___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [a2 qhash]);
  [v2 addObject:v3];
}

uint64_t __36__UAPresenceManager_assertPresence___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"ifid"];
  if ([*(a1 + 32) unsignedIntValue])
  {
    v4 = [v3 isEqualToNumber:*(a1 + 32)];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

BOOL __36__UAPresenceManager_assertPresence___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"addr"];
  v4 = [v3 length] == *(a1 + 32);

  return v4;
}

void __36__UAPresenceManager_assertPresence___block_invoke_92(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _unicast_assist_cache_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [(NSError *)v2 description];
      v5 = 138543362;
      v6 = v4;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "unicast assist SKPresence assertPresenceWithCompletion: %{public}@", &v5, 0xCu);
    }
  }
}

BOOL __37__UAPresenceManager_handleAuthCheck___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = 0;
  if ([v3 removed])
  {
    v4 = *(a1 + 32);
    if ((v4 - [v3 time]) > 1200000)
    {
      v5 = 1;
    }
  }

  return v5;
}

- (void)removeQhash:(unsigned int)a3 forInterface:(mDNSInterfaceID_dummystruct *)a4
{
  v4 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [NSNumber numberWithUnsignedInteger:v4];
  v9 = [(UAPresenceManager *)self authRecords];
  v10 = [v9 objectForKey:v8];

  if (v10)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __46__UAPresenceManager_removeQhash_forInterface___block_invoke;
    v13[3] = &__block_descriptor_36_e24_B32__0__UAQhash_8Q16_B24l;
    v14 = a3;
    v11 = [v10 indexOfObjectPassingTest:v13];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = [v10 objectAtIndex:v11];
      [v12 setTime:dword_10016D258];
      [v12 setRemoved:1];
    }
  }

  objc_autoreleasePoolPop(v7);
}

- (BOOL)newSharableAddresses:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v53;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v53 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v52 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"ifid"];
        v12 = [v5 objectForKeyedSubscript:v11];
        if (!v12)
        {
          v12 = +[NSMutableSet set];
          [v5 setObject:v12 forKeyedSubscript:v11];
        }

        v13 = [v10 objectForKeyedSubscript:@"ifhash"];
        [v12 addObject:v13];
      }

      v7 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v7);
  }

  v14 = [(UAPresenceManager *)self localNetworkHashes];
  v15 = [v14 allKeys];
  v16 = [NSMutableSet setWithArray:v15];

  v17 = [v5 allKeys];
  v18 = [NSSet setWithArray:v17];
  [v16 minusSet:v18];

  v19 = [v16 count];
  v20 = v19 != 0;
  if (v19)
  {
    v21 = [(UAPresenceManager *)self localNetworkHashes];
    v22 = [v16 allObjects];
    [v21 removeObjectsForKeys:v22];
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = [v5 allKeys];
  v23 = [v46 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v49;
    v45 = v5;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v49 != v25)
        {
          objc_enumerationMutation(v46);
        }

        v27 = *(*(&v48 + 1) + 8 * j);
        v28 = [v5 objectForKeyedSubscript:v27];
        v29 = [(UAPresenceManager *)self localNetworkHashes];
        v30 = [v29 objectForKeyedSubscript:v27];

        if (v30)
        {
          if ([v30 intersectsSet:v28])
          {
            goto LABEL_22;
          }

          [v30 removeAllObjects];
        }

        else
        {
          v30 = +[NSMutableOrderedSet orderedSet];
          v31 = [(UAPresenceManager *)self localNetworkHashes];
          [v31 setObject:v30 forKeyedSubscript:v27];
        }

        v20 = 1;
LABEL_22:
        v32 = [v30 set];
        [v28 minusSet:v32];

        if ([v28 count])
        {
          v33 = [v30 count];
          if (&v33[[v28 count]] >= 6)
          {
            v34 = v24;
            v35 = v25;
            v36 = self;
            v37 = v20;
            v38 = [v30 count];
            v39 = [v28 count] + v38 - 5;
            v40 = [v30 count];
            v41 = [v30 count];
            if (v39 < v40)
            {
              v41 = [v28 count] + v41 - 5;
            }

            [v30 removeObjectsInRange:{0, v41}];
            v20 = v37;
            self = v36;
            v25 = v35;
            v24 = v34;
            v5 = v45;
          }

          v42 = [v28 allObjects];
          [v30 addObjectsFromArray:v42];
        }
      }

      v24 = [v46 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v24);
  }

  return v20;
}

- (void)releaseSubscriptions
{
  if ([(UAPresenceManager *)self presenceSubscribed])
  {
    v3 = [(UAPresenceManager *)self presence];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __41__UAPresenceManager_releaseSubscriptions__block_invoke;
    v6[3] = &unk_100151460;
    v6[4] = self;
    [v3 releaseTransientSubscriptionAssertionWithCompletion:v6];
  }

  v4 = _unicast_assist_cache_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(UAPresenceManager *)self presence];
    *buf = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "unicast assist SKPresence releaseSubscriptions: %{public}@", buf, 0xCu);
  }
}

void __41__UAPresenceManager_releaseSubscriptions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _unicast_assist_cache_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [v3 description];
      v7 = 138543362;
      v8 = v6;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "unicast assist SKPresence releaseTransientSubscriptionAssertionWithCompletion: %{public}@", &v7, 0xCu);
    }
  }

  [*(a1 + 32) setPresenceSubscribed:0];
  if ([*(a1 + 32) presenceAsserted])
  {
    v5 = [*(a1 + 32) presence];
    [v5 releasePresenceWithCompletion:&__block_literal_global_58];

    [*(a1 + 32) setPresenceAsserted:0];
  }
}

void __41__UAPresenceManager_releaseSubscriptions__block_invoke_56(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _unicast_assist_cache_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [(NSError *)v2 description];
      v5 = 138543362;
      v6 = v4;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "unicast assist SKPresence releasePresenceWithCompletion: %{public}@", &v5, 0xCu);
    }
  }
}

- (void)retainSubscription
{
  v3 = [(UAPresenceManager *)self presence];
  [v3 retainTransientSubscriptionAssertionWithCompletion:&__block_literal_global_4576];

  v4 = _unicast_assist_cache_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "unicast assist SKPresence retainSubscription", v5, 2u);
  }

  [(UAPresenceManager *)self setPresenceSubscribed:1];
}

void __39__UAPresenceManager_retainSubscription__block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _unicast_assist_cache_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [(NSError *)v2 description];
      v5 = 138543362;
      v6 = v4;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "unicast assist SKPresence retainTransientSubscriptionAssertionWithCompletion: %{public}@", &v5, 0xCu);
    }
  }
}

- (void)dealloc
{
  v3 = _unicast_assist_cache_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "unicast assist SKPresence dealloc:", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = UAPresenceManager;
  [(UAPresenceManager *)&v4 dealloc];
}

- (UAPresenceManager)init
{
  v31.receiver = self;
  v31.super_class = UAPresenceManager;
  v2 = [(UAPresenceManager *)&v31 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    skUpdates = v2->_skUpdates;
    v2->_skUpdates = v3;

    v5 = +[NSMutableDictionary dictionary];
    authRecords = v2->_authRecords;
    v2->_authRecords = v5;

    v7 = +[NSMutableDictionary dictionary];
    localNetworkHashes = v2->_localNetworkHashes;
    v2->_localNetworkHashes = v7;

    v16 = mDNS_TimeNow(mDNSStorage, v9, v10, v11, v12, v13, v14, v15);
    if (v16 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    v2->_networkUpdateTime = v17;
    v2->_authCheckTime = v17;
    v2->_lastUnsubscribeTime = v17;
    v18 = [[SKPresenceOptions alloc] initWithServiceIdentifier:@"com.apple.mDNSResponder"];
    [v18 setIsDaemonIdleExitEnabled:1];
    [v18 setIsPersonal:1];
    v19 = [[SKPresence alloc] initWithPresenceIdentifier:@"com.apple.mDNSResponder" options:v18];
    presence = v2->_presence;
    v2->_presence = v19;

    v21 = v2->_presence;
    v22 = dispatch_queue_create("com.apple.mDNSResponder.unicast_assist.SKPresence", 0);
    [(SKPresence *)v21 addDelegate:v2 queue:v22];

    v23 = _unicast_assist_cache_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = v2->_presence;
      *buf = 138543362;
      v33 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "unicast assist SKPresence init: _presence %{public}@", buf, 0xCu);
    }

    v25 = v2->_presence;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = __25__UAPresenceManager_init__block_invoke;
    v29[3] = &unk_1001513D8;
    v26 = v2;
    v30 = v26;
    [(SKPresence *)v25 hasInitialCloudKitImportOccurredWithCompletion:v29];
    v27 = v26;
  }

  return v2;
}

void __25__UAPresenceManager_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _unicast_assist_cache_log();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [v5 description];
      v9 = 138543362;
      v10 = v8;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "unicast assist SKPresence hasInitialCloudKitImportOccurredWithCompletion: %{public}@", &v9, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 67109120;
      LODWORD(v10) = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "unicast assist SKPresence hasInitialCloudKitImportOccurredWithCompletion: %d", &v9, 8u);
    }

    [*(a1 + 32) setPresenceReady:a2];
  }
}

@end