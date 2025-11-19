uint64_t sub_1000A7990(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (!a1)
  {
LABEL_14:
    a5 = 0;
    goto LABEL_28;
  }

  if (v10 && [v10 tokenType] == 3)
  {
    if (v9)
    {
      v12 = [v10 originNames];
      v13 = [v12 count];

      if (v11 && v13 >= 2)
      {
        v14 = [v10 originNames];
        v15 = [v14 containsObject:v11];

        if ((v15 & 1) == 0)
        {
          v16 = nplog_obj();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v26 = [v10 originNames];
            *buf = 138412546;
            *&buf[4] = v11;
            *&buf[12] = 2112;
            *&buf[14] = v26;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to find origin name %@ in %@", buf, 0x16u);
          }

          a5 = 0;
          goto LABEL_27;
        }

        v16 = v11;
LABEL_11:
        v17 = [v9 bytes];
        v27 = 0;
        v18 = v17[1];
        *buf = *v17;
        *&buf[16] = v18;
        v19 = [LSBundleRecord bundleRecordForAuditToken:buf error:&v27];
        v20 = v27;
        if (!v19)
        {
LABEL_26:

LABEL_27:
          goto LABEL_28;
        }

        if ([v19 developerType] == 1)
        {
          a5 = 1;
          goto LABEL_26;
        }

        v21 = [v19 infoDictionary];
        v22 = [v21 objectForKey:@"NSPrivateAccessTokenOrigins" ofClass:objc_opt_class()];
        if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          if ([v22 count] < 6)
          {
            if ([v22 containsObject:v16])
            {
              a5 = 1;
              goto LABEL_25;
            }

            v23 = nplog_obj();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v24 = "Not allowed to request token, not in list";
              goto LABEL_34;
            }
          }

          else
          {
            v23 = nplog_obj();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v24 = "Not allowed to request token, too many origins in list";
LABEL_34:
              _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v24, buf, 2u);
            }
          }
        }

        else
        {
          v23 = nplog_obj();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v24 = "Not allowed to request token, no listed origins under NSPrivateAccessTokenOrigins";
            goto LABEL_34;
          }
        }

        a5 = 0;
LABEL_25:

        goto LABEL_26;
      }

      v16 = [v10 originName];
      if (v16)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_14;
  }

  a5 = 1;
LABEL_28:

  return a5;
}

uint64_t sub_1000A7CE0(uint64_t a1, void *a2, void *a3, unsigned int a4, void *a5, void *a6, void *a7)
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (a1)
  {
    v17 = a2;
    v51 = 0;
    v18 = [[ARCCredential alloc] initWithCredentialData:v17 error:&v51];

    v19 = v51;
    if (v18)
    {
      v47 = v15;
      v20 = [v14 key];
      v21 = sub_1000B50B8(NSPPrivateAccessTokenRequest, v20);

      v22 = sub_1000B20DC(v13, v21);
      v23 = a4;
      v50 = v19;
      v24 = [v18 presentWithPresentationContext:v22 presentationLimit:a4 error:&v50];
      v25 = v50;

      if (v24 && ([v24 presentationData], v26 = objc_claimAutoreleasedReturnValue(), v26, v26))
      {
        v49 = v25;
        v27 = [v18 getRemainingPresentationCountWithPresentationContext:v22 presentationLimit:v23 error:&v49];
        v28 = v49;

        v29 = nplog_obj();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(v54) = v27;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Generated ARC presentation (%d remaining for this context)", buf, 8u);
        }

        v48 = v28;
        v30 = [v18 getCredentialDataError:&v48];
        v25 = v48;

        v45 = v21;
        v46 = v16;
        v44 = v30;
        if (v30)
        {
          sub_10003F108(NSPPrivateAccessTokenCache, v13, v30, v47, v21);
        }

        else
        {
          v33 = nplog_obj();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v54 = v25;
            _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to generate credential data to save (%@)", buf, 0xCu);
          }

          sub_10003F344(NSPPrivateAccessTokenCache, v13);
        }

        *buf = [v24 nonce];
        v34 = [[NSData alloc] initWithBytes:buf length:4];
        v35 = [NSPPrivateAccessTokenResponse alloc];
        v36 = [v14 key];
        v37 = [v24 presentationData];
        v38 = sub_1000B3948(&v35->super, v13, v34, v36, 0, v37);

        if (v38)
        {
          Property = objc_getProperty(v38, v39, 8, 1);
        }

        else
        {
          Property = 0;
        }

        v41 = Property;
        (*(v46 + 2))(v46, v41, 0, 0, 0);
        v52 = 1;

        v16 = v46;
        v21 = v45;
      }

      else
      {
        v31 = nplog_obj();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v54 = v25;
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Failed to generate presentation from cached challenge (%@)", buf, 0xCu);
        }

        sub_10003F344(NSPPrivateAccessTokenCache, v13);
        v52 = 0;
      }

      v19 = v25;
      v15 = v47;
    }

    else
    {
      v32 = nplog_obj();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v54 = v19;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to access credential from cached data (%@)", buf, 0xCu);
      }

      sub_10003F344(NSPPrivateAccessTokenCache, v13);
      v52 = 0;
    }

    v42 = v52;
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

id sub_1000A819C(id a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v26 = v6;
  if (a1)
  {
    v7 = v6;
    a1 = objc_alloc_init(NSMutableArray);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v8 = [v7 associatedIssuers];
    v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v35;
      v28 = v8;
      v29 = v5;
      v27 = *v35;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v34 + 1) + 8 * i);
          v14 = [v13 issuerName];
          v15 = [v14 isEqualToString:v5];

          if (v15 && [v13 supportsTokenUsageFeedback])
          {
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v16 = [v13 tokenKeys];
            v17 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v31;
              do
              {
                for (j = 0; j != v18; j = j + 1)
                {
                  if (*v31 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v30 + 1) + 8 * j);
                  if ([v21 hasExpiration])
                  {
                    v22 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v21 expiration]);
                    [v22 timeIntervalSinceNow];
                    if (v23 >= 0.0)
                    {
                      v24 = [v21 key];
                      [a1 addObject:v24];
                    }
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
              }

              while (v18);
            }

            v8 = v28;
            v5 = v29;
            v11 = v27;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v10);
    }
  }

  return a1;
}

id sub_1000A9634(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) issuerName];
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Resuming token pair fetch, received notification on token for %@", buf, 0xCu);
  }

  v4 = *(a1 + 120);
  LOWORD(v7) = *(a1 + 141);
  LODWORD(v6) = *(a1 + 136);
  return [*(a1 + 40) fetchPrivateAccessTokenForChallenge:*(a1 + 32) overrideAttester:*(a1 + 48) supportsTokenUsageFeedback:*(a1 + 140) customAttester:*(a1 + 56) customAttesterHeaders:*(a1 + 64) tokenKey:*(a1 + 72) originNameKey:*(a1 + 80) selectedOrigin:*(a1 + 88) auxiliaryAuthInfoCacheKey:*(a1 + 96) rateLimit:v6 auditToken:*(a1 + 104) bundleID:*(a1 + 112) allowTools:v7 systemTokenClient:v4 accessToken:*(a1 + 128) completionHandler:?];
}

void sub_1000A9738(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a2;
  v14 = a5;
  v15 = a8;
  v16 = a9;
  v17 = *(a1 + 32);
  if (v17 && [v17 tokenType] == 58796)
  {
    v18 = [v13 firstObject];
    if (v18)
    {
      v19 = *(a1 + 32);
      v20 = [*(a1 + 40) key];
      v21 = *(a1 + 32);
      v22 = sub_1000B50B8(NSPPrivateAccessTokenRequest, v20);
      sub_10003F108(NSPPrivateAccessTokenCache, v19, v18, v14, v22);

      if (sub_1000A7CE0(*(a1 + 48), v18, *(a1 + 32), *(a1 + 72), *(a1 + 40), v14, *(a1 + 64)))
      {
LABEL_17:

        goto LABEL_18;
      }

      v23 = *(*(a1 + 64) + 16);
    }

    else
    {
      v23 = *(*(a1 + 64) + 16);
    }

    v23();
    goto LABEL_17;
  }

  v24 = *(a1 + 64);
  v25 = [v13 firstObject];
  (*(v24 + 16))(v24, v25, a7, v15, v16);

  if ([v13 count] >= 2)
  {
    v26 = [v13 mutableCopy];
    [v26 removeObjectAtIndex:0];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = v26;
    v27 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v32;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v32 != v29)
          {
            objc_enumerationMutation(v18);
          }

          sub_10003D214(NSPPrivateAccessTokenCache, *(a1 + 32), *(*(&v31 + 1) + 8 * i), v14);
        }

        v28 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v28);
    }

    goto LABEL_17;
  }

LABEL_18:
  dispatch_group_leave(*(a1 + 56));
}

void sub_1000A99D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v7);
        }

        sub_10003D214(NSPPrivateAccessTokenCache, *(a1 + 32), *(*(&v13 + 1) + 8 * v12), v8);
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000A9AF4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v7);
        }

        sub_10003D214(NSPPrivateAccessTokenCache, *(a1 + 32), *(*(&v13 + 1) + 8 * v12), v8);
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000A9C14(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 48) issuerName];
    sub_1000A4070(v2, v3);
  }

  [*(a1 + 56) invalidateAndCancel];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

id sub_1000AA88C(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) issuerName];
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Resuming token fetch, received notification on token for %@", buf, 0xCu);
  }

  LODWORD(v5) = *(a1 + 160);
  return [*(a1 + 40) fetchPrivateAccessTokenForChallenge:*(a1 + 32) overrideAttester:*(a1 + 48) supportsTokenUsageFeedback:*(a1 + 164) customAttester:*(a1 + 56) customAttesterHeaders:*(a1 + 64) tokenKey:*(a1 + 72) originNameKey:*(a1 + 80) selectedOrigin:*(a1 + 88) auxiliaryAuthChallenge:*(a1 + 96) auxiliaryAuthKey:*(a1 + 104) auxiliaryAuthLabel:*(a1 + 112) auxiliaryAuthInfoCacheKey:*(a1 + 120) rateLimit:v5 auditToken:*(a1 + 128) bundleID:*(a1 + 136) accessToken:*(a1 + 144) completionHandler:*(a1 + 152)];
}

void sub_1000AA988(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a8;
  v13 = a9;
  v14 = a3;
  v15 = [a2 firstObject];
  v16 = [v14 firstObject];

  if (v15 && v16)
  {
    v26 = v12;
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    v20 = *(a1 + 56);
    v28 = v16;
    v21 = [NSArray arrayWithObjects:&v28 count:1];
    v22 = sub_1000B99D0(NSPPrivateAccessTokenFetcher, v17, v18, v19, v20, v21);

    if ([v22 count] == 1)
    {
      v23 = *(a1 + 72);
      v24 = [v22 firstObject];
      (*(v23 + 16))(v23, v15, v24, 0, 0, v13);
    }

    else
    {
      v25 = nplog_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to activate auxiliary auth response", buf, 2u);
      }

      (*(*(a1 + 72) + 16))();
    }

    v12 = v26;
  }

  else
  {
    (*(*(a1 + 72) + 16))();
  }

  dispatch_group_leave(*(a1 + 64));
}

void sub_1000AABB4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 48) issuerName];
    sub_1000A4070(v2, v3);
  }

  [*(a1 + 56) invalidateAndCancel];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

id sub_1000ABC0C(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) issuerName];
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Resuming token pair fetch, received notification on long-lived token for %@", buf, 0xCu);
  }

  v4 = *(a1 + 88);
  LOWORD(v6) = *(a1 + 152);
  return [*(a1 + 40) fetchPairedPrivateAccessTokensForChallenge:*(a1 + 32) overrideAttester:*(a1 + 48) configurationFetchDate:*(a1 + 56) configurationETag:*(a1 + 64) tokenKey:*(a1 + 72) originNameKey:*(a1 + 80) selectedOrigin:*(a1 + 88) pairedChallenge:*(a1 + 96) overridePairedAttester:*(a1 + 104) pairedTokenKey:*(a1 + 112) auditToken:*(a1 + 120) bundleID:*(a1 + 128) allowTools:v6 systemTokenClient:*(a1 + 136) accessToken:*(a1 + 144) completionHandler:?];
}

id sub_1000ABD04(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) issuerName];
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Resuming token pair fetch, received notification on one-time token for %@", buf, 0xCu);
  }

  v4 = *(a1 + 136);
  LOWORD(v6) = *(a1 + 152);
  return [*(a1 + 40) fetchPairedPrivateAccessTokensForChallenge:*(a1 + 48) overrideAttester:*(a1 + 56) configurationFetchDate:*(a1 + 64) configurationETag:*(a1 + 72) tokenKey:*(a1 + 80) originNameKey:*(a1 + 88) selectedOrigin:*(a1 + 96) pairedChallenge:*(a1 + 32) overridePairedAttester:*(a1 + 104) pairedTokenKey:*(a1 + 112) auditToken:*(a1 + 120) bundleID:*(a1 + 128) allowTools:v6 systemTokenClient:v4 accessToken:*(a1 + 144) completionHandler:?];
}

void sub_1000ABE00(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = *(a1 + 56);
    v5 = *(a1 + 64);
    v7 = *(a1 + 80);
    v8 = *(a1 + 88);
    v9 = *(a1 + 96);
    v15 = *(a1 + 72);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000ABF74;
    v16[3] = &unk_10010AF20;
    v10 = *(a1 + 104);
    v11 = *(a1 + 112);
    v12 = *(a1 + 120);
    v19 = v11;
    v20 = v12;
    v17 = *(a1 + 48);
    v18 = *(a1 + 32);
    sub_1000A4BD4(v3, v4, v6, 0, 0, v5, 1, v15, v7, 0, 0, v8, v9, 0, v10, 0, v16);
  }

  else
  {
    v13 = *(a1 + 112);
    (*(*(a1 + 112) + 16))();
    v14 = *(a1 + 32);

    dispatch_group_leave(v14);
  }
}

void sub_1000ABF74(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, void *a8, void *a9)
{
  v23 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a9;
  if (a7 || ![v23 count])
  {
    (*(*(a1 + 48) + 16))();
  }

  v22 = [v23 firstObject];
  if (v22)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v22);
    sub_10003EBA8(NSPPrivateAccessTokenCache, *(a1 + 32), v22);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000AC0B8(uint64_t a1)
{
  sub_1000A4070(*(a1 + 32), *(a1 + 40));
  v2 = [*(a1 + 48) issuerName];
  v3 = dispatch_group_create();
  v4 = v3;
  if (*(*(*(a1 + 128) + 8) + 40) && ((*(a1 + 148) & 1) != 0 || *(a1 + 144)))
  {
    dispatch_group_enter(v3);
    sub_1000A3F04(*(a1 + 32), v2);
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = *(a1 + 80);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000AC328;
    v22[3] = &unk_10010AFC0;
    v32 = *(a1 + 120);
    v10 = v4;
    v35 = *(a1 + 148);
    v34 = *(a1 + 144);
    v11 = *(a1 + 32);
    v23 = v10;
    v24 = v11;
    v25 = *(a1 + 48);
    v26 = *(a1 + 64);
    v27 = *(a1 + 56);
    v28 = *(a1 + 88);
    v12 = *(a1 + 96);
    v13 = *(a1 + 128);
    v29 = v12;
    v33 = v13;
    v30 = *(a1 + 104);
    v31 = *(a1 + 112);
    sub_1000A3548(v5, v6, v7, v8, v9, v22);
  }

  v14 = NPGetInternalQueue();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000AC9EC;
  v18[3] = &unk_10010AFE8;
  v18[4] = *(a1 + 32);
  v19 = v2;
  v15 = *(a1 + 104);
  v16 = *(a1 + 136);
  v20 = v15;
  v21 = v16;
  v17 = v2;
  dispatch_group_notify(v4, v14, v18);
}

void sub_1000AC328(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 124);
    v4 = *(a1 + 120) + v3;
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 72);
    v9 = *(a1 + 80);
    v10 = *(*(*(a1 + 112) + 8) + 40);
    v11 = *(a1 + 88);
    v18 = *(a1 + 64);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000AC538;
    v19[3] = &unk_10010AF98;
    v32 = v3;
    v12 = *(a1 + 104);
    v13 = *(a1 + 112);
    v29 = v12;
    v30 = v13;
    v20 = *(a1 + 48);
    v21 = *(a1 + 64);
    v14 = *(a1 + 96);
    v31 = v4;
    v15 = *(a1 + 40);
    v22 = v14;
    v23 = v15;
    v24 = *(a1 + 56);
    v25 = *(a1 + 72);
    v26 = *(a1 + 80);
    v27 = *(a1 + 88);
    v28 = *(a1 + 32);
    sub_1000A4BD4(v5, v6, v7, 0, 0, v18, v4, 0, 0, 0, 0, v8, v9, v10, v11, 0, v19);
  }

  else
  {
    v16 = *(a1 + 104);
    (*(*(a1 + 104) + 16))();
    v17 = *(a1 + 32);

    dispatch_group_leave(v17);
  }
}

void sub_1000AC538(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, void *a8, void *a9)
{
  v16 = a2;
  v17 = a3;
  v56 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a9;
  if (*(a1 + 124) == 1)
  {
    if (a7 || ![v16 count])
    {
      (*(*(a1 + 104) + 16))();
    }

    else
    {
      v27 = *(a1 + 104);
      v28 = *(*(*(a1 + 112) + 8) + 40);
      [v16 firstObject];
      v54 = v18;
      v30 = v29 = v17;
      v31 = [v56 firstObject];
      (*(v27 + 16))(v27, v28, v30, v31, 0, 0, v21);

      v17 = v29;
      v18 = v54;
    }

    if ([v16 count] >= 2)
    {
      v22 = v21;
      v52 = v20;
      v32 = v18;
      v25 = [v16 mutableCopy];
      [v25 removeObjectAtIndex:0];
      v33 = 0;
      if ([v56 count] >= 2)
      {
        v33 = [v56 mutableCopy];
        [v33 removeObjectAtIndex:0];
      }

      v34 = *(a1 + 32);
      v35 = [*(a1 + 40) key];
      sub_10003FA38(NSPPrivateAccessTokenCache, v34, v25, v33, v32, v35, *(a1 + 48), *(*(*(a1 + 112) + 8) + 40));

      v18 = v32;
      v20 = v52;
      goto LABEL_12;
    }
  }

  else if ([v16 count])
  {
    v22 = v21;
    v23 = v18;
    v24 = *(a1 + 32);
    v25 = [*(a1 + 40) key];
    v26 = v24;
    v18 = v23;
    sub_10003FA38(NSPPrivateAccessTokenCache, v26, v16, v56, v23, v25, *(a1 + 48), *(*(*(a1 + 112) + 8) + 40));
LABEL_12:

    v21 = v22;
  }

  if (v19 && (v36 = [v16 count], v37 = *(a1 + 120), v37 > v36))
  {
    v51 = *(a1 + 56);
    v53 = *(a1 + 64);
    v50 = *(a1 + 32);
    v55 = *(a1 + 40);
    v49 = v37 - [v16 count];
    v47 = *(a1 + 80);
    v48 = *(a1 + 72);
    v38 = *(*(*(a1 + 112) + 8) + 40);
    v39 = v21;
    v40 = v20;
    v41 = v18;
    v42 = v17;
    v43 = *(a1 + 88);
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_1000AC91C;
    v57[3] = &unk_10010AF70;
    v58 = v16;
    v59 = *(a1 + 32);
    v60 = *(a1 + 40);
    v44 = *(a1 + 48);
    v45 = *(a1 + 112);
    v61 = v44;
    v63 = v45;
    v62 = *(a1 + 96);
    v46 = v43;
    v17 = v42;
    v18 = v41;
    v20 = v40;
    v21 = v39;
    sub_1000A4290(v51, v19, v50, v53, 0, 0, v55, v49, 0, 0, 0, 0, v48, v47, v38, v46, v57);
  }

  else
  {
    dispatch_group_leave(*(a1 + 96));
  }
}

void sub_1000AC91C(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v12 = a2;
  v8 = a4;
  v9 = a5;
  if ([*(a1 + 32) count])
  {
    v10 = *(a1 + 40);
    v11 = [*(a1 + 48) key];
    sub_10003FA38(NSPPrivateAccessTokenCache, v10, v12, v8, v9, v11, *(a1 + 56), *(*(*(a1 + 72) + 8) + 40));
  }

  dispatch_group_leave(*(a1 + 64));
}

void sub_1000AC9EC(uint64_t a1)
{
  sub_1000A4070(*(a1 + 32), *(a1 + 40));
  [*(a1 + 48) invalidateAndCancel];
  v2 = *(*(a1 + 56) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_1000ACE84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000ACEB0(uint64_t a1, int a2, void *a3)
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (a2 == 2 && WeakRetained)
  {
    if (v10 && nw_array_get_count())
    {
      v7 = *(*(a1 + 32) + 16);
    }

    else
    {
      v7 = *(*(a1 + 32) + 16);
    }

    v7();
    v8 = v6[13];
    nw_resolver_cancel();
    v9 = v6[13];
    v6[13] = 0;
  }
}

void sub_1000AD564(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1000AD588(id *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = NPGetInternalQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AD6D0;
  block[3] = &unk_10010B060;
  objc_copyWeak(&v22, a1 + 7);
  v16 = v10;
  v17 = v8;
  v18 = a1[4];
  v19 = v9;
  v21 = a1[6];
  v20 = a1[5];
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(v11, block);

  objc_destroyWeak(&v22);
}

void sub_1000AD6D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (!WeakRetained)
  {
    goto LABEL_21;
  }

  if (*(a1 + 32) || !*(a1 + 40))
  {
    v3 = nplog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      [*(a1 + 48) URL];
      v5 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v38 = 138412546;
      v39 = v4;
      v40 = 2112;
      v41 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received check quota error %@ for %@", &v38, 0x16u);
    }

    v8 = *(a1 + 32);
    if (*(a1 + 56))
    {
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    else if (!v8)
    {
LABEL_20:
      v6.n128_u64[0] = 0;
      v7.n128_u64[0] = 0;
      (*(*(a1 + 72) + 16))(v6, v7);
      goto LABEL_21;
    }

    v13 = [v8 domain];
    if (v13 != NSPOSIXErrorDomain || [*(a1 + 32) code] != 50)
    {
      v14 = [*(a1 + 32) domain];
      v15 = v14;
      if (v14 != NSURLErrorDomain)
      {

        goto LABEL_20;
      }

      if ([*(a1 + 32) code] != -1009)
      {
        [*(a1 + 32) code];

        goto LABEL_20;
      }
    }

    goto LABEL_20;
  }

  v9 = *(a1 + 56);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = *(a1 + 56);
    if (os_variant_has_internal_diagnostics())
    {
      v11 = [v10 allHeaderFields];
      v12 = [v11 objectForKeyedSubscript:@"x-apple-request-uuid"];
    }

    else
    {
      v12 = 0;
    }

    v16 = nplog_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = COERCE_DOUBLE([v10 statusCode]);
      [*(a1 + 48) URL];
      v18 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v38 = 134218498;
      v39 = v17;
      v40 = 2112;
      v41 = v18;
      v42 = 2112;
      v43 = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received HTTP response code %ld for %@ with request UUID %@", &v38, 0x20u);
    }

    if ([v10 statusCode] == 200)
    {
      v19 = [[NSPPrivacyProxyQuotaServiceResponse alloc] initWithData:*(a1 + 40)];
      v20 = [v19 response];
      if (([v20 hasGenericError] & 1) != 0 || (objc_msgSend(v20, "hasSuccess") & 1) == 0)
      {
        v34 = *(a1 + 72);
        v21 = [v20 genericError];
        v35 = [v21 errorReason];
        (*(v34 + 16))(v34, 0, 1016, v35, v12, 0.0, 0.0);
      }

      else
      {
        v21 = [v20 success];
        v22 = [v21 quota];
        v23 = [v22 expiration];

        v24 = [v21 quota];
        v25 = [v24 cost];
        [v25 limit];
        v27 = v26;

        v28 = [v21 quota];
        v29 = [v28 cost];
        [v29 remaining];
        v31 = v30;

        v32 = nplog_obj();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = *(a1 + 64);
          v38 = 134218754;
          v39 = v31;
          v40 = 2048;
          v41 = v27;
          v42 = 2112;
          v43 = v33;
          v44 = 2048;
          v45 = v23;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Received %f/%f cost quota from %@, expiring at %llu", &v38, 0x2Au);
        }

        (*(*(a1 + 72) + 16))(v27, v31);
      }
    }

    else
    {
      if ([v10 statusCode] == 401)
      {
        +[NSPBAA authenticationFailure];
      }

      else if ([v10 statusCode] != 429 && objc_msgSend(v10, "statusCode") >= 400)
      {
        [v10 statusCode];
      }

      v36 = [v10 allHeaderFields];
      v37 = [v36 objectForKeyedSubscript:@"Error-Reason"];

      (*(*(a1 + 72) + 16))(0.0, 0.0);
    }
  }

LABEL_21:
}

void sub_1000ADD04(id a1)
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(v1) = info.numer;
    LODWORD(v2) = info.denom;
    *&qword_100129880 = v1 / v2 / 1000.0 / 1000000.0;
  }
}

void sub_1000ADD60(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  objc_opt_self();
  v17 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.iCloud.FollowUp"];
  [v17 removeAllDeliveredNotifications];
  v13 = objc_alloc_init(UNMutableNotificationContent);
  [v13 setTitle:v12];

  [v13 setBody:v11];
  [v13 setShouldIgnoreDoNotDisturb:1];
  [v13 setShouldIgnoreDowntime:1];
  [v13 setShouldSuppressScreenLightUp:1];
  [v13 setDefaultActionURL:v10];

  v14 = +[NSUUID UUID];
  v15 = [v14 UUIDString];
  v16 = [UNNotificationRequest requestWithIdentifier:v15 content:v13 trigger:0 destinations:3];

  [v17 addNotificationRequest:v16 withCompletionHandler:v9];
}

id sub_1000ADECC(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, int a7, void *a8, void *a9)
{
  value = a2;
  v43 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  if (!a1)
  {
    goto LABEL_37;
  }

  v45.receiver = a1;
  v45.super_class = NSPUserNotification;
  v21 = objc_msgSendSuper2(&v45, "init");
  if (v21)
  {
    os_unfair_lock_lock(&unk_100129888);
    v22 = qword_100129890 == 0;
    v23 = nplog_obj();
    v24 = v23;
    if (!v22)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v51) = 138412290;
        *(&v51 + 4) = qword_100129890;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Already have outstanding notification %@, cannot show an additional one", &v51, 0xCu);
      }

      os_unfair_lock_unlock(&unk_100129888);
      goto LABEL_37;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v51) = 138412290;
      *(&v51 + 4) = v21;
      _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "No outstanding notification, we are now the current notification %@", &v51, 0xCu);
    }

    objc_storeStrong(&qword_100129890, v21);
    os_unfair_lock_unlock(&unk_100129888);
    error = 0;
    objc_setProperty_atomic(v21, v25, 0, 8);
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v28 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, kCFUserNotificationAlertHeaderKey, value);
      CFDictionarySetValue(v28, kCFUserNotificationAlertMessageKey, v43);
      if (v18)
      {
        v29 = sub_10003A674(v18);
        if (v29)
        {
          CFDictionarySetValue(v28, kCFUserNotificationIconURLKey, v29);
        }
      }

      if (v16)
      {
        CFDictionarySetValue(v28, kCFUserNotificationAlternateButtonTitleKey, v16);
      }

      if (v17)
      {
        v30 = &kCFUserNotificationOtherButtonTitleKey;
        if (!a7)
        {
          v30 = &kCFUserNotificationDefaultButtonTitleKey;
        }

        CFDictionarySetValue(v28, *v30, v17);
      }

      if (a7)
      {
        v31 = 35;
      }

      else
      {
        v31 = 1;
      }

      v32 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, v31, &error, v28);
      CFRelease(v28);
      if (!v32 || error)
      {
        v40 = nplog_obj();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v51) = 67109120;
          DWORD1(v51) = error;
          _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "CFUserNotificationCreate failed with error %d, cancelling", &v51, 8u);
        }

        goto LABEL_36;
      }

      objc_setProperty_atomic(v21, v33, v32, 8);
    }

    if (!objc_getProperty(v21, v27, 8, 1))
    {
      goto LABEL_36;
    }

    v34 = v19;
    v35 = v20;
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    *&v51 = _NSConcreteStackBlock;
    *(&v51 + 1) = 3221225472;
    v52 = sub_1000AE534;
    v53 = &unk_10010B118;
    v54 = v21;
    v36 = v35;
    v56 = v36;
    v37 = v34;
    v55 = v37;
    v57 = &v47;
    sub_1000AE45C(NSPUserNotification, &v51);
    v38 = *(v48 + 24);
    if ((v38 & 1) == 0)
    {
      v39 = nplog_obj();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Failed to post new user notification: current notification in progress", buf, 2u);
      }

      v38 = *(v48 + 24);
    }

    _Block_object_dispose(&v47, 8);
    if ((v38 & 1) == 0)
    {
LABEL_36:
      sub_1000AE3DC(v21);

LABEL_37:
      v21 = 0;
    }
  }

  return v21;
}

void sub_1000AE3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AE3DC(uint64_t a1)
{
  if (a1)
  {
    v1[0] = _NSConcreteStackBlock;
    v1[1] = 3221225472;
    v1[2] = sub_1000AE83C;
    v1[3] = &unk_100109478;
    v1[4] = a1;
    sub_1000AE45C(NSPUserNotification, v1);
  }
}

void sub_1000AE45C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  Current = CFRunLoopGetCurrent();
  if (Current == CFRunLoopGetMain())
  {
    v2[2](v2);
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AE524;
    block[3] = &unk_10010A8A8;
    v5 = v2;
    dispatch_sync(&_dispatch_main_q, block);
  }
}

void sub_1000AE534(uint64_t a1)
{
  os_unfair_lock_lock(&unk_100129888);
  v3 = *(a1 + 32);
  if (!v3 || (v4 = objc_getProperty(v3, v2, 8, 1)) == 0)
  {
LABEL_6:

    os_unfair_lock_unlock(&unk_100129888);
    return;
  }

  v6 = v4;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = objc_getProperty(v7, v5, 16, 1);
    if (v8)
    {

      goto LABEL_6;
    }

    v9 = *(a1 + 32);
  }

  else
  {
    v9 = 0;
  }

  v10 = qword_100129890;

  os_unfair_lock_unlock(&unk_100129888);
  if (v10 == v9)
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v11, 8, 1);
    }

    v13 = Property;
    RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v13, sub_1000AE6DC, 0);
    v16 = *(a1 + 32);
    if (v16)
    {
      objc_setProperty_atomic(v16, v14, v13, 8);
    }

    if (RunLoopSource)
    {
      v18 = *(a1 + 32);
      if (v18)
      {
        objc_setProperty_nonatomic_copy(v18, v17, *(a1 + 48), 32);
        v20 = *(a1 + 32);
        if (v20)
        {
          objc_setProperty_atomic(v20, v19, *(a1 + 40), 24);
        }
      }

      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopDefaultMode);
      v23 = *(a1 + 32);
      if (v23)
      {
        objc_setProperty_atomic(v23, v22, RunLoopSource, 16);
      }

      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }
}

void sub_1000AE6DC(id a1, char a2)
{
  os_unfair_lock_lock(&unk_100129888);
  if (qword_100129890 && objc_getProperty(qword_100129890, v4, 8, 1) == a1)
  {
    v5 = qword_100129890;
    os_unfair_lock_unlock(&unk_100129888);
    if (v5)
    {
      v7 = objc_getProperty(v5, v6, 24, 1);
      v8 = v5[4];
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v9 = v8;
    sub_1000AE3DC(v5);
    if (v7 && v9)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000AEA10;
      v10[3] = &unk_1001095D8;
      v11 = v9;
      v12 = (a2 & 1) == 0;
      dispatch_async(v7, v10);
    }
  }

  else
  {

    os_unfair_lock_unlock(&unk_100129888);
  }
}

void sub_1000AE83C(uint64_t a1)
{
  os_unfair_lock_lock(&unk_100129888);
  v2 = qword_100129890;
  if (!qword_100129890 || qword_100129890 != *(a1 + 32))
  {

    os_unfair_lock_unlock(&unk_100129888);
    return;
  }

  qword_100129890 = 0;

  os_unfair_lock_unlock(&unk_100129888);
  v4 = *(a1 + 32);
  if (!v4)
  {
    return;
  }

  if (objc_getProperty(v4, v3, 16, 1))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 16, 1);
    }

    v7 = Property;
    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveSource(Current, v7, kCFRunLoopDefaultMode);
    CFRelease(v7);
    v10 = *(a1 + 32);
    if (!v10)
    {
      return;
    }

    objc_setProperty_atomic(v10, v9, 0, 16);
  }

  v11 = *(a1 + 32);
  if (!v11)
  {
    return;
  }

  v13 = objc_getProperty(v11, v5, 8, 1);
  v14 = *(a1 + 32);
  if (!v13)
  {
    goto LABEL_18;
  }

  if (v14)
  {
    v14 = objc_getProperty(v14, v12, 8, 1);
  }

  v15 = v14;
  CFUserNotificationCancel(v15);
  CFRelease(v15);
  v17 = *(a1 + 32);
  if (v17)
  {
    objc_setProperty_atomic(v17, v16, 0, 8);
    v14 = *(a1 + 32);
LABEL_18:
    if (v14)
    {
      objc_setProperty_nonatomic_copy(v14, v12, 0, 32);
      v19 = *(a1 + 32);
      if (v19)
      {

        objc_setProperty_atomic(v19, v18, 0, 24);
      }
    }
  }
}

void sub_1000AEFE4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (!v4)
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v11 = "+[NSPBAA signData:completionHandler:]";
      _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "%s called with null dataToSign", buf, 0xCu);
    }

    goto LABEL_6;
  }

  if (!+[NSPDeviceIdentityCertificate deviceSupportsDeviceIdentityWithSerialNumber])
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Device does not support BAA", buf, 2u);
    }

LABEL_6:

    v5[2](v5, 0);
    goto LABEL_7;
  }

  v6 = +[NSPDeviceIdentityCertificate sharedDeviceIdentity];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000AF1A8;
  v8[3] = &unk_10010B168;
  v9 = v5;
  [v6 signData:v4 andFetchDeviceIdentityCertificate:v8];

LABEL_7:
}

void sub_1000AF1A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = NPGetInternalQueue();
  dispatch_assert_queue_V2(v7);

  if (v5 && [v6 count])
  {
    v8 = nplog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Fetched device identity certificate successfully", buf, 2u);
    }

    v9 = objc_alloc_init(NSPPrivacyProxyBAAValidation);
    v10 = [v6 objectAtIndexedSubscript:0];

    v11 = SecCertificateCopyData(v10);
    [v9 setLeafCertificate:v11];

    v12 = [v9 leafCertificate];

    if (v12)
    {
      if ([v6 count] < 2)
      {
        v21 = [v9 leafCertificate];
        [v9 setIntermediateCertificate:v21];
      }

      else
      {
        v13 = [v6 objectAtIndexedSubscript:1];

        v14 = SecCertificateCopyData(v13);
        [v9 setIntermediateCertificate:v14];

        v15 = [v9 intermediateCertificate];

        if (!v15)
        {
          v16 = nplog_obj();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v23 = 0;
            v17 = "failed to fetch intermediate certificate data";
            v18 = &v23;
LABEL_20:
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v17, v18, 2u);
            goto LABEL_14;
          }

          goto LABEL_14;
        }
      }

      [v9 setBaaSignature:v5];
      v20 = *(*(a1 + 32) + 16);
      goto LABEL_17;
    }

    v16 = nplog_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v24 = 0;
      v17 = "failed to fetch leaf certificate data";
      v18 = v24;
      goto LABEL_20;
    }

LABEL_14:

    v20 = *(*(a1 + 32) + 16);
LABEL_17:
    v20();

    goto LABEL_18;
  }

  v19 = nplog_obj();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *v22 = 0;
    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to fetch device identity certificate", v22, 2u);
  }

  (*(*(a1 + 32) + 16))();
LABEL_18:
}

void sub_1000AF498(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  if (!v6)
  {
    v10 = nplog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "+[NSPBAA fetchRequest:session:completionHandler:]";
      _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "%s called with null request", &buf, 0xCu);
    }

    goto LABEL_9;
  }

  v9 = nplog_obj();
  v10 = v9;
  if (!v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "+[NSPBAA fetchRequest:session:completionHandler:]";
      _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "%s called with null session", &buf, 0xCu);
    }

LABEL_9:

    (*(v8 + 2))(v8, 0, 0, 0);
    goto LABEL_6;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 URL];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Sending request for %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v20 = 0x3032000000;
  v21 = sub_100001FB4;
  v22 = sub_1000AF790;
  v23 = 0;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000AF798;
  v16 = &unk_10010AA30;
  p_buf = &buf;
  v17 = v8;
  v12 = [v7 dataTaskWithRequest:v6 completionHandler:&v13];
  objc_storeStrong((*(&buf + 1) + 40), v12);
  [*(*(&buf + 1) + 40) resume];

  _Block_object_dispose(&buf, 8);
LABEL_6:
}

void sub_1000AF770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AF798(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
  v9 = a4;
  v10 = a3;
  v11 = a2;

  (*(*(a1 + 32) + 16))();
}

void sub_1000AFAC0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setBaaParameters:a2];
    v3 = [*(a1 + 32) data];
    [*(a1 + 40) setHTTPBody:v3];

    ++dword_1001298BC;
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000AFBE8;
    v8[3] = &unk_10010B140;
    v9 = *(a1 + 56);
    sub_1000AF498(NSPBAA, v4, v5, v8);
  }

  else
  {
    v6 = *(a1 + 56);
    v7 = *(*(a1 + 56) + 16);

    v7();
  }
}

void sub_1000AFC08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setBaaParameters:a2];
    v3 = [*(a1 + 32) data];
    [*(a1 + 40) setHTTPBody:v3];

    ++dword_1001298BC;
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000AFD34;
    v8[3] = &unk_10010B140;
    v9 = *(a1 + 56);
    sub_1000AF498(NSPBAA, v4, v5, v8);
  }

  else
  {
    v6 = *(a1 + 56);
    v7 = *(*(a1 + 56) + 16);

    v7();
  }
}

void sub_1000AFE98(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setBaa:a2];
    v3 = [*(a1 + 32) data];
    [*(a1 + 40) setHTTPBody:v3];

    ++dword_1001298BC;
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000AFFC0;
    v8[3] = &unk_10010B140;
    v9 = *(a1 + 56);
    sub_1000AF498(NSPBAA, v4, v5, v8);
  }

  else
  {
    v6 = *(a1 + 56);
    v7 = *(*(a1 + 56) + 16);

    v7();
  }
}

void sub_1000AFFE0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  if (+[NSPDeviceIdentityCertificate deviceSupportsDeviceIdentityWithSerialNumber])
  {
    v10 = +[NSPDeviceIdentityCertificate sharedDeviceIdentity];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000B014C;
    v13[3] = &unk_10010B1B8;
    v14 = v7;
    v16 = v9;
    v15 = v8;
    [v10 signData:v6 andFetchDeviceIdentityCertificate:v13];
  }

  else
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Device does not support BAA", v12, 2u);
    }

    (*(v8 + 2))(v8, 0);
  }
}

void sub_1000B014C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = NPGetInternalQueue();
  dispatch_assert_queue_V2(v7);

  if (v5 && [v6 count])
  {
    v8 = nplog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetched device identity certificate successfully", buf, 2u);
    }

    v9 = *(a1 + 32);
    v10 = [*(a1 + 48) description];
    [v9 addValue:v10 forHTTPHeaderField:@"Client-Auth-Type"];

    v11 = [v6 objectAtIndexedSubscript:0];

    v12 = SecCertificateCopyData(v11);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = [NPUtilities copyBase64HeaderValueFromData:v12];
      [v13 addValue:v14 forHTTPHeaderField:@"Client-BAA-Leaf-Cert"];

      if ([v6 count] < 2)
      {
LABEL_9:
        v20 = *(a1 + 32);
        v21 = [NPUtilities copyBase64HeaderValueFromData:v5];
        [v20 addValue:v21 forHTTPHeaderField:@"Client-BAA-Signature"];

        v22 = *(*(a1 + 40) + 16);
LABEL_19:
        v22();

        goto LABEL_20;
      }

      v15 = [v6 objectAtIndexedSubscript:1];

      v16 = SecCertificateCopyData(v15);
      if (v16)
      {
        v17 = v16;
        v18 = *(a1 + 32);
        v19 = [NPUtilities copyBase64HeaderValueFromData:v16];
        [v18 addValue:v19 forHTTPHeaderField:@"Client-BAA-Cert"];

        goto LABEL_9;
      }

      v24 = nplog_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *v28 = 0;
        v25 = "failed to fetch intermediate certificate data";
        v26 = v28;
        goto LABEL_17;
      }
    }

    else
    {
      v24 = nplog_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v29 = 0;
        v25 = "failed to fetch leaf certificate data";
        v26 = &v29;
LABEL_17:
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v25, v26, 2u);
      }
    }

    v22 = *(*(a1 + 40) + 16);
    goto LABEL_19;
  }

  v23 = nplog_obj();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *v27 = 0;
    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to fetch device identity certificate", v27, 2u);
  }

  (*(*(a1 + 40) + 16))();
LABEL_20:
}

void sub_1000B068C(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) setHTTPBody:*(a1 + 40)];
    ++dword_1001298BC;
    v3 = *(a1 + 32);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000B0790;
    v7[3] = &unk_10010B140;
    v4 = *(a1 + 48);
    v8 = *(a1 + 56);
    sub_1000AF498(NSPBAA, v3, v4, v7);
  }

  else
  {
    v5 = *(a1 + 56);
    v6 = *(*(a1 + 56) + 16);

    v6();
  }
}

void sub_1000B07B0(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) setHTTPBody:*(a1 + 40)];
    ++dword_1001298BC;
    v3 = *(a1 + 32);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000B08B8;
    v7[3] = &unk_10010B140;
    v4 = *(a1 + 48);
    v8 = *(a1 + 56);
    sub_1000AF498(NSPBAA, v3, v4, v7);
  }

  else
  {
    v5 = *(a1 + 56);
    v6 = *(*(a1 + 56) + 16);

    v6();
  }
}

id sub_1000B0CA0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = a1[7];
    v5 = *(a1[7] + 16);

    return v5();
  }

  else
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Authentication fallback", v8, 2u);
    }

    return [NSPAnisette sendRequestForTokens:a1[4] tokenFetchURLSession:a1[5] tokenActivationQuery:a1[6] completionHandler:a1[7]];
  }
}

id sub_1000B1268(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = a1[7];
    v5 = *(a1[7] + 16);

    return v5();
  }

  else
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Authentication fallback", v8, 2u);
    }

    return [NSPAnisette sendRequestForTokens:a1[4] tokenFetchURLSession:a1[5] messageBody:a1[6] completionHandler:a1[7]];
  }
}

void sub_1000B1710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B1730(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
  v9 = a4;
  v10 = a3;
  v11 = a2;

  (*(*(a1 + 32) + 16))();
}

id sub_1000B1F10(void *a1, unsigned int a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = objc_alloc_init(NSMutableData);
  v27 = __rev16(a2);
  [v15 appendBytes:&v27 length:2];
  v16 = [v11 UTF8String];
  v26 = bswap32(strlen(v16)) >> 16;
  [v15 appendBytes:&v26 length:2];
  [v15 appendBytes:v16 length:strlen(v16)];
  v25 = 32 * (v12 != 0);
  [v15 appendBytes:&v25 length:1];
  if (v12)
  {
    [v15 appendData:v12];
  }

  if (v13)
  {
    v17 = [v13 UTF8String];
    v24 = bswap32(strlen(v17)) >> 16;
    [v15 appendBytes:&v24 length:2];
    v18 = strlen(v17);
    v19 = v15;
    v20 = v17;
  }

  else
  {
    v23 = 0;
    v20 = &v23;
    v19 = v15;
    v18 = 2;
  }

  [v19 appendBytes:v20 length:v18];
  if ([a1 tokenType] == 58796)
  {
    v22 = 32 * (v14 != 0);
    [v15 appendBytes:&v22 length:1];
    if (v14)
    {
      [v15 appendData:v14];
    }
  }

  return v15;
}

id sub_1000B20DC(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if ([a1 tokenType] == 58796)
    {
      v4 = objc_alloc_init(NSMutableData);
      v5 = [a1 issuerName];
      v6 = [v5 UTF8String];
      *buf = bswap32(strlen(v6)) >> 16;
      [v4 appendBytes:buf length:2];
      [v4 appendBytes:v6 length:strlen(v6)];
      v8 = objc_getProperty(a1, v7, 64, 1);
      v9 = v8;
      if (v8)
      {
        v10 = [v8 UTF8String];
        v19 = bswap32(strlen(v10)) >> 16;
        [v4 appendBytes:&v19 length:2];
        v11 = strlen(v10);
        v12 = v4;
        v13 = v10;
      }

      else
      {
        v19 = 0;
        v13 = &v19;
        v12 = v4;
        v11 = 2;
      }

      [v12 appendBytes:v13 length:v11];
      v14 = [a1 redemptionContext];
      v15 = 32 * (v14 != 0);

      LOBYTE(v19) = v15;
      [v4 appendBytes:&v19 length:1];
      v16 = [a1 redemptionContext];

      if (v16)
      {
        v17 = [a1 redemptionContext];
        [v4 appendData:v17];
      }

      [v4 appendData:v3];
    }

    else
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v21 = "[NSPPrivateAccessTokenChallenge presentationRequestContextForKeyID:]";
        _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "%s called with null self.isARC", buf, 0xCu);
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

NSObject *sub_1000B2DEC(NSObject *a1, unsigned int a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!a1)
  {
    v35 = 0;
    goto LABEL_20;
  }

  if (v12 && [v12 length] != 32)
  {
    v37 = nplog_obj();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
LABEL_26:

      goto LABEL_27;
    }

    *buf = 136315138;
    v49 = "[NSPPrivateAccessTokenChallenge initWithType:issuerName:redemptionContext:originNames:credentialContext:]";
    v38 = "%s called with null (redemptionContext.length == 32)";
LABEL_29:
    _os_log_fault_impl(&_mh_execute_header, v37, OS_LOG_TYPE_FAULT, v38, buf, 0xCu);
    goto LABEL_26;
  }

  if (v14 && [v14 length] != 32)
  {
    v37 = nplog_obj();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_26;
    }

    *buf = 136315138;
    v49 = "[NSPPrivateAccessTokenChallenge initWithType:issuerName:redemptionContext:originNames:credentialContext:]";
    v38 = "%s called with null (credentialContext.length == 32)";
    goto LABEL_29;
  }

  v46.receiver = a1;
  v46.super_class = NSPPrivateAccessTokenChallenge;
  v15 = [&v46 init];
  if (v15)
  {
    v17 = v15;
    v15[4] = a2;
    objc_setProperty_atomic(v15, v16, v11, 24);
    objc_setProperty_atomic(v17, v18, v12, 32);
    objc_setProperty_atomic(v17, v19, v13, 48);
    v20 = [v17 originNames];
    v21 = [v20 firstObject];
    objc_setProperty_atomic(v17, v22, v21, 40);

    v23 = [v17 originNames];
    v24 = [v23 count];

    if (v24)
    {
      v39 = a2;
      v40 = v13;
      v41 = v11;
      v24 = objc_alloc_init(NSMutableString);
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v26 = [v17 originNames];
      v27 = [v26 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v43;
        do
        {
          for (i = 0; i != v28; i = i + 1)
          {
            if (*v43 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v42 + 1) + 8 * i);
            if ([v24 length])
            {
              [v24 appendString:{@", "}];
            }

            [v24 appendString:v31];
          }

          v28 = [v26 countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v28);
      }

      objc_setProperty_atomic(v17, v32, v24, 64);
      v13 = v40;
      v11 = v41;
      a2 = v39;
    }

    objc_setProperty_atomic(v17, v25, v14, 56);
    v33 = sub_1000B1F10(v17, a2, v11, v12, v24, v14);
    objc_setProperty_atomic(v17, v34, v33, 16);

    a1 = v17;
    v35 = a1;
    goto LABEL_19;
  }

  a1 = nplog_obj();
  if (os_log_type_enabled(a1, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
  }

LABEL_27:
  v35 = 0;
LABEL_19:

LABEL_20:
  return v35;
}

uint64_t sub_1000B37E0(void *a1, int a2)
{
  v2 = a1;
  if (a1)
  {
    if ([a1 tokenType] == 58796 || objc_msgSend(v2, "tokenType") == 49278)
    {
      return 1;
    }

    else
    {
      v4 = [v2 redemptionNonce];
      v2 = (!v4 || a2) && [v2 tokenType] == 2;
    }
  }

  return v2;
}

NSObject *sub_1000B3948(NSObject *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v15;
  if (!a1)
  {
    v23 = 0;
    goto LABEL_23;
  }

  if (!v11)
  {
    v22 = nplog_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_47;
    }

    *md = 136315138;
    *&md[4] = "[NSPPrivateAccessTokenResponse initWithChallenge:nonce:tokenKey:keyID:authenticator:]";
    v25 = "%s called with null challenge";
    goto LABEL_45;
  }

  if (!v13)
  {
    v22 = nplog_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_47;
    }

    *md = 136315138;
    *&md[4] = "[NSPPrivateAccessTokenResponse initWithChallenge:nonce:tokenKey:keyID:authenticator:]";
    v25 = "%s called with null tokenKey";
    goto LABEL_45;
  }

  if (!v15)
  {
    v22 = nplog_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_47;
    }

    *md = 136315138;
    *&md[4] = "[NSPPrivateAccessTokenResponse initWithChallenge:nonce:tokenKey:keyID:authenticator:]";
    v25 = "%s called with null authenticator";
    goto LABEL_45;
  }

  if ([v11 tokenType] != 2 && objc_msgSend(v11, "tokenType") != 3)
  {
    if ([v11 tokenType] != 58796)
    {
      goto LABEL_9;
    }

    if (!v12)
    {
      v22 = nplog_obj();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_47;
      }

      *md = 136315138;
      *&md[4] = "[NSPPrivateAccessTokenResponse initWithChallenge:nonce:tokenKey:keyID:authenticator:]";
      v25 = "%s called with null nonce";
      goto LABEL_45;
    }

    if ([v12 length] == 4)
    {
LABEL_9:
      v17 = [v11 challengeData];
      if (([v11 tokenType] == 2 || objc_msgSend(v11, "tokenType") == 3 || objc_msgSend(v11, "tokenType") == 58796) && !v17)
      {
        v26 = nplog_obj();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          *md = 136315138;
          *&md[4] = "[NSPPrivateAccessTokenResponse initWithChallenge:nonce:tokenKey:keyID:authenticator:]";
          _os_log_fault_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "%s called with null challengeData", md, 0xCu);
        }

        v17 = 0;
        v23 = 0;
        v22 = a1;
      }

      else
      {
        v28.receiver = a1;
        v28.super_class = NSPPrivateAccessTokenResponse;
        v18 = [&v28 init];
        if (v18)
        {
          v19 = v18;
          v20 = objc_alloc_init(NSMutableData);
          v27 = __rev16([v11 tokenType]);
          [v20 appendBytes:&v27 length:2];
          if ([v11 tokenType] == 2 || objc_msgSend(v11, "tokenType") == 3 || objc_msgSend(v11, "tokenType") == 58796)
          {
            [v20 appendData:v12];
            *md = 0u;
            v30 = 0u;
            CC_SHA256([v17 bytes], objc_msgSend(v17, "length"), md);
            [v20 appendBytes:md length:32];
          }

          if (v14)
          {
            [v20 appendData:v14];
          }

          else
          {
            *md = 0u;
            v30 = 0u;
            CC_SHA256([v13 bytes], objc_msgSend(v13, "length"), md);
            [v20 appendBytes:md length:32];
          }

          [v20 appendData:v16];
          objc_setProperty_atomic(v19, v21, v20, 8);
          v22 = v19;

          v23 = v22;
        }

        else
        {
          v22 = nplog_obj();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            *md = 0;
            _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "[super init] failed", md, 2u);
          }

          v23 = 0;
        }
      }

      goto LABEL_22;
    }

    v22 = nplog_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_47;
    }

    *md = 136315138;
    *&md[4] = "[NSPPrivateAccessTokenResponse initWithChallenge:nonce:tokenKey:keyID:authenticator:]";
    v25 = "%s called with null (nonce.length == 4)";
LABEL_45:
    _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, v25, md, 0xCu);
    goto LABEL_47;
  }

  if (!v12)
  {
    v22 = nplog_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_47;
    }

    *md = 136315138;
    *&md[4] = "[NSPPrivateAccessTokenResponse initWithChallenge:nonce:tokenKey:keyID:authenticator:]";
    v25 = "%s called with null nonce";
    goto LABEL_45;
  }

  if ([v12 length] == 32)
  {
    goto LABEL_9;
  }

  v22 = nplog_obj();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    *md = 136315138;
    *&md[4] = "[NSPPrivateAccessTokenResponse initWithChallenge:nonce:tokenKey:keyID:authenticator:]";
    v25 = "%s called with null (nonce.length == 32)";
    goto LABEL_45;
  }

LABEL_47:
  v23 = 0;
  v17 = a1;
LABEL_22:

LABEL_23:
  return v23;
}

BOOL sub_1000B3ED0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (!v4)
  {
    v11 = nplog_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
LABEL_20:

LABEL_21:
      v10 = 0;
      goto LABEL_22;
    }

    LODWORD(v14) = 136315138;
    *(&v14 + 4) = "+[NSPPrivateAccessTokenResponse responseData:matchesTokenKey:]";
    v12 = "%s called with null responseData";
LABEL_24:
    _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, v12, &v14, 0xCu);
    goto LABEL_20;
  }

  if (!v5)
  {
    v11 = nplog_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_20;
    }

    LODWORD(v14) = 136315138;
    *(&v14 + 4) = "+[NSPPrivateAccessTokenResponse responseData:matchesTokenKey:]";
    v12 = "%s called with null tokenKey";
    goto LABEL_24;
  }

  v14 = 0u;
  v15 = 0u;
  CC_SHA256([v5 bytes], objc_msgSend(v5, "length"), &v14);
  if ([v4 length] < 0x62)
  {
    goto LABEL_21;
  }

  v6 = [v4 bytes];
  if (!v6)
  {
    goto LABEL_21;
  }

  v10 = *(v6 + 66) == v14 && *(v6 + 74) == *(&v14 + 1) && *(v6 + 82) == v15 && *(v6 + 90) == *(&v15 + 1);
LABEL_22:

  return v10;
}

BOOL sub_1000B4078(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (!v4)
  {
    v7 = nplog_obj();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_26;
    }

    LODWORD(v16) = 136315138;
    *(&v16 + 4) = "+[NSPPrivateAccessTokenResponse responseData:matchesChallenge:]";
    v13 = "%s called with null responseData";
LABEL_22:
    _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, v13, &v16, 0xCu);
    goto LABEL_26;
  }

  if (!v5)
  {
    v7 = nplog_obj();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_26;
    }

    LODWORD(v16) = 136315138;
    *(&v16 + 4) = "+[NSPPrivateAccessTokenResponse responseData:matchesChallenge:]";
    v13 = "%s called with null challenge";
    goto LABEL_22;
  }

  v6 = [v5 challengeData];
  if (!v6)
  {
    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v16) = 136315138;
      *(&v16 + 4) = "+[NSPPrivateAccessTokenResponse responseData:matchesChallenge:]";
      _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "%s called with null challengeData", &v16, 0xCu);
    }

    v7 = 0;
    goto LABEL_26;
  }

  v7 = v6;
  v16 = 0u;
  v17 = 0u;
  CC_SHA256([v6 bytes], [v6 length], &v16);
  if ([v4 length] < 0x42 || (v8 = objc_msgSend(v4, "bytes")) == 0)
  {
LABEL_26:
    v12 = 0;
    goto LABEL_27;
  }

  v12 = *(v8 + 34) == v16 && *(v8 + 42) == *(&v16 + 1) && *(v8 + 50) == v17 && *(v8 + 58) == *(&v17 + 1);
LABEL_27:

  return v12;
}

id sub_1000B429C()
{
  objc_opt_self();
  if (qword_1001298A0 != -1)
  {
    dispatch_once(&qword_1001298A0, &stru_10010B228);
  }

  v0 = qword_100129898;

  return v0;
}

void sub_1000B42F4(id a1)
{
  v1 = objc_alloc_init(NSPPrivateAccessTokenClientState);
  v2 = qword_100129898;
  qword_100129898 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_1000B4330()
{
  objc_opt_self();
  v0 = sub_1000B429C();
  if (v0)
  {
    v1 = v0[1];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id sub_1000B48AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (!a1)
  {
    goto LABEL_20;
  }

  if (!v3)
  {
    v25 = nplog_obj();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315138;
    v50 = "[NSPPrivateAccessTokenRequest decryptResponse:]";
    v42 = "%s called with null responseData";
LABEL_49:
    _os_log_fault_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, v42, buf, 0xCu);
    goto LABEL_19;
  }

  if (*(a1 + 10) != 3)
  {
    v23 = v3;
    goto LABEL_31;
  }

  if (!*(a1 + 104))
  {
    v25 = nplog_obj();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315138;
    v50 = "[NSPPrivateAccessTokenRequest decryptResponse:]";
    v42 = "%s called with null self.hpkeContext";
    goto LABEL_49;
  }

  if (!objc_getProperty(a1, v4, 112, 1))
  {
    v25 = nplog_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v50 = "[NSPPrivateAccessTokenRequest decryptResponse:]";
      v42 = "%s called with null self.hpkeEnc";
      goto LABEL_49;
    }

LABEL_19:

LABEL_20:
    v23 = 0;
    goto LABEL_31;
  }

  v47 = *(a1 + 104);
  cchpke_params_x25519_AESGCM128_HKDF_SHA256();
  v6 = cchpke_params_sizeof_aead_key();
  v7 = cchpke_params_sizeof_aead_nonce();
  v8 = cchpke_params_sizeof_aead_tag();
  v9 = [v5 bytes];
  v10 = [v5 length];
  if (v6 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v6;
  }

  v12 = &v10[-v11 - v8];
  if (v10 <= v11 + v8)
  {
    v24 = v10;
    v25 = nplog_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v50 = v24;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Invalid length %zu", buf, 0xCu);
    }

    goto LABEL_19;
  }

  v13 = [[NSData alloc] initWithBytes:v9 length:v11];
  v14 = &v9[v11];
  v15 = v13;
  v46 = [[NSData alloc] initWithBytes:v14 length:v12];
  v45 = [[NSData alloc] initWithBytes:&v14[v12] length:v8];
  v16 = objc_alloc_init(NSMutableData);
  [v16 appendData:{objc_getProperty(a1, v17, 112, 1)}];
  [v16 appendData:v13];
  v18 = malloc_type_calloc(1uLL, v6, 0x100004077774924uLL);
  v19 = cchpke_initiator_export();
  if (v19)
  {
    v20 = v19;
    v21 = nplog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v50) = v20;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Export error: %d", buf, 8u);
    }

    goto LABEL_14;
  }

  v48 = v13;
  v26 = cchpke_params_sizeof_kdf_hash();
  v27 = malloc_type_calloc(1uLL, v26, 0x100004077774924uLL);
  ccsha256_di();
  [v16 length];
  [v16 bytes];
  v28 = cchkdf_extract();
  free(v18);
  if (v28)
  {
    v29 = nplog_obj();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v50) = v28;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Extract error: %d", buf, 8u);
    }

    v30 = v27;
LABEL_29:
    free(v30);
    v23 = 0;
    v15 = v48;
    goto LABEL_30;
  }

  v31 = malloc_type_calloc(1uLL, v6, 0x100004077774924uLL);
  v32 = cchkdf_expand();
  if (v32)
  {
    v33 = v32;
    v34 = nplog_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v50) = v33;
      _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Key expand error: %d", buf, 8u);
    }

    free(v27);
    v30 = v31;
    goto LABEL_29;
  }

  v44 = v31;
  v18 = malloc_type_calloc(1uLL, v7, 0x100004077774924uLL);
  v36 = cchkdf_expand();
  free(v27);
  if (!v36)
  {
    v38 = malloc_type_calloc(1uLL, v12, 0x100004077774924uLL);
    ccaes_gcm_decrypt_mode();
    v39 = [v46 bytes];
    v43 = [v45 bytes];
    v40 = ccgcm_one_shot();
    free(v44);
    free(v18);
    v15 = v48;
    if (!v40)
    {
      v23 = [[NSData alloc] initWithBytes:v38 length:{v12, v39, v38, v8, v43}];
      free(v38);
      goto LABEL_30;
    }

    v41 = nplog_obj();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v50) = v40;
      _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Decrypt error: %d", buf, 8u);
    }

    v22 = v38;
    goto LABEL_15;
  }

  v37 = nplog_obj();
  v15 = v48;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v50) = v36;
    _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Nonce expand error: %d", buf, 8u);
  }

  free(v44);
LABEL_14:
  v22 = v18;
LABEL_15:
  free(v22);
  v23 = 0;
LABEL_30:

LABEL_31:

  return v23;
}

id sub_1000B4FC8()
{
  objc_opt_self();
  memset(bytes, 0, sizeof(bytes));
  if (SecRandomCopyBytes(kSecRandomDefault, 0x20uLL, bytes) < 0)
  {
    v1 = nplog_obj();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "generate tokens: SecRandomCopyBytes failed", v3, 2u);
    }

    v0 = 0;
  }

  else
  {
    v0 = [NSData dataWithBytes:bytes length:32];
  }

  return v0;
}

id sub_1000B50B8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 bytes];
  v4 = [v2 length];

  CC_SHA256(v3, v4, &v7);
  v5 = [[NSData alloc] initWithBytes:&v7 length:32];

  return v5;
}

NSObject *sub_1000B5184(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  if (!v6)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_22;
    }

    *md = 136315138;
    *&md[4] = "+[NSPPrivateAccessTokenRequest messageToBlindForChallenge:clientNonce:tokenKey:]";
    v13 = "%s called with null challenge";
LABEL_17:
    _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, v13, md, 0xCu);
    goto LABEL_22;
  }

  if (!v8)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_22;
    }

    *md = 136315138;
    *&md[4] = "+[NSPPrivateAccessTokenRequest messageToBlindForChallenge:clientNonce:tokenKey:]";
    v13 = "%s called with null tokenKey";
    goto LABEL_17;
  }

  if ([v6 tokenType] == 2 || objc_msgSend(v6, "tokenType") == 3)
  {
    v9 = objc_alloc_init(NSMutableData);
    v16 = __rev16([v6 tokenType]);
    [v9 appendBytes:&v16 length:2];
    if (v7)
    {
      if ([v7 length] == 32)
      {
        [v9 appendData:v7];
        *md = 0u;
        v20 = 0u;
        v10 = [v6 challengeData];
        CC_SHA256([v10 bytes], objc_msgSend(v10, "length"), md);
        [v9 appendBytes:md length:32];
        *v17 = 0u;
        v18 = 0u;
        CC_SHA256([v8 bytes], objc_msgSend(v8, "length"), v17);
        [v9 appendBytes:v17 length:32];
        v11 = v9;

        goto LABEL_8;
      }

      v14 = nplog_obj();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_21;
      }

      *md = 136315138;
      *&md[4] = "+[NSPPrivateAccessTokenRequest messageToBlindForChallenge:clientNonce:tokenKey:]";
      v15 = "%s called with null (clientNonce.length == 32)";
    }

    else
    {
      v14 = nplog_obj();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
LABEL_21:

        goto LABEL_22;
      }

      *md = 136315138;
      *&md[4] = "+[NSPPrivateAccessTokenRequest messageToBlindForChallenge:clientNonce:tokenKey:]";
      v15 = "%s called with null clientNonce";
    }

    _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, v15, md, 0xCu);
    goto LABEL_21;
  }

  v9 = nplog_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    *md = 136315138;
    *&md[4] = "+[NSPPrivateAccessTokenRequest messageToBlindForChallenge:clientNonce:tokenKey:]";
    v13 = "%s called with null challenge.isBlindRSA";
    goto LABEL_17;
  }

LABEL_22:
  v11 = 0;
LABEL_8:

  return v11;
}

NSObject *sub_1000B54C4(NSObject *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = v18;
  if (!a1)
  {
    v22 = 0;
    goto LABEL_57;
  }

  if (!v13)
  {
    v132 = nplog_obj();
    if (!os_log_type_enabled(v132, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_129;
    }

    *md = 136315138;
    *&md[4] = "[NSPPrivateAccessTokenRequest initWithChallenge:tokenKey:tokenKeyID:originNameKey:selectedOrigin:blindedMessage:]";
    v133 = "%s called with null challenge";
LABEL_128:
    _os_log_fault_impl(&_mh_execute_header, v132, OS_LOG_TYPE_FAULT, v133, md, 0xCu);
    goto LABEL_129;
  }

  if (!v14)
  {
    v132 = nplog_obj();
    if (!os_log_type_enabled(v132, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_129;
    }

    *md = 136315138;
    *&md[4] = "[NSPPrivateAccessTokenRequest initWithChallenge:tokenKey:tokenKeyID:originNameKey:selectedOrigin:blindedMessage:]";
    v133 = "%s called with null tokenKey";
    goto LABEL_128;
  }

  if (!v18)
  {
    v132 = nplog_obj();
    if (!os_log_type_enabled(v132, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_129;
    }

    *md = 136315138;
    *&md[4] = "[NSPPrivateAccessTokenRequest initWithChallenge:tokenKey:tokenKeyID:originNameKey:selectedOrigin:blindedMessage:]";
    v133 = "%s called with null blindedMessage";
    goto LABEL_128;
  }

  if (([v13 isSupportedTokenType] & 1) == 0)
  {
    v132 = nplog_obj();
    if (!os_log_type_enabled(v132, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_129;
    }

    *md = 136315138;
    *&md[4] = "[NSPPrivateAccessTokenRequest initWithChallenge:tokenKey:tokenKeyID:originNameKey:selectedOrigin:blindedMessage:]";
    v133 = "%s called with null challenge.isSupportedTokenType";
    goto LABEL_128;
  }

  if ([v13 tokenType] != 3)
  {
    goto LABEL_9;
  }

  v20 = [v13 originName];

  if (!v20)
  {
    v132 = nplog_obj();
    if (!os_log_type_enabled(v132, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_129;
    }

    *md = 136315138;
    *&md[4] = "[NSPPrivateAccessTokenRequest initWithChallenge:tokenKey:tokenKeyID:originNameKey:selectedOrigin:blindedMessage:]";
    v133 = "%s called with null challenge.originName";
    goto LABEL_128;
  }

  if (!v16)
  {
    v132 = nplog_obj();
    if (os_log_type_enabled(v132, OS_LOG_TYPE_FAULT))
    {
      *md = 136315138;
      *&md[4] = "[NSPPrivateAccessTokenRequest initWithChallenge:tokenKey:tokenKeyID:originNameKey:selectedOrigin:blindedMessage:]";
      v133 = "%s called with null issuerEncapKey";
      goto LABEL_128;
    }

LABEL_129:

LABEL_29:
    v22 = 0;
LABEL_56:

    goto LABEL_57;
  }

LABEL_9:
  v158.receiver = a1;
  v158.super_class = NSPPrivateAccessTokenRequest;
  v21 = [&v158 init];
  if (!v21)
  {
    a1 = nplog_obj();
    if (os_log_type_enabled(a1, OS_LOG_TYPE_FAULT))
    {
      *md = 0;
      _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "[super init] failed", md, 2u);
    }

    goto LABEL_29;
  }

  v22 = v21;
  WORD1(v21[1].isa) = [v13 tokenType];
  v23 = [v13 originNames];
  v24 = [v23 count];

  if (!v17 || v24 < 2)
  {
    v30 = [v13 originName];
    objc_setProperty_atomic(v22, v31, v30, 64);

    if (!v15)
    {
      goto LABEL_14;
    }

LABEL_16:
    v28 = [v15 subdataWithRange:{objc_msgSend(v15, "length") - 1, 1}];
    goto LABEL_17;
  }

  v25 = [v13 originNames];
  v26 = [v25 containsObject:v17];

  if ((v26 & 1) == 0)
  {
    v46 = nplog_obj();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v72 = [v13 originNames];
      *md = 138412546;
      *&md[4] = v17;
      *&md[12] = 2112;
      *&md[14] = v72;
      _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Failed to find origin name %@ in %@", md, 0x16u);
    }

    a1 = v22;
    goto LABEL_29;
  }

  objc_setProperty_atomic(v22, v27, v17, 64);
  if (v15)
  {
    goto LABEL_16;
  }

LABEL_14:
  memset(md, 0, sizeof(md));
  CC_SHA256([v14 bytes], objc_msgSend(v14, "length"), md);
  LOBYTE(buf) = md[31];
  v28 = [[NSData alloc] initWithBytes:&buf length:1];
LABEL_17:
  v32 = v28;
  objc_setProperty_atomic(v22, v29, v28, 48);

  if ([v13 tokenType] == 2 || objc_msgSend(v13, "tokenType") == 3)
  {
    v33 = v19;
    v34 = v16;
    v35 = objc_alloc_init(NSMutableData);
    v159 = __rev16(WORD1(v22[1].isa));
    [v35 appendBytes:&v159 length:2];
    objc_setProperty_atomic(v22, v36, v33, 32);
    if (WORD1(v22[1].isa) != 3)
    {
      [v35 appendData:{objc_getProperty(v22, v37, 48, 1)}];
      [v35 appendData:v33];
LABEL_25:
      v44 = v35;
      v45 = v35;
      a1 = v44;
LABEL_54:

      goto LABEL_55;
    }

    v156 = v35;
    v157 = v16;
    v155 = v34;
    v38 = v34;
    v39 = [v38 length];
    v40 = [v38 bytes];
    v154 = v19;
    if (v39 <= 0x26)
    {
      v41 = v14;
      v42 = v33;
      v43 = nplog_obj();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *md = 134217984;
        *&md[4] = v39;
        _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Config length is too short: %zu", md, 0xCu);
      }

      v16 = v157;
      goto LABEL_50;
    }

    v48 = v40;
    if (*(v40 + 1) == 0x2000)
    {
      v16 = v157;
      if (*(v40 + 35) == 256)
      {
        if (*(v40 + 37) == 256)
        {
          LOBYTE(v22[1].isa) = *v40;
          WORD2(v22[1].isa) = *(v40 + 1);
          HIWORD(v22[1].isa) = *(v40 + 35);
          LOWORD(v22[2].isa) = *(v40 + 37);
          v49 = [[NSData alloc] initWithBytes:v40 + 3 length:32];
          objc_setProperty_atomic(v22, v50, v49, 40);

          if (objc_getProperty(v22, v51, 80, 1))
          {
            goto LABEL_37;
          }

          v73 = sub_1000B4330();
          if (v73)
          {
            v153 = v33;
            v74 = SecKeyCopyPublicKey(v73);
            if (v74)
            {
              v75 = v74;
              *&buf = kSecAttrKeyType;
              *(&buf + 1) = kSecAttrKeySizeInBits;
              *md = kSecAttrKeyTypeECSECPrimeRandom;
              *&md[8] = &off_100114338;
              log = [NSDictionary dictionaryWithObjects:md forKeys:&buf count:2];
              RandomKey = SecKeyCreateRandomKey(log, 0);
              if (RandomKey)
              {
                cfa = RandomKey;
                v77 = objc_alloc_init(NSMutableData);
                isa_high = __rev16(WORD1(v22[1].isa));
                [v77 appendBytes:&isa_high length:2];
                [v77 appendBytes:"ClientBlind" length:11];
                v160 = 0;
                v140 = v77;
                v78 = [CKPATKeyBlinding blindPublicKey:v75 withPrivateKey:cfa context:v77 error:&v160];
                v144 = v160;
                CFRelease(v75);
                if (v78)
                {
                  v79 = [CKPATKeyBlinding compressedRepresentationFromSecKey:v78];
                  objc_setProperty_atomic(v22, v80, v79, 80);

                  CFRelease(v78);
                  if (objc_getProperty(v22, v81, 80, 1))
                  {
                    v22[12].isa = cfa;

                    v33 = v153;
LABEL_37:
                    v152 = v33;
                    [v156 appendData:{objc_getProperty(v22, v52, 80, 1)}];
                    memset(md, 0, sizeof(md));
                    CC_SHA256([v38 bytes], objc_msgSend(v38, "length"), md);
                    v53 = [[NSData alloc] initWithBytes:md length:32];
                    objc_setProperty_atomic(v22, v54, v53, 56);

                    [v156 appendData:{objc_getProperty(v22, v55, 56, 1)}];
                    v57 = objc_getProperty(v22, v56, 40, 1);
                    if (!v57)
                    {
                      v134 = nplog_obj();
                      if (os_log_type_enabled(v134, OS_LOG_TYPE_FAULT))
                      {
                        LODWORD(buf) = 136315138;
                        *(&buf + 4) = "[NSPPrivateAccessTokenRequest encryptTokenRequest]";
                        _os_log_fault_impl(&_mh_execute_header, v134, OS_LOG_TYPE_FAULT, "%s called with null issuerEncapKey", &buf, 0xCu);
                      }

                      v64 = 0;
                      v16 = v157;
                      goto LABEL_42;
                    }

                    v58 = v57;
                    cchpke_params_x25519_AESGCM128_HKDF_SHA256();
                    logc = cchpke_params_sizeof_kem_enc();
                    cf = malloc_type_calloc(1uLL, 0x60uLL, 0x10600407D690DC1uLL);
                    v59 = malloc_type_calloc(1uLL, logc, 0x190E006BuLL);
                    *v167 = 0;
                    ccrng();
                    v143 = v58;
                    [v58 bytes];
                    v60 = cchpke_initiator_setup();
                    v61 = [[NSData alloc] initWithBytes:v59 length:{logc, v59}];
                    objc_setProperty_atomic(v22, v62, v61, 112);

                    free(v59);
                    if (v60)
                    {
                      v63 = nplog_obj();
                      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                      {
                        LODWORD(buf) = 67109120;
                        DWORD1(buf) = v60;
                        _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Setup error: %d", &buf, 8u);
                      }

                      free(cf);
                      v16 = v157;
                      v64 = v143;
LABEL_42:

                      v33 = v152;
                      goto LABEL_86;
                    }

                    v22[13].isa = cf;
                    v82 = objc_alloc_init(NSMutableData);
                    isa = v22[1].isa;
                    [v82 appendBytes:&isa length:1];
                    LOWORD(v160) = WORD2(v22[1].isa);
                    [v82 appendBytes:&v160 length:2];
                    isa_high = HIWORD(v22[1].isa);
                    [v82 appendBytes:&isa_high length:2];
                    v163 = v22[2].isa;
                    [v82 appendBytes:&v163 length:2];
                    v162 = __rev16(WORD1(v22[1].isa));
                    cfb = v82;
                    [v82 appendBytes:&v162 length:2];
                    [v82 appendData:{objc_getProperty(v22, v83, 80, 1)}];
                    [v82 appendData:{objc_getProperty(v22, v84, 56, 1)}];
                    loga = objc_alloc_init(NSMutableData);
                    [loga appendData:objc_getProperty(v22, v85, 48, 1)];
                    [loga appendData:objc_getProperty(v22, v86, 32, 1)];
                    v138 = objc_getProperty(v22, v87, 64, 1);
                    v88 = [v138 UTF8String];
                    v89 = strlen(v88);
                    v90 = v89;
                    v91 = -v89 & 0x1FLL;
                    if (!v89)
                    {
                      v91 = 32;
                    }

                    v92 = v91 + v89;
                    v93 = malloc_type_calloc(1uLL, v91 + v89, 0xC8CB9515uLL);
                    memcpy(v93, v88, v90);
                    v161 = bswap32(v92) >> 16;
                    [loga appendBytes:&v161 length:2];
                    [loga appendBytes:v93 length:v92];
                    free(v93);
                    v139 = malloc_type_calloc(1uLL, [loga length], 0x22C3DEEFuLL);
                    v94 = cchpke_params_sizeof_aead_tag();
                    v141 = malloc_type_calloc(1uLL, v94, 0x562F6EB5uLL);
                    v136 = v22[13].isa;
                    [cfb length];
                    [cfb bytes];
                    [loga length];
                    [loga bytes];
                    v137 = v94;
                    v95 = cchpke_initiator_encrypt();
                    if (v95)
                    {
                      v96 = v95;
                      v97 = nplog_obj();
                      v33 = v152;
                      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
                      {
                        LODWORD(buf) = 67109120;
                        DWORD1(buf) = v96;
                        _os_log_error_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "Encrypt error: %d", &buf, 8u);
                      }

                      free(v141);
                      free(v139);
                      v98 = 0;
                      v16 = v157;
                      v99 = loga;
                    }

                    else
                    {
                      v101 = objc_alloc_init(NSMutableData);
                      [v101 appendData:{objc_getProperty(v22, v102, 112, 1)}];
                      v99 = loga;
                      [v101 appendBytes:v139 length:{-[NSObject length](loga, "length")}];
                      [v101 appendBytes:v141 length:v137];
                      free(v141);
                      free(v139);
                      objc_setProperty_atomic(v22, v103, v101, 72);
                      Property = objc_getProperty(v22, v104, 72, 1);
                      v142 = Property != 0;
                      v16 = v157;
                      v33 = v152;
                      if (!Property)
                      {
                        v106 = nplog_obj();
                        if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                        {
                          LOWORD(buf) = 0;
                          _os_log_error_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "Error creating encrypted token request", &buf, 2u);
                        }

                        v99 = loga;
                      }

                      v98 = v142;
                    }

                    if (!v98)
                    {
LABEL_86:
                      v126 = nplog_obj();
                      if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
                      {
                        LOWORD(buf) = 0;
                        v127 = "Failed to encrypt the token request";
LABEL_88:
                        p_buf = &buf;
LABEL_123:
                        _os_log_error_impl(&_mh_execute_header, v126, OS_LOG_TYPE_ERROR, v127, p_buf, 2u);
                        goto LABEL_93;
                      }

                      goto LABEL_93;
                    }

                    v163 = bswap32([objc_getProperty(v22 v107]) >> 16;
                    [v156 appendBytes:&v163 length:2];
                    [v156 appendData:{objc_getProperty(v22, v108, 72, 1)}];
                    if (objc_getProperty(v22, v109, 80, 1))
                    {
                      if (objc_getProperty(v22, v110, 56, 1))
                      {
                        if (objc_getProperty(v22, v111, 72, 1))
                        {
                          if (v22[12].isa)
                          {
                            v112 = sub_1000B4330();
                            if (v112)
                            {
                              v113 = v112;
                              v114 = objc_alloc_init(NSMutableData);
                              LOWORD(v160) = __rev16(WORD1(v22[1].isa));
                              [v114 appendBytes:&v160 length:2];
                              [v114 appendData:{objc_getProperty(v22, v115, 80, 1)}];
                              [v114 appendData:{objc_getProperty(v22, v116, 56, 1)}];
                              isa_high = bswap32([objc_getProperty(v22 v117]) >> 16;
                              [v114 appendBytes:&isa_high length:2];
                              [v114 appendData:{objc_getProperty(v22, v118, 72, 1)}];
                              v119 = objc_alloc_init(NSMutableData);
                              [v119 appendBytes:&v160 length:2];
                              [v119 appendBytes:"ClientBlind" length:11];
                              v120 = v22[12].isa;
                              *v167 = 0;
                              v121 = [CKPATKeyBlinding blindSignMessage:v114 blindedBy:v120 withKey:v113 context:v119 error:v167];
                              v122 = *v167;
                              objc_setProperty_atomic(v22, v123, v121, 88);

                              if (objc_getProperty(v22, v124, 88, 1))
                              {

                                v35 = v156;
                                [v156 appendData:{objc_getProperty(v22, v125, 88, 1)}];
                                v16 = v157;
                                v33 = v152;
                                v34 = v155;
                                goto LABEL_25;
                              }

                              logb = nplog_obj();
                              v16 = v157;
                              if (os_log_type_enabled(logb, OS_LOG_TYPE_ERROR))
                              {
                                LODWORD(buf) = 138412290;
                                *(&buf + 4) = v122;
                                _os_log_error_impl(&_mh_execute_header, logb, OS_LOG_TYPE_ERROR, "generate signature: SecKeyCopyExternalRepresentation failed: %@", &buf, 0xCu);
                              }

                              v33 = v152;
LABEL_106:
                              v126 = nplog_obj();
                              if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
                              {
                                LOWORD(buf) = 0;
                                v127 = "Failed to generate the request signature";
                                goto LABEL_88;
                              }

LABEL_93:

                              a1 = 0;
LABEL_53:
                              v34 = v155;
                              v45 = v156;
                              goto LABEL_54;
                            }

                            v130 = nplog_obj();
                            if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
                            {
                              LOWORD(buf) = 0;
                              _os_log_error_impl(&_mh_execute_header, v130, OS_LOG_TYPE_ERROR, "generate signature: Failed to access stored client key", &buf, 2u);
                            }

LABEL_99:

                            goto LABEL_106;
                          }

                          v130 = nplog_obj();
                          if (os_log_type_enabled(v130, OS_LOG_TYPE_FAULT))
                          {
                            LODWORD(buf) = 136315138;
                            *(&buf + 4) = "[NSPPrivateAccessTokenRequest generateRequestSignature]";
                            v135 = "%s called with null self.ephemeralPrivateKey";
                            goto LABEL_141;
                          }

LABEL_142:
                          v16 = v157;
                          v33 = v152;
                          goto LABEL_99;
                        }

                        v130 = nplog_obj();
                        if (!os_log_type_enabled(v130, OS_LOG_TYPE_FAULT))
                        {
                          goto LABEL_142;
                        }

                        LODWORD(buf) = 136315138;
                        *(&buf + 4) = "[NSPPrivateAccessTokenRequest generateRequestSignature]";
                        v135 = "%s called with null self.encryptedTokenRequest";
                      }

                      else
                      {
                        v130 = nplog_obj();
                        if (!os_log_type_enabled(v130, OS_LOG_TYPE_FAULT))
                        {
                          goto LABEL_142;
                        }

                        LODWORD(buf) = 136315138;
                        *(&buf + 4) = "[NSPPrivateAccessTokenRequest generateRequestSignature]";
                        v135 = "%s called with null self.issuerEncapKeyID";
                      }
                    }

                    else
                    {
                      v130 = nplog_obj();
                      if (!os_log_type_enabled(v130, OS_LOG_TYPE_FAULT))
                      {
                        goto LABEL_142;
                      }

                      LODWORD(buf) = 136315138;
                      *(&buf + 4) = "[NSPPrivateAccessTokenRequest generateRequestSignature]";
                      v135 = "%s called with null self.requestKey";
                    }

LABEL_141:
                    _os_log_fault_impl(&_mh_execute_header, v130, OS_LOG_TYPE_FAULT, v135, &buf, 0xCu);
                    goto LABEL_142;
                  }

                  v131 = nplog_obj();
                  v33 = v153;
                  if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
                  {
                    *v167 = 0;
                    _os_log_error_impl(&_mh_execute_header, v131, OS_LOG_TYPE_ERROR, "generate key: compressedRepresentationFromSecKey failed", v167, 2u);
                  }

                  v16 = v157;
                }

                else
                {
                  v131 = nplog_obj();
                  v16 = v157;
                  if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
                  {
                    *v167 = 138412290;
                    *&v167[4] = v144;
                    _os_log_error_impl(&_mh_execute_header, v131, OS_LOG_TYPE_ERROR, "generate key: blindPublicKey failed: %@", v167, 0xCu);
                  }

                  v33 = v153;
                }

                CFRelease(cfa);
              }

              else
              {
                CFRelease(v75);
                v129 = nplog_obj();
                if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
                {
                  *v167 = 0;
                  _os_log_error_impl(&_mh_execute_header, v129, OS_LOG_TYPE_ERROR, "generate key: SecKeyCreateRandomKey failed", v167, 2u);
                }

                v16 = v157;
                v33 = v153;
              }

LABEL_92:
              v126 = nplog_obj();
              if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
              {
                *md = 0;
                v127 = "Failed to generate the request key";
                p_buf = md;
                goto LABEL_123;
              }

              goto LABEL_93;
            }

            v100 = nplog_obj();
            v16 = v157;
            if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
            {
              *v167 = 0;
              _os_log_error_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "generate key: SecKeyCopyPublicKey failed", v167, 2u);
            }
          }

          else
          {
            v100 = nplog_obj();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
            {
              *v167 = 0;
              _os_log_error_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "generate key: Failed to access stored client key", v167, 2u);
            }

            v16 = v157;
          }

          goto LABEL_92;
        }

        v41 = v14;
        v42 = v33;
        v43 = nplog_obj();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v68 = bswap32(*(v48 + 37)) >> 16;
          *md = 67109120;
          *&md[4] = v68;
          v66 = "AEAD %u is not supported";
          goto LABEL_49;
        }

LABEL_50:

        v69 = nplog_obj();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          *md = 0;
          _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "Failed to parse origin name key", md, 2u);
        }

        a1 = 0;
        v33 = v42;
        v14 = v41;
        v19 = v154;
        goto LABEL_53;
      }

      v41 = v14;
      v42 = v33;
      v43 = nplog_obj();
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      v67 = bswap32(*(v48 + 35)) >> 16;
      *md = 67109120;
      *&md[4] = v67;
      v66 = "KDF %u is not supported";
    }

    else
    {
      v41 = v14;
      v42 = v33;
      v43 = nplog_obj();
      v16 = v157;
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      v65 = bswap32(*(v48 + 1)) >> 16;
      *md = 67109120;
      *&md[4] = v65;
      v66 = "KEM %u is not supported";
    }

LABEL_49:
    _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, v66, md, 8u);
    goto LABEL_50;
  }

  if ([v13 tokenType] == 58796 || objc_msgSend(v13, "tokenType") == 49278)
  {
    v33 = v19;
    a1 = objc_alloc_init(NSMutableData);
    *md = __rev16(WORD1(v22[1].isa));
    [a1 appendBytes:md length:2];
    [a1 appendData:objc_getProperty(v22, v47, 48, 1)];
    [a1 appendData:v33];
LABEL_55:

    objc_setProperty_atomic(v22, v70, a1, 24);
    goto LABEL_56;
  }

LABEL_57:

  return v22;
}

void sub_1000B6BC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      v21 = nplog_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *v26 = 136315138;
        *&v26[4] = "[NSPPrivateAccessTokenRequest addHeadersToRequest:]";
        _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "%s called with null urlRequest", v26, 0xCu);
      }

      goto LABEL_22;
    }

    [v3 addValue:@"application/private-token-response" forHTTPHeaderField:@"Accept"];
    [v4 addValue:@"application/private-token-request" forHTTPHeaderField:@"Content-Type"];
    [v4 addValue:@"no-cache forHTTPHeaderField:{no-store", @"Cache-Control"}];
    if (*(a1 + 10) == 3)
    {
      v6 = objc_getProperty(a1, v5, 64, 1);
      objc_opt_self();
      if (v6)
      {
        objc_opt_self();
        Property = sub_1000B429C();
        v9 = Property;
        if (Property)
        {
          Property = objc_getProperty(Property, v8, 16, 1);
        }

        v10 = Property;

        if (v10)
        {
          *v26 = 0u;
          v27 = 0u;
          strlen([v6 UTF8String]);
          ccsha256_di();
          [v10 length];
          [v10 bytes];
          v11 = cchkdf();
          if (!v11)
          {
            v14 = [[NSData alloc] initWithBytes:v26 length:{32, v26}];
            goto LABEL_14;
          }

          v12 = v11;
          v13 = nplog_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v25 = v12;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "HKDF error: %d", buf, 8u);
          }
        }

        else
        {
          v23 = nplog_obj();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            *v26 = 136315138;
            *&v26[4] = "+[NSPPrivateAccessTokenClientState anonymousIDForOrigin:]";
            _os_log_fault_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "%s called with null clientSecret", v26, 0xCu);
          }

          v10 = 0;
        }
      }

      else
      {
        v10 = nplog_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          *v26 = 136315138;
          *&v26[4] = "+[NSPPrivateAccessTokenClientState anonymousIDForOrigin:]";
          _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "%s called with null origin", v26, 0xCu);
        }
      }

      v14 = 0;
LABEL_14:

      v15 = [NPUtilities copyBase64HeaderValueFromData:v14];
      [v4 addValue:v15 forHTTPHeaderField:@"Sec-Token-Origin"];

      v16 = sub_1000B4330();
      if (v16)
      {
        v17 = SecKeyCopyPublicKey(v16);
        if (v17)
        {
          v18 = v17;
          v19 = [CKPATKeyBlinding compressedRepresentationFromSecKey:v17];
          if (v19)
          {
            v20 = [NPUtilities copyBase64HeaderValueFromData:v19];
            [v4 addValue:v20 forHTTPHeaderField:@"Sec-Token-Client"];
          }

          CFRelease(v18);
        }
      }

      if (*(a1 + 96))
      {
        v21 = [CKPATKeyBlinding privateScalarFromSecKey:?];
        if (v21)
        {
          v22 = [NPUtilities copyBase64HeaderValueFromData:v21];
          [v4 addValue:v22 forHTTPHeaderField:@"Sec-Token-Request-Blind"];
        }

LABEL_22:
      }
    }
  }
}

void sub_1000B7AD4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to fetch private access token: %@", buf, 0xCu);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B7C2C;
  block[3] = &unk_10010B250;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void sub_1000B7DE8(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  if (v10)
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v10;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to fetch private access token pair: %@", buf, 0xCu);
    }
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000B7F68;
  v17[3] = &unk_10010B2A0;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v21 = v13;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  dispatch_async(v12, v17);
}

void sub_1000B8124(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = nplog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v12;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to fetch linked private access token pair: %@", buf, 0xCu);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B82C8;
  block[3] = &unk_10010B2F0;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v24 = v12;
  v25 = v15;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  v19 = v9;
  dispatch_async(v14, block);
}

void sub_1000B8488(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = nplog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to fetch private access token and auxiliary authentication: %@", buf, 0xCu);
    }
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000B8608;
  v16[3] = &unk_10010B2A0;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v12;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  dispatch_async(v11, v16);
}

id sub_1000B870C(uint64_t a1, void *a2, void *a3, unsigned int a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v16 = bytes;
  v70 = a2;
  v17 = a3;
  v69 = a5;
  v68 = a6;
  v18 = a7;
  v64 = a8;
  v65 = a9;
  v66 = a10;
  objc_opt_self();
  v19 = [RSABSSATokenBlinder alloc];
  v20 = [v17 key];
  v75 = 0;
  v21 = [v19 initWithPublicKey:v20 error:&v75];
  v22 = v75;

  if (v22)
  {
    v23 = nplog_obj();
    log = v23;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v57 = [v70 issuerName];
      LODWORD(bytes[0]) = 138412546;
      *(bytes + 4) = v22;
      WORD6(bytes[0]) = 2112;
      *(bytes + 14) = v57;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "RSABSSATokenBlinder initWithPublicKey failed with error %@ for %@", bytes, 0x16u);
    }

    v24 = 0;
    v25 = v64;
    goto LABEL_55;
  }

  v63 = v18;
  if (!v21)
  {
    log = nplog_obj();
    v25 = v64;
    if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
    {
      LODWORD(bytes[0]) = 136315138;
      *(bytes + 4) = "+[NSPPrivateAccessTokenFetcher createBlindRSATokenRequestsWithChallenge:tokenKey:tokenCount:originNameKey:selectedOrigin:waitingTokenList:clientNonceArray:clientSaltArray:longLivedToken:]";
      _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s called with null tokenBlinder", bytes, 0xCu);
    }

    v24 = 0;
LABEL_65:
    v18 = v63;
    goto LABEL_55;
  }

  v26 = a4;
  v62 = v21;
  log = objc_alloc_init(NSMutableArray);
  v25 = v64;
  if (a4)
  {
    v16 = kSecRandomDefault;
    v27 = a4;
    while (1)
    {
      if (v66)
      {
        v28 = v66;
        objc_opt_self();
        memset(bytes, 0, sizeof(bytes));
        if (SecRandomCopyBytes(kSecRandomDefault, 0x20uLL, bytes) < 0)
        {
          v31 = nplog_obj();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *md = 0;
            _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "generate tokens: SecRandomCopyBytes failed", md, 2u);
          }

          v29 = 0;
          v32 = 0;
        }

        else
        {
          v29 = [NSData dataWithBytes:bytes length:32];
          v30 = v29;
          v31 = [v28 mutableCopy];
          [v31 appendBytes:bytes length:32];
          *md = 0u;
          v78 = 0u;
          CC_SHA256([v31 bytes], [v31 length], md);
          v32 = [NSData dataWithBytes:md length:32];
        }

        v33 = v29;
      }

      else
      {
        v32 = sub_1000B4FC8();
        v33 = 0;
      }

      if (!v32)
      {
        break;
      }

      v34 = [v17 key];
      v35 = sub_1000B5184(NSPPrivateAccessTokenRequest, v70, v32, v34);

      if (!v35)
      {
        v59 = nplog_obj();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
        {
          LODWORD(bytes[0]) = 136315138;
          *(bytes + 4) = "+[NSPPrivateAccessTokenFetcher createBlindRSATokenRequestsWithChallenge:tokenKey:tokenCount:originNameKey:selectedOrigin:waitingTokenList:clientNonceArray:clientSaltArray:longLivedToken:]";
          _os_log_fault_impl(&_mh_execute_header, v59, OS_LOG_TYPE_FAULT, "%s called with null messageToBlind", bytes, 0xCu);
        }

        goto LABEL_64;
      }

      [log addObject:v35];
      [v64 addObject:v32];
      if (v33)
      {
        [v65 addObject:v33];
      }

      if (!--v27)
      {
        goto LABEL_21;
      }
    }

    v58 = nplog_obj();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
    {
      LODWORD(bytes[0]) = 136315138;
      *(bytes + 4) = "+[NSPPrivateAccessTokenFetcher createBlindRSATokenRequestsWithChallenge:tokenKey:tokenCount:originNameKey:selectedOrigin:waitingTokenList:clientNonceArray:clientSaltArray:longLivedToken:]";
      _os_log_fault_impl(&_mh_execute_header, v58, OS_LOG_TYPE_FAULT, "%s called with null clientNonce", bytes, 0xCu);
    }

LABEL_64:
    v24 = 0;
    v21 = v62;
    goto LABEL_65;
  }

LABEL_21:
  v36 = v62;
  v37 = log;
  v38 = v63;
  objc_opt_self();
  if (!v38)
  {
    v42 = nplog_obj();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
    {
      LODWORD(bytes[0]) = 136315138;
      *(bytes + 4) = "+[NSPPrivateAccessTokenFetcher generateTokensUsingTokenBlinder:contentArray:waitingTokenList:tokenCount:]";
      v60 = "%s called with null waitingTokenList";
LABEL_78:
      _os_log_fault_impl(&_mh_execute_header, v42, OS_LOG_TYPE_FAULT, v60, bytes, 0xCu);
    }

LABEL_39:

    goto LABEL_40;
  }

  if (v37 && [v37 count]!= v26)
  {
    v42 = nplog_obj();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
    {
      LODWORD(bytes[0]) = 136315138;
      *(bytes + 4) = "+[NSPPrivateAccessTokenFetcher generateTokensUsingTokenBlinder:contentArray:waitingTokenList:tokenCount:]";
      v60 = "%s called with null (contentArray.count == tokenCount)";
      goto LABEL_78;
    }

    goto LABEL_39;
  }

  if (v26)
  {
    v39 = 0;
    while (1)
    {
      if (v37)
      {
        v16 = [v37 objectAtIndexedSubscript:v39];
        v40 = v16;
      }

      else
      {
        v40 = 0;
      }

      *md = 0;
      v41 = [v36 tokenWaitingActivationWithContent:v40 error:md];
      v42 = *md;
      if (v37)
      {
      }

      if (v42)
      {
        break;
      }

      if (!v41)
      {
        v41 = nplog_obj();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
        {
          LODWORD(bytes[0]) = 136315138;
          *(bytes + 4) = "+[NSPPrivateAccessTokenFetcher generateTokensUsingTokenBlinder:contentArray:waitingTokenList:tokenCount:]";
          _os_log_fault_impl(&_mh_execute_header, v41, OS_LOG_TYPE_FAULT, "%s called with null waitingActivation", bytes, 0xCu);
        }

        goto LABEL_38;
      }

      [v38 addObject:v41];

      if (v26 == ++v39)
      {
        goto LABEL_40;
      }
    }

    v43 = nplog_obj();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      LODWORD(bytes[0]) = 138412290;
      *(bytes + 4) = v42;
      _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "tokenWaitingActivationWithContent failed with error %@", bytes, 0xCu);
    }

LABEL_38:
    goto LABEL_39;
  }

LABEL_40:

  log = v37;
  if ([v38 count])
  {
    v44 = objc_alloc_init(NSMutableArray);
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v45 = v38;
    v46 = [v45 countByEnumeratingWithState:&v71 objects:v76 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v72;
      while (2)
      {
        for (i = 0; i != v47; i = i + 1)
        {
          if (*v72 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = *(*(&v71 + 1) + 8 * i);
          v51 = [NSPPrivateAccessTokenRequest alloc];
          v52 = [v17 key];
          v53 = [v50 blindedMessage];
          v54 = sub_1000B54C4(&v51->super, v70, v52, 0, v69, v68, v53);

          if (!v54)
          {
            v55 = nplog_obj();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
            {
              LODWORD(bytes[0]) = 136315138;
              *(bytes + 4) = "+[NSPPrivateAccessTokenFetcher createBlindRSATokenRequestsWithChallenge:tokenKey:tokenCount:originNameKey:selectedOrigin:waitingTokenList:clientNonceArray:clientSaltArray:longLivedToken:]";
              _os_log_fault_impl(&_mh_execute_header, v55, OS_LOG_TYPE_FAULT, "%s called with null tokenRequest", bytes, 0xCu);
            }

            v24 = 0;
            goto LABEL_53;
          }

          [v44 addObject:v54];
        }

        v47 = [v45 countByEnumeratingWithState:&v71 objects:v76 count:16];
        if (v47)
        {
          continue;
        }

        break;
      }
    }

    v24 = v44;
LABEL_53:
    v18 = v63;
    v25 = v64;
  }

  else
  {
    v61 = nplog_obj();
    v18 = v63;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
    {
      LODWORD(bytes[0]) = 136315138;
      *(bytes + 4) = "+[NSPPrivateAccessTokenFetcher createBlindRSATokenRequestsWithChallenge:tokenKey:tokenCount:originNameKey:selectedOrigin:waitingTokenList:clientNonceArray:clientSaltArray:longLivedToken:]";
      _os_log_fault_impl(&_mh_execute_header, v61, OS_LOG_TYPE_FAULT, "%s called with null (waitingTokenList.count > 0)", bytes, 0xCu);
    }

    v24 = 0;
    v25 = v64;
  }

  v22 = 0;
  v21 = v62;
LABEL_55:

  return v24;
}

id sub_1000B9074(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  v9 = [v7 key];
  v10 = sub_1000B50B8(NSPPrivateAccessTokenRequest, v9);

  v11 = v10;
  if (v6)
  {
    if ([v6 tokenType] == 58796)
    {
      v12 = objc_alloc_init(NSMutableData);
      v13 = [v6 issuerName];
      v14 = [v13 UTF8String];
      *buf = bswap32(strlen(v14)) >> 16;
      [v12 appendBytes:buf length:2];
      [v12 appendBytes:v14 length:strlen(v14)];
      v16 = objc_getProperty(v6, v15, 64, 1);
      v17 = v16;
      if (v16)
      {
        v18 = [v16 UTF8String];
        v38 = bswap32(strlen(v18)) >> 16;
        [v12 appendBytes:&v38 length:2];
        v19 = strlen(v18);
        v20 = v12;
        v21 = v18;
      }

      else
      {
        v38 = 0;
        v21 = &v38;
        v20 = v12;
        v19 = 2;
      }

      [v20 appendBytes:v21 length:v19];
      v22 = [v6 credentialContext];
      v23 = 32 * (v22 != 0);

      LOBYTE(v38) = v23;
      [v12 appendBytes:&v38 length:1];
      v24 = [v6 credentialContext];

      if (v24)
      {
        v25 = [v6 credentialContext];
        [v12 appendData:v25];
      }

      [v12 appendData:v11];
    }

    else
    {
      v13 = nplog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v41 = "[NSPPrivateAccessTokenChallenge credentialRequestContextForKeyID:]";
        _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "%s called with null self.isARC", buf, 0xCu);
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v26 = [ARCAwaitingActivation alloc];
  v27 = [v7 key];
  v37 = 0;
  v28 = [v26 initWithRequestContext:v12 serverPublicKey:v27 error:&v37];
  v29 = v37;

  if (v28)
  {
    v30 = [NSPPrivateAccessTokenRequest alloc];
    v31 = [v7 key];
    v32 = [v28 requestData];
    v33 = sub_1000B54C4(&v30->super, v6, v31, 0, 0, 0, v32);

    if (v33)
    {
      [v8 addObject:v28];
      v39 = v33;
      v34 = [NSArray arrayWithObjects:&v39 count:1];
      goto LABEL_13;
    }

    v36 = nplog_obj();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v41 = "+[NSPPrivateAccessTokenFetcher createARCTokenRequestsWithChallenge:tokenKey:waitingTokenList:]";
      _os_log_fault_impl(&_mh_execute_header, v36, OS_LOG_TYPE_FAULT, "%s called with null tokenRequest", buf, 0xCu);
    }

    v33 = 0;
  }

  else
  {
    v33 = nplog_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v41 = "+[NSPPrivateAccessTokenFetcher createARCTokenRequestsWithChallenge:tokenKey:waitingTokenList:]";
      _os_log_fault_impl(&_mh_execute_header, v33, OS_LOG_TYPE_FAULT, "%s called with null activation", buf, 0xCu);
    }
  }

  v34 = 0;
LABEL_13:

  return v34;
}

id sub_1000B94EC(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a3;
  v9 = a5;
  objc_opt_self();
  v10 = [v8 key];
  v11 = [v8 metadataSize];
  v12 = [v7 issuerName];
  v13 = [ATHMAwaitingActivation verifyAndGetKeyIDFromKeyCommitmentsData:v10 numBuckets:v11 deploymentID:v12];

  if (v13)
  {
    v14 = [ATHMAwaitingActivation alloc];
    v15 = [v8 key];
    v16 = [v8 metadataSize];
    v17 = [v7 issuerName];
    v27 = 0;
    v18 = [v14 initWithKeyCommitmentsData:v15 nbuckets:v16 deploymentID:v17 error:&v27];
    v19 = v27;

    if (v18)
    {
      v20 = [NSPPrivateAccessTokenRequest alloc];
      v21 = [v8 key];
      v22 = [v18 requestData];
      v23 = sub_1000B54C4(&v20->super, v7, v21, v13, 0, 0, v22);

      if (v23)
      {
        [v9 addObject:v18];
        v28 = v23;
        v24 = [NSArray arrayWithObjects:&v28 count:1];
LABEL_5:

        goto LABEL_6;
      }

      v26 = nplog_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v30 = "+[NSPPrivateAccessTokenFetcher createATHMTokenRequestsWithChallenge:tokenKey:tokenCount:waitingTokenList:]";
        _os_log_fault_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "%s called with null tokenRequest", buf, 0xCu);
      }

      v23 = 0;
    }

    else
    {
      v23 = nplog_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v30 = "+[NSPPrivateAccessTokenFetcher createATHMTokenRequestsWithChallenge:tokenKey:tokenCount:waitingTokenList:]";
        _os_log_fault_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "%s called with null activation", buf, 0xCu);
      }
    }

    v24 = 0;
    goto LABEL_5;
  }

  v19 = nplog_obj();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v30 = "+[NSPPrivateAccessTokenFetcher createATHMTokenRequestsWithChallenge:tokenKey:tokenCount:waitingTokenList:]";
    _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "%s called with null keyIDData", buf, 0xCu);
  }

  v24 = 0;
LABEL_6:

  return v24;
}

id sub_1000B9830(uint64_t a1, void *a2, void *a3, unsigned int a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v16 = a2;
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = objc_opt_self();
  if (v16)
  {
    v25 = v24;
    if ([v16 tokenType] == 2 || objc_msgSend(v16, "tokenType") == 3)
    {
      v26 = sub_1000B870C(v25, v16, v17, a4, v18, v19, v20, v21, v22, v23);
LABEL_5:
      v27 = v26;
      goto LABEL_6;
    }

    if ([v16 tokenType] == 49278)
    {
      v26 = sub_1000B94EC(v25, v16, v17, v29, v20);
      goto LABEL_5;
    }

    if ([v16 tokenType] == 58796)
    {
      v26 = sub_1000B9074(v25, v16, v17, v20);
      goto LABEL_5;
    }
  }

  v27 = 0;
LABEL_6:

  return v27;
}

id sub_1000B99D0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a2;
  v11 = a3;
  v63 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v10;
  objc_opt_self();
  v15 = objc_alloc_init(NSMutableArray);
  if (!v11 || [v11 tokenType] != 2 && objc_msgSend(v11, "tokenType") != 3)
  {
    goto LABEL_6;
  }

  v16 = [v12 count];
  if (v16 != [v10 count])
  {
    v54 = nplog_obj();
    if (!os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
    {
LABEL_61:

      v52 = 0;
      goto LABEL_55;
    }

    *buf = 136315138;
    v69 = "+[NSPPrivateAccessTokenFetcher activateTokens:challenge:tokenKey:clientNonceArray:unactivatedListFromServer:]";
    v55 = "%s called with null (clientNonceArray.count == tokenWaitingActivationList.count)";
LABEL_63:
    _os_log_fault_impl(&_mh_execute_header, v54, OS_LOG_TYPE_FAULT, v55, buf, 0xCu);
    goto LABEL_61;
  }

  v17 = [v12 count];
  if (v17 < [v13 count])
  {
    v54 = nplog_obj();
    if (!os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_61;
    }

    *buf = 136315138;
    v69 = "+[NSPPrivateAccessTokenFetcher activateTokens:challenge:tokenKey:clientNonceArray:unactivatedListFromServer:]";
    v55 = "%s called with null (clientNonceArray.count >= unactivatedListFromServer.count)";
    goto LABEL_63;
  }

LABEL_6:
  v60 = v15;
  if (![v13 count])
  {
    goto LABEL_54;
  }

  v19 = 0;
  *&v18 = 138412290;
  v56 = v18;
  v57 = v10;
  v58 = v11;
  v61 = v12;
  v62 = v13;
  while (v19 < [v14 count])
  {
    v20 = [v13 objectAtIndexedSubscript:v19];
    v21 = [v14 objectAtIndex:v19];
    if (v19 >= [v12 count])
    {
      v22 = 0;
    }

    else
    {
      v22 = [v12 objectAtIndexedSubscript:v19];
    }

    v23 = v21;
    v65 = v11;
    v64 = v63;
    v24 = v22;
    v25 = v20;
    objc_opt_self();
    v67 = 1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v66 = 0;
      v26 = [v23 activateTokenWithServerResponse:v25 error:&v66];
      v27 = v66;
      if (v27)
      {
        v28 = nplog_obj();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = v56;
          v69 = v27;
          _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "activateToken failed with error %@", buf, 0xCu);
        }

        v29 = 0;
      }

      else
      {
        if (!v26)
        {
          v29 = 0;
          v12 = v61;
          v13 = v62;
          goto LABEL_39;
        }

        if (v11)
        {
          v41 = [NSPPrivateAccessTokenResponse alloc];
          v42 = [v64 key];
          v43 = [v26 signature];
          v28 = sub_1000B3948(&v41->super, v65, v24, v42, 0, v43);

          if (v28)
          {
            Property = objc_getProperty(v28, v44, 8, 1);
          }

          else
          {
            Property = 0;
          }

          v29 = Property;
          v14 = v57;
          v11 = v58;
        }

        else
        {
          v29 = +[NSMutableData data];
          [v29 appendBytes:&v67 length:1];
          v47 = [v26 keyId];
          [v29 appendData:v47];

          v48 = [v26 tokenContent];
          [v29 appendData:v48];

          v28 = [v26 signature];
          [v29 appendData:v28];
        }
      }

      goto LABEL_37;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [v64 key];
      v31 = [v64 metadataSize];
      v32 = [v65 issuerName];
      v26 = [ATHMAwaitingActivation verifyAndGetKeyIDFromKeyCommitmentsData:v30 numBuckets:v31 deploymentID:v32];

      v66 = 0;
      v33 = [v23 activateWithResponseData:v25 error:&v66];
      v27 = v66;
      v59 = v33;
      v34 = [v33 presentationData];
      v35 = v34;
      if (v27 || !v34)
      {
        v38 = nplog_obj();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = v56;
          v69 = v27;
          _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "activateWithResponseData failed with error %@", buf, 0xCu);
        }

        v29 = 0;
      }

      else
      {
        v36 = [NSPPrivateAccessTokenResponse alloc];
        v37 = [v64 key];
        v38 = sub_1000B3948(&v36->super, v65, 0, v37, v26, v35);

        if (v38)
        {
          v40 = objc_getProperty(v38, v39, 8, 1);
        }

        else
        {
          v40 = 0;
        }

        v29 = v40;
        v14 = v57;
      }

      v11 = v58;
LABEL_37:
      v13 = v62;
      goto LABEL_38;
    }

    objc_opt_class();
    v13 = v62;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v29 = 0;
      goto LABEL_39;
    }

    v66 = 0;
    v26 = [v23 activateWithResponseData:v25 error:&v66];
    v27 = v66;
    if (v27 || !v26)
    {
      v46 = nplog_obj();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = v56;
        v69 = v27;
        _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "activateWithResponseData failed with error %@", buf, 0xCu);
      }

      v29 = 0;
    }

    else
    {
      v29 = [v26 getCredentialDataError:0];
      v27 = 0;
    }

LABEL_38:

    v12 = v61;
LABEL_39:

    if (v29)
    {
      [v60 addObject:v29];
    }

    if (++v19 >= [v13 count])
    {
      goto LABEL_54;
    }
  }

  v49 = nplog_obj();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    v50 = [v13 count];
    v51 = [v14 count];
    *buf = 134218240;
    v69 = v50;
    v70 = 2048;
    v71 = v51;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "More unactivated tokens than waiting tokens (%lu != %lu)", buf, 0x16u);
  }

LABEL_54:
  v15 = v60;
  v52 = v60;
LABEL_55:

  return v52;
}

void sub_1000BA188(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = a2;
    v10 = objc_alloc_init(NSPPrivacyProxyTokenKey);
    [v10 setKey:v9];

    [v10 setMetadataSize:{objc_msgSend(a1, "metadataSize")}];
    v11 = [NSPPrivateAccessTokenChallenge alloc];
    v13 = [(NSPPrivateAccessTokenChallenge *)v11 initWithData:objc_getProperty(a1, v12, 64, 1)];
    if ([(NSPPrivateAccessTokenChallenge *)v13 isSupportedTokenType])
    {
      v14 = objc_alloc_init(NSMutableArray);
      v15 = objc_alloc_init(NSMutableArray);
      v17 = objc_getProperty(a1, v16, 88, 1);
      v18 = [a1 selectedOrigin];
      v19 = sub_1000B9830(NSPPrivateAccessTokenFetcher, v13, v10, 1u, v17, v18, v15, v14, 0, 0);

      if ([v19 count])
      {
        v20 = [v15 firstObject];
        objc_setProperty_atomic(a1, v21, v20, 128);

        v22 = [v19 firstObject];
        objc_setProperty_atomic(a1, v23, v22, 136);

        v24 = [v14 firstObject];
        objc_setProperty_atomic(a1, v25, v24, 144);

        objc_setProperty_atomic(a1, v26, v10, 152);
        v27 = nplog_obj();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Generated token request", buf, 2u);
        }

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000BA754;
        block[3] = &unk_10010B340;
        v28 = &v33;
        v33 = v8;
        v32 = v19;
        dispatch_async(v7, block);
      }

      else
      {
        v30 = nplog_obj();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to generate token request", buf, 2u);
        }

        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_1000BA674;
        v34[3] = &unk_10010A8A8;
        v28 = &v35;
        v35 = v8;
        dispatch_async(v7, v34);
      }
    }

    else
    {
      v29 = nplog_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Unsupported token type, cannot generate token request", buf, 2u);
      }

      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1000BA594;
      v36[3] = &unk_10010A8A8;
      v37 = v8;
      dispatch_async(v7, v36);
      v14 = v37;
    }
  }
}

void sub_1000BA594(uint64_t a1)
{
  v2 = [NSError alloc];
  v5 = NSLocalizedFailureReasonErrorKey;
  v6 = @"Unsupported token type";
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = [v2 initWithDomain:@"privacyProxyErrorDomain" code:1008 userInfo:v3];

  (*(*(a1 + 32) + 16))();
}

void sub_1000BA674(uint64_t a1)
{
  v2 = [NSError alloc];
  v5 = NSLocalizedFailureReasonErrorKey;
  v6 = @"Could not create token requests";
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = [v2 initWithDomain:@"privacyProxyErrorDomain" code:1004 userInfo:v3];

  (*(*(a1 + 32) + 16))();
}

void sub_1000BA754(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) firstObject];
  v5 = v2;
  if (v2)
  {
    Property = objc_getProperty(v2, v3, 24, 1);
  }

  else
  {
    Property = 0;
  }

  (*(v1 + 16))(v1, Property, 0);
}

void sub_1000BA99C(uint64_t a1)
{
  v2 = [NSError alloc];
  v5 = NSLocalizedFailureReasonErrorKey;
  v6 = @"Cannot fetch multiple local tokens with a single token fetcher";
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = [v2 initWithDomain:@"privacyProxyErrorDomain" code:1004 userInfo:v3];

  (*(*(a1 + 32) + 16))();
}

void sub_1000BAA7C(void **a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = a1[4];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000BAB4C;
    v7[3] = &unk_10010B340;
    v9 = a1[6];
    v8 = v5;
    dispatch_async(v6, v7);
  }

  else
  {
    sub_1000BA188(a1[5], a2, a1[4], a1[6]);
  }
}

void sub_1000BAF74(uint64_t a1)
{
  v2 = [NSError alloc];
  v5 = NSLocalizedFailureReasonErrorKey;
  v6 = @"Invalid parameters";
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = [v2 initWithDomain:@"privacyProxyErrorDomain" code:1004 userInfo:v3];

  (*(*(a1 + 32) + 16))();
}

void sub_1000BB7A8(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  v9 = a2;
  v10 = a3;
  if (v10)
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v10;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to check remaining cost quota: %@", buf, 0xCu);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BB914;
  block[3] = &unk_10010B390;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v18 = v10;
  v19 = v13;
  v20 = a4;
  v21 = a5;
  v17 = v9;
  v14 = v10;
  v15 = v9;
  dispatch_async(v12, block);
}

void sub_1000BBB34(id a1)
{
  v1 = objc_alloc_init(NSPCaptiveWiFiHandler);
  v2 = qword_1001298A8;
  qword_1001298A8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000BBDD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

void sub_1000BBE14(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    if (*(v1 + 8) == 1)
    {
      v2 = nplog_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = v1;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@ reporting captive probe result", &v7, 0xCu);
      }

      (*(*(v1 + 6) + 16))();
    }

    v3 = *(v1 + 3);
    if (v3)
    {
      [v3 invalidateAndCancel];
      v4 = *(v1 + 3);
      *(v1 + 3) = 0;
    }

    v5 = *(v1 + 4);
    *(v1 + 4) = 0;

    v6 = *(v1 + 5);
    *(v1 + 5) = 0;

    *(v1 + 8) = 0;
    objc_sync_exit(v1);
  }
}

void sub_1000BBF50(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v9)
    {
      v11 = nplog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 32);
        v29 = 138412546;
        v30 = v25;
        v31 = 2112;
        v32 = v9;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@ failed to perform captive probe, error: %@", &v29, 0x16u);
      }

      v12 = [v9 domain];
      if ([v12 isEqualToString:NSURLErrorDomain])
      {
        v13 = [v9 code];

        if (v13 == -1001)
        {
          v14 = WeakRetained;
LABEL_17:
          sub_1000BBE14(v14);
          goto LABEL_18;
        }

LABEL_16:
        v14 = WeakRetained;
        goto LABEL_17;
      }

LABEL_15:

      goto LABEL_16;
    }

    if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v12 = nplog_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v28 = *(a1 + 32);
        v29 = 138412290;
        v30 = v28;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@ failed to receive expected response from the captive probe server", &v29, 0xCu);
      }

      goto LABEL_15;
    }

    v15 = v8;
    if ([v15 statusCode] - 200 <= 0x63)
    {
      v16 = [[NSString alloc] initWithData:v7 encoding:134217984];
      if ([v16 isEqualToString:@"<HTML><HEAD><TITLE>Success</TITLE></HEAD><BODY>Success</BODY></HTML>"])
      {
        v17 = WeakRetained;
      }

      else
      {
        v26 = nplog_obj();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = *(a1 + 32);
          v29 = 138412290;
          v30 = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%@ received HTTP redirect from the network", &v29, 0xCu);
        }

        v17 = WeakRetained;
      }

      sub_1000BBE14(v17);
      goto LABEL_35;
    }

    v16 = v15;
    v18 = nplog_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v29 = 138412546;
      v30 = WeakRetained;
      v31 = 2048;
      v32 = [v16 statusCode];
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%@ HTTP response has status code: [%ld]", &v29, 0x16u);
    }

    v19 = [v16 statusCode];
    if ((v19 - 300) >= 4 && v19 != 307)
    {
      v20 = [v16 allHeaderFields];
      if ([v16 statusCode] - 200 > 0x63 || (objc_msgSend(v20, "objectForKey:", @"Location"), v21 = objc_claimAutoreleasedReturnValue(), v21, !v21))
      {

LABEL_35:
LABEL_36:

        goto LABEL_18;
      }

      v22 = nplog_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v29 = 138412290;
        v30 = WeakRetained;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%@ HTTP response has 'Location' header", &v29, 0xCu);
      }
    }

    v23 = nplog_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(a1 + 32);
      v29 = 138412290;
      v30 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%@ received HTTP redirect from the network", &v29, 0xCu);
    }

    sub_1000BBE14(WeakRetained);
    goto LABEL_36;
  }

LABEL_18:
}