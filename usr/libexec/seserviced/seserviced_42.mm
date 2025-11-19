void sub_100385DFC(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v17 = "[KmlKeySharingSession getPreTrackRequestForKeyWithIdentifier:callback:]_block_invoke";
    v18 = 1024;
    v19 = 357;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Get pre-track request for key with id: %@", buf, 0x1Cu);
  }

  v4 = sub_10038C140(KmlFriendSharingManager, *(a1 + 32));
  v5 = *(a1 + 40);
  v6 = *(v5 + 80);
  *(v5 + 80) = v4;

  v7 = *(*(a1 + 40) + 80);
  if (v7)
  {
    v13 = 0;
    v8 = sub_1003D145C(v7, &v13);
    v9 = v13;
  }

  else
  {
    v10 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v14 = NSLocalizedDescriptionKey;
    v11 = [NSString stringWithUTF8String:KmlErrorString()];
    v15 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v9 = [NSError errorWithDomain:v10 code:210 userInfo:v12];

    v8 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1003860F8(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v19 = "[KmlKeySharingSession ppidRequestForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]_block_invoke";
    v20 = 1024;
    v21 = 376;
    v22 = 2112;
    v23 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Get ppid fetch request for Invitation with id: %@", buf, 0x1Cu);
  }

  if (KmlLogIsInternalBuild())
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      *buf = 136315650;
      v19 = "[KmlKeySharingSession ppidRequestForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]_block_invoke";
      v20 = 1024;
      v21 = 377;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : mailboxIdentifier : %@", buf, 0x1Cu);
    }
  }

  v6 = sub_10038C728(KmlFriendSharingManager, *(a1 + 32), *(a1 + 40));
  v7 = *(a1 + 48);
  v8 = *(v7 + 80);
  *(v7 + 80) = v6;

  v9 = *(*(a1 + 48) + 80);
  if (v9)
  {
    v15 = 0;
    v10 = sub_1003D14D4(v9, &v15);
    v11 = v15;
  }

  else
  {
    v12 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v16 = NSLocalizedDescriptionKey;
    v13 = [NSString stringWithUTF8String:KmlErrorString()];
    v17 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = [NSError errorWithDomain:v12 code:109 userInfo:v14];

    v10 = 0;
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100386474(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v15 = "[KmlKeySharingSession setProductPlanIdentifier:forInvitationIdentifier:completion:]_block_invoke";
    v16 = 1024;
    v17 = 399;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : invitationIdentifier: %@", buf, 0x1Cu);
  }

  v4 = sub_10038B89C(KmlFriendSharingManager, *(a1 + 32), 0);
  v5 = *(a1 + 40);
  v6 = *(v5 + 80);
  *(v5 + 80) = v4;

  v7 = *(*(a1 + 40) + 80);
  if (v7)
  {
    v8 = sub_1003D1830(v7, *(a1 + 48));
  }

  else
  {
    v9 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v10 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v13 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v8 = [NSError errorWithDomain:v9 code:109 userInfo:v11];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100386758(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v18 = "[KmlKeySharingSession readerInformationForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]_block_invoke";
    v19 = 1024;
    v20 = 420;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Get readerInformation for Invitation with id: %@", buf, 0x1Cu);
  }

  if (KmlLogIsInternalBuild())
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      *buf = 136315650;
      v18 = "[KmlKeySharingSession readerInformationForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]_block_invoke";
      v19 = 1024;
      v20 = 421;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : mailboxIdentifier : %@", buf, 0x1Cu);
    }
  }

  v6 = sub_10038C728(KmlFriendSharingManager, *(a1 + 32), *(a1 + 40));
  v7 = *(a1 + 48);
  v8 = *(v7 + 80);
  *(v7 + 80) = v6;

  v9 = *(*(a1 + 48) + 80);
  if (v9)
  {
    v10 = sub_1003D8E28(v9);
    v11 = 0;
  }

  else
  {
    v12 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v13 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v16 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v11 = [NSError errorWithDomain:v12 code:109 userInfo:v14];

    v10 = 0;
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100386A9C(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v34;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v34 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v33 + 1) + 8 * v6);
      v8 = KmlLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v38 = "[KmlKeySharingSession getSecondFactorRequestForConfigs:completionHandler:]_block_invoke";
        v39 = 1024;
        v40 = 447;
        v41 = 2112;
        v42 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s : %i : Config: %@", buf, 0x1Cu);
      }

      v9 = *(a1 + 40);
      v10 = *(v9 + 64);
      *(v9 + 64) = 0;

      v11 = *(a1 + 40);
      v12 = *(v11 + 80);
      *(v11 + 80) = 0;

      if ([v7 recipientFlow])
      {
        v13 = [v7 invitationIdentifier];
        v14 = sub_10038B89C(KmlFriendSharingManager, v13, 0);
        v15 = *(a1 + 40);
        v16 = *(v15 + 80);
        *(v15 + 80) = v14;

        v17 = *(*(a1 + 40) + 80);
        v32 = 0;
        v18 = &v32;
        sub_10038DD3C(v17, v7, &v32);
      }

      else
      {
        v19 = [v7 keyIdentifier];
        v20 = [v7 invitationIdentifier];
        v21 = sub_10039E370(KmlOwnerSharingManager, v19, v20);
        v22 = *(a1 + 40);
        v23 = *(v22 + 64);
        *(v22 + 64) = v21;

        v24 = *(*(a1 + 40) + 64);
        v31 = 0;
        v18 = &v31;
        sub_10039FCE0(v24, v7, &v31);
      }
      v25 = ;
      v26 = *v18;
      if (v26)
      {
        break;
      }

      if (v2 && v25)
      {
        [v2 addObject:v25];
      }

      else
      {

        v2 = 0;
      }

      if (v4 == ++v6)
      {
        v4 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }
    }

    v27 = v26;
    v28 = sesErrorToKmlError();

    if (!v28)
    {
      goto LABEL_23;
    }

    v29 = KmlLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v38 = "[KmlKeySharingSession getSecondFactorRequestForConfigs:completionHandler:]_block_invoke";
      v39 = 1024;
      v40 = 477;
      v41 = 2112;
      v42 = v28;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s : %i : Error in creating 2FA request: %@", buf, 0x1Cu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
LABEL_18:

LABEL_23:
    (*(*(a1 + 48) + 16))();
    v28 = 0;
  }
}

void sub_100386F50(id *a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [a1[4] length];
    v4 = a1[5];
    *buf = 136315906;
    v20 = "[KmlKeySharingSession retryPasscode:forInvitationIdentifier:completionHandler:]_block_invoke";
    v21 = 1024;
    v22 = 490;
    v23 = 1024;
    v24 = v3;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Retry passcode (length = %d) for Invitation Identifier: %@", buf, 0x22u);
  }

  v5 = sub_10038B89C(KmlFriendSharingManager, a1[5], 0);
  v6 = a1[6];
  v7 = v6[10];
  v6[10] = v5;

  v8 = *(a1[6] + 10);
  if (!v8)
  {
    v12 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v13 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v18 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v9 = [NSError errorWithDomain:v12 code:210 userInfo:v14];

    if (v9)
    {
      goto LABEL_5;
    }

LABEL_7:
    sub_1003D8E18(*(a1[6] + 10), a1[6]);
    v15 = objc_retainBlock(a1[7]);
    v16 = a1[6];
    v11 = v16[12];
    v16[12] = v15;
    goto LABEL_8;
  }

  v9 = sub_1003D193C(v8, a1[4]);
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_5:
  v10 = a1[7];
  v11 = sub_1003D8E34(*(a1[6] + 10));
  v10[2](v10, 0, v11, v9);
LABEL_8:
}

void sub_100387294(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) length];
    v4 = *(a1 + 40);
    *buf = 136315906;
    v16 = "[KmlKeySharingSession retryPasscode:forKeyIdentifier:completionHandler:]_block_invoke";
    v17 = 1024;
    v18 = 514;
    v19 = 1024;
    v20 = v3;
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Retry passcode (length = %d) for Key ID: %@", buf, 0x22u);
  }

  v5 = sub_10038C140(KmlFriendSharingManager, *(a1 + 40));
  v6 = *(a1 + 48);
  v7 = *(v6 + 80);
  *(v6 + 80) = v5;

  v8 = *(*(a1 + 48) + 80);
  if (v8)
  {
    v9 = sub_1003D193C(v8, *(a1 + 32));
  }

  else
  {
    v10 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v11 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v14 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v9 = [NSError errorWithDomain:v10 code:210 userInfo:v12];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_10038755C(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v53 = "[KmlKeySharingSession updateSharingAnalyticsWithConfig:completionHandler:]_block_invoke";
    v54 = 1024;
    v55 = 530;
    v56 = 2112;
    v57 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Config: %@", buf, 0x1Cu);
  }

  v4 = *(a1 + 40);
  v5 = *(v4 + 64);
  *(v4 + 64) = 0;

  v6 = *(a1 + 40);
  v7 = *(v6 + 80);
  *(v6 + 80) = 0;

  if ([*(a1 + 32) recipientFlow])
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v8 = [*(a1 + 32) invitationIdentifiers];
    v9 = [v8 countByEnumeratingWithState:&v44 objects:v51 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v45;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v45 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v44 + 1) + 8 * i);
          v14 = sub_10038B89C(KmlFriendSharingManager, v13, 0);
          v15 = *(a1 + 40);
          v16 = *(v15 + 80);
          *(v15 + 80) = v14;

          v17 = *(*(a1 + 40) + 80);
          if (v17)
          {
            v18 = [*(a1 + 32) analyticsData];
            sub_1003D154C(v17, v18);
          }

          else
          {
            v18 = KmlLogger();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v53 = "[KmlKeySharingSession updateSharingAnalyticsWithConfig:completionHandler:]_block_invoke";
              v54 = 1024;
              v55 = 541;
              v56 = 2112;
              v57 = v13;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s : %i : No friend sharing manager for invitation(%@)", buf, 0x1Cu);
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v44 objects:v51 count:16];
      }

      while (v10);
    }

LABEL_28:

    v32 = KmlLogger();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v53 = "[KmlKeySharingSession updateSharingAnalyticsWithConfig:completionHandler:]_block_invoke";
      v54 = 1024;
      v55 = 568;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%s : %i : Successfully updated sharing analytics", buf, 0x12u);
    }

    (*(*(a1 + 48) + 16))();
    return;
  }

  v19 = [*(a1 + 32) keyIdentifier];

  if (v19)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v8 = [*(a1 + 32) invitationIdentifiers];
    v20 = [v8 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v20)
    {
      v22 = v20;
      v23 = *v41;
      *&v21 = 136315650;
      v39 = v21;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v41 != v23)
          {
            objc_enumerationMutation(v8);
          }

          v25 = *(*(&v40 + 1) + 8 * j);
          v26 = [*(a1 + 32) keyIdentifier];
          v27 = sub_10039E370(KmlOwnerSharingManager, v26, v25);
          v28 = *(a1 + 40);
          v29 = *(v28 + 64);
          *(v28 + 64) = v27;

          v30 = *(*(a1 + 40) + 64);
          if (v30)
          {
            v31 = [*(a1 + 32) analyticsData];
            sub_1003EB870(v30, v31, v25);
          }

          else
          {
            v31 = KmlLogger();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = v39;
              v53 = "[KmlKeySharingSession updateSharingAnalyticsWithConfig:completionHandler:]_block_invoke";
              v54 = 1024;
              v55 = 560;
              v56 = 2112;
              v57 = v25;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s : %i : No owner sharing manager for invitation(%@)", buf, 0x1Cu);
            }
          }
        }

        v22 = [v8 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v22);
    }

    goto LABEL_28;
  }

  v33 = KmlLogger();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v53 = "[KmlKeySharingSession updateSharingAnalyticsWithConfig:completionHandler:]_block_invoke";
    v54 = 1024;
    v55 = 549;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s : %i : No key identifier supplied for updating share initiator analytics", buf, 0x12u);
  }

  v34 = *(a1 + 48);
  v35 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
  v49[0] = NSLocalizedDescriptionKey;
  v36 = [NSString stringWithUTF8String:KmlErrorString()];
  v49[1] = NSLocalizedFailureReasonErrorKey;
  v50[0] = v36;
  v50[1] = @"Missing key identifier in analytics update";
  v37 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];
  v38 = [NSError errorWithDomain:v35 code:210 userInfo:v37];
  (*(v34 + 16))(v34, v38);
}

void sub_100387DFC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(v3 + 16);
LABEL_5:

    v6();
    return;
  }

  if (*(a1 + 48))
  {
LABEL_4:
    v6 = *(*(v2 + 144) + 16);
    goto LABEL_5;
  }

  v7 = [*(a1 + 40) count];
  v2 = *(a1 + 32);
  if (!v7)
  {
    v9 = *(a1 + 48);
    goto LABEL_4;
  }

  v8 = *(v2 + 144);
  v10 = [*(a1 + 40) objectAtIndexedSubscript:0];
  (*(v8 + 16))(v8, v10, *(a1 + 48));
}

void *sub_100388064(void *result)
{
  v1 = *(result[4] + 128);
  if (v1)
  {
    return (*(v1 + 16))(*(result[4] + 128), result[5], result[6]);
  }

  return result;
}

void *sub_100388208(void *result)
{
  v1 = *(result[4] + 88);
  if (v1)
  {
    return (*(v1 + 16))(*(result[4] + 88), result[5], result[6]);
  }

  return result;
}

void *sub_100388544(void *result)
{
  v1 = *(result[4] + 96);
  if (v1)
  {
    return (*(v1 + 16))(*(result[4] + 96), result[5], result[6], result[7]);
  }

  return result;
}

uint64_t sub_1003886C8(uint64_t result)
{
  v1 = *(*(result + 32) + 104);
  if (v1)
  {
    return (*(v1 + 16))(*(*(result + 32) + 104), *(result + 40));
  }

  return result;
}

uint64_t sub_100388848(uint64_t result)
{
  v1 = *(*(result + 32) + 112);
  if (v1)
  {
    return (*(v1 + 16))(*(*(result + 32) + 112), *(result + 40));
  }

  return result;
}

uint64_t sub_1003889C8(uint64_t result)
{
  v1 = *(*(result + 32) + 120);
  if (v1)
  {
    return (*(v1 + 16))(*(*(result + 32) + 120), *(result + 40));
  }

  return result;
}

id sub_100388B10()
{
  objc_opt_self();
  if (qword_10051B0D8 != -1)
  {
    sub_100389BA0();
  }

  v0 = qword_10051B0D0;

  return v0;
}

void sub_100388B58(id a1)
{
  v1 = objc_alloc_init(KmlSharingManager);
  v2 = qword_10051B0D0;
  qword_10051B0D0 = v1;
}

void sub_100388C34(uint64_t a1)
{
  v2 = [SESAlarm isAlarmSet:@"com.apple.sesd.kml.sharingAuthExpiry"];
  v3 = KmlLogger();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      v5 = 136315394;
      v6 = "[KmlSharingManager startAuthExpiryAlarmFor:]_block_invoke";
      v7 = 1024;
      v8 = 86;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : An alarm is already set. So ignore this request", &v5, 0x12u);
    }
  }

  else
  {
    if (v4)
    {
      v5 = 136315394;
      v6 = "[KmlSharingManager startAuthExpiryAlarmFor:]_block_invoke";
      v7 = 1024;
      v8 = 89;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : Setting alarm for auth expiry", &v5, 0x12u);
    }

    [SESAlarm setAlarm:@"com.apple.sesd.kml.sharingAuthExpiry" secondsFromNow:*(a1 + 32) + 1.0];
  }
}

void sub_100388D88(id a1)
{
  v1 = [SESAlarm isAlarmSet:@"com.apple.sesd.kml.sharingOpt2AuthDeletion"];
  v2 = KmlLogger();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
  if (v1)
  {
    if (v3)
    {
      v5 = 136315394;
      v6 = "[KmlSharingManager startOpt2AuthDeletionAlarm]_block_invoke";
      v7 = 1024;
      v8 = 99;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : An alarm is already set. So ignore this request", &v5, 0x12u);
    }
  }

  else
  {
    if (v3)
    {
      v5 = 136315394;
      v6 = "[KmlSharingManager startOpt2AuthDeletionAlarm]_block_invoke";
      v7 = 1024;
      v8 = 102;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Setting alarm for v3 auth deletion", &v5, 0x12u);
    }

    v2 = objc_opt_new();
    [v2 opt2AuthDeletionAlarmDurationSeconds];
    [SESAlarm setAlarm:@"com.apple.sesd.kml.sharingOpt2AuthDeletion" secondsFromNow:v4 + 1.0];
  }
}

id sub_100388EEC(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  if (a1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_100389038;
    v17 = sub_100389048;
    v18 = 0;
    dispatch_assert_queue_not_V2(*(a1 + 24));
    v6 = *(a1 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100389050;
    block[3] = &unk_1004D20F8;
    v11 = &v13;
    v10 = v5;
    v12 = a3;
    dispatch_sync(v6, block);
    v7 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100389020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100389038(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100389050(uint64_t a1)
{
  v2 = sub_100397980(KmlEndpointManager, *(a1 + 32), *(a1 + 48));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_1003890A8(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = a4;
  if (a1)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_100389038;
    v20 = sub_100389048;
    v21 = 0;
    dispatch_assert_queue_not_V2(*(a1 + 24));
    v8 = *(a1 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100389204;
    block[3] = &unk_1004D2120;
    v13 = &v16;
    v14 = a2;
    v15 = a3;
    v12 = v7;
    dispatch_sync(v8, block);
    v9 = v17[5];

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1003891EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100389204(uint64_t a1)
{
  v2 = sub_100397E50(KmlEndpointManager, *(a1 + 48), *(a1 + 49), *(a1 + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1003892D8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 33);
  v3 = *(a1 + 40);
  v4 = KmlLogger();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v2 == v3)
  {
    if (v5)
    {
      v6 = @"no";
      v7 = *(a1 + 40);
      v12 = "[KmlSharingManager setAppletLockState:]_block_invoke";
      v11 = 136315650;
      if (v7)
      {
        v6 = @"yes";
      }

      v13 = 1024;
      v14 = 138;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Sharing block state is still : %@", &v11, 0x1Cu);
    }
  }

  else
  {
    if (v5)
    {
      v8 = @"no";
      v9 = *(a1 + 40);
      v12 = "[KmlSharingManager setAppletLockState:]_block_invoke";
      v11 = 136315650;
      if (v9)
      {
        v8 = @"yes";
      }

      v13 = 1024;
      v14 = 132;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Sharing blocked by applet lock - %@", &v11, 0x1Cu);
    }

    *(*(a1 + 32) + 33) = *(a1 + 40);
    v10 = *(a1 + 32);
    if ((*(v10 + 33) & 1) == 0)
    {
      sub_1003CDCB0(v10);
    }
  }
}

void sub_100389510(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:@"com.apple.sesd.kml.sharingAuthExpiry"])
  {
    v4 = *(a1 + 40);

    sub_1003CE160(v4);
  }

  else if ([*(a1 + 32) isEqualToString:@"com.apple.sesd.kml.sharingOpt2AuthDeletion"])
  {
    v5 = *(a1 + 40);

    sub_1003CE3AC(v5);
  }

  else
  {
    v2 = KmlLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v6 = 136315650;
      v7 = "[KmlSharingManager onAlarm:]_block_invoke";
      v8 = 1024;
      v9 = 151;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s : %i : Received an event for an unknown alarm: %@", &v6, 0x1Cu);
    }
  }
}

void sub_10038967C(uint64_t a1)
{
  v2 = sub_100378CC8();
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v5 = sub_1003C8664(*(*(a1 + 32) + 16));
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = sub_1003C7D34(v10);

        if (v11)
        {
          v12 = KmlLogger();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = sub_1003C7D40(v10);
            *buf = 136315650;
            v20 = "[KmlSharingManager cancelAllFriendInvitations]_block_invoke";
            v21 = 1024;
            v22 = 281;
            v23 = 2112;
            v24 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s : %i : Invitation (%@) can not be cancelled at this stage", buf, 0x1Cu);
          }
        }

        else
        {
          v14 = sub_1003C7D40(v10);
          v12 = sub_10038B89C(KmlFriendSharingManager, v14, 1);

          sub_1003D10A4(v12);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v7);
  }
}

void sub_100389890(uint64_t a1)
{
  v2 = sub_100378CC8();
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  sub_1003C8664(*(*(a1 + 32) + 16));
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = sub_1003C7D40(v10);
        v12 = [v11 isEqualToString:{*(a1 + 40), v15}];

        if (v12)
        {
          v13 = sub_1003C7D40(v10);
          v14 = sub_10038B89C(KmlFriendSharingManager, v13, 1);

          sub_1003D1284(v14);
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

uint64_t sub_100389AD8@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(v2 + 14) = a2;
  *(v2 + 20) = result;
  return result;
}

void sub_100389B80(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 0x18u);
}

KmlPowerAssertion *sub_100389BB4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc_init(KmlPowerAssertion);
  sub_1003CF9EC(v3, v2);

  return v3;
}

void *sub_100389CF0(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v20.receiver = a1;
    v20.super_class = KmlClientAppStateObserver;
    v4 = objc_msgSendSuper2(&v20, "init");
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 5, v3);
      v5 = objc_alloc_init(NSMutableSet);
      v6 = a1[2];
      a1[2] = v5;

      v7 = objc_alloc_init(NSMutableArray);
      v8 = a1[3];
      a1[3] = v7;

      v9 = +[RBSProcessMonitor monitor];
      v10 = a1[1];
      a1[1] = v9;

      v11 = +[RBSProcessStateDescriptor descriptor];
      [v11 setValues:1];
      v21 = FBSSceneVisibilityEndowmentNamespace;
      v12 = [NSArray arrayWithObjects:&v21 count:1];
      [v11 setEndowmentNamespaces:v12];

      objc_initWeak(&location, a1);
      v13 = a1[1];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100389EF8;
      v16[3] = &unk_1004D2170;
      v14 = v11;
      v17 = v14;
      objc_copyWeak(&v18, &location);
      [v13 updateConfiguration:v16];
      objc_destroyWeak(&v18);

      objc_destroyWeak(&location);
    }
  }

  return a1;
}

void sub_100389ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100389EF8(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setStateDescriptor:*(a1 + 32)];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100389FB4;
  v4[3] = &unk_1004D2148;
  objc_copyWeak(&v5, (a1 + 40));
  [v3 setUpdateHandler:v4];
  objc_destroyWeak(&v5);
}

void sub_100389FB4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    sub_10038A02C(WeakRetained, v9, v6);
  }
}

void sub_10038A02C(uint64_t a1, void *a2, void *a3)
{
  v31 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = [v31 pid];
    v30 = v5;
    v33 = [v5 state];
    v7 = [v33 taskState];
    v8 = +[NSMutableArray array];
    v9 = *(a1 + 16);
    objc_sync_enter(v9);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v10 = *(a1 + 16);
    v11 = [v10 countByEnumeratingWithState:&v38 objects:v49 count:16];
    if (v11)
    {
      v12 = *v39;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v38 + 1) + 8 * i);
          if ([v14 processIdentifier] == v6)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v38 objects:v49 count:16];
      }

      while (v11);
    }

    objc_sync_exit(v9);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v15 = v8;
    v16 = [v15 countByEnumeratingWithState:&v34 objects:v48 count:16];
    if (v16)
    {
      v17 = *v35;
      v32 = FBSSceneVisibilityEndowmentNamespace;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v34 + 1) + 8 * j);
          WeakRetained = objc_loadWeakRetained((a1 + 40));

          if (WeakRetained)
          {
            if (v7 == 4)
            {
              v24 = [v33 endowmentNamespaces];
              v25 = [v24 containsObject:v32];

              v26 = KmlLogger();
              v27 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
              if (v25)
              {
                if (v27)
                {
                  v28 = [v19 processIdentifier];
                  *buf = 136315650;
                  v43 = "[KmlClientAppStateObserver _applicationStateChanged:stateUpdate:]";
                  v44 = 1024;
                  v45 = 205;
                  v46 = 1024;
                  v47 = v28;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s : %i : _applicationStateChanged: clientAppIsForeGrounded - pid=%d", buf, 0x18u);
                }

                v23 = objc_loadWeakRetained((a1 + 40));
                [v23 clientAppIsForeGrounded:v19];
              }

              else
              {
                if (v27)
                {
                  v29 = [v19 processIdentifier];
                  *buf = 136315650;
                  v43 = "[KmlClientAppStateObserver _applicationStateChanged:stateUpdate:]";
                  v44 = 1024;
                  v45 = 208;
                  v46 = 1024;
                  v47 = v29;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s : %i : _applicationStateChanged: clientAppIsBackGrounded - pid=%d", buf, 0x18u);
                }

                v23 = objc_loadWeakRetained((a1 + 40));
                [v23 clientAppIsBackGrounded:v19];
              }
            }

            else
            {
              if (v7 != 3)
              {
                continue;
              }

              v21 = KmlLogger();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                v22 = [v19 processIdentifier];
                *buf = 136315650;
                v43 = "[KmlClientAppStateObserver _applicationStateChanged:stateUpdate:]";
                v44 = 1024;
                v45 = 196;
                v46 = 1024;
                v47 = v22;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s : %i : _applicationStateChanged: clientAppIsSuspended - pid=%d", buf, 0x18u);
              }

              v23 = objc_loadWeakRetained((a1 + 40));
              [v23 clientAppIsSuspended:v19];
            }
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v34 objects:v48 count:16];
      }

      while (v16);
    }

    v5 = v30;
  }
}

void sub_10038A4C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      memset(buffer, 0, 255);
      proc_name([v3 processIdentifier], buffer, 0xFEu);
      v5 = KmlLogger();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v18 = "[KmlClientAppStateObserver registerForStateChangesToConnection:]";
        v19 = 1024;
        v20 = 81;
        v21 = 2080;
        v22 = buffer;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : Register for Client: %s", buf, 0x1Cu);
      }

      v6 = *(a1 + 16);
      objc_sync_enter(v6);
      if ([*(a1 + 16) containsObject:v4])
      {
        v7 = KmlLogger();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          sub_10038B314(v4, buf, [v4 processIdentifier], v7);
        }
      }

      else
      {
        if ([v4 processIdentifier])
        {
          v8 = KmlLogger();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            v9 = [v4 processIdentifier];
            *buf = 136315650;
            v18 = "[KmlClientAppStateObserver registerForStateChangesToConnection:]";
            v19 = 1024;
            v20 = 94;
            v21 = 1024;
            LODWORD(v22) = v9;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s : %i : Register for processIdentifier: %d", buf, 0x18u);
          }

          v10 = *(a1 + 24);
          v11 = +[RBSProcessIdentifier identifierWithPid:](RBSProcessIdentifier, "identifierWithPid:", [v4 processIdentifier]);
          v12 = [RBSProcessPredicate predicateMatchingIdentifier:v11];
          [v10 addObject:v12];

          v13 = *(a1 + 8);
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_10038A88C;
          v16[3] = &unk_1004C3320;
          v16[4] = a1;
          [v13 updateConfiguration:v16];
          v14 = KmlLogger();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = *(a1 + 24);
            *buf = 136315650;
            v18 = "[KmlClientAppStateObserver registerForStateChangesToConnection:]";
            v19 = 1024;
            v20 = 101;
            v21 = 2112;
            v22 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s : %i : After register: _predicates: %@", buf, 0x1Cu);
          }

          [*(a1 + 16) addObject:v4];
          goto LABEL_19;
        }

        v7 = KmlLogger();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          [v4 processIdentifier];
          sub_10038B2C8(buf);
        }
      }

LABEL_19:
      objc_sync_exit(v6);

      goto LABEL_20;
    }

    sub_10038B38C();
  }

LABEL_20:
}

void sub_10038A89C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[KmlClientAppStateObserver unregisterForStateChangesToConnection:]";
      v17 = 1024;
      v18 = 108;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : ", buf, 0x12u);
    }

    if (v3)
    {
      v5 = *(a1 + 16);
      objc_sync_enter(v5);
      if ([*(a1 + 16) containsObject:v3])
      {
        v6 = KmlLogger();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = [v3 processIdentifier];
          *buf = 136315650;
          *&buf[4] = "[KmlClientAppStateObserver unregisterForStateChangesToConnection:]";
          v17 = 1024;
          v18 = 119;
          v19 = 1024;
          LODWORD(v20) = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %i : Unregister for processIdentifier: %d", buf, 0x18u);
        }

        v8 = *(a1 + 24);
        v9 = +[RBSProcessIdentifier identifierWithPid:](RBSProcessIdentifier, "identifierWithPid:", [v3 processIdentifier]);
        v10 = [RBSProcessPredicate predicateMatchingIdentifier:v9];
        [v8 removeObject:v10];

        v11 = *(a1 + 8);
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10038ABC8;
        v15[3] = &unk_1004C3320;
        v15[4] = a1;
        [v11 updateConfiguration:v15];
        v12 = KmlLogger();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = *(a1 + 24);
          *buf = 136315650;
          *&buf[4] = "[KmlClientAppStateObserver unregisterForStateChangesToConnection:]";
          v17 = 1024;
          v18 = 124;
          v19 = 2112;
          v20 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s : %i : After unregister: _predicates: %@", buf, 0x1Cu);
        }

        [*(a1 + 16) removeObject:v3];
      }

      else
      {
        v14 = KmlLogger();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          [v3 processIdentifier];
          sub_10038B448(buf);
        }
      }

      objc_sync_exit(v5);
    }

    else
    {
      sub_10038B494(buf);
      v5 = *buf;
    }
  }
}

BOOL sub_10038ABD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = *(a1 + 16);
      objc_sync_enter(v5);
      v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 processIdentifier]);
      v14 = 0;
      v7 = [RBSProcessHandle handleForIdentifier:v6 error:&v14];
      v8 = v14;

      if (!v7 || v8)
      {
        v11 = KmlLogger();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v16 = "[KmlClientAppStateObserver isClientSuspended:]";
          v17 = 1024;
          v18 = 139;
          v19 = 2112;
          v20 = v8;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s : %i : Error in getting handle: %@", buf, 0x1Cu);
        }

        v12 = 0;
      }

      else
      {
        v9 = KmlLogger();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [v4 processIdentifier];
          *buf = 136315650;
          v16 = "[KmlClientAppStateObserver isClientSuspended:]";
          v17 = 1024;
          v18 = 142;
          v19 = 1024;
          LODWORD(v20) = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s : %i : isClientSuspended check for pid: %d", buf, 0x18u);
        }

        v11 = [v7 currentState];
        v12 = [v11 taskState]== 3;
      }

      objc_sync_exit(v5);
    }

    else
    {
      v5 = KmlLogger();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v16 = "[KmlClientAppStateObserver isClientSuspended:]";
        v17 = 1024;
        v18 = 132;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : Cannot check isClientSuspended: theConnection is nil", buf, 0x12u);
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t sub_10038AE84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = *(a1 + 16);
      objc_sync_enter(v5);
      v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 processIdentifier]);
      v19 = 0;
      v7 = [RBSProcessHandle handleForIdentifier:v6 error:&v19];
      v8 = v19;

      if (!v7 || v8)
      {
        v11 = KmlLogger();
        v17 = 4279897;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v21 = "[KmlClientAppStateObserver isClientBackground:]";
          v22 = 1024;
          v23 = 157;
          v24 = 2112;
          v25 = v8;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s : %i : Error in getting handle: %@", buf, 0x1Cu);
        }
      }

      else
      {
        v9 = KmlLogger();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [v4 processIdentifier];
          *buf = 136315650;
          v21 = "[KmlClientAppStateObserver isClientBackground:]";
          v22 = 1024;
          v23 = 161;
          v24 = 1024;
          LODWORD(v25) = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s : %i : isClientBackground check for pid: %d", buf, 0x18u);
        }

        v11 = [v7 currentState];
        v12 = [v7 currentState];
        v13 = [v12 taskState];

        if (v13 == 4)
        {
          v14 = [v11 endowmentNamespaces];
          v15 = [v14 containsObject:FBSSceneVisibilityEndowmentNamespace];

          if (v15)
          {
            v16 = KmlLogger();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              [v4 processIdentifier];
              sub_10038B5A0(buf);
            }

            v17 = 0;
          }

          else
          {
            v16 = KmlLogger();
            v17 = 1;
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              [v4 processIdentifier];
              sub_10038B554(buf);
              v17 = 1;
            }
          }
        }

        else
        {
          v17 = 4279897;
        }
      }

      objc_sync_exit(v5);
    }

    else
    {
      v5 = KmlLogger();
      v17 = 4279897;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v21 = "[KmlClientAppStateObserver isClientBackground:]";
        v22 = 1024;
        v23 = 150;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : Cannot check isClientBackground: theConnection is nil", buf, 0x12u);
      }
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t sub_10038B278@<X0>(uint64_t result@<X0>, int a2@<W1>, __int16 a3@<W8>)
{
  *(result + 14) = v3;
  *(result + 18) = a3;
  *(result + 20) = a2;
  return result;
}

uint64_t sub_10038B288@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 4) = a2;
  *(result + 12) = 1024;
  return result;
}

void sub_10038B298(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, log, OS_LOG_TYPE_INFO, a4, a5, 0x18u);
}

void sub_10038B2C8(_DWORD *a1)
{
  *a1 = 136315650;
  v1 = sub_10038B288(a1, "[KmlClientAppStateObserver registerForStateChangesToConnection:]");
  sub_10038B278(v1, v2, v3);
  sub_10038B298(&_mh_execute_header, v4, v5, "%s : %i : Could not register: theConnection.processIdentifier: %d", v6);
}

void sub_10038B314(uint64_t a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 136315906;
  *(buf + 4) = "[KmlClientAppStateObserver registerForStateChangesToConnection:]";
  *(buf + 6) = 1024;
  *(buf + 14) = 86;
  *(buf + 9) = 2112;
  *(buf + 20) = a1;
  *(buf + 14) = 1024;
  *(buf + 30) = a3;
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s : %i : Duplicated register for theConnection: %@ - processIdentifier: %d", buf, 0x22u);
}

void sub_10038B38C()
{
  v0 = KmlLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v1 = 136315650;
    v2 = "[KmlClientAppStateObserver registerForStateChangesToConnection:]";
    v3 = 1024;
    sub_10038B2B4();
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "%s : %i : Could not register: theConnection: %@", &v1, 0x1Cu);
  }
}

void sub_10038B448(_DWORD *a1)
{
  *a1 = 136315650;
  v1 = sub_10038B288(a1, "[KmlClientAppStateObserver unregisterForStateChangesToConnection:]");
  sub_10038B278(v1, v2, v3);
  sub_10038B298(&_mh_execute_header, v4, v5, "%s : %i : Could not unregister: processIdentifier has not been registered: %d", v6);
}

void sub_10038B494(NSObject **a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 136315650;
    v4 = "[KmlClientAppStateObserver unregisterForStateChangesToConnection:]";
    v5 = 1024;
    sub_10038B2B4();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Could not unregister: theConnection: %@", &v3, 0x1Cu);
  }

  *a1 = v2;
}

void sub_10038B554(_DWORD *a1)
{
  *a1 = 136315650;
  v1 = sub_10038B288(a1, "[KmlClientAppStateObserver isClientBackground:]");
  sub_10038B278(v1, v2, v3);
  sub_10038B298(&_mh_execute_header, v4, v5, "%s : %i : pid: %d is backgrounded", v6);
}

void sub_10038B5A0(_DWORD *a1)
{
  *a1 = 136315650;
  v1 = sub_10038B288(a1, "[KmlClientAppStateObserver isClientBackground:]");
  sub_10038B278(v1, v2, v3);
  sub_10038B298(&_mh_execute_header, v4, v5, "%s : %i : pid: %d is in foreground", v6);
}

id sub_10038B5EC()
{
  objc_opt_self();
  if (qword_10051B0E8 != -1)
  {
    sub_10039120C();
  }

  v0 = qword_10051B0E0;

  return v0;
}

void sub_10038B634(id a1)
{
  v1 = KmlLogger();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "+[KmlFriendSharingManager fsManagerArray]_block_invoke";
    v6 = 1024;
    v7 = 136;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s : %i : FriendSharingManager: initializing fsManagerArray", &v4, 0x12u);
  }

  v2 = +[NSMutableArray array];
  v3 = qword_10051B0E0;
  qword_10051B0E0 = v2;
}

void sub_10038B70C()
{
  objc_opt_self();
  v0 = sub_10038B5EC();
  v1 = +[NSMutableIndexSet indexSet];
  v2 = v0;
  objc_sync_enter(v2);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (v8 && *(v8 + 8) == 52)
        {
          [v1 addIndex:{v5, v9}];
        }

        ++v5;
        v7 = v7 + 1;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  [v3 removeObjectsAtIndexes:v1];
  objc_sync_exit(v3);
}

char *sub_10038B89C(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  objc_opt_self();
  sub_10038B70C();
  v5 = sub_10038B5EC();
  objc_sync_enter(v5);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v7)
  {
    v8 = *v19;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if (v4)
        {
          v10 = *(*(&v18 + 1) + 8 * v9);
          v11 = v10 ? v10[44] : 0;
          v12 = v11;
          v13 = [v12 isEqualToString:{v4, v18}];

          if (v13)
          {
            v15 = KmlLogger();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 136315650;
              v23 = "+[KmlFriendSharingManager getFriendSharingManagerForInvitationIdentifier:createIfNil:]";
              v24 = 1024;
              v25 = 171;
              v26 = 2112;
              v27 = v4;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s : %i : FriendSharingManager: found manager to handle invitationId:%@", buf, 0x1Cu);
            }

            v7 = v10;
            goto LABEL_18;
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v14 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
      v7 = v14;
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  if (!v7)
  {
    if (a3)
    {
      v7 = sub_1003CFC6C([KmlFriendSharingManager alloc], v4, 0);
      if (v7)
      {
        [v6 addObject:v7];
        v16 = KmlLogger();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v23 = "+[KmlFriendSharingManager getFriendSharingManagerForInvitationIdentifier:createIfNil:]";
          v24 = 1024;
          v25 = 181;
          v26 = 2112;
          v27 = v4;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s : %i : FriendSharingManager: created new manager to handle invitationId:%@", buf, 0x1Cu);
        }
      }
    }
  }

  objc_sync_exit(v6);

  return v7;
}

char *sub_10038BB7C(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  objc_opt_self();
  sub_10038B70C();
  v5 = sub_10038B5EC();
  objc_sync_enter(v5);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v7)
  {
    v8 = *v19;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if (v4)
        {
          v10 = *(*(&v18 + 1) + 8 * v9);
          v11 = v10 ? v10[44] : 0;
          v12 = v11;
          v13 = [v12 isEqualToString:{v4, v18}];

          if (v13)
          {
            v15 = KmlLogger();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 136315650;
              v23 = "+[KmlFriendSharingManager getFriendSharingManagerWithFakeMailboxForInvitationIdentifier:createIfNil:]";
              v24 = 1024;
              v25 = 202;
              v26 = 2112;
              v27 = v4;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s : %i : FriendSharingManager: found manager to handle invitationId:%@", buf, 0x1Cu);
            }

            v7 = v10;
            goto LABEL_18;
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v14 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
      v7 = v14;
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  if (!v7)
  {
    if (a3)
    {
      v7 = sub_1003CFC6C([KmlFriendSharingManager alloc], v4, @"FAKE_MAILBOX");
      if (v7)
      {
        [v6 addObject:v7];
        v16 = KmlLogger();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v23 = "+[KmlFriendSharingManager getFriendSharingManagerWithFakeMailboxForInvitationIdentifier:createIfNil:]";
          v24 = 1024;
          v25 = 212;
          v26 = 2112;
          v27 = v4;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s : %i : FriendSharingManager: created new manager to handle invitationId:%@", buf, 0x1Cu);
        }
      }
    }
  }

  objc_sync_exit(v6);

  return v7;
}

void *sub_10038BE60(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  sub_10038B70C();
  v3 = sub_10038B5EC();
  objc_sync_enter(v3);
  v25 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v5)
  {
    v6 = *v26;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v26 != v6)
      {
        objc_enumerationMutation(v4);
      }

      if (v2)
      {
        v8 = *(v25.super_class + v7);
        v9 = v8 ? v8[47] : 0;
        v10 = v9;
        v11 = [v10 isEqual:{v2, v25.receiver}];

        if (v11)
        {
          break;
        }
      }

      if (v5 == ++v7)
      {
        v12 = [v4 countByEnumeratingWithState:&v25 objects:v31 count:16];
        v5 = v12;
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }

    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "+[KmlFriendSharingManager getFriendSharingManagerForUuid:]";
      *&buf[12] = 1024;
      *&buf[14] = 230;
      *&buf[18] = 2112;
      *&buf[20] = v2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s : %i : FriendSharingManager: found manager to handle UUID:%@", buf, 0x1Cu);
    }

    v14 = v8;
    if (v8)
    {
      goto LABEL_22;
    }
  }

  else
  {
LABEL_14:
  }

  v15 = [KmlFriendSharingManager alloc];
  sub_1003CFEF4(v15, v2, v16, v17, v18, v19, v20, v21, v25, v26, v27, v28, *(&v28 + 1), *buf, *&buf[8], *&buf[16], *&buf[24], v30, v31[0], v31[1], v31[2], v31[3], v31[4]);
  v14 = v22;
  if (v22)
  {
    [v4 addObject:v22];
    v23 = KmlLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "+[KmlFriendSharingManager getFriendSharingManagerForUuid:]";
      *&buf[12] = 1024;
      *&buf[14] = 240;
      *&buf[18] = 2112;
      *&buf[20] = v2;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s : %i : FriendSharingManager: created new manager to handle UUID:%@", buf, 0x1Cu);
    }
  }

LABEL_22:
  objc_sync_exit(v4);

  return v14;
}

void *sub_10038C140(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  sub_10038B70C();
  v3 = sub_10038B5EC();
  objc_sync_enter(v3);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v5)
  {
    v6 = *v17;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if (v2)
        {
          v8 = *(*(&v16 + 1) + 8 * v7);
          v9 = v8 ? v8[45] : 0;
          v10 = v9;
          v11 = [v2 uppercaseString];
          v12 = [v10 isEqualToString:v11];

          if (v12)
          {
            v14 = KmlLogger();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 136315650;
              v21 = "+[KmlFriendSharingManager getFriendSharingManagerForKeyIdentifier:]";
              v22 = 1024;
              v23 = 258;
              v24 = 2112;
              v25 = v2;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s : %i : Found manager to handle KeyId :%@", buf, 0x1Cu);
            }

            v5 = v8;
            goto LABEL_18;
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v13 = [v4 countByEnumeratingWithState:&v16 objects:v26 count:16];
      v5 = v13;
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  objc_sync_exit(v4);

  return v5;
}

char *sub_10038C388(uint64_t a1, void *a2, int a3)
{
  v3 = a2;
  objc_opt_self();
  sub_10038B70C();
  v4 = sub_10038B5EC();
  if ([v3 isEqualToString:@"FAKE_MAILBOX"])
  {
    v5 = KmlLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "+[KmlFriendSharingManager getFriendSharingManagerWithMailboxIdentifier:createIfNil:]";
      v27 = 1024;
      v28 = 277;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s : %i : MailboxIdentifier APIs are being deprecated, don't call APIs that require a mailbox identifier for shares that have been started with startShareAcceptanceFlow:completionHandler", buf, 0x12u);
    }

    v6 = 0;
  }

  else
  {
    v7 = v4;
    objc_sync_enter(v7);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = v7;
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (v6)
    {
      v8 = *v22;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if (v3)
          {
            v10 = *(*(&v21 + 1) + 8 * v9);
            v11 = v10 ? v10[46] : 0;
            v12 = v11;
            v13 = [v12 isEqualToString:v3];

            if (v13)
            {
              v15 = KmlLogger();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                v16 = [v3 substringToIndex:4];
                *buf = 136315650;
                v26 = "+[KmlFriendSharingManager getFriendSharingManagerWithMailboxIdentifier:createIfNil:]";
                v27 = 1024;
                v28 = 284;
                v29 = 2112;
                v30 = v16;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s : %i : FriendSharingManager: found manager to handle mailboxId:%@", buf, 0x1Cu);
              }

              v6 = v10;
              goto LABEL_22;
            }
          }

          ++v9;
        }

        while (v6 != v9);
        v14 = [v5 countByEnumeratingWithState:&v21 objects:v31 count:16];
        v6 = v14;
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:

    if (!v6)
    {
      if (a3)
      {
        v6 = sub_1003CFC6C([KmlFriendSharingManager alloc], 0, v3);
        if (v6)
        {
          [v5 addObject:v6];
          v17 = KmlLogger();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = [v3 substringToIndex:4];
            *buf = 136315650;
            v26 = "+[KmlFriendSharingManager getFriendSharingManagerWithMailboxIdentifier:createIfNil:]";
            v27 = 1024;
            v28 = 294;
            v29 = 2112;
            v30 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s : %i : FriendSharingManager: created new manager to handle mailboxId:%@", buf, 0x1Cu);
          }
        }
      }
    }

    objc_sync_exit(v5);
  }

  return v6;
}

void *sub_10038C728(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  sub_10038B70C();
  v23 = sub_10038B5EC();
  if (!v4 && v5 && [v5 isEqualToString:@"FAKE_MAILBOX"])
  {
    v6 = KmlLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "+[KmlFriendSharingManager getFriendSharingManagerForInvitationIdentifier:orMailboxIdentifier:]";
      v30 = 1024;
      v31 = 311;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s : %i : MailboxIdentifier APIs are being deprecated, don't call APIs that require a mailbox identifier for shares that have been started with startShareAcceptanceFlow:completionHandler", buf, 0x12u);
    }

    v7 = 0;
  }

  else
  {
    v8 = v23;
    objc_sync_enter(v8);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = v8;
    v9 = [v6 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v9)
    {
      v10 = *v25;
      do
      {
        v11 = 0;
        do
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v24 + 1) + 8 * v11);
          if (v4)
          {
            v13 = v12 ? v12[44] : 0;
            v14 = v13;
            v15 = [v14 isEqualToString:v4];

            if (v15)
            {
              v20 = KmlLogger();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                *buf = 136315650;
                v29 = "+[KmlFriendSharingManager getFriendSharingManagerForInvitationIdentifier:orMailboxIdentifier:]";
                v30 = 1024;
                v31 = 318;
                v32 = 2112;
                v33 = v4;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s : %i : FriendSharingManager: found manager to handle invitationId:%@", buf, 0x1Cu);
              }

              goto LABEL_31;
            }
          }

          if (v5 && ([v5 isEqualToString:@"FAKE_MAILBOX"] & 1) == 0)
          {
            v16 = v12 ? v12[46] : 0;
            v17 = v16;
            v18 = [v17 isEqualToString:v5];

            if (v18)
            {
              v20 = KmlLogger();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                v21 = [v5 substringToIndex:4];
                *buf = 136315650;
                v29 = "+[KmlFriendSharingManager getFriendSharingManagerForInvitationIdentifier:orMailboxIdentifier:]";
                v30 = 1024;
                v31 = 323;
                v32 = 2112;
                v33 = v21;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s : %i : FriendSharingManager: found manager to handle mailboxId:%@", buf, 0x1Cu);
              }

LABEL_31:

              v7 = v12;
              goto LABEL_32;
            }
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v19 = [v6 countByEnumeratingWithState:&v24 objects:v34 count:16];
        v9 = v19;
      }

      while (v19);
    }

    v7 = 0;
LABEL_32:

    objc_sync_exit(v6);
  }

  return v7;
}

void sub_10038CADC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_10038B5EC();
  objc_sync_enter(v3);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v5)
  {
    v6 = *v21;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v21 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v20 + 1) + 8 * v7);
      v9 = sub_1003C7D40(v2);
      if (v9)
      {
        v10 = v8 ? v8[44] : 0;
        v11 = v10;
        v12 = sub_1003C7D40(v2);
        v13 = [v11 isEqualToString:{v12, v20}];

        if (v13)
        {
          break;
        }
      }

      if (v5 == ++v7)
      {
        v14 = [v4 countByEnumeratingWithState:&v20 objects:v30 count:16];
        v5 = v14;
        if (v14)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }

    v15 = KmlLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = sub_1003C7D40(v2);
      *buf = 136315650;
      v25 = "+[KmlFriendSharingManager regenerateFriendSharingForInvitationRecord:]";
      v26 = 1024;
      v27 = 342;
      v28 = 2112;
      v29 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s : %i : found manager to handle invitationId:%@", buf, 0x1Cu);
    }

    v17 = v8;
    if (v8)
    {
      goto LABEL_22;
    }
  }

  else
  {
LABEL_14:
  }

  v17 = sub_1003D0130([KmlFriendSharingManager alloc], v2);
  if (v17)
  {
    [v4 addObject:v17];
    v18 = KmlLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = sub_1003C7D40(v2);
      *buf = 136315650;
      v25 = "+[KmlFriendSharingManager regenerateFriendSharingForInvitationRecord:]";
      v26 = 1024;
      v27 = 352;
      v28 = 2112;
      v29 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s : %i : created new manager to handle invitationId:%@", buf, 0x1Cu);
    }
  }

LABEL_22:
  objc_sync_exit(v4);
}

id sub_10038CE04()
{
  objc_opt_self();
  if (qword_10051B0F8 != -1)
  {
    sub_100391220();
  }

  v0 = qword_10051B0F0;

  return v0;
}

void sub_10038CE4C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.sesd.kml.friendSharingManager", v3);
  v2 = qword_10051B0F0;
  qword_10051B0F0 = v1;
}

void sub_10038CF18(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 8);
  v4 = KmlLogger();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3 == 11)
  {
    if (v5)
    {
      sub_1003913B4();
    }

    v13 = KmlSignpostLogger();
    v14 = v13;
    v15 = *(*v2 + 264);
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *v18 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, v15, "FriendSharingAccepted", "client", v18, 2u);
    }

    objc_storeStrong((*(a1 + 32) + 152), *(a1 + 40));
    v16 = sub_1003D06A4(*(a1 + 32), *(a1 + 48));
    v11 = *(a1 + 32);
    v17 = 12;
    goto LABEL_15;
  }

  if (v5)
  {
    sub_100391234(v2);
  }

  WeakRetained = objc_loadWeakRetained((*v2 + 328));
  v7 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
  v19 = NSLocalizedDescriptionKey;
  v8 = [NSString stringWithUTF8String:KmlErrorString()];
  v20 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v10 = [NSError errorWithDomain:v7 code:214 userInfo:v9];
  [WeakRetained handleExchangeStartedWithFriendKey:0 status:v10];

  v11 = *v2;
  if (*(*v2 + 8) <= 10)
  {
    v17 = 52;
LABEL_15:
    sub_1003D0A54(v11, v17);
    return;
  }

  v12 = KmlLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    sub_1003912F4(v2);
  }
}

void sub_10038D170(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 8);
  v4 = KmlLogger();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3 == 2)
  {
    if (v5)
    {
      sub_100391534(v2);
    }

    if (KmlLogIsInternalBuild())
    {
      v7 = KmlLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(*v2 + 368);
        v9 = 136315650;
        v10 = "[KmlFriendSharingManager parseCrossPlatformInvitation:]_block_invoke";
        v11 = 1024;
        v12 = 549;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s : %i : from %@", &v9, 0x1Cu);
      }
    }

    sub_1003D0B5C(*(a1 + 32), *(a1 + 40));
  }

  else
  {
    if (v5)
    {
      sub_100391474(v2);
    }

    WeakRetained = objc_loadWeakRetained((*v2 + 328));
    [WeakRetained handleCrossPlatformParseInvitationStatus:0];
  }
}

void sub_10038D2CC(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = v2[1];
  if ((v4 - 12) > 0xB)
  {
    if (v4 >= 24)
    {
      v5 = KmlLogger();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        sub_1003915F4(v3);
      }

      WeakRetained = objc_loadWeakRetained((*v3 + 328));
      v7 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v33 = NSLocalizedDescriptionKey;
      v8 = [NSString stringWithUTF8String:KmlErrorString()];
      v34 = v8;
      v9 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v10 = [NSError errorWithDomain:v7 code:214 userInfo:v9];
      [WeakRetained handleCrossPlatformSigningRequest:0 status:v10 keyInformation:0];

      return;
    }

LABEL_8:
    v11 = KmlLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      sub_100391774(v3);
    }

    if (KmlLogIsInternalBuild())
    {
      v12 = KmlLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(*v3 + 368);
        *buf = 136315650;
        v28 = "[KmlFriendSharingManager acceptCrossPlatformInvitation:passcode:productPlanIdentifier:]_block_invoke";
        v29 = 1024;
        v30 = 575;
        v31 = 2112;
        v32 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s : %i : from %@", buf, 0x1Cu);
      }
    }

    if (KmlLogIsInternalBuild())
    {
      v14 = KmlLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 40);
        *buf = 136315650;
        v28 = "[KmlFriendSharingManager acceptCrossPlatformInvitation:passcode:productPlanIdentifier:]_block_invoke";
        v29 = 1024;
        v30 = 576;
        v31 = 2112;
        v32 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s : %i : PPID from server : %@", buf, 0x1Cu);
      }
    }

    *(*(a1 + 32) + 241) = 1;
    objc_storeStrong((*(a1 + 32) + 152), *(a1 + 48));
    v16 = sub_1003D06A4(*(a1 + 32), *(a1 + 40));
    v17 = *(a1 + 32);
    v18 = *(a1 + 56);
    if (*(v17 + 8) == 2)
    {
      sub_1003D0B5C(v17, v18);
      return;
    }

    if (v18)
    {
      v19 = *(v17 + 352);
      v20 = [v18 genericData];
      v21 = [v20 sharingIdentifier];
      LODWORD(v19) = [v19 isEqualToString:v21];

      if (!v19)
      {
        sub_100391834(&v25, &v26, v3);
        return;
      }

      v17 = *v3;
    }

    sub_1003D0A54(v17, 12);
    return;
  }

  if (!v2[7] || !v2[11])
  {
    goto LABEL_8;
  }

  v22 = KmlLogger();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    sub_1003916B4(v3);
  }

  v23 = sub_1003D0EC4(*v3, 2, 1);
  v24 = objc_loadWeakRetained((*v3 + 328));
  [v24 handleCrossPlatformSigningRequest:v23 status:0 keyInformation:*(*v3 + 344)];
}

void sub_10038D6A0(uint64_t a1)
{
  v1 = (a1 + 32);
  *(*(a1 + 32) + 240) = 1;
  *(*(a1 + 32) + 24) = *(*(a1 + 32) + 8);
  v2 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
  v24 = NSLocalizedDescriptionKey;
  v3 = [NSString stringWithUTF8String:KmlErrorString()];
  v25 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v5 = [NSError errorWithDomain:v2 code:102 userInfo:v4];
  v6 = *(*v1 + 272);
  *(*v1 + 272) = v5;

  if (*(*v1 + 8) < 31)
  {
    v15 = KmlSignpostLogger();
    v16 = v15;
    v17 = *(*v1 + 264);
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *v21 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, v17, "FriendSharingCancelled", "client", v21, 2u);
    }

    v18 = *v1;
    if (*(*v1 + 88))
    {
      sub_1003D10F8(v18);
      v18 = *v1;
    }

    v19 = *(v18 + 8);
    if (v19 <= 20)
    {
      v20 = 21;
    }

    else
    {
      if (v19 == 21)
      {
        return;
      }

      v20 = 43;
    }

    sub_1003D0A54(v18, v20);
    return;
  }

  v7 = KmlLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    sub_1003919A8(v1);
  }

  v8 = [DAShareRecipientResult alloc];
  v9 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
  v22 = NSLocalizedDescriptionKey;
  v10 = [NSString stringWithUTF8String:KmlErrorString()];
  v23 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v12 = [NSError errorWithDomain:v9 code:101 userInfo:v11];
  v13 = [v8 initFailureResultWithCredentialIdentifier:0 error:v12];

  WeakRetained = objc_loadWeakRetained((*v1 + 328));
  [WeakRetained handleFriendSideKeySharingCancelResult:v13];
}

uint64_t sub_10038D98C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10038D9A4(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(*(a1 + 32) + 8))
  {
    v3 = KmlLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      sub_100391A68(v2);
    }

    v4 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v14 = NSLocalizedDescriptionKey;
    v5 = [NSString stringWithUTF8String:KmlErrorString()];
    v15 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v7 = [NSError errorWithDomain:v4 code:214 userInfo:v6];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = [*(a1 + 40) ownerIdsIdentifier];
    v11 = *(a1 + 32);
    v12 = *(v11 + 80);
    *(v11 + 80) = v10;

    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      sub_100391B28();
    }

    sub_1003D0A54(*v2, 1);
  }
}

id sub_10038DB48(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    objc_sync_enter(v4);
    if (v4[18])
    {
      v5 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v15[0] = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:KmlErrorString()];
      v15[1] = NSLocalizedFailureReasonErrorKey;
      v16[0] = v6;
      v16[1] = @"Binding attestation already set";
      v7 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
      v8 = [NSError errorWithDomain:v5 code:214 userInfo:v7];
    }

    else
    {
      v10 = [[NSData alloc] initWithData:v3];
      v11 = v4[18];
      v4[18] = v10;

      if (v4[18])
      {
        v12 = sub_1003DF2B8([KmlBindingAttestation alloc], v4[18]);
        v13 = sub_1003BA3D0(v12);
        v14 = v4[29];
        v4[29] = v13;
      }

      sub_1003D0A54(v4, 21);
      v8 = 0;
    }

    objc_sync_exit(v4);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_10038DD3C(id *a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = +[NSMutableData data];
    v74 = +[NSMutableData data];
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v7 = [v5 secondFactorList];
    v8 = [v7 countByEnumeratingWithState:&v75 objects:v91 count:16];
    if (v8)
    {
      v9 = *v76;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v76 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v75 + 1) + 8 * v10);
        if ([v11 type] == 4)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v7 countByEnumeratingWithState:&v75 objects:v91 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v12 = v11;
      v13 = KmlLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = a1[44];
        v15 = [v14 UTF8String];

        *buf = 136315906;
        v82 = "[KmlFriendSharingManager getSecondFactorRequestForConfig:retError:]";
        v83 = 1024;
        v84 = 724;
        v85 = 2080;
        v86 = v15;
        v87 = 2112;
        v88[0] = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s : %i : %s : Found osp config: %@", buf, 0x26u);
      }

      if (!v12)
      {
        goto LABEL_22;
      }

      v16 = [v12 passcode];
      v17 = [v16 length] == 0;

      if (v17)
      {
        goto LABEL_22;
      }

      if (![a1[27] sharingPasswordLength] || (objc_msgSend(v12, "passcode"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "length"), LOBYTE(v19) = v19 == objc_msgSend(a1[27], "sharingPasswordLength"), v18, (v19 & 1) != 0))
      {
        v20 = [v5 invitationIdentifier];
        v21 = [v20 dataUsingEncoding:4];
        v22 = [KmlTlv TLVWithTag:24403 value:v21];

        v23 = [v22 asData];
        [v6 appendData:v23];

        v24 = [v12 passcode];
        v25 = [v24 dataUsingEncoding:4];
        v26 = [KmlTlv TLVWithTag:24383 value:v25];

        v27 = [v26 asData];
        [v6 appendData:v27];

        v28 = [a1[11] publicKey];
        v72 = [KmlTlv TLVWithTag:80 value:v28];

        v29 = [v72 asData];
        [v6 appendData:v29];

        v30 = [KmlTlv TLVWithTag:32578 value:v6];
        v73 = [v30 asData];

        kmlUtilLogLargeData();
        v71 = kmlUtilSHA256();
        v31 = a1;
        objc_sync_enter(v31);
        v32 = v31[45];
        v70 = SESEndPointSignDataWithAuth();
        v33 = 0;
        if (v33)
        {
          v34 = v33;
          v35 = KmlLogger();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v36 = v31[44];
            v37 = v36;
            v38 = [v36 UTF8String];
            *buf = 136315906;
            v82 = "[KmlFriendSharingManager getSecondFactorRequestForConfig:retError:]";
            v83 = 1024;
            v84 = 765;
            v85 = 2080;
            v86 = v38;
            v87 = 2112;
            v88[0] = v34;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s : %i : %s : Failed to sign data : %@", buf, 0x26u);
          }

          if (a3)
          {
            v39 = v34;
            v40 = 0;
            *a3 = v34;
          }

          else
          {
            v40 = 0;
          }
        }

        else
        {
          [v74 appendData:v73];
          v51 = [v70 signedData];
          [v74 appendData:v51];

          v52 = [v70 signature];
          v67 = [KmlTlv TLVWithTag:158 value:v52];

          v53 = [v67 asData];
          [v74 appendData:v53];

          v66 = [KmlTlv TLVWithTag:32579 value:v74];
          v69 = [v66 asData];
          kmlUtilLogLargeData();
          v54 = v31[45];
          v68 = SESEndPointPrivacyEncryption();
          v34 = 0;
          if (v34)
          {
            v55 = KmlLogger();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              v56 = v31[44];
              v57 = v56;
              v58 = [v56 UTF8String];
              *buf = 136315906;
              v82 = "[KmlFriendSharingManager getSecondFactorRequestForConfig:retError:]";
              v83 = 1024;
              v84 = 785;
              v85 = 2080;
              v86 = v58;
              v87 = 2112;
              v88[0] = v34;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%s : %i : %s : Failed to sign data : %@", buf, 0x26u);
            }

            if (a3)
            {
              v59 = v34;
              v40 = 0;
              *a3 = v34;
            }

            else
            {
              v40 = 0;
            }
          }

          else
          {
            v60 = [DAAlishaKeyEncryptedRequest alloc];
            v65 = [v68 version];
            v64 = [v68 ephemeralPublicKeydata];
            v61 = [v68 receiverPublicKeyHash];
            v62 = [v68 cipherText];
            v40 = [v60 initWithVersion:v65 ephemeralPublicKey:v64 publicKeyHash:v61 encryptedRequest:v62];

            v31[39] = v31[39] + 1;
          }
        }

        objc_sync_exit(v31);
        goto LABEL_42;
      }

      v45 = KmlLogger();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = a1[44];
        v47 = [v46 UTF8String];
        v48 = [a1[27] sharingPasswordLength];
        v49 = [v12 passcode];

        v50 = [v49 length];
        *buf = 136316162;
        v82 = "[KmlFriendSharingManager getSecondFactorRequestForConfig:retError:]";
        v83 = 1024;
        v84 = 739;
        v85 = 2080;
        v86 = v47;
        v87 = 1024;
        LODWORD(v88[0]) = v48;
        WORD2(v88[0]) = 1024;
        *(v88 + 6) = v50;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%s : %i : %s : osp is not of the correct length. Expected Length:%d Received Length:%d", buf, 0x28u);
      }

      if (a3)
      {
        v34 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
        v79 = NSLocalizedDescriptionKey;
        v22 = [NSString stringWithUTF8String:KmlErrorString()];
        v80 = v22;
        v26 = [NSDictionary dictionaryWithObjects:&v80 forKeys:&v79 count:1];
        v44 = [NSError errorWithDomain:v34 code:104 userInfo:v26];
        goto LABEL_26;
      }
    }

    else
    {
LABEL_10:

      v12 = 0;
LABEL_22:
      v41 = KmlLogger();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = a1[44];
        v43 = [v42 UTF8String];

        *buf = 136315650;
        v82 = "[KmlFriendSharingManager getSecondFactorRequestForConfig:retError:]";
        v83 = 1024;
        v84 = 730;
        v85 = 2080;
        v86 = v43;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%s : %i : %s : Missing online sharing pin", buf, 0x1Cu);
      }

      if (a3)
      {
        v34 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
        v89 = NSLocalizedDescriptionKey;
        v22 = [NSString stringWithUTF8String:KmlErrorString()];
        v90 = v22;
        v26 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
        v44 = [NSError errorWithDomain:v34 code:104 userInfo:v26];
LABEL_26:
        v40 = 0;
        *a3 = v44;
LABEL_42:

        goto LABEL_43;
      }
    }

    v40 = 0;
LABEL_43:

    goto LABEL_44;
  }

  v40 = 0;
LABEL_44:

  return v40;
}

void sub_10038E778(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(*(a1 + 40) + 40) = [v2 sharingFlow];
    v4 = *(a1 + 40);

    sub_1003D15DC(v4);
  }

  else
  {
    v3 = KmlLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100391BE8(a1);
    }
  }
}

void sub_10038E7F8(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 23 && *(v2 + 56))
  {
    objc_storeStrong((v2 + 152), *(a1 + 40));
    v11 = *(a1 + 32);

    sub_1003D1A48(v11);
  }

  else
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100391CA8(v3);
    }

    v5 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v12 = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithUTF8String:KmlErrorString()];
    v13 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v8 = [NSError errorWithDomain:v5 code:119 userInfo:v7];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void sub_10038EAF0(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = KmlLogger();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v5)
    {
      sub_100391D68();
    }

    v7 = (a1 + 40);
    v6 = *(a1 + 40);
    if (*(v6 + 8) == 2 && *(a1 + 80) == 1)
    {
      if (sub_1003D1AF0(v6, *(a1 + 48)) && *(a1 + 56))
      {
        v36 = [[NSData alloc] initWithData:*(a1 + 56)];
        v37 = *(a1 + 40);
        v38 = *(v37 + 48);
        *(v37 + 48) = v36;

        v39 = [[NSString alloc] initWithString:*(a1 + 32)];
        v40 = *(a1 + 40);
        v41 = *(v40 + 80);
        *(v40 + 80) = v39;

        objc_storeStrong((*(a1 + 40) + 376), *(a1 + 64));
        *(*(a1 + 40) + 384) = *(a1 + 88);
        sub_1003AAB7C(*(*(a1 + 40) + 256), *(a1 + 64));
        sub_1003ADB68(*(*(a1 + 40) + 256), *(a1 + 48));
        sub_1003C7DD0(*(*(a1 + 40) + 256), *(*(a1 + 40) + 352));
        sub_1003ABAF0(*(*(a1 + 40) + 256), *(*(a1 + 40) + 80));
        sub_1003D0A54(*(a1 + 40), 3);
        return;
      }

      v18 = KmlLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        sub_10039249C(v7);
      }
    }

    else if ([*(v6 + 80) isEqualToString:*v3])
    {
      if ([*(*(a1 + 40) + 376) isEqual:*(a1 + 64)])
      {
        if (*(a1 + 80) == 4)
        {
          v8 = KmlLogger();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            sub_1003923DC((a1 + 40));
          }

          v9 = [[KmlCancelMessage alloc] initWithData:*(a1 + 48)];
          v10 = v9;
          if (v9)
          {
            v11 = [v9 kmlCode];
            if (v11 == 105)
            {
              v12 = 103;
            }

            else
            {
              v12 = v11;
            }

            v13 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
            v50 = NSLocalizedDescriptionKey;
            v14 = [NSString stringWithUTF8String:KmlErrorString()];
            v51 = v14;
            v15 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
            v16 = v13;
            v17 = v12;
          }

          else
          {
            v13 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
            v48 = NSLocalizedDescriptionKey;
            v14 = [NSString stringWithUTF8String:KmlErrorString()];
            v49 = v14;
            v15 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
            v16 = v13;
            v17 = 103;
          }

          v19 = [NSError errorWithDomain:v16 code:v17 userInfo:v15];
          v20 = *(*v7 + 272);
          *(*v7 + 272) = v19;

          v21 = *(*v7 + 8);
          if (v21 == 11)
          {
            v33 = 41;
          }

          else
          {
            if (v21 > 32)
            {
LABEL_27:

              return;
            }

            v33 = 51;
          }

          sub_1003D0A54(*v7, v33);
          goto LABEL_27;
        }

        v22 = sub_1003D1D60(*(a1 + 40), *(a1 + 48));
        if (!v22)
        {
          v34 = KmlLogger();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            sub_10039231C(v7);
          }

          sub_1003CD134(*(*v7 + 248), *v3);
          goto LABEL_58;
        }

        v23 = *v7;
        v24 = *(*v7 + 8);
        if ((v24 - 22) < 2)
        {
          if (*(v23 + 88))
          {
            if (*(v23 + 360) && ([*(a1 + 72) isEqualToString:?] & 1) == 0)
            {
              v45 = KmlLogger();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
              {
                sub_100392098();
              }

              sub_1003CD134(*(*v7 + 248), *v3);
              v31 = *v7;
              v32 = 51;
            }

            else
            {
              v42 = KmlLogger();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                sub_100392190();
              }

              objc_storeStrong((*(a1 + 40) + 64), v22);
              v43 = [NSString stringWithFormat:@"SignedResponse - %@", *(*(a1 + 40) + 352)];
              v44 = *(a1 + 48);
              kmlUtilLogLargeData();

              v31 = *(a1 + 40);
              v32 = 31;
            }
          }

          else
          {
            v35 = KmlLogger();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              sub_10039225C(v7);
            }

            v31 = *v7;
            v32 = 43;
          }
        }

        else
        {
          if (v24 != 11)
          {
LABEL_58:

            return;
          }

          v25 = KmlLogger();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            sub_100391FA0();
          }

          v26 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
          v46 = NSLocalizedDescriptionKey;
          v27 = [NSString stringWithUTF8String:KmlErrorString()];
          v47 = v27;
          v28 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
          v29 = [NSError errorWithDomain:v26 code:110 userInfo:v28];
          v30 = *(*v7 + 272);
          *(*v7 + 272) = v29;

          v31 = *v7;
          v32 = 41;
        }

        sub_1003D0A54(v31, v32);
        goto LABEL_58;
      }

      v18 = KmlLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        sub_100391EE0(v7);
      }
    }

    else
    {
      v18 = KmlLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        sub_100391E20(v7);
      }
    }

    sub_1003CD134(*(*v7 + 248), *v3);
    return;
  }

  if (v5)
  {
    sub_10039255C(a1);
  }
}

void sub_10038F21C(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 8) == 21)
  {
    v3 = (a1 + 40);
    v4 = *(a1 + 40);
    v5 = KmlLogger();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v4)
    {
      if (v6)
      {
        sub_1003926DC();
      }

      if (*(*v1 + 240) == 1)
      {
        v8 = *v1;
        sub_1003927D0();
      }

      else
      {
        sub_100392794(v3, *v1, v1);
      }
    }

    else
    {
      if (v6)
      {
        sub_100392844(v1);
      }

      if (*(*v1 + 240) == 1)
      {
        v7 = 43;
      }

      else
      {
        v7 = 22;
      }

      sub_1003D0A54(*v1, v7);
    }
  }

  else
  {
    v2 = KmlLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      sub_10039261C(v1);
    }
  }
}

void sub_10038F3BC(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = *(v2 + 8);
  switch(v4)
  {
    case 43:
      if (!*(a1 + 40))
      {
LABEL_22:
        v9 = 52;
LABEL_23:
        sub_1003D0A54(v2, v9);
        return;
      }

      v10 = KmlLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100392904();
      }

LABEL_21:

      v2 = *v3;
      goto LABEL_22;
    case 22:
      v6 = *(a1 + 40);
      v5 = (a1 + 40);
      v7 = KmlLogger();
      v8 = v7;
      if (v6)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_1003929BC();
        }

        objc_storeStrong((*v3 + 272), *v5);
        v2 = *v3;
        v9 = 42;
      }

      else
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          sub_100392A74(v3);
        }

        v2 = *v3;
        v9 = 23;
      }

      goto LABEL_23;
    case 1:
      v12 = *(a1 + 40);
      v11 = (a1 + 40);
      v13 = KmlLogger();
      v10 = v13;
      if (v12)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_100392B34();
        }

        v14 = *v11;
        v15 = *v3;
        v16 = v14;
        v10 = *(v15 + 272);
        *(v15 + 272) = v16;
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        sub_100392BEC(v3);
      }

      goto LABEL_21;
  }
}

void sub_10038F5C4(uint64_t a1)
{
  v2 = [*(a1 + 32) genericData];
  v3 = [v2 messageType];

  if (v3 == 4)
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      sub_100393078(a1);
    }

    v5 = [KmlCancelMessage alloc];
    v6 = [*(a1 + 32) genericData];
    v7 = [v6 message];
    v8 = [v5 initWithData:v7];

    if (v8)
    {
      v23 = [v8 kmlCode];
      if (v23 == 105)
      {
        v24 = 103;
      }

      else
      {
        v24 = v23;
      }

      v9 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v67 = NSLocalizedDescriptionKey;
      v10 = [NSString stringWithUTF8String:KmlErrorString()];
      v68 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      v12 = v9;
      v13 = v24;
    }

    else
    {
      v9 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v65 = NSLocalizedDescriptionKey;
      v10 = [NSString stringWithUTF8String:KmlErrorString()];
      v66 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
      v12 = v9;
      v13 = 103;
    }

    v25 = [NSError errorWithDomain:v12 code:v13 userInfo:v11];
    v26 = *(a1 + 40);
    v27 = *(v26 + 272);
    *(v26 + 272) = v25;

    v28 = *(a1 + 40);
    goto LABEL_16;
  }

  v14 = [*(a1 + 32) genericData];
  v15 = [v14 messageType];

  if (v15 == 6)
  {
    v16 = KmlLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      sub_100392EF8(a1);
    }

    v18 = *(a1 + 40);
    v17 = (a1 + 40);
    v19 = [*(v17 - 1) genericData];
    v20 = [v19 message];
    v21 = sub_1003D2814(v18, v20);

    if (*(*v17 + 8) == 23)
    {
      v22 = +[KmlClientReporterFactory getReporter];
      [v22 passcodeRetryRequestedFor:*(*v17 + 360) retriesLeft:v21];

      v8 = [[DAShareRecipientResult alloc] initPasscodeFailureResultWithCredentialIdentifier:*(*v17 + 360) retryCount:v21];
    }

    else
    {
      v37 = KmlLogger();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        sub_100392FB8(v17);
      }

      v38 = [DAShareRecipientResult alloc];
      v39 = *(*v17 + 360);
      v40 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v63 = NSLocalizedDescriptionKey;
      v41 = [NSString stringWithUTF8String:KmlErrorString()];
      v64 = v41;
      v42 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
      v43 = [NSError errorWithDomain:v40 code:214 userInfo:v42];
      v8 = [v38 initFailureResultWithCredentialIdentifier:v39 error:v43];
    }

    WeakRetained = objc_loadWeakRetained((*v17 + 328));
    [WeakRetained handleRecipientMessageResult:v8];
  }

  else
  {
    v31 = (a1 + 40);
    v30 = *(a1 + 40);
    v32 = [*(a1 + 32) genericData];
    v33 = [v32 message];
    v8 = sub_1003D1D60(v30, v33);

    if (v8)
    {
      if (*(*v31 + 8) != 23)
      {
        goto LABEL_31;
      }

      v34 = *(*v31 + 88);
      v35 = KmlLogger();
      v36 = os_log_type_enabled(v35, OS_LOG_TYPE_INFO);
      if (v34)
      {
        if (v36)
        {
          sub_100392CAC();
        }

        v54 = [NSString stringWithFormat:@"SignedResponse - %@", *(*(a1 + 40) + 352)];
        v55 = [*(a1 + 32) genericData];
        v56 = [v55 message];
        kmlUtilLogLargeData();

        objc_storeStrong((*(a1 + 40) + 64), v8);
        v57 = [*(a1 + 32) additionalData];
        v58 = [v57 initiatorIdsPseudonym];
        v59 = *(a1 + 40);
        v60 = *(v59 + 80);
        *(v59 + 80) = v58;

        sub_1003ABAF0(*(*(a1 + 40) + 256), *(*(a1 + 40) + 80));
        v28 = *(a1 + 40);
        v29 = 31;
        goto LABEL_17;
      }

      if (v36)
      {
        sub_100392D78((a1 + 40));
      }

      [SESTapToRadar requestTapToRadarKML:@"Friend unable to find endpoint for signed response" client:@"KMLEndpointLookupError"];
      v28 = *v31;
LABEL_16:
      v29 = 51;
LABEL_17:
      sub_1003D0A54(v28, v29);
      goto LABEL_31;
    }

    v45 = KmlLogger();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      sub_100392E38(v31);
    }

    v46 = [DAShareRecipientResult alloc];
    v47 = *(*v31 + 360);
    v48 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v61 = NSLocalizedDescriptionKey;
    v49 = [NSString stringWithUTF8String:KmlErrorString()];
    v62 = v49;
    v50 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v51 = [NSError errorWithDomain:v48 code:214 userInfo:v50];
    v52 = [v46 initFailureResultWithCredentialIdentifier:v47 error:v51];

    v53 = objc_loadWeakRetained((*v31 + 328));
    [v53 handleRecipientMessageResult:v52];
  }

LABEL_31:
}

void sub_10038FCA8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = (a1 + 32);
  if (v3 > *(v2 + 8))
  {

    sub_1003D294C(v2, v3);
  }

  else
  {
    v5 = KmlLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      sub_100393138(v4);
    }
  }
}

void sub_10038FDB4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    sub_1003931F8();
  }

  v4 = sesErrorToKmlError();
  v5 = v4;
  if (v4 && [v4 code] != 228)
  {
    [SESTapToRadar requestTapToRadarKML:@"Friend pre-warm failed" client:@"KMLPreWarmFailure"];
  }
}

void sub_10038FE60(void *a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1[4] + 216) mfiPPID];
  [v3 setReaderConfigID:v4];

  [v3 setFriendlyName:*(a1[4] + 96)];
  [v3 setReaderInfo:*(a1[4] + 336)];
  [v3 setInvitationIdentifier:*(a1[4] + 352)];
  if (a1[5])
  {
    [v3 setShareInitiatorCertificateChainData:?];
  }

  if (a1[6])
  {
    [v3 setKeyRole:?];
  }

  v5 = a1[4];
  v6 = v5[47];
  if (v6)
  {
    v7 = [v6 UUIDString];
    [v3 setSharingSessionUUID:v7];

    v5 = a1[4];
  }

  if (v5[10])
  {
    [v3 setOwnerIDSIdentifier:?];
    v5 = a1[4];
  }

  v8 = sub_1003AAA6C(v5[4]);
  v9 = sub_1003ACF68(v8);
  v10 = sub_1003DDEBC(v9);
  v11 = kmlUtilGetDckIdFromSlotId();
  [v3 setBleDCKIdentifier:v11];

  [v3 setDeviceConfiguration:a1[7]];
  v12 = [*(a1[4] + 216) deviceBtIntroKey];
  [v3 setBleIntroKey:v12];

  v13 = [*(a1[4] + 216) deviceBtOOBKey];
  [v3 setBleOOBKey:v13];

  v14 = [*(a1[4] + 216) readerBtIdAddress];
  [v3 setBleAddress:v14];

  [v3 setVehicleSupportedVersionsData:a1[8]];
  v15 = sub_1003AAA6C(*(a1[4] + 32));
  v16 = sub_1003ACF68(v15);
  v17 = sub_1003DE370(v16);
  [v3 setMailboxSizesPlusAdditionalData:v17];

  v18 = a1[4];
  if (*(v18 + 232))
  {
    [v3 setAnonymizedDsid:?];
    v18 = a1[4];
  }

  v19 = *(v18 + 88);
  *(v18 + 88) = v3;
}

void sub_100390094(uint64_t a1)
{
  v2 = objc_alloc_init(KeySigningRequest);
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  sub_1003BAE64(v2, *(v4 + 224));
  if (sub_1003BA7E4(v2, *(*v3 + 56)))
  {
    sub_100393378(v3, &v2->super.isa);
  }

  else
  {
    v5 = KmlLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1003932B8(v3);
    }

    if (*(*v3 + 368))
    {
      WeakRetained = objc_loadWeakRetained((*v3 + 328));
      v7 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v11 = NSLocalizedDescriptionKey;
      v8 = [NSString stringWithUTF8String:KmlErrorString()];
      v12 = v8;
      v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      v10 = [NSError errorWithDomain:v7 code:109 userInfo:v9];
      [WeakRetained handleCrossPlatformSigningRequest:0 status:v10 keyInformation:*(*v3 + 344)];
    }
  }
}

void sub_100390248(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setMailboxMapping:*(a1 + 32)];
  [v3 setSharingAttestationData:*(a1 + 40)];
  v4 = (a1 + 48);
  v5 = sub_1003BA3F8(*(*(a1 + 48) + 64));
  v6 = [v5 count];

  if (v6)
  {
    v7 = sub_1003BA3F8(*(*v4 + 64));
    [v3 setAdditionalAttestationsDict:v7];
  }

  v8 = sub_1003AD0FC(*(*v4 + 64));
  if (v8)
  {
    v9 = v8;
    v10 = sub_1003AAA78(*(*v4 + 64));

    if (v10)
    {
      v11 = sub_1003AD0FC(*(*v4 + 64));
      v12 = [v11 value];
      [v3 setOwnerEphemeralKey:v12];

      v13 = sub_1003AAA78(*(*v4 + 64));
      v14 = [v13 value];
      [v3 setSharingEncryptedData:v14];
    }
  }

  v15 = *v4;
  if (*(*v4 + 368) && *(v15 + 80))
  {
    v16 = KmlLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      sub_100393588();
    }

    [v3 setOwnerIDSIdentifier:*(*v4 + 80)];
    v15 = *v4;
  }

  if (*(a1 + 56) == 1)
  {
    v17 = [*(v15 + 216) asData];
    [v3 setDeviceConfiguration:v17];

    v18 = [*(*v4 + 216) deviceBtIntroKey];
    [v3 setBleIntroKey:v18];

    v19 = [*(*v4 + 216) deviceBtOOBKey];
    [v3 setBleOOBKey:v19];

    v20 = [*(*v4 + 216) readerBtIdAddress];
    [v3 setBleAddress:v20];

    v15 = *v4;
  }

  v21 = *(v15 + 88);
  *(v15 + 88) = v3;
}

void sub_10039047C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 deviceList];
  v7 = v6;
  if (!v5 && [v6 count])
  {
    v10 = KmlLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      sub_100393648(a1);
    }

    v11 = KmlLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      sub_100393744(a1);
    }

    sub_1003D0A54(*(a1 + 32), 52);
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 288);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100390E88;
    v12[3] = &unk_1004C22F0;
    v12[4] = v8;
    v13 = v5;
    dispatch_async(v9, v12);
  }
}

void sub_1003905B0(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTrackingRequest:*(a1 + 32)];
  v4 = *(a1 + 40);
  if (*(v4 + 232))
  {
    [v3 setAnonymizedDsid:?];
    v4 = *(a1 + 40);
  }

  v5 = *(v4 + 88);
  *(v4 + 88) = v3;
}

id sub_100390A64(uint64_t a1)
{

  return [v1 doesVersion:a1 support:768];
}

void sub_100390ABC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_INFO, a4, a5, 0x1Cu);
}

void sub_100390B60(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x26u);
}

void sub_100390C18(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_INFO, a4, a5, 0x26u);
}

void sub_100390C34()
{
  v3 = *v0;
}

void sub_100390C4C()
{
  v3 = *(v0 + 272);
}

id sub_100390CCC(void *a1, const char *a2, uint64_t a3)
{

  return [a1 BOOLValueForSetting:a3 manufacturer:v3 brand:v4 uuid:v5 error:0];
}

void sub_100390D28(uint64_t a1)
{
  v2 = sub_1003D06A4(*(a1 + 32), *(a1 + 40));
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100390D78(uint64_t a1)
{
  v4 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.sharing"];
  v10 = NSLocalizedDescriptionKey;
  v5 = *(v1 + 1128);
  KmlErrorString();
  v6 = [sub_100372244() stringWithUTF8String:?];
  v11 = v6;
  [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  objc_claimAutoreleasedReturnValue();
  v7 = [sub_100390BAC() errorWithDomain:v4 code:211 userInfo:v2];
  v8 = *(a1 + 32);
  v9 = *(v8 + 272);
  *(v8 + 272) = v7;

  sub_1003D0A54(*(a1 + 32), 43);
}

uint64_t sub_100390E88(uint64_t a1)
{
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 352);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v1 = [v6 UTF8String];
    v7 = *(a1 + 40);

    sub_10036BED0();
    sub_1003908FC();
    sub_100390BB8();
    *(&v21[4] + 6) = v7;
    sub_100390968();
    _os_log_impl(v8, v9, v10, v11, v12, 0x26u);
  }

  *(*(a1 + 32) + 240) = 1;
  *(*(a1 + 32) + 24) = *(*(a1 + 32) + 8);
  v13 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.sharing"];
  v20 = NSLocalizedDescriptionKey;
  v14 = v1[141];
  KmlErrorString();
  v15 = [sub_100372244() stringWithUTF8String:NSLocalizedDescriptionKey];
  v21[0] = v15;
  [NSDictionary dictionaryWithObjects:v21 forKeys:&v20 count:1];
  objc_claimAutoreleasedReturnValue();
  v16 = [sub_100390BAC() errorWithDomain:v13 code:113 userInfo:1];
  v17 = *(a1 + 32);
  v18 = *(v17 + 272);
  *(v17 + 272) = v16;

  return sub_1003D0A54(*(a1 + 32), 21);
}

void sub_10039103C(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_1003BFE98(*(v3 + 256));
  objc_claimAutoreleasedReturnValue();
  v4 = sub_100390C88();
  sub_1003D1AF0(v4, v1);

  sub_1003D894C(*(a1 + 32));
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  if (v6 == 11 || (v6 == 23 || v6 == 21) && *(v5 + 88))
  {
    v7 = KmlLogger();
    if (sub_100057AEC(v7))
    {
      v8 = *(a1 + 32);
      if (v8)
      {
        v9 = *(v8 + 352);
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
      [v10 UTF8String];

      *v17 = 136315650;
      sub_1003672C0();
      sub_1003908D4();
      sub_100367454(&_mh_execute_header, v3, v11, "%s : %i : %s : session is worth restoring", v17);
    }
  }

  else
  {
    v12 = KmlLogger();
    if (sub_100057AEC(v12))
    {
      v13 = *(a1 + 32);
      if (v13)
      {
        v14 = *(v13 + 352);
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      [v15 UTF8String];

      *v17 = 136315650;
      sub_1003672C0();
      sub_1003908D4();
      sub_100367454(&_mh_execute_header, v3, v16, "%s : %i : %s : Our Client can not revive sharing in this state. So cancel sharing to clean it out.", v17);
    }

    sub_1003D10A4(*(a1 + 32));
  }

  sub_1003CCDC4(*(*(a1 + 32) + 248), *(a1 + 32), *(*(a1 + 32) + 352));
  sub_1003CD1B8(*(*(a1 + 32) + 248), *(*(a1 + 32) + 352));
}

void sub_100391234(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_1003912F4(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_1003913B4()
{
  sub_100390BC4();
  sub_100367428(v0);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];
  sub_100390BF4();
  v5 = *(v4 + 80);

  sub_10036DB8C();
  sub_100390874();
  sub_1003672E0();
  _os_log_impl(v6, v7, v8, v9, v10, 0x26u);
}

void sub_100391474(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100391534(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_1003915F4(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_1003916B4(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100391774(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100391834(NSErrorUserInfoKey *a1, void *a2, uint64_t *a3)
{
  v7 = KmlLogger();
  if (sub_10004F844(v7))
  {
    sub_10036DB8C();
    sub_100390B30();
    _os_log_impl(v8, v9, v10, v11, v12, 0x12u);
  }

  v13 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
  *a1 = NSLocalizedDescriptionKey;
  v14 = [NSString stringWithUTF8String:KmlErrorString()];
  *a2 = v14;
  v15 = [NSDictionary dictionaryWithObjects:a2 forKeys:a1 count:1];
  v16 = [NSError errorWithDomain:v13 code:109 userInfo:v15];
  v17 = *(*a3 + 272);
  *(*a3 + 272) = v16;

  sub_1003D0A54(*a3, 42);
}

void sub_1003919A8(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100391A68(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100391B28()
{
  sub_100390BC4();
  sub_100367428(v0);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];
  sub_100390BF4();
  v5 = *(v4 + 80);

  sub_10036DB8C();
  sub_100390874();
  sub_1003672E0();
  _os_log_impl(v6, v7, v8, v9, v10, 0x26u);
}

void sub_100391BE8(uint64_t a1)
{
  sub_100390BE8(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003909D4();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100391CA8(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003909D4();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100391D68()
{
  sub_100390AE4();
  sub_100390BE8(v0);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  [v2 UTF8String];
  sub_100390C34();
  sub_10036DB8C();
  sub_100390874();
  sub_1003672E0();
  _os_log_impl(v3, v4, v5, v6, v7, 0x26u);
}

void sub_100391E20(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100391EE0(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100391FA0()
{
  sub_100390AE4();
  sub_100367428(v1);
  if (v2)
  {
    v3 = *(v2 + 352);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v4 UTF8String];
  v5 = *(v0 + 88);

  sub_1003672E0();
  _os_log_impl(v6, v7, v8, v9, v10, 0x26u);
}

void sub_100392098()
{
  sub_100390AE4();
  sub_100367428(v1);
  if (v2)
  {
    v3 = *(v2 + 352);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v4 UTF8String];
  v5 = *(v0 + 88);

  sub_1003672E0();
  _os_log_impl(v6, v7, v8, v9, v10, 0x26u);
}

void sub_100392190()
{
  sub_100390BC4();
  sub_100367428(v0);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];
  sub_100390BF4();
  v5 = *(v4 + 8);

  sub_10036DB8C();
  sub_1003908D4();
  sub_1003672E0();
  _os_log_impl(v6, v7, v8, v9, v10, 0x26u);
}

void sub_10039225C(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003909D4();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_10039231C(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_1003923DC(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_10039249C(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_10039255C(uint64_t a1)
{
  sub_100390BE8(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_10039261C(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_1003926DC()
{
  sub_100390AE4();
  sub_100367428(v0);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  [v2 UTF8String];
  sub_100390C34();
  sub_10036DB8C();
  sub_100390874();
  sub_1003672E0();
  _os_log_impl(v3, v4, v5, v6, v7, 0x26u);
}

void sub_1003927D0()
{
  sub_100390AE4();
  sub_1003D1F10(v2);
  v3 = [[DAShareRecipientResult alloc] initFailureResultWithCredentialIdentifier:0 error:*v1];
  WeakRetained = objc_loadWeakRetained((*v0 + 328));
  [WeakRetained handleFriendSideKeySharingCancelResult:v3];

  sub_1003D0A54(*v0, 52);
}

void sub_100392844(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100392904()
{
  sub_100390AE4();
  sub_100367428(v0);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  [v2 UTF8String];
  sub_100390C34();
  sub_10036DB8C();
  sub_100390874();
  sub_1003909D4();
  _os_log_impl(v3, v4, v5, v6, v7, 0x26u);
}

void sub_1003929BC()
{
  sub_100390AE4();
  sub_100367428(v0);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  [v2 UTF8String];
  sub_100390C34();
  sub_10036DB8C();
  sub_100390874();
  sub_1003909D4();
  _os_log_impl(v3, v4, v5, v6, v7, 0x26u);
}

void sub_100392A74(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100392B34()
{
  sub_100390AE4();
  sub_100367428(v0);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  [v2 UTF8String];
  sub_100390C34();
  sub_10036DB8C();
  sub_100390874();
  sub_1003909D4();
  _os_log_impl(v3, v4, v5, v6, v7, 0x26u);
}

void sub_100392BEC(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100392CAC()
{
  sub_100390BC4();
  sub_100367428(v0);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];
  sub_100390BF4();
  v5 = *(v4 + 8);

  sub_10036DB8C();
  sub_1003908D4();
  sub_1003672E0();
  _os_log_impl(v6, v7, v8, v9, v10, 0x26u);
}

void sub_100392D78(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100392E38(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100392EF8(uint64_t a1)
{
  sub_100390BE8(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100392FB8(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100393078(uint64_t a1)
{
  sub_100390BE8(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100393138(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_1003931F8()
{
  sub_100390AE4();
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_10036DB8C();
  sub_100390874();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1003932B8(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003909D4();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100393378(uint64_t *a1, id *a2)
{
  v4 = sub_1003BADDC(a2, *(*a1 + 152));
  v5 = *(*a1 + 56);
  *(*a1 + 56) = v4;

  ++*(*a1 + 304);
  sub_1003D15DC(*a1);
  v6 = KmlLogger();
  if (sub_100057AEC(v6))
  {
    if (*a1)
    {
      v7 = *(*a1 + 352);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    [v8 UTF8String];

    sub_10036DC30();
    sub_1003908FC();
    sub_100390968();
    _os_log_impl(v9, v10, v11, v12, v13, 0x1Cu);
  }

  v14 = [NSString stringWithFormat:@"Passcode Retry SigningRequest - %@", *(*a1 + 352)];
  v15 = *(*a1 + 56);
  kmlUtilLogLargeData();

  v16 = *a1;
  if (*(*a1 + 368))
  {
    v17 = sub_1003D0EC4(v16, 7, 0);
    WeakRetained = objc_loadWeakRetained((*a1 + 328));
    [WeakRetained handleCrossPlatformSigningRequest:v17 status:0 keyInformation:*(*a1 + 344)];

    if (![*(*a1 + 368) isEqualToString:@"FAKE_MAILBOX"])
    {
      v19 = +[KmlClientReporterFactory getReporter];
      [v19 sendCrossPlatformSharingMessage:v17 toMailboxIdentifier:*(*a1 + 368)];
    }
  }

  else
  {
    sub_1003CD23C(*(v16 + 248), *(v16 + 56), 0, *(v16 + 144), *(v16 + 352), *(v16 + 360), *(v16 + 376), *(v16 + 80), 1, 7);
  }
}

void sub_100393588()
{
  sub_100390BC4();
  sub_100367428(v0);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];
  sub_100390BF4();
  v5 = *(v4 + 80);

  sub_10036DB8C();
  sub_100390874();
  sub_1003672E0();
  _os_log_impl(v6, v7, v8, v9, v10, 0x26u);
}

void sub_100393648(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];
  v4 = [sub_10036746C() objectAtIndexedSubscript:0];
  v5 = [v4 name];
  sub_10036DB8C();
  sub_1003908D4();
  sub_1003672E0();
  _os_log_impl(v6, v7, v8, v9, v10, 0x26u);
}

void sub_100393744(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 352);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v3 UTF8String];

  sub_1003672C0();
  sub_10036728C();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100393974(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 0x1Cu);
}

void sub_100393A08(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_INFO, a4, a5, 0x18u);
}

uint64_t sub_100393A50()
{

  return CCAESCmac();
}

id sub_10039452C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  objc_opt_self();
  if (qword_10051B100 != -1)
  {
    sub_100396780();
  }

  v5 = [NSKeyedUnarchiver unarchivedObjectOfClasses:qword_10051B108 fromData:v4 error:a3];

  return v5;
}

void sub_1003945BC(id a1)
{
  v1 = [NSSet setWithObjects:objc_opt_class(), 0];
  v2 = qword_10051B108;
  qword_10051B108 = v1;
}

void sub_100394710()
{
  objc_opt_self();
  if (qword_10051B118 != -1)
  {
    sub_100396794();
  }
}

void sub_100394744(id a1)
{
  v1 = KmlLogger();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "+[KmlSharingRecordsUpdater initRecordUpdaterTable]_block_invoke";
    v6 = 1024;
    v7 = 194;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s : %i : initializing recordUpdaterTable", &v4, 0x12u);
  }

  if (!qword_10051B110)
  {
    v2 = +[NSHashTable weakObjectsHashTable];
    v3 = qword_10051B110;
    qword_10051B110 = v2;
  }
}

KmlSharingRecordsUpdater *sub_100394824(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    v3 = [v2 subjectIdentifier];
    if (v3)
    {
      sub_100394710();
      v4 = qword_10051B110;
      objc_sync_enter(v4);
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v5 = qword_10051B110;
      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        v7 = *v15;
LABEL_5:
        v8 = 0;
        while (1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * v8);
          v10 = [v9 endpointIdentifier];
          v11 = [v10 isEqualToString:v3];

          if (v11)
          {
            break;
          }

          if (v6 == ++v8)
          {
            v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
            if (v6)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }

        v12 = v9;

        if (v12)
        {
          goto LABEL_16;
        }
      }

      else
      {
LABEL_11:
      }

      v12 = [[KmlSharingRecordsUpdater alloc] initWithEndpoint:v2];
      if (v12)
      {
        [qword_10051B110 addObject:v12];
      }

LABEL_16:
      objc_sync_exit(v4);
    }

    else
    {
      v4 = KmlLogger();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v20 = "+[KmlSharingRecordsUpdater getSharingRecordsUpdaterForEndpoint:]";
        v21 = 1024;
        v22 = 211;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : endpoint has nil identifier. Can't get updater for such endpoint", buf, 0x12u);
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_100394A94()
{
  objc_opt_self();
  if (qword_10051B128 != -1)
  {
    sub_1003967A8();
  }

  v0 = qword_10051B120;

  return v0;
}

void sub_100394ADC(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.sesd.kml.ownerRecordsUpdater", v3);
  v2 = qword_10051B120;
  qword_10051B120 = v1;
}

uint64_t sub_100394C10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

dispatch_queue_t *sub_100394C28(dispatch_queue_t *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x3032000000;
      v13 = sub_100394C10;
      v14 = sub_100394C20;
      v15 = 0;
      dispatch_assert_queue_not_V2(a1[3]);
      v5 = a1[3];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100394D74;
      block[3] = &unk_1004D1C80;
      block[4] = a1;
      v8 = v4;
      v9 = &v10;
      dispatch_sync(v5, block);
      a1 = v11[5];

      _Block_object_dispose(&v10, 8);
    }

    else
    {
      sub_1003967BC();
      a1 = 0;
    }
  }

  return a1;
}

void sub_100394D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100394D74(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100396438;
  v5[3] = &unk_1004D22D8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
}

void sub_100394E0C(uint64_t a1)
{
  v27 = +[NSMutableArray array];
  v2 = +[NSMutableArray array];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = *(*(a1 + 32) + 16);
  v4 = [v3 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v31;
    *&v5 = 136315906;
    v26 = v5;
    v28 = v3;
    do
    {
      v9 = 0;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v30 + 1) + 8 * v9);
        v11 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:{v10, v26}];
        v12 = v11;
        if (v11 && v11[15] == 5)
        {
          v13 = KmlLogger();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v35 = "[KmlSharingRecordsUpdater saveSharingRecords]_block_invoke";
            v36 = 1024;
            v37 = 311;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s : %i : The record is ready for clean up. Removing it", buf, 0x12u);
          }

          if (v12[19])
          {
            v14 = KmlLogger();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v35 = "[KmlSharingRecordsUpdater saveSharingRecords]_block_invoke";
              v36 = 1024;
              v37 = 313;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s : %i : Removing un-claimed authorization for previously shared key.", buf, 0x12u);
            }

            sub_100395274(*(a1 + 32), v12[12]);
          }

          [v2 addObject:v10];
        }

        else
        {
          v29 = v7;
          v15 = sub_1003C7D4C(v11, &v29);
          v16 = v29;

          if (v16)
          {
            v17 = KmlLogger();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = v26;
              v35 = "[KmlSharingRecordsUpdater saveSharingRecords]_block_invoke";
              v36 = 1024;
              v37 = 321;
              v38 = 2112;
              v39 = v10;
              v40 = 2112;
              v41 = v16;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s : %i : Sharing config with Invitation Id (%@), could not be serialized : %@", buf, 0x26u);
            }

            v18 = v2;
            v19 = v10;
          }

          else
          {
            v18 = v27;
            v19 = v15;
          }

          [v18 addObject:v19];

          v7 = v16;
          v3 = v28;
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v20 = [v3 countByEnumeratingWithState:&v30 objects:v42 count:16];
      v6 = v20;
    }

    while (v20);
  }

  else
  {
    v7 = 0;
  }

  v21 = [*(*(a1 + 32) + 8) publicKeyIdentifier];
  v22 = kmlUtilHexStringFromData();

  v23 = v27;
  v24 = SESEndPointUpdateWithBlock();

  if (v24)
  {
    v25 = KmlLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v35 = "[KmlSharingRecordsUpdater saveSharingRecords]_block_invoke_2";
      v36 = 1024;
      v37 = 334;
      v38 = 2112;
      v39 = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s : %i : Failed to save sharing records on endPoint : %@", buf, 0x1Cu);
    }
  }

  [*(*(a1 + 32) + 16) removeObjectsForKeys:v2];
}

void sub_100395274(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v5 = SESEndPointDeleteAuthorizationID();
    v6 = +[KmlCachedAuthorizationManager sharedManager];
    [v6 markCacheDirty];

    v7 = KmlLogger();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v8)
      {
        v9 = [v5 description];
        v10 = 136315650;
        v11 = "[KmlSharingRecordsUpdater deleteAuthWithId:]";
        v12 = 1024;
        v13 = 471;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s : %i : Failed in delete Auth. error: %@", &v10, 0x1Cu);
      }
    }

    else if (v8)
    {
      v10 = 136315650;
      v11 = "[KmlSharingRecordsUpdater deleteAuthWithId:]";
      v12 = 1024;
      v13 = 473;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s : %i : Deleted auth with Id : %@", &v10, 0x1Cu);
    }
  }
}

void sub_10039540C(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 8) sharingRecords];
  v2 = v1;
  if (v1)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v3 = [v1 countByEnumeratingWithState:&v22 objects:v32 count:16];
    if (!v3)
    {
      goto LABEL_31;
    }

    v5 = v3;
    v6 = *v23;
    *&v4 = 136315650;
    v19 = v4;
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        v21 = 0;
        v9 = sub_10039452C(KmlSharingConfig, v8, &v21);
        v10 = v21;
        v11 = KmlLogger();
        v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
        if (v10)
        {
          if (v12)
          {
            *buf = 136315394;
            v27 = "[KmlSharingRecordsUpdater unpackAllConfigsOnEndpoint]_block_invoke";
            v28 = 1024;
            v29 = 354;
            v13 = v11;
            v14 = "%s : %i : Found a courrupted sharing record. Discarding it";
            goto LABEL_18;
          }

          goto LABEL_19;
        }

        if (v12)
        {
          if (v9)
          {
            v15 = v9[20];
          }

          else
          {
            v15 = 0;
          }

          *buf = v19;
          v27 = "[KmlSharingRecordsUpdater unpackAllConfigsOnEndpoint]_block_invoke";
          v28 = 1024;
          v29 = 358;
          v30 = 2112;
          v31 = v15;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s : %i : Found sharing record for invitation Id : %@", buf, 0x1Cu);
        }

        if (v9)
        {
          if (v9[15] == 5)
          {
            v11 = KmlLogger();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v27 = "[KmlSharingRecordsUpdater unpackAllConfigsOnEndpoint]_block_invoke";
              v28 = 1024;
              v29 = 360;
              v13 = v11;
              v14 = "%s : %i : The record is ready for clean up. Removing it";
LABEL_18:
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v14, buf, 0x12u);
            }

LABEL_19:

            goto LABEL_20;
          }

          v16 = v9[20];
        }

        else
        {
          v16 = 0;
        }

        [*(*(a1 + 32) + 16) setObject:v9 forKeyedSubscript:{v16, v19}];
LABEL_20:

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v17 = [v2 countByEnumeratingWithState:&v22 objects:v32 count:16];
      v5 = v17;
      if (!v17)
      {
        goto LABEL_31;
      }
    }
  }

  v18 = KmlLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v27 = "[KmlSharingRecordsUpdater unpackAllConfigsOnEndpoint]_block_invoke";
    v28 = 1024;
    v29 = 346;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s : %i : We don't have any sharing records", buf, 0x12u);
  }

LABEL_31:
}

dispatch_queue_t *sub_100395728(dispatch_queue_t *a1)
{
  v1 = a1;
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_100394C10;
    v9 = sub_100394C20;
    v10 = +[NSMutableArray array];
    dispatch_assert_queue_not_V2(v1[3]);
    v2 = v1[3];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100395850;
    v4[3] = &unk_1004C24F8;
    v4[4] = v1;
    v4[5] = &v5;
    dispatch_sync(v2, v4);
    v1 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return v1;
}

void sub_100395838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100395850(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003958CC;
  v3[3] = &unk_1004D2300;
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_1003958CC(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a3;
  v4 = [DAKeySharingInvitationData alloc];
  if (v13)
  {
    v5 = v13[3];
    v6 = v13[20];
    v7 = v13[19];
    v8 = v13[14];
    v9 = v13[15] - 3;
    if (v9 >= 3)
    {
      v10 = 1;
    }

    else
    {
      v10 = qword_100417528[v9];
    }

    v11 = v13[21];
  }

  else
  {
    nullsub_5();
    v10 = 0;
    v7 = 0;
    v5 = 0;
    v6 = 0;
    v8 = 0;
    v11 = 0;
  }

  v12 = [v4 initWithSessionUUID:v5 invitationIdentifier:v6 friendKeyIdentifier:v7 sharingTarget:v8 state:v10 vehicleEnteredPasscode:v11];

  [*(*(*(a1 + 32) + 8) + 40) addObject:v12];
}

uint64_t sub_1003959EC(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    dispatch_assert_queue_not_V2(*(a1 + 24));
    v2 = *(v1 + 24);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100395ABC;
    v4[3] = &unk_1004C24F8;
    v4[4] = v1;
    v4[5] = &v5;
    dispatch_sync(v2, v4);
    v1 = v6[3];
    _Block_object_dispose(&v5, 8);
  }

  return v1;
}

void sub_100395AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100395ABC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003964E8;
  v3[3] = &unk_1004D2300;
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

dispatch_queue_t *sub_100395B38(dispatch_queue_t *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_100394C10;
    v13 = sub_100394C20;
    v14 = 0;
    dispatch_assert_queue_not_V2(a1[3]);
    v4 = a1[3];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100395C74;
    block[3] = &unk_1004D1C80;
    block[4] = a1;
    v7 = v3;
    v8 = &v9;
    dispatch_sync(v4, block);
    a1 = v10[5];

    _Block_object_dispose(&v9, 8);
  }

  return a1;
}

void sub_100395C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100395C74(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100396518;
  v5[3] = &unk_1004D22D8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
}

dispatch_queue_t *sub_100395D0C(dispatch_queue_t *a1)
{
  v1 = a1;
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_100394C10;
    v9 = sub_100394C20;
    v10 = 0;
    dispatch_assert_queue_not_V2(a1[3]);
    v2 = v1[3];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100395E20;
    v4[3] = &unk_1004C14E8;
    v4[4] = v1;
    v4[5] = &v5;
    dispatch_sync(v2, v4);
    v1 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return v1;
}

void sub_100395E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100395E20(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100395E70(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100395F00;
  v2[3] = &unk_1004D2328;
  v3 = *(a1 + 40);
  [v1 enumerateKeysAndObjectsUsingBlock:v2];
}

void sub_100395F00(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 19);
    if (v8)
    {
      v9 = v8;
      v10 = [*(a1 + 32) containsObject:v7[19]];

      if (v10)
      {
        v11 = KmlLogger();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = v7[19];
          v13 = 136315650;
          v14 = "[KmlSharingRecordsUpdater removeConfigsWithSharedKeyIdentifiers:]_block_invoke_2";
          v15 = 1024;
          v16 = 437;
          v17 = 2112;
          v18 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s : %i : Found record with shared key Identifier : %@", &v13, 0x1Cu);
        }

        v7[15] = 5;
      }
    }
  }
}

dispatch_queue_t *sub_100396024(dispatch_queue_t *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_100394C10;
    v13 = sub_100394C20;
    v14 = +[NSMutableSet set];
    dispatch_assert_queue_not_V2(a1[3]);
    v4 = a1[3];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100396174;
    block[3] = &unk_1004D1C80;
    block[4] = a1;
    v7 = v3;
    v8 = &v9;
    dispatch_sync(v4, block);
    a1 = v10[5];

    _Block_object_dispose(&v9, 8);
  }

  return a1;
}

void sub_10039615C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100396174(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10039620C;
  v5[3] = &unk_1004D22D8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
}

void sub_10039620C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 19);
    if (v8)
    {
      v9 = v8;
      v10 = [*(a1 + 32) containsObject:v7[19]];

      if (v10)
      {
        v11 = KmlLogger();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = v7[19];
          v13 = v7[3];
          v15 = 136315906;
          v16 = "[KmlSharingRecordsUpdater getUUIDsForSharedKeyIdentifiers:]_block_invoke_2";
          v17 = 1024;
          v18 = 452;
          v19 = 2112;
          v20 = v12;
          v21 = 2112;
          v22 = v13;
          v14 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s : %i : Found record with shared key Identifier : %@, uuid : %@", &v15, 0x26u);
        }

        [*(*(*(a1 + 40) + 8) + 40) addObject:v7[3]];
      }
    }
  }
}

void sub_1003963FC()
{
  v3 = (*(*(v1 + 40) + 8) + 40);

  objc_storeStrong(v3, v0);
}

id sub_10039641C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 16);
  if (v1)
  {
    v3 = *(v1 + 160);
  }

  else
  {
    v3 = 0;
  }

  return [v2 setObject:v1 forKeyedSubscript:v3];
}

void sub_100396438(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v12 = v6;
  if (v6)
  {
    v7 = *(v6 + 19);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 32);
  v9 = v7;
  v10 = [v8 uppercaseString];
  v11 = [v9 isEqualToString:v10];

  if (v11)
  {
    sub_1003963FC();
    *a4 = 1;
  }
}

uint64_t sub_1003964E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (*(a3 + 152))
    {
      ++*(*(*(result + 32) + 8) + 24);
    }
  }

  return result;
}

void sub_100396518(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v10 = v6;
  if (v6)
  {
    v7 = v6[3];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if ([v8 isEqual:*(a1 + 32)])
  {
    if (v10)
    {
      v9 = v10[19];
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      sub_1003963FC();
      *a4 = 1;
    }
  }

  else
  {
  }
}

id sub_1003965D4(void *a1)
{
  [a1 encodeInteger:0 forKey:@"profile"];
  [sub_1003963F0() encodeInteger:? forKey:?];
  [sub_1003963F0() encodeInteger:? forKey:?];
  [sub_1003963F0() encodeInteger:? forKey:?];
  [sub_1003963F0() encodeInteger:? forKey:?];
  [sub_1003963F0() encodeInteger:? forKey:?];
  v1 = sub_1003963F0();

  return [v1 encodeInteger:? forKey:?];
}

id sub_100396670(void *a1)
{
  [a1 encodeInteger:0 forKey:@"slotIdentifierIndex"];
  [sub_1003963F0() encodeInteger:? forKey:?];
  [sub_1003963F0() encodeInteger:? forKey:?];
  v1 = sub_1003963F0();

  return [v1 encodeInteger:? forKey:?];
}

id sub_100396720(void *a1)
{
  [a1 encodeInteger:0 forKey:@"depRetriesLeft"];
  [sub_1003963F0() encodeInteger:? forKey:?];

  return [a1 encodeBool:0 forKey:@"mockRefreshInstanceCA"];
}

void sub_1003967BC()
{
  v0 = KmlLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = 136315394;
    v2 = "[KmlSharingRecordsUpdater getConfigWithFriendKeyIdentifier:]";
    v3 = 1024;
    v4 = 285;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s : %i : keyIdentifier is nil", &v1, 0x12u);
  }
}

BOOL sub_100396990(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = objc_opt_new();
  v7 = [v6 useBasicSecurityPolicy];

  if (sub_1003F6F5C(v8) && v7)
  {
    BasicX509 = SecPolicyCreateBasicX509();
    v10 = KmlLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    *buf = 136315394;
    v33 = "+[KmlEndpointCreationConfig isCertificateChainValid:chain:]";
    v34 = 1024;
    v35 = 970;
    v11 = "%s : %i : Using basic policy";
    v12 = v10;
    v13 = 18;
  }

  else
  {
    BasicX509 = SecPolicyCreateAlisha();
    v10 = KmlLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    *buf = 136315906;
    v33 = "+[KmlEndpointCreationConfig isCertificateChainValid:chain:]";
    v34 = 1024;
    v35 = 973;
    v36 = 1024;
    LODWORD(v37[0]) = sub_1003F6F5C(v14);
    WORD2(v37[0]) = 1024;
    *(v37 + 6) = v7;
    v11 = "%s : %i : Using Alisha policy (%d) (%d)";
    v12 = v10;
    v13 = 30;
  }

  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v11, buf, v13);
LABEL_9:

  if (BasicX509)
  {
    trust = 0;
    v15 = SecTrustCreateWithCertificates(v5, BasicX509, &trust);
    if (v15)
    {
      v16 = v15;
      v17 = KmlLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v33 = "+[KmlEndpointCreationConfig isCertificateChainValid:chain:]";
        v34 = 1024;
        v35 = 983;
        v36 = 1024;
        LODWORD(v37[0]) = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s : %i : Cannot create trust for certificate evaluation, error code = %d", buf, 0x18u);
      }

      v18 = 0;
      goto LABEL_24;
    }

    v17 = trust;
    v19 = [NSArray arrayWithObject:v4];
    v20 = SecTrustSetAnchorCertificates(v17, v19);
    if (v20)
    {
      v21 = v20;
      v22 = KmlLogger();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v33 = "+[KmlEndpointCreationConfig isCertificateChainValid:chain:]";
        v34 = 1024;
        v35 = 993;
        v36 = 1024;
        LODWORD(v37[0]) = v21;
        v23 = "%s : %i : SecTrustSetAnchorCertificates failed, error code = %d";
LABEL_21:
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, v23, buf, 0x18u);
      }
    }

    else
    {
      v24 = SecTrustSetAnchorCertificatesOnly(v17, 1u);
      if (!v24)
      {
        err = 0;
        v18 = SecTrustEvaluateWithError(v17, &err);
        if (!v18)
        {
          v27 = CFErrorCopyDescription(err);
          if (v27)
          {
            v28 = v27;
            v29 = KmlLogger();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *buf = 136315650;
              v33 = "+[KmlEndpointCreationConfig isCertificateChainValid:chain:]";
              v34 = 1024;
              v35 = 1008;
              v36 = 2112;
              v37[0] = v28;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s : %i : Trust evaluation failed: %@", buf, 0x1Cu);
            }

            CFRelease(v28);
          }
        }

        if (err)
        {
          CFRelease(err);
        }

        goto LABEL_23;
      }

      v25 = v24;
      v22 = KmlLogger();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v33 = "+[KmlEndpointCreationConfig isCertificateChainValid:chain:]";
        v34 = 1024;
        v35 = 998;
        v36 = 1024;
        LODWORD(v37[0]) = v25;
        v23 = "%s : %i : SecTrustSetAnchorCertificatesOnly failed, error code = %d";
        goto LABEL_21;
      }
    }

    v18 = 0;
LABEL_23:

LABEL_24:
    goto LABEL_25;
  }

LABEL_14:
  v18 = 0;
LABEL_25:

  return v18;
}

uint64_t sub_100396E9C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 14) = v2;
  *(a2 + 20) = result;
  return result;
}

void sub_100396F10(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v2 - 64) = a2;
  *(v2 - 60) = a1;
  *(v2 - 52) = 1024;
}

id sub_100396F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return [v18 countByEnumeratingWithState:&a9 objects:&a18 count:16];
}

id sub_100396F44(void *a1, const char *a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);

  return [a1 countByEnumeratingWithState:va objects:va1 count:16];
}

void sub_100396FD4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, (v5 - 64), 0x12u);
}

id sub_100396FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a10 + 8 * v10);

  return [v12 tag];
}

void sub_100397010(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0x12u);
}

void sub_100397064(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 96) = a2;
  *(v2 + 4) = a1;
  *(v3 - 84) = 1024;
}

BOOL sub_1003970B4(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL sub_1003970EC(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

id sub_100397128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  return [v19 countByEnumeratingWithState:a3 objects:va count:16];
}

id sub_100397144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a10 + 8 * v10);

  return [v12 tag];
}

void sub_100397188(uint64_t a1@<X8>)
{
  *(a1 + 14) = v1;
  *(v3 - 222) = 2112;
  *(a1 + 20) = v2;
}

void sub_1003971C0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x1Cu);
}

id sub_1003971E0(void *a1, const char *a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);

  return [a1 countByEnumeratingWithState:va objects:va1 count:16];
}

id sub_100397230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

void sub_1003972E0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void sub_10039733C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 0x1Cu);
}

void sub_10039735C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

id sub_10039737C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [NSMutableString stringWithString:@"DIGK."];
  v4 = [v2 isEqualToString:@"FRND"];

  if (v4)
  {
    v5 = @"FRND";
  }

  else
  {
    v5 = @"OWNR";
  }

  [v3 appendString:v5];
  v6 = randomStringWithLength();
  [v3 appendFormat:@".%@=", v6];
  v7 = +[NSDate date];
  v8 = objc_alloc_init(NSDateFormatter);
  v9 = [NSTimeZone timeZoneWithName:@"UTC"];
  [v8 setTimeZone:v9];

  [v8 setDateFormat:@"yyMMddHHmm"];
  v10 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v8 setLocale:v10];

  v11 = [v8 stringFromDate:v7];
  [v3 appendString:v11];

  v12 = KmlLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v15 = "+[KmlEndpointManager kmlUniqueEndpointId:]";
    v16 = 1024;
    v17 = 107;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s : %i : Unique Endpoint ID: %@", buf, 0x1Cu);
  }

  return v3;
}

const __CFString *sub_1003975A8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 componentsSeparatedByString:@"."];

  if ([v3 count] < 3)
  {
    v5 = 0;
  }

  else
  {
    v4 = [v3 objectAtIndexedSubscript:1];
    v5 = @"OWNR";
    v6 = [v4 isEqualToString:@"OWNR"];

    if ((v6 & 1) == 0)
    {
      v7 = [v3 objectAtIndexedSubscript:1];
      v8 = [v7 isEqualToString:@"FRND"];

      if (v8)
      {
        v5 = @"FRND";
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

uint64_t sub_100397680(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    v20 = 0;
    v3 = SESEndPointList();
    v4 = 0;
    if (v4)
    {
      v5 = KmlLogger();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v22 = "+[KmlEndpointManager getTotalKeysFor:]";
        v23 = 1024;
        v24 = 144;
        v25 = 2112;
        v26 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s : %i : Error in getting endpoint list: %@", buf, 0x1Cu);
      }
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v5 = v3;
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v29 count:16];
      if (v7)
      {
        v8 = v7;
        v15 = v3;
        v6 = 0;
        v9 = *v17;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v17 != v9)
            {
              objc_enumerationMutation(v5);
            }

            v11 = [*(*(&v16 + 1) + 8 * i) subjectIdentifier];
            v12 = sub_1003975A8(KmlEndpointManager, v11);

            v6 += [v12 isEqualToString:v2];
          }

          v8 = [v5 countByEnumeratingWithState:&v16 objects:v29 count:16];
        }

        while (v8);
        v3 = v15;
        goto LABEL_17;
      }
    }

    v6 = 0;
LABEL_17:

    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v22 = "+[KmlEndpointManager getTotalKeysFor:]";
      v23 = 1024;
      v24 = 147;
      v25 = 2112;
      v26 = v2;
      v27 = 2048;
      v28 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s : %i : Total keys for %@ is %ld", buf, 0x26u);
    }

    goto LABEL_20;
  }

  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "+[KmlEndpointManager getTotalKeysFor:]";
    v23 = 1024;
    v24 = 128;
    v25 = 2112;
    v26 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Invalid keyType - %@", buf, 0x1Cu);
  }

  v6 = 0;
LABEL_20:

  return v6;
}

id sub_100397980(uint64_t a1, void *a2, char a3)
{
  v4 = a2;
  objc_opt_self();
  v5 = [v4 mailboxMapping];
  v6 = [[KmlVersions alloc] initWithEndpoint:v4];
  v7 = [[KmlMailboxMappingData alloc] initWithData:v5 preferredVersion:{objc_msgSend(v6, "agreedKmlVehicleVersion")}];
  if ([v7 mailboxVersion] == 128)
  {
    v8 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
    v37 = NSLocalizedDescriptionKey;
    v9 = [NSString stringWithUTF8String:KmlErrorString()];
    v38 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v11 = [NSError errorWithDomain:v8 code:212 userInfo:v10];

    v12 = KmlLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v32 = "+[KmlEndpointManager updateMailboxForEndpoint:withUsedSlotIdentifierIndex:]";
      v33 = 1024;
      v34 = 226;
      v35 = 2112;
      v36 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s : %i : Can not update used slot identifiers due to : %@", buf, 0x1Cu);
    }

LABEL_7:

    v19 = v11;
    goto LABEL_12;
  }

  v13 = [v7 vehicleProprietaryDataOffset];
  if (v13 < [v7 signalingBitmapOffset])
  {
    v14 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
    v29 = NSLocalizedDescriptionKey;
    v15 = [NSString stringWithUTF8String:KmlErrorString()];
    v30 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v11 = [NSError errorWithDomain:v14 code:212 userInfo:v16];

    v12 = KmlLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = [v7 asData];
      v18 = [v17 asHexString];
      *buf = 136315650;
      v32 = "+[KmlEndpointManager updateMailboxForEndpoint:withUsedSlotIdentifierIndex:]";
      v33 = 1024;
      v34 = 232;
      v35 = 2112;
      v36 = v18;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s : %i : Underflow detected in mailbox offsets %@", buf, 0x1Cu);
    }

    goto LABEL_7;
  }

  v20 = [v4 publicKeyIdentifier];
  v21 = kmlUtilHexStringFromData();

  [v7 signalingBitmapOffset];
  [v7 vehicleProprietaryDataOffset];
  [v7 signalingBitmapOffset];
  v28 = 0;
  v22 = SESEndPointGetPrivateData();
  v23 = 0;
  if (v23 || [v22 length] <= 1)
  {
    v19 = v23;
  }

  else
  {
    v25 = [[NSMutableData alloc] initWithData:v22];
    v26 = *[v22 bytes];
    buf[0] = v26 | [v7 getMaskToIndicateSlotIdListSaved];
    [v25 replaceBytesInRange:0 withBytes:{1, buf}];
    v27 = *([v22 bytes] + 1) & ~(1 << a3);
    [v25 replaceBytesInRange:1 withBytes:{1, &v27}];
    [v7 signalingBitmapOffset];
    SESEndPointSetPrivateData();
    v19 = 0;
  }

LABEL_12:

  return v19;
}

id sub_100397E50(uint64_t a1, unsigned int a2, unsigned int a3, void *a4)
{
  v37 = a4;
  objc_opt_self();
  v42 = 0;
  v6 = SESEndPointList();
  v7 = 0;
  if (v7)
  {
    v8 = v7;
    v9 = KmlLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v49 = "+[KmlEndpointManager freeSlotIdIndices:reserveSlotIdIndices:forEndpointId:]";
      v50 = 1024;
      v51 = 282;
      v52 = 2112;
      v53 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s : %i : Error in getting endpoint list: %@", buf, 0x1Cu);
    }
  }

  else if ([v6 count])
  {
    v35 = __PAIR64__(a2, a3);
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = v6;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v39;
LABEL_7:
      v14 = 0;
      while (1)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v38 + 1) + 8 * v14);
        v16 = [v15 publicKeyIdentifier];
        v17 = KmlLogger();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v49 = "+[KmlEndpointManager freeSlotIdIndices:reserveSlotIdIndices:forEndpointId:]";
          v50 = 1024;
          v51 = 293;
          v52 = 2112;
          v53 = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s : %i : checking key with id: %@", buf, 0x1Cu);
        }

        if ([v16 isEqual:v37])
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v38 objects:v45 count:16];
          if (v12)
          {
            goto LABEL_7;
          }

          goto LABEL_15;
        }
      }

      v9 = v15;
      v18 = KmlLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v49 = "+[KmlEndpointManager freeSlotIdIndices:reserveSlotIdIndices:forEndpointId:]";
        v50 = 1024;
        v51 = 296;
        v52 = 2112;
        v53 = v37;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s : %i : key with id %@ exists", buf, 0x1Cu);
      }

      if (v9)
      {
        v19 = [v9 sharingTokenAvailabilityBitmap];

        if (v19)
        {
          v20 = [v9 sharingTokenAvailabilityBitmap];
          v21 = [v20 unsignedCharValue];
        }

        else
        {
          v21 = 254;
        }

        v28 = KmlLogger();
        v6 = v36;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v49 = "+[KmlEndpointManager freeSlotIdIndices:reserveSlotIdIndices:forEndpointId:]";
          v50 = 1024;
          v51 = 311;
          v52 = 1024;
          LODWORD(v53) = v21;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s : %i : Available bitmap: %02X", buf, 0x18u);
        }

        v29 = KmlLogger();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v49 = "+[KmlEndpointManager freeSlotIdIndices:reserveSlotIdIndices:forEndpointId:]";
          v50 = 1024;
          v51 = 313;
          v52 = 1024;
          LODWORD(v53) = v35;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s : %i : Reserved indices %02X", buf, 0x18u);
        }

        v30 = KmlLogger();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v49 = "+[KmlEndpointManager freeSlotIdIndices:reserveSlotIdIndices:forEndpointId:]";
          v50 = 1024;
          v51 = 316;
          v52 = 1024;
          LODWORD(v53) = HIDWORD(v35);
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s : %i : Freed up indices %02X", buf, 0x18u);
        }

        v31 = KmlLogger();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v49 = "+[KmlEndpointManager freeSlotIdIndices:reserveSlotIdIndices:forEndpointId:]";
          v50 = 1024;
          v51 = 319;
          v52 = 1024;
          LODWORD(v53) = v21 & ~v35 | HIDWORD(v35);
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s : %i : BitMap with 0s for pending invitations: %02X", buf, 0x18u);
        }

        v32 = [v9 publicKeyIdentifier];
        v33 = kmlUtilHexStringFromData();
        v8 = SESEndPointUpdateWithBlock();

        goto LABEL_37;
      }
    }

    else
    {
LABEL_15:
    }

    v22 = KmlLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v49 = "+[KmlEndpointManager freeSlotIdIndices:reserveSlotIdIndices:forEndpointId:]";
      v50 = 1024;
      v51 = 302;
      v52 = 2112;
      v53 = v37;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s : %i : Owner key with id %@, does not exist", buf, 0x1Cu);
    }

    v9 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v43 = NSLocalizedDescriptionKey;
    v23 = [NSString stringWithUTF8String:KmlErrorString()];
    v44 = v23;
    v24 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v8 = [NSError errorWithDomain:v9 code:210 userInfo:v24];

    v6 = v36;
  }

  else
  {
    v25 = KmlLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v49 = "+[KmlEndpointManager freeSlotIdIndices:reserveSlotIdIndices:forEndpointId:]";
      v50 = 1024;
      v51 = 287;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s : %i : No keys in the SE database", buf, 0x12u);
    }

    v9 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v46 = NSLocalizedDescriptionKey;
    v26 = [NSString stringWithUTF8String:KmlErrorString()];
    v47 = v26;
    v27 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v8 = [NSError errorWithDomain:v9 code:210 userInfo:v27];
  }

LABEL_37:

  return v8;
}

void sub_100398628(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [NSNumber numberWithUnsignedChar:v2];
  [v3 setSharingTokenAvailabilityBitmap:v4];
}

void sub_1003986A0()
{
  objc_opt_self();
  [SESBootUUID setFirstLaunchAfterBootDoneForKey:@"com.apple.sesd.kml.canReportGeneralStats"];
  v0 = KmlLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v3 = 136315394;
    v4 = "+[KmlEndpointManager handleFirstUnlockNotification]";
    v5 = 1024;
    v6 = 339;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "%s : %i : Set up statistics reporting", &v3, 0x12u);
  }

  v1 = +[BGSystemTaskScheduler sharedScheduler];
  v2 = dispatch_get_global_queue(21, 0);
  [v1 registerForTaskWithIdentifier:@"com.apple.sesd.kml.statsReportingActivity" usingQueue:v2 launchHandler:&stru_1004D2388];
}

void sub_1003987BC(id a1, BGRepeatingSystemTask *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v3 UUIDString];

  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(BGRepeatingSystemTask *)v2 identifier];
    v7 = 136315906;
    v8 = "+[KmlEndpointManager handleFirstUnlockNotification]_block_invoke";
    v9 = 1024;
    v10 = 346;
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : (%@) Handling statistics reporting for task: %@", &v7, 0x26u);
  }

  sub_1003988E8(KmlEndpointManager, v2, v4);
}

void sub_1003988E8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v58 = 0;
  v59 = &v58;
  v60 = 0x3020000000;
  v61 = 0;
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_1003992D4;
  v55[3] = &unk_1004C24F8;
  v6 = v5;
  v56 = v6;
  v57 = &v58;
  v48 = v4;
  [v4 setExpirationHandler:v55];
  if (([SESBootUUID isFirstLaunchAfterBootForKey:@"com.apple.sesd.kml.canReportGeneralStats"]& 1) != 0)
  {
    v7 = KmlLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v64 = "+[KmlEndpointManager reportEndpointStatistics:identifier:]";
      v65 = 1024;
      v66 = 437;
      v67 = 2112;
      v68 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s : %i : (%@) Statistics reporting can only happen after first unlock", buf, 0x1Cu);
    }

    goto LABEL_13;
  }

  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v64 = "+[KmlEndpointManager reportEndpointStatistics:identifier:]";
    v65 = 1024;
    v66 = 362;
    v67 = 2112;
    v68 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s : %i : (%@) Begin reporting endpoint statistics", buf, 0x1Cu);
  }

  v54 = 0;
  v9 = SESEndPointListWithSession();
  v7 = 0;
  v10 = KmlLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v9 count];
    *buf = 136315906;
    v64 = "+[KmlEndpointManager reportEndpointStatistics:identifier:]";
    v65 = 1024;
    v66 = 376;
    v67 = 2112;
    v68 = v6;
    v69 = 2048;
    v70 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s : %i : (%@) Reporting endpoint stats for %ld endpoints", buf, 0x26u);
  }

  v43 = v9;

  if (v7)
  {
    v46 = 0;
    v47 = 0;
    v44 = 0;
    v12 = 0;
    v13 = 0;
    LODWORD(v14) = 0;
    v15 = 0;
    v16 = 0;
    v17 = 1;
    goto LABEL_10;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v9;
  v14 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (!v14)
  {
    v46 = 0;
    v47 = 0;
    v44 = 0;
    v12 = 0;
    v13 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 1;
    goto LABEL_67;
  }

  v46 = 0;
  v47 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v21 = *v51;
  v17 = 1;
  while (2)
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v51 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v50 + 1) + 8 * i);
      if (*(v59 + 40) == 1)
      {
        v34 = KmlLogger();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = [v48 identifier];
          *buf = 136315906;
          v64 = "+[KmlEndpointManager reportEndpointStatistics:identifier:]";
          v65 = 1024;
          v66 = 381;
          v67 = 2112;
          v68 = v6;
          v69 = 2112;
          v70 = v35;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s : %i : (%@) Honor Defer request from system for task: %@", buf, 0x26u);
        }

        v49 = 0;
        v36 = [v48 setTaskExpiredWithRetryAfter:&v49 error:0.0];
        v37 = v49;
        if ((v36 & 1) == 0)
        {
          v38 = KmlLogger();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v39 = @"Unknown";
            v64 = "+[KmlEndpointManager reportEndpointStatistics:identifier:]";
            if (v37)
            {
              v39 = v37;
            }

            v65 = 1024;
            v66 = 383;
            v67 = 2112;
            v68 = v6;
            v69 = 2112;
            v70 = v39;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%s : %i : (%@) Failed to expire task with error: %@", buf, 0x26u);
          }

          [v48 setTaskCompleted];
        }

        goto LABEL_16;
      }

      v24 = KmlLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [v23 endPointType];
        *buf = 136315906;
        v64 = "+[KmlEndpointManager reportEndpointStatistics:identifier:]";
        v65 = 1024;
        v66 = 388;
        v67 = 2112;
        v68 = v6;
        v69 = 2048;
        v70 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s : %i : (%@) Processing ep of type: %ld", buf, 0x26u);
      }

      v26 = [v23 endPointType];
      if (v26 == 3)
      {
        ++v46;
        continue;
      }

      if (v26 == 2)
      {
        ++v47;
        continue;
      }

      if (v26 != 1)
      {
        continue;
      }

      v27 = [v23 subjectIdentifier];
      v28 = sub_1003975A8(KmlEndpointManager, v27);

      v29 = [KmlDeviceConfigurationData alloc];
      v30 = [v23 deviceConfiguration];
      v31 = [v29 initWithData:v30];

      v32 = KmlLogger();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 136315906;
        v64 = "+[KmlEndpointManager reportEndpointStatistics:identifier:]";
        v65 = 1024;
        v66 = 393;
        v67 = 2112;
        v68 = v6;
        v69 = 2112;
        v70 = v28;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%s : %i : (%@) Received device config for ep of type: %@", buf, 0x26u);
      }

      if ([(__CFString *)v28 isEqualToString:@"OWNR"])
      {
        if ([v31 readerSupportsNfc] && objc_msgSend(v31, "readerSupportsUwb"))
        {
          ++BYTE4(v41);
          if ((v17 & 1) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_50;
        }

        if ([v31 readerSupportsUwb])
        {
          ++BYTE4(v42);
          if ((v17 & 1) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_50;
        }

        LODWORD(v42) = v42 + 1;
LABEL_49:
        if ((v17 & 1) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      if (![(__CFString *)v28 isEqualToString:@"FRND"])
      {
        goto LABEL_49;
      }

      if ([v31 readerSupportsNfc] && objc_msgSend(v31, "readerSupportsUwb"))
      {
        LODWORD(v40) = v40 + 1;
        if ((v17 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      else if ([v31 readerSupportsUwb])
      {
        LOBYTE(v41) = v41 + 1;
        if ((v17 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      else
      {
        ++HIDWORD(v40);
        if ((v17 & 1) == 0)
        {
LABEL_52:
          v17 = 0;
          goto LABEL_53;
        }
      }

LABEL_50:
      v33 = [v23 environment];
      v17 = [v33 isEqualToString:@"P"];

LABEL_53:
    }

    v14 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

  v16 = v42 << 24;
  LODWORD(v14) = BYTE4(v41) << 16;
  v15 = BYTE4(v42) << 8;
  v13 = HIDWORD(v40) << 24;
  v44 = v40 << 16;
  v12 = v41 << 8;
LABEL_67:

  v7 = 0;
LABEL_10:
  v18 = KmlLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v64 = "+[KmlEndpointManager reportEndpointStatistics:identifier:]";
    v65 = 1024;
    v66 = 429;
    v67 = 2112;
    v68 = v6;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s : %i : (%@) Reporting general statistics", buf, 0x1Cu);
  }

  sub_100369980(KmlAnalyticsLogger, (v15 | v14 | v16), v12 | v44 | v13, v46, v47, v17 & 1, v6);
LABEL_13:

  v19 = KmlLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [v48 identifier];
    *buf = 136315906;
    v64 = "+[KmlEndpointManager reportEndpointStatistics:identifier:]";
    v65 = 1024;
    v66 = 440;
    v67 = 2112;
    v68 = v6;
    v69 = 2112;
    v70 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s : %i : (%@) Finished reporting endpoint stats for task: %@", buf, 0x26u);
  }

  [v48 setTaskCompleted];
LABEL_16:

  _Block_object_dispose(&v58, 8);
}

void sub_1003992D4(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 136315650;
    v5 = "+[KmlEndpointManager reportEndpointStatistics:identifier:]_block_invoke";
    v6 = 1024;
    v7 = 357;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : (%@) DAS Expiration requested", &v4, 0x1Cu);
  }

  *(*(*(a1 + 40) + 8) + 40) = 1;
}

void *sub_1003993B8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  objc_opt_self();
  v27 = 0;
  v5 = SESEndPointList();
  v6 = 0;
  if (v6)
  {
    v7 = KmlLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v32 = "+[KmlEndpointManager getEndpointForKeyIdentifier:withError:]";
      v33 = 1024;
      v34 = 450;
      v35 = 2112;
      v36 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s : %i : Error in getting endpoint list: %@", buf, 0x1Cu);
    }

    if (a3)
    {
      v8 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
      v9 = [v6 userInfo];
      *a3 = [NSError errorWithDomain:v8 code:210 userInfo:v9];

      a3 = 0;
LABEL_22:
    }
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = v5;
    v8 = v5;
    v10 = [v8 countByEnumeratingWithState:&v23 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [v14 publicKeyIdentifier];
          v16 = [v15 isEqualToData:v4];

          if (v16)
          {
            v20 = KmlLogger();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v32 = "+[KmlEndpointManager getEndpointForKeyIdentifier:withError:]";
              v33 = 1024;
              v34 = 459;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s : %i : Found our endpoint", buf, 0x12u);
            }

            a3 = v14;
            goto LABEL_21;
          }
        }

        v11 = [v8 countByEnumeratingWithState:&v23 objects:v30 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = KmlLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "+[KmlEndpointManager getEndpointForKeyIdentifier:withError:]";
      v33 = 1024;
      v34 = 465;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s : %i : Failed to find endpoint", buf, 0x12u);
    }

    if (a3)
    {
      v8 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
      v28 = NSLocalizedDescriptionKey;
      v18 = [NSString stringWithUTF8String:KmlErrorString()];
      v29 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      *a3 = [NSError errorWithDomain:v8 code:210 userInfo:v19];

      a3 = 0;
LABEL_21:
      v5 = v22;
      goto LABEL_22;
    }

    v5 = v22;
  }

  return a3;
}

void *sub_1003997A8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  objc_opt_self();
  v36 = 0;
  v11 = SESEndPointListWithSession();
  v12 = 0;
  if (v12)
  {
    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v41 = "+[KmlEndpointManager getUnrevokedEndpointForReaderIdentifier:session:seid:withError:]";
      v42 = 1024;
      v43 = 481;
      v44 = 2112;
      v45 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s : %i : Error in getting endpoint list: %@", buf, 0x1Cu);
    }

    if (a5)
    {
      v14 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
      v15 = [v12 userInfo];
      *a5 = [NSError errorWithDomain:v14 code:210 userInfo:v15];

      a5 = 0;
LABEL_25:
    }
  }

  else
  {
    v29 = a5;
    v30 = v11;
    v31 = v9;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = v11;
    v16 = [v14 countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v33;
      while (2)
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v32 + 1) + 8 * i);
          v21 = [v20 readerIdentifier];
          if ([v21 isEqualToData:v8])
          {
            v22 = [v20 revocationAttestation];

            if (!v22)
            {
              v26 = KmlLogger();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                v41 = "+[KmlEndpointManager getUnrevokedEndpointForReaderIdentifier:session:seid:withError:]";
                v42 = 1024;
                v43 = 490;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s : %i : Found our endpoint", buf, 0x12u);
              }

              a5 = v20;
              goto LABEL_24;
            }
          }

          else
          {
          }
        }

        v17 = [v14 countByEnumeratingWithState:&v32 objects:v39 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v23 = KmlLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v41 = "+[KmlEndpointManager getUnrevokedEndpointForReaderIdentifier:session:seid:withError:]";
      v42 = 1024;
      v43 = 496;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s : %i : Failed to find endpoint", buf, 0x12u);
    }

    a5 = v29;
    if (v29)
    {
      v14 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
      v37 = NSLocalizedDescriptionKey;
      v24 = [NSString stringWithUTF8String:KmlErrorString()];
      v38 = v24;
      v25 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      *v29 = [NSError errorWithDomain:v14 code:210 userInfo:v25];

      a5 = 0;
LABEL_24:
      v11 = v30;
      v9 = v31;
      goto LABEL_25;
    }

    v11 = v30;
    v9 = v31;
  }

  return a5;
}

id sub_100399BE8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    v3 = [v2 subjectIdentifier];
    v4 = sub_1003975A8(KmlEndpointManager, v3);
    v5 = v4;
    if (v4)
    {
      v6 = [v4 isEqualToString:@"OWNR"];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_100399CD4(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 136315394;
    v4 = "[KmlEndpointManager saveTrackingReceipt:otherJSONData:]_block_invoke";
    v5 = 1024;
    v6 = 886;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Received tracking receipt for UWB capable friend key. Kick first approach.", &v3, 0x12u);
  }

  sub_100379170(KmlPairingTransportFactory, *(*(a1 + 32) + 8));
}

void sub_100399DA4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a3;
  if (a1)
  {
    *a5 = a2;
    a5[1] = 0;
    a5[2] = 0;
    a5[3] = 0;
    v10 = sub_1003E01E8(a1);
    if (v10)
    {
      v11 = KmlLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v20[0]) = 136315650;
        *(v20 + 4) = "[KmlEndpointManager hasUpgradeAvailableForType:versions:withError:]";
        WORD6(v20[0]) = 1024;
        *(v20 + 14) = 1230;
        WORD1(v20[1]) = 2112;
        *(&v20[1] + 4) = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s : %i : Error getting endpoint - %@", v20, 0x1Cu);
      }

      if (a4)
      {
        v12 = v10;
        *a4 = v10;
      }
    }

    else if (sub_1003E4FD8(a1))
    {
      v13 = *(a1 + 136);
      v14 = sub_100399BE8(KmlEndpointManager, *(a1 + 24));
      if (v13)
      {
        [v13 hasUpgradeForVersionType:a2 versions:v9 isOwnerPairedKey:v14];
      }

      else
      {
        memset(v20, 0, sizeof(v20));
      }

      v19 = v20[1];
      *a5 = v20[0];
      *(a5 + 1) = v19;
    }

    else
    {
      v15 = KmlLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v20[0]) = 136315394;
        *(v20 + 4) = "[KmlEndpointManager hasUpgradeAvailableForType:versions:withError:]";
        WORD6(v20[0]) = 1024;
        *(v20 + 14) = 1239;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s : %i : Key attestation not read, unable to migrate until it is read", v20, 0x12u);
      }

      if (a4)
      {
        v16 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
        v21 = NSLocalizedDescriptionKey;
        v17 = [NSString stringWithUTF8String:KmlErrorString()];
        v22 = v17;
        v18 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        *a4 = [NSError errorWithDomain:v16 code:220 userInfo:v18];
      }
    }
  }

  else
  {
    *a5 = 0u;
    *(a5 + 1) = 0u;
  }
}

void sub_10039A044(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 136315650;
    v9 = "[KmlEndpointManager upgradeVersionType:version:upgradeInformation:]_block_invoke";
    v10 = 1024;
    v11 = 1326;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Prewarm result : %@", &v8, 0x1Cu);
  }

  v5 = *(a1 + 32);
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(v5 + 19);
    v7 = sesErrorToKmlError();
    [WeakRetained handleUpgradeCompletionWithStatus:v7];
  }

  else
  {
    sub_1003E58F8(v5);
  }
}

void sub_10039A164(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setUpgradeEndpointJSONData:*(*(a1 + 32) + 112)];
  [v3 setTrackingRequest:*(a1 + 40)];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = v3;
}

void sub_10039A1C0(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setUpgradeEndpointJSONData:0];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = v3;
}

void sub_10039A20C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setVehicleSupportedVersionsData:*(a1 + 32)];
  v4 = *(a1 + 40);
  v5 = *(v4 + 24);
  *(v4 + 24) = v3;
}

void sub_10039A258(void *a1, void *a2)
{
  v3 = a2;
  [v3 setMailboxMapping:a1[4]];
  [v3 setDeviceConfiguration:*(a1[5] + 64)];
  [v3 setVehicleSupportedVersionsData:a1[6]];
  [v3 setTrackingRequest:a1[7]];
  v4 = sub_1003DE370(a1[8]);
  [v3 setMailboxSizesPlusAdditionalData:v4];

  v5 = a1[5];
  v6 = *(v5 + 24);
  *(v5 + 24) = v3;
}

void sub_10039A2F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) keyRole];
  [v3 setKeyRole:v4];

  v5 = *(a1 + 40);
  v6 = *(v5 + 24);
  *(v5 + 24) = v3;
}

void sub_10039A360(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDeviceConfiguration:*(*(a1 + 32) + 64)];
  if ([*(*(a1 + 32) + 80) length])
  {
    [v3 setBleIntroKey:*(*(a1 + 32) + 80)];
  }

  if ([*(*(a1 + 32) + 88) length])
  {
    [v3 setBleOOBKey:*(*(a1 + 32) + 88)];
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = v3;
}

void sub_10039A3F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1003BA3D0(*(a1 + 32));
  [v3 setAnonymizedDsid:v4];

  v5 = *(a1 + 40);
  v6 = *(v5 + 24);
  *(v5 + 24) = v3;
}

void sub_10039A55C(float a1)
{
  *(v3 - 224) = a1;
  *(v1 + 4) = v2;
  *(v3 - 212) = 1024;
}

uint64_t sub_10039A570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  *(v29 - 144) = 0;
  *(v29 - 136) = 0;
  *(v29 - 135) = a28;
  *(v29 - 132) = *(&a28 + 3);
  *(v29 - 128) = a12;
  *(v29 - 120) = a13;
  return v28;
}

uint64_t sub_10039A5A0()
{
  v2 = v1[5];
  *v1 = v1[4];
  v1[1] = v2;
  return v0;
}

void sub_10039A5B4(float a1)
{
  *(v2 - 144) = a1;
  *(v2 - 140) = v1;
  *(v2 - 132) = 1024;
}

void sub_10039A61C(float a1)
{
  *(v3 - 144) = a1;
  *(v2 + 4) = v1;
  *(v3 - 132) = 1024;
}

void sub_10039A698(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0x1Cu);
}

void sub_10039A718(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_INFO, a4, a5, 0x12u);
}

id sub_10039A7CC(uint64_t a1)
{

  return [v1 addObject:a1];
}

BOOL sub_10039A8BC(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

BOOL sub_10039A8D4(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_10039A928(uint64_t a1@<X8>)
{
  *(v2 + 14) = v1;
  *(v3 - 158) = 2112;
  *(v2 + 20) = a1;
}

void sub_10039A980(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setTrackingReceipt:*(*(a1 + 32) + 32)];
  [v4 setDeviceConfiguration:*(*(a1 + 32) + 64)];
  v5 = *(a1 + 32);
  if (*(v5 + 72))
  {
    [v4 setReaderConfigID:?];
    v5 = *(a1 + 32);
  }

  if ([*(v5 + 80) length])
  {
    [v4 setBleIntroKey:*(*(a1 + 32) + 80)];
  }

  if ([*(*(a1 + 32) + 88) length])
  {
    [v4 setBleOOBKey:*(*(a1 + 32) + 88)];
  }

  if ([*(*(a1 + 32) + 96) length])
  {
    [v4 setSlotIdentifier:*(*(a1 + 32) + 96)];
    if ([*(*(a1 + 32) + 88) length])
    {
      if ([*(*(a1 + 32) + 80) length])
      {
        v6 = KmlLogger();
        if (sub_10036DCF8(v6))
        {
          sub_1003939BC();
          sub_100390B00();
          _os_log_impl(v7, v8, v9, v10, v11, 0x12u);
        }

        v12 = *(*(a1 + 32) + 96);
        v2 = kmlUtilGetDckIdFromSlotId();
        [sub_10039A78C() setBleDCKIdentifier:?];
      }
    }
  }

  if (sub_1003E225C(*(a1 + 32)))
  {
    v13 = KmlLogger();
    if (sub_10036DCF8(v13))
    {
      sub_1003939BC();
      sub_100390B00();
      _os_log_impl(v14, v15, v16, v17, v18, 0x12u);
    }

    [sub_10039A93C() setSharingAttestationData:?];
    [sub_10039A93C() setOwnerEphemeralKey:?];
    [sub_10039A93C() setSharingEncryptedData:?];
    [sub_10039A93C() setAdditionalAttestationsDict:?];
  }

  v19 = *(a1 + 32);
  v20 = *(v19 + 24);
  *(v19 + 24) = v4;
}

void sub_10039B0F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 8) | 4) == 0xD)
  {
    objc_storeStrong((v2 + 88), *(a1 + 40));
    v9 = *(a1 + 32);
    if (*(v9 + 8) == 13)
    {
      *(v9 + 8) = 9;
      v9 = *(a1 + 32);
    }

    sub_1003E97B8(v9, 10);
  }

  else
  {
    v3 = KmlLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v13 = "[KmlBluetoothPairingTransport startTransactionForKeyWithIdentifier:]_block_invoke";
      v14 = 1024;
      v15 = 156;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : Transport not ready to start transaction", buf, 0x12u);
    }

    v4 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v5 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v11 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v7 = [NSError errorWithDomain:v4 code:25 userInfo:v6];

    v8 = [*(a1 + 32) delegate];
    [v8 handleTransactionStartResult:v7];
  }
}

id sub_10039B4AC(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[KmlBluetoothPairingTransport sendApdu:]_block_invoke";
    v6 = 1024;
    v7 = 180;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : ", &v4, 0x12u);
  }

  return [*(*(a1 + 32) + 24) sendAPDU:*(a1 + 40)];
}

void sub_10039B5F0(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 136315394;
    v4 = "[KmlBluetoothPairingTransport reset]_block_invoke";
    v5 = 1024;
    v6 = 188;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Reset requested", &v3, 0x12u);
  }

  sub_1003E9918(*(a1 + 32));
}

id sub_10039B74C(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 136315650;
    v6 = "[KmlBluetoothPairingTransport pairingEndedWithResult:]_block_invoke";
    v7 = 1024;
    v8 = 196;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Report pairing result (%@) to BT transport", &v5, 0x1Cu);
  }

  return [*(*(a1 + 40) + 24) pairingEndedWithResult:*(a1 + 32)];
}

void sub_10039B82C(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  if (v2 > *(v1 + 8))
  {

    sub_1003E9A1C(v1, v2);
  }

  else
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 136315394;
      v6 = "[KmlBluetoothPairingTransport setCurrentState:]_block_invoke";
      v7 = 1024;
      v8 = 212;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Current state higher than new state. Do nothing", &v5, 0x12u);
    }
  }
}

void sub_10039B96C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10039BA38;
  block[3] = &unk_1004C24A8;
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void sub_10039BA38(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = KmlLogger();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      v8 = *(a1 + 32);
      v10 = 136315650;
      v11 = "[KmlBluetoothPairingTransport setCurrentState_sync:]_block_invoke_2";
      v12 = 1024;
      v13 = 235;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : startSecureElementManagerSession Error: %@", &v10, 0x1Cu);
    }

    objc_storeStrong((*(a1 + 40) + 48), *(a1 + 32));
    v9 = *(a1 + 40);
    goto LABEL_9;
  }

  if (v4)
  {
    v10 = 136315394;
    v11 = "[KmlBluetoothPairingTransport setCurrentState_sync:]_block_invoke";
    v12 = 1024;
    v13 = 240;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : SecureElementManagerSession started", &v10, 0x12u);
  }

  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = (a1 + 40);
  [v5 setDelegate:v6];
  objc_storeStrong(*v7 + 5, v7[1]);
  if (*(*v7 + 1) == 1)
  {
LABEL_9:
    sub_1003E97B8();
    return;
  }

  sub_10039D824(v7);
}

void sub_10039BBB8(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 BluetoothLoyaltyAndPaymentSessionTimeLimit];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10039BC78;
  v6[3] = &unk_1004D1C10;
  v6[4] = *(a1 + 32);
  v3 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v6 block:?];
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  *(v4 + 64) = v3;
}

void sub_10039BC78(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10039D6CC;
  block[3] = &unk_1004C08D8;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_10039BCEC(uint64_t a1)
{
  [*(*(a1 + 32) + 64) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;

  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[KmlBluetoothPairingTransport cancelEndTransactionTimer]_block_invoke";
    v7 = 1024;
    v8 = 362;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : endTransactionTimer cancelled", &v5, 0x12u);
  }
}

void sub_10039BDC4(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 BluetoothHceSessionTimeLimit];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10039BE84;
  v6[3] = &unk_1004D1C10;
  v6[4] = *(a1 + 32);
  v3 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v6 block:?];
  v4 = *(a1 + 32);
  v5 = *(v4 + 72);
  *(v4 + 72) = v3;
}

void sub_10039BE84(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10039BEF8;
  block[3] = &unk_1004C08D8;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_10039BEF8(uint64_t a1)
{
  if ((*(*(a1 + 32) + 8) | 4) == 6)
  {
    sub_10039D8C8();
    v1 = *v2;
  }

  else
  {
    v1 = KmlLogger();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v2 = 136315394;
      *&v2[4] = "[KmlBluetoothPairingTransport startHceTimer]_block_invoke";
      v3 = 1024;
      v4 = 387;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s : %i : hce session timer fired, but we had moved to next state. So Ignore", v2, 0x12u);
    }
  }
}

void sub_10039BFD4(uint64_t a1)
{
  [*(*(a1 + 32) + 72) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  *(v2 + 72) = 0;

  *(*(a1 + 32) + 80) = 0;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[KmlBluetoothPairingTransport cancelHceTimer]_block_invoke";
    v7 = 1024;
    v8 = 406;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : hceSessionTimer cancelled", &v5, 0x12u);
  }
}

void sub_10039C14C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 40);
  v4 = KmlLogger();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v2 == v3)
  {
    if (v5)
    {
      *buf = 136315394;
      v16 = "[KmlBluetoothPairingTransport secureElementManagerSessionDidEndUnexpectedly:]_block_invoke";
      v17 = 1024;
      v18 = 503;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Received SessionDidEndUnexpectedly callback for active session. Bailing out.", buf, 0x12u);
    }

    v6 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    if (*(*(a1 + 40) + 80))
    {
      v7 = 23;
    }

    else
    {
      v7 = 24;
    }

    v8 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v14 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v10 = [NSError errorWithDomain:v6 code:v7 userInfo:v9];
    v11 = *(a1 + 40);
    v12 = *(v11 + 48);
    *(v11 + 48) = v10;

    sub_1003E97B8(*(a1 + 40), 9);
  }

  else
  {
    if (v5)
    {
      *buf = 136315394;
      v16 = "[KmlBluetoothPairingTransport secureElementManagerSessionDidEndUnexpectedly:]_block_invoke";
      v17 = 1024;
      v18 = 499;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Received SessionDidEndUnexpectedly callback, but not for active session. Ignoring", buf, 0x12u);
    }
  }
}

void sub_10039C3E4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 handleIncomingApdu:*(a1 + 40) error:0];
}

void sub_10039C500(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 24);
  v5 = KmlLogger();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v3 == v4)
  {
    if (v6)
    {
      v8 = 136315394;
      v9 = "[KmlBluetoothPairingTransport btTxnSessionDidStartTransaction:result:]_block_invoke";
      v10 = 1024;
      v11 = 527;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : Received DidStartTransaction callback for active session.", &v8, 0x12u);
    }

    if (*(*v2 + 8) == 10)
    {
      sub_10039D980(a1, v2, *v2);
      return;
    }

    v5 = KmlLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[KmlBluetoothPairingTransport btTxnSessionDidStartTransaction:result:]_block_invoke";
      v10 = 1024;
      v11 = 534;
      v7 = "%s : %i : We are not waiting for transaction to start. Ignore.";
      goto LABEL_9;
    }
  }

  else if (v6)
  {
    v8 = 136315394;
    v9 = "[KmlBluetoothPairingTransport btTxnSessionDidStartTransaction:result:]_block_invoke";
    v10 = 1024;
    v11 = 524;
    v7 = "%s : %i : Received DidStartTransaction callback, but not for active session. Ignoring";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v7, &v8, 0x12u);
  }
}

void sub_10039C770(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 24);
  v5 = KmlLogger();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v3 == v4)
  {
    if (v6)
    {
      v8 = 136315394;
      v9 = "[KmlBluetoothPairingTransport btTxnSessionDidEndTransaction:result:]_block_invoke";
      v10 = 1024;
      v11 = 546;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : Received DidEndTransaction callback for active session.", &v8, 0x12u);
    }

    sub_1003EA12C(*v2);
    if ((*(*v2 + 8) - 11) <= 1)
    {
      sub_10039DA04(a1, v2, *v2);
      return;
    }

    v5 = KmlLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[KmlBluetoothPairingTransport btTxnSessionDidEndTransaction:result:]_block_invoke";
      v10 = 1024;
      v11 = 554;
      v7 = "%s : %i : We are not waiting for transaction to stop. Ignore.";
      goto LABEL_4;
    }
  }

  else if (v6)
  {
    v8 = 136315394;
    v9 = "[KmlBluetoothPairingTransport btTxnSessionDidEndTransaction:result:]_block_invoke";
    v10 = 1024;
    v11 = 543;
    v7 = "%s : %i : Received DidEndTransaction callback, but not for active session. Ignoring";
LABEL_4:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v7, &v8, 0x12u);
  }
}

void sub_10039C9EC(void *a1)
{
  v1 = a1[5];
  if (a1[4] == *(v1 + 24))
  {
    if ((*(v1 + 8) | 4) == 6)
    {
      sub_10039DA88(a1 + 5, a1);
    }

    else
    {
      sub_10039DB9C();
    }
  }

  else
  {
    v2 = KmlLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = 136315394;
      v4 = "[KmlBluetoothPairingTransport btHceTxnSessionDidStartEmulation:result:]_block_invoke";
      v5 = 1024;
      v6 = 563;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Received DidStartEmulation callback, but not for active session. Ignoring", &v3, 0x12u);
    }
  }
}

void sub_10039CBB0(void *a1)
{
  v2 = a1 + 5;
  v3 = a1[4];
  v4 = *(a1[5] + 24);
  v5 = KmlLogger();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v3 == v4)
  {
    if (v6)
    {
      v10 = 136315394;
      v11 = "[KmlBluetoothPairingTransport btHceTxnSessionDidStopEmulation:result:]_block_invoke";
      v12 = 1024;
      v13 = 593;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : Received DidStopEmulation callback for active session.", &v10, 0x12u);
    }

    v8 = *(*v2 + 8);
    if (v8 != 13)
    {
      if ((v8 - 3) >= 2)
      {
        if (v8 != 12)
        {
          sub_10039DC8C(v2, a1);
          return;
        }

        v9 = 13;
      }

      else
      {
        v9 = 5;
      }

      sub_1003E97B8(*v2, v9);
      return;
    }

    v5 = KmlLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[KmlBluetoothPairingTransport btHceTxnSessionDidStopEmulation:result:]_block_invoke";
      v12 = 1024;
      v13 = 599;
      v7 = "%s : %i : Transaction emulation is already stopped. No-op.";
      goto LABEL_9;
    }
  }

  else if (v6)
  {
    v10 = 136315394;
    v11 = "[KmlBluetoothPairingTransport btHceTxnSessionDidStopEmulation:result:]_block_invoke";
    v12 = 1024;
    v13 = 590;
    v7 = "%s : %i : Received DidStopEmulation callback, but not for active session. Ignoring";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v7, &v10, 0x12u);
  }
}

void sub_10039CE48(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 24);
  v4 = KmlLogger();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v2 == v3)
  {
    if (v5)
    {
      v6 = *(a1 + 48);
      v14 = 136315650;
      v15 = "[KmlBluetoothPairingTransport btHceTxnSessionDidEndUnexpectedly:result:]_block_invoke";
      v16 = 1024;
      v17 = 617;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Received DidEndUnexpectedly callback for active session. Result - %@", &v14, 0x1Cu);
    }

    v7 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v8 = [*(a1 + 48) userInfo];
    v9 = [NSError errorWithDomain:v7 code:24 userInfo:v8];
    v10 = *(a1 + 40);
    v11 = *(v10 + 48);
    *(v10 + 48) = v9;

    v12 = *(a1 + 40);
    if (*(v12 + 8) > 8)
    {
      v13 = 13;
    }

    else
    {
      v13 = 9;
    }

    sub_1003E97B8(v12, v13);
  }

  else
  {
    if (v5)
    {
      v14 = 136315394;
      v15 = "[KmlBluetoothPairingTransport btHceTxnSessionDidEndUnexpectedly:result:]_block_invoke";
      v16 = 1024;
      v17 = 614;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Received DidEndUnexpectedly callback, but not for active session. Ignoring", &v14, 0x12u);
    }
  }
}

void sub_10039D0A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 24);
  v4 = KmlLogger();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v2 == v3)
  {
    if (v5)
    {
      *buf = 136315394;
      v17 = "[KmlBluetoothPairingTransport btHceTxnSessionRadioIsDisabled:]_block_invoke";
      v18 = 1024;
      v19 = 636;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Received Radio disabled callback for active session", buf, 0x12u);
    }

    v6 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v7 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v15 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v9 = [NSError errorWithDomain:v6 code:29 userInfo:v8];
    v10 = *(a1 + 40);
    v11 = *(v10 + 48);
    *(v10 + 48) = v9;

    v12 = *(a1 + 40);
    if (*(v12 + 8) > 8)
    {
      v13 = 13;
    }

    else
    {
      v13 = 9;
    }

    sub_1003E97B8(v12, v13);
  }

  else
  {
    if (v5)
    {
      *buf = 136315394;
      v17 = "[KmlBluetoothPairingTransport btHceTxnSessionRadioIsDisabled:]_block_invoke";
      v18 = 1024;
      v19 = 632;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Received Radio Disabled callback, but not for active session. Ignoring", buf, 0x12u);
    }
  }
}

void sub_10039D338(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 24);
  v4 = KmlLogger();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v2 == v3)
  {
    if (v5)
    {
      *buf = 136315394;
      v17 = "[KmlBluetoothPairingTransport btHceTxnSessionUwbUnavailable:]_block_invoke";
      v18 = 1024;
      v19 = 655;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Received UWB unavailable callback for active session", buf, 0x12u);
    }

    v6 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v7 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v15 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v9 = [NSError errorWithDomain:v6 code:30 userInfo:v8];
    v10 = *(a1 + 40);
    v11 = *(v10 + 48);
    *(v10 + 48) = v9;

    v12 = *(a1 + 40);
    if (*(v12 + 8) > 8)
    {
      v13 = 13;
    }

    else
    {
      v13 = 9;
    }

    sub_1003E97B8(v12, v13);
  }

  else
  {
    if (v5)
    {
      *buf = 136315394;
      v17 = "[KmlBluetoothPairingTransport btHceTxnSessionUwbUnavailable:]_block_invoke";
      v18 = 1024;
      v19 = 651;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Received UWB unavailable, but not for active session. Ignoring", buf, 0x12u);
    }
  }
}

void sub_10039D624(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_impl(a1, v15, OS_LOG_TYPE_INFO, a4, &buf, 0x12u);
}

void sub_10039D644(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 0x12u);
}

void sub_10039D664(uint64_t a1)
{
  v3 = *(*v1 + 48);
  *(*v1 + 48) = a1;
}

void sub_10039D698(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 0x12u);
}

void sub_10039D6CC(uint64_t a1)
{
  v4 = KmlLogger();
  if (sub_100057AEC(v4))
  {
    sub_10036BED0();
    v17 = 343;
    sub_10036DBA0(&_mh_execute_header, v5, v6, "%s : %i : Transaction will be ended due to time out.", v16);
  }

  v7 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
  v8 = *(v2 + 1128);
  KmlErrorString();
  [sub_100372244() stringWithUTF8String:NSLocalizedDescriptionKey];
  objc_claimAutoreleasedReturnValue();
  sub_100372278();
  sub_100372228();
  v10 = [v9 dictionaryWithObjects:? forKeys:? count:?];
  v11 = [NSError errorWithDomain:v7 code:23 userInfo:v10];
  v12 = *(a1 + 32);
  v13 = *(v12 + 48);
  *(v12 + 48) = v11;

  sub_1003E9834(*(a1 + 32));
  v14 = *(a1 + 32);
  v15 = *(v14 + 64);
  *(v14 + 64) = 0;

  sub_1003722A4();
}

void sub_10039D824(uint64_t *a1)
{
  v3 = KmlLogger();
  if (sub_100057AEC(v3))
  {
    sub_10036DB8C();
    v7 = 244;
    sub_10036DBA0(&_mh_execute_header, v4, v5, "%s : %i : state changed while we were trying to get SEM session. cleanup to make sure we are not leaking session", v6);
  }

  sub_1003E9918(*a1);
}

void sub_10039D8C8()
{
  sub_100390BC4();
  v3 = KmlLogger();
  if (sub_10036DCF8(v3))
  {
    sub_10036DB8C();
    sub_10039D644(&_mh_execute_header, v4, v5, "%s : %i : Ending hce session due to time out.", v6, v7, v8, v9, v11);
  }

  sub_1003E9258(*v1);
  v10 = *v1;
  *v0 = *(*v1 + 72);
  *(v10 + 72) = 0;
}