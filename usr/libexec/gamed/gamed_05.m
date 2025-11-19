void sub_1000DBF64(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) result];
  (*(v1 + 16))(v1, v2);
}

void sub_1000DC24C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 16);

    v3();
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_10028CBB8();
    }
  }
}

void sub_1000DC554(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 16);

    v3();
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_10028CBF4();
    }
  }
}

void sub_1000DC8A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_10028CC30();
    }
  }
}

void sub_1000DCBBC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 16);

    v3();
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_10028CC6C();
    }
  }
}

void sub_1000DCF6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028CCA8();
    }
  }

  else if (![v5 count])
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "0 multiplyaer games loaded on this device.", v11, 2u);
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

void sub_1000DD40C(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 containsObject:*(a1 + 32)];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v5, v7);
  }
}

void sub_1000DD7E4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    *&buf[22] = 2112;
    v23 = v9;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "nearbyDiscovery playerFoundHandler called back. playerID: %@, deviceID: %@, discoveryInfo: %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v23) = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000DDA30;
  v16[3] = &unk_100365E38;
  v21 = buf;
  v17 = *(a1 + 32);
  v12 = v7;
  v18 = v12;
  v13 = v8;
  v19 = v13;
  v14 = v9;
  v20 = v14;
  [GKClientProxy enumerateClientsUsingBlock:v16];
  if ((*(*&buf[8] + 24) & 1) == 0)
  {
    if (!os_log_GKGeneral)
    {
      v15 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      sub_10028CD18();
    }
  }

  _Block_object_dispose(buf, 8);
}

void sub_1000DDA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000DDA30(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ((*(*(a1[8] + 8) + 24) & 1) == 0)
  {
    v8 = v5;
    v6 = [v5 bundleIdentifier];
    v7 = [v6 isEqualToString:a1[4]];

    v5 = v8;
    if (v7)
    {
      [v8 nearbyPlayerFoundForPlayerID:a1[5] deviceID:a1[6] discoveryInfo:a1[7]];
      v5 = v8;
      *(*(a1[8] + 8) + 24) = 1;
      *a3 = 1;
    }
  }
}

void sub_1000DDAD8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000DDC54;
  v10[3] = &unk_100365E88;
  v14 = &v15;
  v11 = *(a1 + 32);
  v7 = v5;
  v12 = v7;
  v8 = v6;
  v13 = v8;
  [GKClientProxy enumerateClientsUsingBlock:v10];
  if ((v16[3] & 1) == 0)
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      sub_10028CD80();
    }
  }

  _Block_object_dispose(&v15, 8);
}

void sub_1000DDC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000DDC54(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    v8 = v5;
    v6 = [v5 bundleIdentifier];
    v7 = [v6 isEqualToString:a1[4]];

    v5 = v8;
    if (v7)
    {
      [v8 nearbyPlayerLostForPlayerID:a1[5] deviceID:a1[6]];
      v5 = v8;
      *a3 = 1;
    }
  }
}

void sub_1000DDCEC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000DDE8C;
  v14[3] = &unk_100365E38;
  v19 = &v20;
  v15 = *(a1 + 32);
  v10 = v7;
  v16 = v10;
  v11 = v8;
  v17 = v11;
  v12 = v9;
  v18 = v12;
  [GKClientProxy enumerateClientsUsingBlock:v14];
  if ((v21[3] & 1) == 0)
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      sub_10028CDE8();
    }
  }

  _Block_object_dispose(&v20, 8);
}

void sub_1000DDE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000DDE8C(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ((*(*(a1[8] + 8) + 24) & 1) == 0)
  {
    v8 = v5;
    v6 = [v5 bundleIdentifier];
    v7 = [v6 isEqualToString:a1[4]];

    v5 = v8;
    if (v7)
    {
      [v8 nearbyDataReceivedForPlayerID:a1[5] deviceID:a1[6] data:a1[7]];
      v5 = v8;
      *a3 = 1;
    }
  }
}

uint64_t sub_1000DE250(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

void sub_1000DE26C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_10028CE8C();
    }
  }
}

void sub_1000DEAE0(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v19 = [a1[4] serverRepresentation];
  v7 = [GKGameCacheObject gameForGameDescriptor:"gameForGameDescriptor:context:" context:?];
  v8 = [NSPredicate predicateWithFormat:@"game = %@", v7];
  v9 = [a1[5] context];
  v18 = v8;
  [(GKCacheObject *)GKPlayerToInviteCacheObject deleteObjectsMatchingPredicate:v8 context:v9];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = a1[6];
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * v14);
        v16 = [(GKCacheObject *)[GKPlayerToInviteCacheObject alloc] initWithManagedObjectContext:v5];
        [(GKPlayerToInviteCacheObject *)v16 setGame:v7];
        v17 = [v15 playerID];
        [(GKPlayerToInviteCacheObject *)v16 setPlayerID:v17];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v6[2](v6);
}

void sub_1000DECD8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  [*(a1 + 32) bundleIdentifier];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DED8C;
  v5 = block[3] = &unk_100361770;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000DED8C(uint64_t a1)
{
  v2 = GKGetApplicationStateForBundleID(*(a1 + 32));
  if (v2 == 8 || (v3 = v2, GKLaunchApplicationWithIdentifier(*(a1 + 32), 0), v3 >= 4))
  {
    v4 = [GKClientProxy clientForBundleID:*(a1 + 32)];
    [v4 acceptMultiplayerGameInvite];
  }
}

id sub_1000DEF9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) deniedContactIDs];
  v5 = [v3 contactID];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[GKDeniedSuggestionsModifier nonDeniedRecipientsFromInitialRecipients:]_block_invoke";
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s filtering out: %@", &v11, 0x16u);
    }

    v9 = 0;
  }

  else
  {
    v9 = v3;
  }

  return v9;
}

void sub_1000DFB60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000DFD0C;
  v15[3] = &unk_1003610B8;
  v11 = *(a1 + 32);
  v5 = v11.i64[0];
  v16 = vextq_s8(v11, v11, 8uLL);
  [v4 performBlock:v15];

  v6 = +[GKDataRequestManager sharedManager];
  v7 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v8 = [v6 updateRequestWithPushToken:*(a1 + 48)];
  v9 = [*(a1 + 40) clientProxy];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000DFE3C;
  v12[3] = &unk_1003627C8;
  v13 = *(a1 + 32);
  v14 = v3;
  v10 = v3;
  [v7 issueRequest:v8 bagKey:@"gk-tb-create-session" clientProxy:v9 handler:v12];
}

void sub_1000DFD0C(uint64_t a1)
{
  v2 = [*(a1 + 32) clientProxy];
  v3 = [v2 bundleIdentifier];
  v4 = [*(a1 + 40) context];
  v5 = [GKGameCacheObject gameForBundleID:v3 context:v4];

  v6 = [v5 turnBasedSessionList];
  [v6 expire];

  v7 = +[GKClientProxy gameCenterClient];
  v8 = [v7 bundleIdentifier];
  v9 = [*(a1 + 40) context];
  v11 = [GKGameCacheObject gameForBundleID:v8 context:v9];

  v10 = [v11 turnBasedSessionList];
  [v10 expire];
}

uint64_t sub_1000DFE3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKey:@"session-id"];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:@"sessionID"];

  [*(a1 + 32) setError:v5];
  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_1000DFECC(id *a1)
{
  v2 = [a1[4] objectForKeyedSubscript:@"sessionID"];
  v3 = v2;
  if (v2)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000E0098;
    v13[3] = &unk_100360F00;
    v4 = a1[4];
    v13[4] = a1[5];
    v14 = v2;
    v15 = a1[4];
    [v4 perform:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000E0260;
    v12[3] = &unk_100361620;
    v5 = a1[4];
    v12[4] = a1[5];
    [v5 perform:v12];
  }

  if (a1[6])
  {
    v6 = a1[4];
    v7 = [a1[5] clientProxy];
    v8 = [v7 replyQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000E0308;
    v9[3] = &unk_100361270;
    v10 = a1[4];
    v11 = a1[6];
    [v6 notifyOnQueue:v8 block:v9];
  }
}

void sub_1000E0098(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = *(a1 + 40);
  v5 = [NSArray arrayWithObjects:&v10 count:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E01A4;
  v7[3] = &unk_100362408;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v4 getDetailsForTurnBasedMatchIDs:v5 includeGameData:1 handler:v7];
}

void sub_1000E01A4(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) error];

    if (!v6)
    {
      [*(a1 + 32) setError:v5];
    }
  }

  v7 = [v8 lastObject];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"result"];

  (*(*(a1 + 40) + 16))();
}

void sub_1000E0260(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000E02F8;
  v6[3] = &unk_1003626B0;
  v7 = v3;
  v5 = v3;
  [v4 getTurnBasedMatchesWithHandler:v6];
}

void sub_1000E0308(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"result"];
  if (v2)
  {
    goto LABEL_2;
  }

  v3 = [*(a1 + 32) error];

  if (!v3)
  {
    v2 = [NSError userErrorForCode:1 underlyingError:0];
    [*(a1 + 32) setError:v2];
LABEL_2:
  }

  v4 = *(a1 + 40);
  v6 = [*(a1 + 32) objectForKeyedSubscript:@"result"];
  v5 = [*(a1 + 32) error];
  (*(v4 + 16))(v4, v6, v5);
}

void sub_1000E04D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(GKService *)GKGameServicePrivate serviceFromService:*(a1 + 32)];
  v5 = [*(a1 + 40) allObjects];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E05BC;
  v7[3] = &unk_100362408;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v4 getGameMetadataForBundleIDs:v5 handler:v7];
}

void sub_1000E05BC(uint64_t a1, void *a2)
{
  v3 = [a2 _gkMapDictionaryWithKeyPath:@"bundleIdentifier"];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 bundleID];
        v11 = [v3 objectForKeyedSubscript:v10];
        [v9 setGame:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000E0AEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleID];
  if (v4)
  {
    v5 = [v3 bundleVersion];
    if (v5)
    {
      v6 = [*(a1 + 32) objectForKeyedSubscript:v4];
      if (!v6)
      {
        v6 = [NSMutableSet setWithCapacity:*(a1 + 48)];
        [*(a1 + 32) setObject:v6 forKeyedSubscript:v4];
      }

      v7 = [v3 shortBundleVersion];
      v8 = [NSMutableDictionary dictionaryWithObject:v5 forKey:@"bundleVersion"];
      v9 = v8;
      if (v7)
      {
        [v8 setObject:v7 forKeyedSubscript:@"shortBundleVersion"];
      }

      v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 platform]);
      [v9 setObject:v10 forKeyedSubscript:@"platform"];

      [v6 addObject:v9];
      if (!os_log_GKGeneral)
      {
        v11 = GKOSLoggers();
      }

      v12 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "bundle version dict %@", buf, 0xCu);
      }

      if (v7)
      {
        v13 = v7;
      }

      else
      {
        v13 = v5;
      }

      v14 = [NSString stringWithFormat:@"%@%@", v4, v13];
      v15 = [*(a1 + 40) objectForKeyedSubscript:v14];
      if (!v15)
      {
        v15 = [NSMutableArray arrayWithCapacity:*(a1 + 48)];
        [*(a1 + 40) setObject:v15 forKeyedSubscript:v14];
      }

      [v15 addObject:v3];
    }

    else
    {
      v18 = os_log_GKGeneral;
      if (!os_log_GKGeneral)
      {
        v19 = GKOSLoggers();
        v18 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_10028CEC8(v3, v18);
      }
    }
  }

  else
  {
    v16 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
      v16 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_10028CF40(v3, v16);
    }
  }
}

void sub_1000E0DE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) objectForKeyedSubscript:@"bundleVersion"];
  v7 = [*(a1 + 48) objectForKeyedSubscript:@"shortBundleVersion"];
  v8 = [*(a1 + 48) objectForKeyedSubscript:@"platform"];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000E0F14;
  v10[3] = &unk_100365F70;
  v11 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  v12 = *(a1 + 56);
  v13 = v3;
  v9 = v3;
  [v4 _determineCompatibleBundleIDForAppID:v5 bundleVersion:v6 shortBundleVersion:v7 platform:v8 withCompletionHandler:v10];
}

void sub_1000E0F14(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [*(a1 + 32) objectForKeyedSubscript:@"shortBundleVersion"];
  v14 = *(a1 + 40);
  if (v13)
  {
    v15 = @"shortBundleVersion";
  }

  else
  {
    v15 = @"bundleVersion";
  }

  v16 = [*(a1 + 32) objectForKeyedSubscript:v15];
  v17 = [NSString stringWithFormat:@"%@%@", v14, v16];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = v17;
  v18 = [*(a1 + 48) objectForKeyedSubscript:v17];
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v25 + 1) + 8 * i);
        [v23 setBundleID:v9];
        [v23 setBundleVersion:v10];
        [v23 setShortBundleVersion:v11];
        [v23 setPlatform:{objc_msgSend(v12, "integerValue")}];
      }

      v20 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v20);
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1000E1110(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) clientProxy];
  v6 = [v5 replyQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000E1208;
  v9[3] = &unk_100360F78;
  v7 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v10 = v7;
  v11 = *(a1 + 56);
  v12 = v3;
  v8 = v3;
  [v4 notifyOnQueue:v6 block:v9];
}

uint64_t sub_1000E1208(uint64_t a1)
{
  [*(a1 + 32) _updateGamesForTurnBasedMatches:*(a1 + 40) dispatchGroup:*(a1 + 48)];
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

void sub_1000E1598(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(GKService *)GKMultiplayerMatchService serviceFromService:*(a1 + 32)];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E167C;
  v7[3] = &unk_100361A58;
  v5 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = v3;
  v6 = v3;
  [v4 getCompatibilityMatrix:v5 handler:v7];
}

void sub_1000E167C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v25 = a3;
  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
  }

  v7 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v40 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "compatibility matrix result %@", buf, 0xCu);
  }

  v8 = +[GKApplicationWorkspace defaultWorkspace];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v5;
  v9 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = &GKPrimaryCredentialDidChangeNotification_ptr;
    v12 = *v35;
    v27 = v8;
    v31 = *v35;
    do
    {
      v13 = 0;
      v30 = v10;
      do
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v34 + 1) + 8 * v13);
        if ([v11[164] supportsPlatform:{objc_msgSend(v14, "platform")}])
        {
          v15 = [v14 bundleID];
          if ([v8 applicationIsInstalled:v15])
          {
            v16 = [NSBundle _gkBundleWithIdentifier:v15];
            v17 = [v16 _gkBundleVersion];
            v18 = [v16 _gkBundleShortVersion];
            v33 = [*(a1 + 32) isEqualToString:v15];

            if (v18)
            {
              v29 = [v14 shortVersions];
              if (([v29 containsObject:v18] & 1) == 0)
              {
                v19 = 1;
                goto LABEL_17;
              }

LABEL_22:

LABEL_23:
              [*(a1 + 40) setObject:v15 forKeyedSubscript:@"bundleID"];
              [*(a1 + 40) setObject:v17 forKeyedSubscript:@"bundleVersion"];
              [*(a1 + 40) setObject:v18 forKeyedSubscript:@"shortBundleVersion"];
              v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 platform]);
              [*(a1 + 40) setObject:v22 forKeyedSubscript:@"platform"];

              if (v33)
              {

                goto LABEL_35;
              }

              goto LABEL_24;
            }

            v19 = 0;
          }

          else
          {
            v19 = 0;
            v17 = 0;
            v33 = 0;
            v18 = 0;
          }

LABEL_17:
          v20 = [v14 shortVersions];
          if ([v20 containsObject:@"-1"])
          {

            v10 = v30;
            if (v19)
            {
              goto LABEL_22;
            }

            goto LABEL_23;
          }

          v21 = [v14 versions];
          if ([v21 containsObject:v17])
          {

            v10 = v30;
            if (v19)
            {
              goto LABEL_22;
            }

            goto LABEL_23;
          }

          v23 = [v14 versions];
          v28 = [v23 containsObject:@"-1"];

          if (v19)
          {

            v8 = v27;
            v10 = v30;
            if (v28)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v8 = v27;
            v10 = v30;
            if (v28)
            {
              goto LABEL_23;
            }
          }

LABEL_24:

          v11 = &GKPrimaryCredentialDidChangeNotification_ptr;
          v12 = v31;
        }

        v13 = v13 + 1;
      }

      while (v10 != v13);
      v24 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      v10 = v24;
    }

    while (v24);
  }

LABEL_35:

  (*(*(a1 + 48) + 16))();
}

void sub_1000E1A6C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = [*(a1 + 32) objectForKeyedSubscript:@"bundleID"];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"bundleVersion"];
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"shortBundleVersion"];
  v5 = [*(a1 + 32) objectForKeyedSubscript:@"platform"];
  (*(v2 + 16))(v2, v6, v3, v4, v5);
}

void sub_1000E1C18(uint64_t a1)
{
  [*(a1 + 32) refreshObject:*(a1 + 40) mergeChanges:1];
  v2 = [NSFetchRequest alloc];
  v3 = +[GKTurnBasedSessionCacheObject entityName];
  v4 = [v2 initWithEntityName:v3];

  v5 = [*(a1 + 40) sessionIDs];
  v6 = +[GKPlayerProfileCacheObject selfPlayerID];
  v7 = [NSPredicate predicateWithFormat:@"sessionID IN %@ && currentPlayerID = %@ && status IN %@", v5, v6, &off_1003833B8];
  [v4 setPredicate:v7];

  v8 = [NSSortDescriptor sortDescriptorWithKey:@"bundleID" ascending:1];
  v39 = v8;
  v9 = [NSArray arrayWithObjects:&v39 count:1];
  [v4 setSortDescriptors:v9];

  v32 = v4;
  v33 = a1;
  v10 = [*(a1 + 32) executeFetchRequest:v4 error:0];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
    v15 = *v35;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v34 + 1) + 8 * i);
        v18 = [v17 bundleID];
        v19 = [v18 isEqualToString:v14];

        if (v19)
        {
          ++v13;
        }

        else
        {
          if (v14)
          {
            v20 = +[GKBadgeController sharedController];
            [v20 setBadgeCount:v13 forBundleID:v14 badgeType:2];
          }

          v21 = [v17 bundleID];

          v13 = 1;
          v14 = v21;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v12);
  }

  else
  {
    v14 = 0;
  }

  v22 = [*(v33 + 40) game];
  v23 = [v22 bundleID];

  v24 = [v10 count];
  v25 = [*(v33 + 48) clientProxy];
  v26 = [v25 bundleIdentifier];
  v27 = [v23 isEqualToString:v26];

  if (v27)
  {
    v28 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:*(v33 + 32)];
    [v28 setNumberOfTurns:v24];
  }

  v29 = GKGameCenterIdentifier;
  if ([v23 isEqualToString:GKGameCenterIdentifier])
  {
    v30 = +[GKBadgeController sharedController];
    [v30 setBadgeCount:v24 forBundleID:v29 badgeType:2];
  }

  v31 = *(v33 + 56);
  if (v31)
  {
    (*(v31 + 16))();
  }
}

void sub_1000E20D4(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "GKTurnBasedService: loadTurnBasedMatchesForGame:", buf, 2u);
  }

  v4 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 421, "[GKTurnBasedService loadTurnBasedMatchesForGame:loadDetails:prefetchOnly:context:handler:]_block_invoke"];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) clientProxy];
  v7 = [GKCacheTransactionGroup transactionGroupWithName:v4 context:v5 client:v6];

  *buf = 0;
  v32 = buf;
  v33 = 0x2020000000;
  v34 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  v8 = [*(a1 + 40) clientProxy];
  v9 = [v8 replyQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000E23C0;
  v23[3] = &unk_100365FC0;
  v16 = *(a1 + 32);
  v10 = v16.i64[0];
  v24 = vextq_s8(v16, v16, 8uLL);
  v25 = *(a1 + 48);
  v11 = v7;
  v26 = v11;
  v27 = buf;
  v28 = v29;
  [v11 performOnQueue:v9 block:v23];

  v12 = [*(a1 + 40) clientProxy];
  v13 = [v12 replyQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000E2830;
  v17[3] = &unk_100365FE8;
  v20 = *(a1 + 56);
  v21 = buf;
  v14 = v11;
  v22 = v29;
  v15 = *(a1 + 40);
  v18 = v14;
  v19 = v15;
  [v14 notifyOnQueue:v13 block:v17];

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(buf, 8);
}

void sub_1000E239C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1000E23C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v5 = [*(a1 + 32) clientProxy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E2508;
  v11[3] = &unk_100365F98;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *&v8 = *(a1 + 56);
  *(&v8 + 1) = *(a1 + 32);
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v12 = v9;
  v13 = v8;
  v15 = *(a1 + 64);
  v14 = v3;
  v10 = v3;
  [v4 issueRequest:0 bagKey:@"gk-tb-find-sessions" clientProxy:v5 handler:v11];
}

void sub_1000E2508(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  if (v7)
  {
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1000E2650;
    v17 = &unk_100364A88;
    v9 = *(a1 + 32);
    v18 = *(a1 + 40);
    v19 = *(a1 + 32);
    v20 = v7;
    v23 = a4;
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v21 = v10;
    v22 = v11;
    [v9 performBlockAndWait:&v14];
  }

  *(*(*(a1 + 72) + 8) + 24) = a4;
  v13 = *(*(*(a1 + 72) + 8) + 24) > 0.0 && v8 == 0;
  *(*(*(a1 + 80) + 8) + 24) = v13;
  [*(a1 + 48) setError:{v8, v14, v15, v16, v17}];
  (*(*(a1 + 64) + 16))();
}

void sub_1000E2650(uint64_t a1)
{
  v2 = [*(a1 + 32) turnBasedSessionList];
  [*(a1 + 40) refreshObject:*(a1 + 32) mergeChanges:1];
  if (!v2)
  {
    v2 = [(GKCacheObject *)[GKTurnBasedSessionListCacheObject alloc] initWithManagedObjectContext:*(a1 + 40)];
    [*(a1 + 32) setTurnBasedSessionList:v2];
  }

  v3 = *(a1 + 48);
  v4 = [NSDate dateWithTimeIntervalSinceNow:*(a1 + 72)];
  [(GKTurnBasedSessionListCacheObject *)v2 updateWithServerRepresentation:v3 expirationDate:v4];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E2774;
  v7[3] = &unk_100360F00;
  v5 = *(a1 + 56);
  v7[4] = *(a1 + 64);
  v8 = v2;
  v9 = *(a1 + 40);
  v6 = v2;
  [v5 perform:v7];
}

void sub_1000E2774(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E2820;
  v8[3] = &unk_100360FA0;
  v9 = v3;
  v7 = v3;
  [v4 _determineTurnBasedBadgeCountFromList:v5 context:v6 completionHandler:v8];
}

void sub_1000E2830(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(*(*(a1 + 56) + 8) + 24);
  v4 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v5 = [*(a1 + 40) clientProxy];
    [v5 refreshContentsForDataType:14 userInfo:0];
  }
}

void sub_1000E2A30(id *a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "GKTurnBasedService: fetchTurnBasedMatchesForGame:", buf, 2u);
  }

  v4 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 475, "[GKTurnBasedService fetchTurnBasedMatchesForGame:context:handler:]_block_invoke"];
  v5 = a1[4];
  v6 = [a1[5] clientProxy];
  v7 = [GKCacheTransactionGroup transactionGroupWithName:v4 context:v5 client:v6];

  *buf = 0;
  v26 = buf;
  v27 = 0x2020000000;
  v28 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000E2CDC;
  v17[3] = &unk_100366038;
  v18 = a1[4];
  v19 = a1[6];
  v21 = v23;
  v22 = buf;
  v8 = v7;
  v20 = v8;
  [v8 perform:v17];
  v9 = [a1[5] clientProxy];
  v10 = [v9 replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000E2EA4;
  v12[3] = &unk_100362228;
  v14 = a1[7];
  v11 = v8;
  v13 = v11;
  v15 = buf;
  v16 = v23;
  [v11 notifyOnQueue:v10 block:v12];

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(buf, 8);
}

void sub_1000E2CB8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1000E2CDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000E2DC0;
  v6[3] = &unk_100366010;
  v7 = v4;
  v8 = *(a1 + 40);
  v11 = *(a1 + 56);
  v9 = *(a1 + 48);
  v10 = v3;
  v5 = v3;
  [v7 performBlock:v6];
}

void sub_1000E2DC0(uint64_t a1)
{
  [*(a1 + 32) refreshObject:*(a1 + 40) mergeChanges:1];
  v4 = [*(a1 + 40) turnBasedSessionList];
  if ([v4 isValid])
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    *(*(*(a1 + 72) + 8) + 24) = [v4 expired] ^ 1;
    v2 = [v4 sessionIDs];
    [*(a1 + 48) setResult:v2];

    v3 = [v4 seed];
    [*(a1 + 48) setObject:v3 forKeyedSubscript:@"seed"];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1000E2EA4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"seed"];
  (*(v2 + 16))(v2, v4, v3, *(*(*(a1 + 48) + 8) + 24), *(*(*(a1 + 56) + 8) + 24));
}

void sub_1000E3038(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "GKTurnBasedService: getTurnBasedMatchesAndCompatibleBundleID:", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 508, "[GKTurnBasedService getTurnBasedMatchesAndCompatibleBundleID:handler:]_block_invoke"];
  v6 = [v4 transactionGroupWithName:v5];

  v7 = [*(a1 + 32) clientProxy];
  v8 = [v7 replyQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000E3278;
  v22[3] = &unk_1003658E0;
  v9 = v6;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v23 = v9;
  v24 = v10;
  v25 = v11;
  [v9 performOnQueue:v8 block:v22];

  if (*(a1 + 40))
  {
    v12 = [*(a1 + 32) clientProxy];
    v13 = [v12 replyQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000E3B78;
    v17[3] = &unk_100362750;
    v14 = v9;
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v18 = v14;
    v19 = v15;
    v21 = *(a1 + 48);
    v20 = v16;
    [v14 notifyOnQueue:v13 block:v17];
  }
}

void sub_1000E3278(uint64_t a1, void *a2)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E3354;
  v7[3] = &unk_100364310;
  v6 = *(a1 + 32);
  v4 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  v9 = *(a1 + 48);
  v5 = a2;
  [v4 performOnManagedObjectContext:v7];
  v5[2](v5);
}

void sub_1000E3354(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1[4] clientProxy];
  v6 = [v5 bundleIdentifier];
  v7 = [a1[5] context];
  v8 = [GKGameCacheObject gameForBundleID:v6 context:v7];

  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "GKTurnBasedService: getTurnBasedMatchesAndCompatibleBundleID: fetching TB match for games", buf, 2u);
  }

  v11 = a1[4];
  v12 = [a1[5] context];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000E3510;
  v17[3] = &unk_100366088;
  v13 = a1[5];
  v14 = a1[4];
  v18 = v13;
  v19 = v14;
  v20 = v8;
  v21 = a1[6];
  v22 = v4;
  v15 = v4;
  v16 = v8;
  [v11 fetchTurnBasedMatchesForGame:v16 context:v12 handler:v17];
}

uint64_t sub_1000E3510(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  [v7 setResult:a2];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:@"seed"];

  if ((a4 & 1) == 0)
  {
    v9 = *(a1 + 32);
    v10 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 522, "[GKTurnBasedService getTurnBasedMatchesAndCompatibleBundleID:handler:]_block_invoke"];
    v11 = [v9 transactionGroupWithName:v10];

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000E3730;
    v25[3] = &unk_100366060;
    v12 = *(a1 + 48);
    v25[4] = *(a1 + 40);
    v26 = v12;
    v28 = *(a1 + 56);
    v13 = v11;
    v27 = v13;
    [v13 perform:v25];
    v14 = *(a1 + 32);
    v15 = [*(a1 + 40) clientProxy];
    v16 = [v15 replyQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000E38C0;
    v20[3] = &unk_100362008;
    v21 = *(a1 + 32);
    v22 = v13;
    v17 = *(a1 + 48);
    v23 = *(a1 + 40);
    v24 = v17;
    v18 = v13;
    [v14 join:v18 queue:v16 block:v20];
  }

  return (*(*(a1 + 64) + 16))();
}

void sub_1000E3730(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GKTurnBasedService: getTurnBasedMatchesAndCompatibleBundleID: loading TB match for games", buf, 2u);
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 56) == 0;
  v9 = [*(a1 + 48) context];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E3878;
  v11[3] = &unk_100363F78;
  v12 = *(a1 + 48);
  v13 = v3;
  v10 = v3;
  [v6 loadTurnBasedMatchesForGame:v7 loadDetails:1 prefetchOnly:v8 context:v9 handler:v11];
}

uint64_t sub_1000E3878(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000E38C0(uint64_t a1)
{
  v2 = [*(a1 + 40) error];
  [*(a1 + 32) setError:v2];

  v3 = [*(a1 + 40) error];

  if (!v3)
  {
    v4 = *(a1 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000E39C8;
    v10[3] = &unk_100361F90;
    v9 = *(a1 + 48);
    v5 = *(&v9 + 1);
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    *&v8 = v6;
    *(&v8 + 1) = v7;
    v11 = v9;
    v12 = v8;
    [v4 perform:v10];
  }
}

void sub_1000E39C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GKTurnBasedService: getTurnBasedMatchesAndCompatibleBundleID: fetching TB match for games", buf, 2u);
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = [*(a1 + 48) context];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000E3B00;
  v10[3] = &unk_1003625E8;
  v11 = *(a1 + 56);
  v12 = v3;
  v9 = v3;
  [v6 fetchTurnBasedMatchesForGame:v7 context:v8 handler:v10];
}

uint64_t sub_1000E3B00(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResult:a2];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:@"seed"];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_1000E3B78(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3 = [v2 count];
  v4 = *(a1 + 32);
  if (v3)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000E3D00;
    v11[3] = &unk_100361670;
    v11[4] = *(a1 + 40);
    v12 = v2;
    v13 = *(a1 + 32);
    v14 = *(a1 + 56);
    [v4 perform:v11];
  }

  else
  {
    [*(a1 + 32) setResult:0];
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) clientProxy];
  v7 = [v6 replyQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E3ED0;
  v8[3] = &unk_100360EB0;
  v10 = *(a1 + 48);
  v9 = *(a1 + 32);
  [v5 notifyOnQueue:v7 block:v8];
}

void sub_1000E3D00(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GKTurnBasedService: getTurnBasedMatchesAndCompatibleBundleID: get details for TB match for games", buf, 2u);
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E3E30;
  v11[3] = &unk_1003660B0;
  v8 = *(a1 + 48);
  v15 = *(a1 + 56);
  v9 = *(a1 + 32);
  v12 = v8;
  v13 = v9;
  v14 = v3;
  v10 = v3;
  [v6 getDetailsForTurnBasedMatchIDs:v7 includeGameData:0 prefetchOnly:0 handler:v11];
}

void sub_1000E3E30(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResult:v7];
  [*(a1 + 32) setError:v6];

  if (*(a1 + 56) == 1)
  {
    [*(a1 + 40) _determineCompatibleGamesForMatches:v7 dispatchGroup:*(a1 + 32)];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000E3ED0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_1000E3FE0(uint64_t a1, void *a2)
{
  v3 = a2;
  [NSMutableSet setWithCapacity:0];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000E41A8;
  v17 = v16[3] = &unk_100366100;
  v4 = v17;
  v5 = objc_retainBlock(v16);
  v6 = *(a1 + 32);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000E4238;
  v14[3] = &unk_100366150;
  v15 = v5;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v14];
  v8 = [(GKService *)GKProfileService serviceFromService:*(a1 + 40)];
  v9 = [v4 allObjects];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E43B4;
  v11[3] = &unk_100362408;
  v12 = *(a1 + 32);
  v13 = v3;
  v10 = v3;
  [v8 getProfilesForPlayerIDs:v9 handler:v11];
}

uint64_t sub_1000E41A8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v7 = v3;
    if (([v3 isAutomatchPlayer] & 1) == 0 && (objc_msgSend(v7, "isGuestPlayer") & 1) == 0)
    {
      v4 = *(a1 + 32);
      v5 = [v7 playerID];
      [v4 addObject:v5];
    }
  }

  return _objc_release_x1();
}

void sub_1000E4238(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 currentPlayer];
  (*(v3 + 16))(v3, v5);

  v6 = [v4 participants];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E4314;
  v7[3] = &unk_100366128;
  v8 = *(a1 + 32);
  [v6 enumerateObjectsUsingBlock:v7];
}

void sub_1000E4314(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 player];
  (*(v3 + 16))(v3, v5);

  v6 = *(a1 + 32);
  v7 = [v4 invitedBy];

  (*(v6 + 16))(v6, v7);
}

void sub_1000E43B4(uint64_t a1, void *a2)
{
  [a2 _gkMapDictionaryWithKeyPath:@"playerID"];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000E44D8;
  v13 = v12[3] = &unk_100366178;
  v3 = v13;
  v4 = objc_retainBlock(v12);
  v5 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000E4540;
  v10[3] = &unk_100366150;
  v11 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v10];
  (*(*(a1 + 40) + 16))(*(a1 + 40), v7, v8, v9);
}

id sub_1000E44D8(uint64_t a1, void *a2)
{
  v3 = [a2 playerID];
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1000E4540(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 currentPlayer];
  v5 = [v4 isGuestPlayer];

  if ((v5 & 1) == 0)
  {
    v6 = *(a1 + 32);
    v7 = [v3 currentPlayer];
    v8 = (*(v6 + 16))(v6, v7);
    [v3 setCurrentPlayer:v8];
  }

  v9 = [v3 participants];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000E4654;
  v10[3] = &unk_100366128;
  v11 = *(a1 + 32);
  [v9 enumerateObjectsUsingBlock:v10];
}

void sub_1000E4654(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 player];
  v4 = [v3 isGuestPlayer];

  if ((v4 & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = [v13 player];
    v7 = (*(v5 + 16))(v5, v6);
    [v13 setPlayer:v7];
  }

  v8 = [v13 invitedBy];
  v9 = [v8 isGuestPlayer];

  if ((v9 & 1) == 0)
  {
    v10 = *(a1 + 32);
    v11 = [v13 invitedBy];
    v12 = (*(v10 + 16))(v10, v11);
    [v13 setInvitedBy:v12];
  }
}

void sub_1000E48B0(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 645, "[GKTurnBasedService fetchDetailsForTurnBasedMatchIDs:includeGameData:responseKind:context:handler:]_block_invoke"];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) clientProxy];
  v5 = [GKCacheTransactionGroup transactionGroupWithName:v2 context:v3 client:v4];

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000E4AFC;
  v17[3] = &unk_100363BB0;
  v6 = *(a1 + 48);
  v21 = v27;
  v22 = v25;
  v23 = *(a1 + 64);
  v24 = *(a1 + 68);
  v7 = *(a1 + 40);
  v18 = v6;
  v19 = v7;
  v8 = v5;
  v20 = v8;
  [v8 performOnManagedObjectContext:v17];
  v9 = [*(a1 + 40) clientProxy];
  v10 = [v9 replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000E4FA8;
  v12[3] = &unk_100362228;
  v14 = *(a1 + 56);
  v11 = v8;
  v13 = v11;
  v15 = v27;
  v16 = v25;
  [v11 notifyOnQueue:v10 block:v12];

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);
}

void sub_1000E4AD8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1000E4AFC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 count];
  v9 = [GKTurnBasedSessionCacheObject sessionsWithSessionIDs:*(a1 + 32) inContext:v7];

  *(*(*(a1 + 56) + 8) + 24) = [v9 count] == v8;
  if (*(a1 + 72) < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(*(*(a1 + 56) + 8) + 24);
  }

  *(*(*(a1 + 64) + 8) + 24) = v10 & 1;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000E4DC8;
  v25[3] = &unk_1003661A0;
  v27 = *(a1 + 76);
  v26 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
  v11 = [v9 _gkFilterWithBlock:v25];
  v12 = [v11 count];
  v13 = *(*(a1 + 64) + 8);
  v14 = *(v13 + 24);
  if (v12)
  {
    v14 = 0;
  }

  *(v13 + 24) = v14;
  if (*(a1 + 72) == 2)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  *(*(*(a1 + 56) + 8) + 24) &= *(*(*(a1 + 64) + 8) + 24);
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v15 = [v9 _gkMapDictionaryWithKeyPath:@"sessionID"];
    v16 = *(a1 + 32);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000E4F1C;
    v22[3] = &unk_1003661C8;
    v17 = v15;
    v23 = v17;
    v24 = *(a1 + 76);
    v18 = [v16 _gkFilterWithBlock:v22];
    if (!os_log_GKGeneral)
    {
      v19 = GKOSLoggers();
    }

    v20 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "fetchDetailsForTurnBasedMatchIDs:Group Matches with SessionIDs have been set", v21, 2u);
    }

    [*(a1 + 40) _updatePlayersForMatches:v18 group:*(a1 + 48)];
    [*(a1 + 48) setResult:v18];
  }

  v5[2](v5);
}

id sub_1000E4DC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 expirationDate];
  [v4 timeIntervalSinceNow];
  v6 = v5;
  v7 = v5 > 0.0;

  if (*(a1 + 48) == 1)
  {
    v7 = v6 > 0.0;
    v8 = [v3 dataExpirationDate];
    [v8 timeIntervalSinceNow];
    v10 = v9;

    if (v10 <= 0.0)
    {
      v7 = 0;
    }

    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 24);
    if (v10 <= 0.0)
    {
      v12 = 0;
    }

    *(v11 + 24) = v12;
  }

  *(*(*(a1 + 40) + 8) + 24) &= v7;
  if (v7)
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "fetchDetailsForTurnBasedMatchIDs:Session Valid for match ID, returning sessionID", v17, 2u);
    }

    v15 = 0;
  }

  else
  {
    v15 = [v3 sessionID];
  }

  return v15;
}

id sub_1000E4F1C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v4 = [v3 internalRepresentation];
  if (*(a1 + 40) == 1)
  {
    v5 = [v3 gameData];
    [v4 setMatchData:v5];
  }

  return v4;
}

void sub_1000E4FA8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) result];
  (*(v2 + 16))(v2, v3, 0, *(*(*(a1 + 48) + 8) + 24), *(*(*(a1 + 56) + 8) + 24));
}

void sub_1000E5164(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 711, "[GKTurnBasedService loadDetailsForTurnBasedMatchIDs:includeGameData:context:handler:]_block_invoke"];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) clientProxy];
  v5 = [GKCacheTransactionGroup transactionGroupWithName:v2 context:v3 client:v4];

  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000E5374;
  v15[3] = &unk_1003662B0;
  v16 = *(a1 + 48);
  v20 = *(a1 + 64);
  v6 = v5;
  v7 = *(a1 + 40);
  v17 = v6;
  v18 = v7;
  v19 = v21;
  [v6 performOnManagedObjectContext:v15];
  v8 = [*(a1 + 40) clientProxy];
  v9 = [v8 replyQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E5A24;
  v11[3] = &unk_1003618D8;
  v13 = *(a1 + 56);
  v14 = v21;
  v10 = v6;
  v12 = v10;
  [v10 notifyOnQueue:v9 block:v11];

  _Block_object_dispose(v21, 8);
}

void sub_1000E5374(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [GKTurnBasedSessionCacheObject sessionsWithSessionIDs:*(a1 + 32) inContext:a2];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000E54F8;
  v19[3] = &unk_100366210;
  v20 = *(a1 + 64);
  v7 = [v6 _gkFilterWithBlock:v19];
  if ([v7 count])
  {
    v8 = *(a1 + 40);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000E55B8;
    v13[3] = &unk_100366288;
    v14 = v7;
    v18 = *(a1 + 64);
    v12 = *(a1 + 40);
    v9 = v12.i64[0];
    v15 = vextq_s8(v12, v12, 8uLL);
    v10 = v6;
    v11 = *(a1 + 56);
    v16 = v10;
    v17 = v11;
    [v8 perform:v13];
  }

  v5[2](v5);
}

id sub_1000E54F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 expirationDate];
  [v4 timeIntervalSinceNow];
  v6 = v5;

  if (*(a1 + 32) == 1)
  {
    v7 = [v3 dataExpirationDate];
    [v7 timeIntervalSinceNow];
    v9 = v8;

    if (v6 > 0.0 && v9 > 0.0)
    {
      goto LABEL_4;
    }
  }

  else if (v6 > 0.0)
  {
LABEL_4:
    v10 = 0;
    goto LABEL_7;
  }

  v10 = [v3 sessionID];
LABEL_7:

  return v10;
}

void sub_1000E55B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v17[0] = @"session-ids";
  v17[1] = @"get-game-state";
  v18[0] = v4;
  v18[1] = &off_1003824C0;
  v17[2] = @"get-exchanges";
  v5 = [NSNumber numberWithInteger:*(a1 + 72)];
  v18[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];

  v7 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v8 = [*(a1 + 40) clientProxy];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000E5768;
  v12[3] = &unk_100366260;
  v13 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v15 = v3;
  v16 = v10;
  v14 = v9;
  v11 = v3;
  [v7 issueRequest:v6 bagKey:@"gk-tb-get-session" clientProxy:v8 handler:v12];
}

void sub_1000E5768(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  if (v7)
  {
    v9 = [NSDate dateWithTimeIntervalSinceNow:a4];
    v10 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000E5898;
    v12[3] = &unk_100361348;
    v13 = v7;
    v14 = *(a1 + 40);
    v15 = v9;
    v11 = v9;
    [v10 performOnManagedObjectContext:v12];
  }

  *(*(*(a1 + 56) + 8) + 24) = a4;
  [*(a1 + 32) setError:v8];
  (*(*(a1 + 48) + 16))();
}

void sub_1000E5898(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 objectForKey:@"sessions"];
  [*(a1 + 40) _gkMapDictionaryWithKeyPath:@"sessionID"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E5998;
  v9 = v8[3] = &unk_100366238;
  v10 = *(a1 + 48);
  v7 = v9;
  [v6 enumerateObjectsUsingBlock:v8];
  v5[2](v5);
}

void sub_1000E5998(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 objectForKey:@"session-id"];
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
    [v4 updateWithServerRepresentation:v5 expirationDate:*(a1 + 40)];
  }
}

void sub_1000E5A24(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(*(a1 + 48) + 8) + 24);
  v3 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v3, v2);
}

void sub_1000E5BC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 777, "[GKTurnBasedService getDetailsForTurnBasedMatchIDs:includeGameData:prefetchOnly:handler:]_block_invoke"];
  v4 = [v2 transactionGroupWithName:v3];

  v5 = [*(a1 + 32) clientProxy];
  v6 = [v5 replyQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000E5DB0;
  v16[3] = &unk_100366350;
  v7 = *(a1 + 48);
  v20 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v19 = v7;
  v16[4] = v8;
  v17 = v9;
  v21 = *(a1 + 57);
  v10 = v4;
  v18 = v10;
  [v10 performOnQueue:v6 block:v16];

  if (*(a1 + 48))
  {
    v11 = [*(a1 + 32) clientProxy];
    v12 = [v11 replyQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000E64F0;
    v13[3] = &unk_100360EB0;
    v15 = *(a1 + 48);
    v14 = v10;
    [v14 notifyOnQueue:v12 block:v13];
  }
}

void sub_1000E5DB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 56) != 0;
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 65);
  v9 = [*(a1 + 48) context];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000E5F04;
  v17[3] = &unk_100366328;
  v10 = *(a1 + 48);
  v16 = *(a1 + 32);
  v11 = v16.i64[1];
  v21 = *(a1 + 65);
  v22 = *(a1 + 64);
  v12 = *(a1 + 56);
  v13.i64[0] = v10;
  v13.i64[1] = v12;
  v14 = vzip2q_s64(v16, v13);
  v13.i64[1] = v16.i64[0];
  v18 = v13;
  v19 = v14;
  v20 = v3;
  v15 = v3;
  [v6 fetchDetailsForTurnBasedMatchIDs:v7 includeGameData:v8 responseKind:v4 & ~v5 context:v9 handler:v17];
}

void sub_1000E5F04(uint64_t a1, void *a2, uint64_t a3, char a4, char a5)
{
  v8 = a2;
  if ((a4 & 1) == 0)
  {
    v9 = *(a1 + 32);
    v10 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 789, "[GKTurnBasedService getDetailsForTurnBasedMatchIDs:includeGameData:prefetchOnly:handler:]_block_invoke_3"];
    v11 = [v9 transactionGroupWithName:v10];

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000E6154;
    v26[3] = &unk_100361670;
    v12 = *(a1 + 48);
    v26[4] = *(a1 + 40);
    v27 = v12;
    v29 = *(a1 + 72);
    v13 = v11;
    v28 = v13;
    [v13 perform:v26];
    if ((a5 & 1) == 0 && (*(a1 + 73) & 1) == 0)
    {
      v14 = *(a1 + 32);
      v15 = [*(a1 + 40) clientProxy];
      v16 = [v15 replyQueue];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000E62B4;
      v21[3] = &unk_100366300;
      v22 = v13;
      v17 = *(a1 + 56);
      *&v18 = *(a1 + 32);
      *(&v18 + 1) = *(a1 + 40);
      v20 = v18;
      *&v19 = *(a1 + 48);
      *(&v19 + 1) = v17;
      v23 = v20;
      v24 = v19;
      v25 = *(a1 + 72);
      [v14 join:v22 queue:v16 block:v21];
    }
  }

  [*(a1 + 32) setResult:v8];
  (*(*(a1 + 64) + 16))();
}

void sub_1000E6154(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = [*(a1 + 48) context];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000E6224;
  v9[3] = &unk_100363B20;
  v10 = v3;
  v8 = v3;
  [v4 loadDetailsForTurnBasedMatchIDs:v5 includeGameData:v6 context:v7 handler:v9];
}

void sub_1000E6224(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028CFB8(v3, v5);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000E62B4(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  if (!v2)
  {
    v3 = 2 * (*(a1 + 64) != 0);
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_1000E63B8;
    v10 = &unk_1003662D8;
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    v11 = *(a1 + 48);
    v12 = v5;
    v15 = *(a1 + 72);
    v14 = v3;
    v13 = *(a1 + 40);
    [v4 perform:&v7];
  }

  v6 = [*(a1 + 32) error];
  [*(a1 + 40) setError:v6];
}

void sub_1000E63B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 60);
  v7 = *(a1 + 56);
  v8 = [*(a1 + 48) context];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000E64A8;
  v10[3] = &unk_1003625E8;
  v11 = *(a1 + 48);
  v12 = v3;
  v9 = v3;
  [v4 fetchDetailsForTurnBasedMatchIDs:v5 includeGameData:v6 responseKind:v7 context:v8 handler:v10];
}

uint64_t sub_1000E64A8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setResult:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000E64F0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_1000E69A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000E6CCC;
  v24[3] = &unk_1003610B8;
  v25 = *(a1 + 40);
  v26 = *(a1 + 32);
  [v4 performBlockAndWait:v24];

  v5 = [*(a1 + 48) participants];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [*(a1 + 48) participants];
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 48), "currentParticipant")}];

    v9 = [v8 player];
    v10 = [v9 isGuestPlayer];
    v11 = *(a1 + 56);
    if (v10)
    {
      v12 = *(a1 + 40);
      v31[0] = @"session-id";
      v31[1] = @"guest-id";
      v32[0] = v12;
      v13 = [v9 guestIdentifier];
      v32[1] = v13;
      v14 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
      v15 = [v11 updateRequestWithPushToken:v14];
    }

    else
    {
      v29 = @"session-id";
      v30 = *(a1 + 40);
      v13 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v15 = [v11 updateRequestWithPushToken:v13];
    }
  }

  else
  {
    v16 = *(a1 + 56);
    v17 = *(a1 + 40);
    v27 = @"session-id";
    v28 = v17;
    v8 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v15 = [v16 updateRequestWithPushToken:v8];
  }

  v18 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v19 = [*(a1 + 64) clientProxy];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000E6D78;
  v21[3] = &unk_1003627C8;
  v22 = *(a1 + 32);
  v23 = v3;
  v20 = v3;
  [v18 issueRequest:v15 bagKey:@"gk-tb-accept" clientProxy:v19 handler:v21];
}

void sub_1000E6CCC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) context];
  v6 = [GKTurnBasedSessionCacheObject sessionWithID:v2 inManagedObjectContext:v3];

  [v6 expire];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) context];
  [GKTurnBasedSessionListCacheObject expireListsForSessionID:v4 context:v5];
}

uint64_t sub_1000E6D78(uint64_t a1)
{
  [*(a1 + 32) setError:?];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_1000E6DBC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000E6FB0;
    v21[3] = &unk_100360F00;
    v3 = *(a1 + 40);
    v21[4] = *(a1 + 48);
    v22 = v2;
    v23 = *(a1 + 40);
    [v3 perform:v21];
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) clientProxy];
    v6 = [v5 replyQueue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000E7178;
    v18[3] = &unk_100360FF0;
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v19 = v7;
    v20 = v8;
    [v4 performOnQueue:v6 block:v18];
  }

  if (*(a1 + 56))
  {
    v9 = *(a1 + 40);
    v10 = [*(a1 + 48) clientProxy];
    v11 = [v10 replyQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000E7418;
    v14[3] = &unk_100361538;
    v17 = *(a1 + 56);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v15 = v12;
    v16 = v13;
    [v9 notifyOnQueue:v11 block:v14];
  }
}

void sub_1000E6FB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = *(a1 + 40);
  v5 = [NSArray arrayWithObjects:&v10 count:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E70BC;
  v7[3] = &unk_100362408;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v4 getDetailsForTurnBasedMatchIDs:v5 includeGameData:1 handler:v7];
}

void sub_1000E70BC(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) error];

    if (!v6)
    {
      [*(a1 + 32) setError:v5];
    }
  }

  v7 = [v8 lastObject];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"result"];

  (*(*(a1 + 40) + 16))();
}

void sub_1000E7178(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000E72A4;
  v10[3] = &unk_100360FC8;
  v8 = *(a1 + 32);
  v5 = v8.i64[0];
  v11 = vextq_s8(v8, v8, 8uLL);
  v12 = v3;
  v6 = v3;
  [v4 performBlockAndWait:v10];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000E7370;
  v9[3] = &unk_100361620;
  v7 = *(a1 + 32);
  v9[4] = *(a1 + 40);
  [v7 perform:v9];
}

void sub_1000E72A4(uint64_t a1)
{
  v2 = [*(a1 + 32) clientProxy];
  v3 = [v2 bundleIdentifier];
  v4 = [*(a1 + 40) context];
  v6 = [GKGameCacheObject gameForBundleID:v3 context:v4];

  v5 = [v6 turnBasedSessionList];
  [v5 expire];

  (*(*(a1 + 48) + 16))();
}

void sub_1000E7370(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000E7408;
  v6[3] = &unk_1003626B0;
  v7 = v3;
  v5 = v3;
  [v4 getTurnBasedMatchesWithHandler:v6];
}

void sub_1000E7418(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"result"];
  v4 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v3, v4);

  v5 = [*(a1 + 40) clientProxy];
  [v5 refreshContentsForDataType:14 userInfo:0];
}

void sub_1000E7764(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000E7A44;
  v20[3] = &unk_1003610B8;
  v21 = *(a1 + 40);
  v22 = *(a1 + 32);
  [v4 performBlockAndWait:v20];

  v5 = [*(a1 + 48) participants];
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 48), "currentParticipant")}];

  v7 = [v6 player];
  v8 = [v7 isGuestPlayer];
  v9 = *(a1 + 56);
  v10 = *(a1 + 40);
  if (v8)
  {
    v25[0] = @"session-id";
    v25[1] = @"reason";
    v26[0] = v10;
    v26[1] = &off_1003824C0;
    v25[2] = @"guest-id";
    v11 = [v7 guestIdentifier];
    v26[2] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
    v13 = [v9 updateRequestWithPushToken:v12];
  }

  else
  {
    v23[0] = @"session-id";
    v23[1] = @"reason";
    v24[0] = v10;
    v24[1] = &off_1003824C0;
    v11 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
    v13 = [v9 updateRequestWithPushToken:v11];
  }

  v14 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v15 = [*(a1 + 64) clientProxy];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000E7B6C;
  v17[3] = &unk_1003627C8;
  v18 = *(a1 + 32);
  v19 = v3;
  v16 = v3;
  [v14 issueRequest:v13 bagKey:@"gk-tb-decline" clientProxy:v15 handler:v17];
}

void sub_1000E7A44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) context];
  v11 = [GKTurnBasedSessionCacheObject sessionWithID:v2 inManagedObjectContext:v3];

  [v11 expire];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) context];
  [GKTurnBasedSessionListCacheObject expireListsForSessionID:v4 context:v5];

  v6 = +[GKClientProxy gameCenterClient];
  v7 = [v6 bundleIdentifier];
  v8 = [*(a1 + 40) context];
  v9 = [GKGameCacheObject gameForBundleID:v7 context:v8];
  v10 = [v9 turnBasedSessionList];
  [v10 expire];
}

uint64_t sub_1000E7B6C(uint64_t a1)
{
  [*(a1 + 32) setError:?];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_1000E7BB0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000E7D68;
    v15[3] = &unk_100360F00;
    v3 = *(a1 + 40);
    v15[4] = *(a1 + 48);
    v16 = v2;
    v17 = *(a1 + 40);
    [v3 perform:v15];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000E7F30;
    v14[3] = &unk_100361620;
    v4 = *(a1 + 40);
    v14[4] = *(a1 + 48);
    [v4 perform:v14];
  }

  if (*(a1 + 56))
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) clientProxy];
    v7 = [v6 replyQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000E7FD8;
    v10[3] = &unk_100361538;
    v13 = *(a1 + 56);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = v8;
    v12 = v9;
    [v5 notifyOnQueue:v7 block:v10];
  }
}

void sub_1000E7D68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = *(a1 + 40);
  v5 = [NSArray arrayWithObjects:&v10 count:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E7E74;
  v7[3] = &unk_100362408;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v4 getDetailsForTurnBasedMatchIDs:v5 includeGameData:1 handler:v7];
}

void sub_1000E7E74(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) error];

    if (!v6)
    {
      [*(a1 + 32) setError:v5];
    }
  }

  v7 = [v8 lastObject];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"result"];

  (*(*(a1 + 40) + 16))();
}

void sub_1000E7F30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000E7FC8;
  v6[3] = &unk_1003626B0;
  v7 = v3;
  v5 = v3;
  [v4 getTurnBasedMatchesWithHandler:v6];
}

void sub_1000E7FD8(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"result"];
  v4 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v3, v4);

  v5 = [*(a1 + 40) clientProxy];
  [v5 refreshContentsForDataType:14 userInfo:0];
}

void sub_1000E8318(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000E8510;
  v15[3] = &unk_1003610B8;
  v16 = *(a1 + 40);
  v17 = *(a1 + 32);
  [v4 performBlock:v15];

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v18 = @"session-id";
  v19 = v5;
  v7 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v8 = [v6 updateRequestWithPushToken:v7];

  v9 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v10 = [*(a1 + 56) clientProxy];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000E8678;
  v12[3] = &unk_1003627C8;
  v13 = *(a1 + 32);
  v14 = v3;
  v11 = v3;
  [v9 issueRequest:v8 bagKey:@"gk-tb-remove-session" clientProxy:v10 handler:v12];
}

void sub_1000E8510(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) context];
  [GKTurnBasedSessionListCacheObject expireListsForSessionID:v2 context:v3];

  v4 = +[GKClientProxy gameCenterClient];
  v5 = [v4 bundleIdentifier];
  v6 = [*(a1 + 40) context];
  v7 = [GKGameCacheObject gameForBundleID:v5 context:v6];
  v8 = [v7 turnBasedSessionList];
  [v8 expire];

  v11 = [NSPredicate predicateWithFormat:@"sessionID = %@", *(a1 + 32)];
  v9 = [*(a1 + 40) context];
  [(GKCacheObject *)GKTurnBasedSessionCacheObject deleteObjectsMatchingPredicate:v11 context:v9];

  v10 = [*(a1 + 40) context];
  [(GKCacheObject *)GKTurnBasedSessionEntryCacheObject deleteObjectsMatchingPredicate:v11 context:v10];
}

uint64_t sub_1000E8678(uint64_t a1)
{
  [*(a1 + 32) setError:?];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_1000E86BC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000E87F8;
    v12[3] = &unk_100361620;
    v2 = *(a1 + 40);
    v12[4] = *(a1 + 48);
    [v2 perform:v12];
  }

  if (*(a1 + 56))
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 48) clientProxy];
    v5 = [v4 replyQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000E88A0;
    v8[3] = &unk_100361538;
    v11 = *(a1 + 56);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = v6;
    v10 = v7;
    [v3 notifyOnQueue:v5 block:v8];
  }
}

void sub_1000E87F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000E8890;
  v6[3] = &unk_1003626B0;
  v7 = v3;
  v5 = v3;
  [v4 getTurnBasedMatchesWithHandler:v6];
}

void sub_1000E88A0(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v3);

  v4 = [*(a1 + 40) clientProxy];
  [v4 refreshContentsForDataType:14 userInfo:0];
}

void sub_1000E8C00(uint64_t a1, void *a2)
{
  v31 = a2;
  v3 = +[NSDate date];
  v4 = [*(a1 + 32) context];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000E9058;
  v40[3] = &unk_1003610B8;
  v41 = *(a1 + 40);
  v42 = *(a1 + 32);
  [v4 performBlockAndWait:v40];

  v5 = [*(a1 + 48) participants];
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = [*(a1 + 48) participants];
  v8 = [v7 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        if (([v12 isAutomatchParticipant] & 1) == 0)
        {
          v13 = [v12 serverRepresentation];
          [v6 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v9);
  }

  v14 = *(a1 + 48);
  v44[0] = *(a1 + 40);
  v43[0] = @"session-id";
  v43[1] = @"current-turn-number";
  v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 turnNumber]);
  v44[1] = v15;
  v43[2] = @"turns";
  v16 = [*(a1 + 56) turnsForParticipantIndexes:*(a1 + 64) turnTimeout:*(a1 + 80)];
  v44[2] = v16;
  v43[3] = @"turn-at";
  v32 = v3;
  v17 = [v3 _gkServerTimestamp];
  v44[3] = v17;
  v43[4] = @"turn-message";
  v18 = [*(a1 + 48) message];
  v19 = v18;
  v20 = &stru_100374F10;
  if (v18)
  {
    v20 = v18;
  }

  v44[4] = v20;
  v43[5] = @"localized-turn-message";
  v21 = [*(a1 + 48) localizableMessage];
  v22 = v21;
  v23 = &__NSDictionary0__struct;
  if (v21)
  {
    v23 = v21;
  }

  v44[5] = v23;
  v43[6] = @"game-state";
  v24 = [*(a1 + 48) matchData];
  v25 = v24;
  if (!v24)
  {
    v25 = +[NSData data];
  }

  v43[7] = @"players";
  v44[6] = v25;
  v44[7] = v6;
  v26 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:8];
  if (!v24)
  {
  }

  v27 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v28 = [*(a1 + 72) updateRequestWithPushToken:v26];
  v29 = [*(a1 + 56) clientProxy];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000E90DC;
  v33[3] = &unk_1003627C8;
  v34 = *(a1 + 32);
  v35 = v31;
  v30 = v31;
  [v27 issueRequest:v28 bagKey:@"gk-tb-turn" clientProxy:v29 handler:v33];
}

void sub_1000E9058(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) context];
  v3 = [GKTurnBasedSessionCacheObject sessionWithID:v1 inManagedObjectContext:v2];

  [v3 expire];
  [v3 expireGameData];
}

uint64_t sub_1000E90DC(uint64_t a1)
{
  [*(a1 + 32) setError:?];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_1000E9120(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000E92D8;
    v15[3] = &unk_100360F00;
    v3 = *(a1 + 40);
    v15[4] = *(a1 + 48);
    v16 = v2;
    v17 = *(a1 + 40);
    [v3 perform:v15];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000E94A0;
    v14[3] = &unk_100361620;
    v4 = *(a1 + 40);
    v14[4] = *(a1 + 48);
    [v4 perform:v14];
  }

  if (*(a1 + 56))
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) clientProxy];
    v7 = [v6 replyQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000E9548;
    v10[3] = &unk_100361538;
    v13 = *(a1 + 56);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = v8;
    v12 = v9;
    [v5 notifyOnQueue:v7 block:v10];
  }
}

void sub_1000E92D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = *(a1 + 40);
  v5 = [NSArray arrayWithObjects:&v10 count:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E93E4;
  v7[3] = &unk_100362408;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v4 getDetailsForTurnBasedMatchIDs:v5 includeGameData:1 handler:v7];
}

void sub_1000E93E4(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) error];

    if (!v6)
    {
      [*(a1 + 32) setError:v5];
    }
  }

  v7 = [v8 lastObject];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"result"];

  (*(*(a1 + 40) + 16))();
}

void sub_1000E94A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000E9538;
  v6[3] = &unk_1003626B0;
  v7 = v3;
  v5 = v3;
  [v4 getTurnBasedMatchesWithHandler:v6];
}

void sub_1000E9548(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"result"];
  v4 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v3, v4);

  v5 = [*(a1 + 40) clientProxy];
  [v5 refreshContentsForDataType:14 userInfo:0];
}

void sub_1000E98B8(uint64_t a1, void *a2)
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000E99DC;
  v12[3] = &unk_100363068;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v13 = v10;
  v14 = v9;
  v15 = *(a1 + 72);
  v16 = *(a1 + 32);
  v11 = a2;
  [v4 performOnManagedObjectContext:v12];
  v11[2](v11);
}

void sub_1000E99DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [GKTurnBasedSessionCacheObject sessionWithID:*(a1 + 32) inManagedObjectContext:v5];
  [v7 expire];
  v8 = *(a1 + 40);
  v29[0] = *(a1 + 32);
  v28[0] = @"session-id";
  v28[1] = @"game-state-version";
  v9 = [v8 matchDataVersion];
  v10 = v9;
  v11 = &stru_100374F10;
  if (v9)
  {
    v11 = v9;
  }

  v29[1] = v11;
  v28[2] = @"game-state";
  v12 = [*(a1 + 40) matchData];
  v13 = v12;
  if (!v12)
  {
    v13 = +[NSData data];
  }

  v28[3] = @"resolve-exchanges";
  v14 = *(a1 + 48);
  if (!v14)
  {
    v14 = &__NSArray0__struct;
  }

  v29[2] = v13;
  v29[3] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:4];
  if (!v12)
  {
  }

  v16 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v17 = [*(a1 + 56) updateRequestWithPushToken:v15];
  v18 = [*(a1 + 64) clientProxy];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000E9C54;
  v22[3] = &unk_100364BF0;
  v23 = *(a1 + 72);
  v24 = v5;
  v25 = v7;
  v26 = *(a1 + 40);
  v27 = v6;
  v19 = v6;
  v20 = v7;
  v21 = v5;
  [v16 issueRequest:v17 bagKey:@"gk-tb-update-game-state" clientProxy:v18 handler:v22];
}

uint64_t sub_1000E9C54(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) setError:?];
  if (!a4)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000E9D24;
    v9[3] = &unk_1003615B0;
    v7 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = a2;
    [v7 performBlockAndWait:v9];
  }

  return (*(*(a1 + 64) + 16))();
}

void sub_1000E9D24(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) matchData];
  v3 = [NSDate dateWithTimeIntervalSinceNow:*(a1 + 48)];
  [v2 saveGameData:v4 expirationDate:v3];
}

void sub_1000E9D9C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000E9F00;
    v13[3] = &unk_100360F00;
    v3 = *(a1 + 40);
    v13[4] = *(a1 + 48);
    v14 = v2;
    v15 = *(a1 + 40);
    [v3 perform:v13];
  }

  if (*(a1 + 56))
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) clientProxy];
    v6 = [v5 replyQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000EA0C4;
    v9[3] = &unk_100361538;
    v12 = *(a1 + 56);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = v7;
    v11 = v8;
    [v4 notifyOnQueue:v6 block:v9];
  }
}

void sub_1000E9F00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = *(a1 + 40);
  v5 = [NSArray arrayWithObjects:&v10 count:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000EA00C;
  v7[3] = &unk_100362408;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v4 getDetailsForTurnBasedMatchIDs:v5 includeGameData:1 handler:v7];
}

void sub_1000EA00C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) error];

  if (!v6)
  {
    [*(a1 + 32) setError:v5];
  }

  v7 = [v8 lastObject];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"result"];

  (*(*(a1 + 40) + 16))();
}

void sub_1000EA0C4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"result"];
  v4 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v3, v4);

  v5 = [*(a1 + 40) clientProxy];
  [v5 refreshContentsForDataType:14 userInfo:0];
}

void sub_1000EA3EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000EA630;
  v16[3] = &unk_1003610B8;
  v17 = *(a1 + 40);
  v18 = *(a1 + 32);
  [v4 performBlockAndWait:v16];

  v5 = +[GKBulletinController sharedController];
  [v5 clearTurnBasedBulletinsForMatchID:*(a1 + 40)];

  v6 = *(a1 + 48);
  v20[0] = *(a1 + 40);
  v19[0] = @"session-id";
  v19[1] = @"player-status-code";
  v7 = [NSNumber numberWithUnsignedInteger:*(a1 + 64)];
  v20[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  v9 = [v6 updateRequestWithPushToken:v8];

  v10 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v11 = [*(a1 + 56) clientProxy];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000EA758;
  v13[3] = &unk_1003627C8;
  v14 = *(a1 + 32);
  v15 = v3;
  v12 = v3;
  [v10 issueRequest:v9 bagKey:@"gk-tb-resign" clientProxy:v11 handler:v13];
}

void sub_1000EA630(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) context];
  v11 = [GKTurnBasedSessionCacheObject sessionWithID:v2 inManagedObjectContext:v3];

  [v11 expire];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) context];
  [GKTurnBasedSessionListCacheObject expireListsForSessionID:v4 context:v5];

  v6 = +[GKClientProxy gameCenterClient];
  v7 = [v6 bundleIdentifier];
  v8 = [*(a1 + 40) context];
  v9 = [GKGameCacheObject gameForBundleID:v7 context:v8];
  v10 = [v9 turnBasedSessionList];
  [v10 expire];
}

uint64_t sub_1000EA758(uint64_t a1)
{
  [*(a1 + 32) setError:?];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_1000EA79C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000EA954;
    v15[3] = &unk_100360F00;
    v3 = *(a1 + 40);
    v15[4] = *(a1 + 48);
    v16 = v2;
    v17 = *(a1 + 40);
    [v3 perform:v15];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000EAB18;
    v14[3] = &unk_100361620;
    v4 = *(a1 + 40);
    v14[4] = *(a1 + 48);
    [v4 perform:v14];
  }

  if (*(a1 + 56))
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) clientProxy];
    v7 = [v6 replyQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000EABC0;
    v10[3] = &unk_100361538;
    v13 = *(a1 + 56);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = v8;
    v12 = v9;
    [v5 notifyOnQueue:v7 block:v10];
  }
}

void sub_1000EA954(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = *(a1 + 40);
  v5 = [NSArray arrayWithObjects:&v10 count:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000EAA60;
  v7[3] = &unk_100362408;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v4 getDetailsForTurnBasedMatchIDs:v5 includeGameData:1 handler:v7];
}

void sub_1000EAA60(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) error];

  if (!v6)
  {
    [*(a1 + 32) setError:v5];
  }

  v7 = [v8 lastObject];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"result"];

  (*(*(a1 + 40) + 16))();
}

void sub_1000EAB18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000EABB0;
  v6[3] = &unk_1003626B0;
  v7 = v3;
  v5 = v3;
  [v4 getTurnBasedMatchesWithHandler:v6];
}

void sub_1000EABC0(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"result"];
  v4 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v3, v4);

  v5 = [*(a1 + 40) clientProxy];
  [v5 refreshContentsForDataType:14 userInfo:0];
}

void sub_1000EB1E4(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] context];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000EB520;
  v25[3] = &unk_1003610B8;
  v26 = a1[5];
  v27 = a1[4];
  [v4 performBlockAndWait:v25];

  v5 = a1[6];
  v29[0] = a1[5];
  v28[0] = @"session-id";
  v28[1] = @"current-turn-number";
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 turnNumber]);
  v29[1] = v6;
  v28[2] = @"completion-message";
  v7 = [a1[6] message];
  v8 = v7;
  v9 = &stru_100374F10;
  if (v7)
  {
    v9 = v7;
  }

  v29[2] = v9;
  v28[3] = @"localized-completion-message";
  v10 = [a1[6] localizableMessage];
  v11 = v10;
  v12 = &__NSDictionary0__struct;
  if (v10)
  {
    v12 = v10;
  }

  v29[3] = v12;
  v28[4] = @"game-state";
  v13 = [a1[6] matchData];
  v14 = v13;
  if (!v13)
  {
    v14 = +[NSData data];
  }

  v29[4] = v14;
  v28[5] = @"players";
  v15 = [a1[6] participants];
  v16 = [v15 _gkFilterWithBlock:&stru_1003663B8];
  v28[6] = @"reason";
  v29[5] = v16;
  v29[6] = @"Game Over";
  v17 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:7];

  if (!v13)
  {
  }

  v18 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v19 = [a1[7] updateRequestWithPushToken:v17];
  v20 = [a1[8] clientProxy];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000EB6A4;
  v22[3] = &unk_1003627C8;
  v23 = a1[4];
  v24 = v3;
  v21 = v3;
  [v18 issueRequest:v19 bagKey:@"gk-tb-complete" clientProxy:v20 handler:v22];
}

void sub_1000EB520(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) context];
  v11 = [GKTurnBasedSessionCacheObject sessionWithID:v2 inManagedObjectContext:v3];

  [v11 expire];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) context];
  [GKTurnBasedSessionListCacheObject expireListsForSessionID:v4 context:v5];

  v6 = +[GKClientProxy gameCenterClient];
  v7 = [v6 bundleIdentifier];
  v8 = [*(a1 + 40) context];
  v9 = [GKGameCacheObject gameForBundleID:v7 context:v8];
  v10 = [v9 turnBasedSessionList];
  [v10 expire];
}

id sub_1000EB648(id a1, GKTurnBasedParticipantInternal *a2, unint64_t a3)
{
  v3 = a2;
  if (([(GKTurnBasedParticipantInternal *)v3 isAutomatchParticipant]& 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(GKTurnBasedParticipantInternal *)v3 serverRepresentation];
  }

  return v4;
}

uint64_t sub_1000EB6A4(uint64_t a1)
{
  [*(a1 + 32) setError:?];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_1000EB6E8(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_11;
  }

  v2 = *(a1 + 40);
  v3 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 1310, "[GKTurnBasedService completeTurnBasedMatch:scores:achievements:handler:]_block_invoke_5"];
  v4 = [v2 transactionGroupWithName:v3];

  v5 = [*(a1 + 48) error];
  if (v5)
  {
  }

  else if ([*(a1 + 56) count])
  {
    v6 = [*(a1 + 40) _requestForTurnBasedSubmitValues:*(a1 + 56) withServerLabel:@"scores" sessionID:*(a1 + 32)];
    if (v6)
    {
      v7 = [*(a1 + 40) clientProxy];
      v8 = [v7 replyQueue];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_1000EBAC0;
      v39[3] = &unk_100360F00;
      v9 = v6;
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v40 = v9;
      v41 = v10;
      v42 = v11;
      [v4 performOnQueue:v8 block:v39];
    }
  }

  v12 = [*(a1 + 48) error];
  if (!v12)
  {
    if (![*(a1 + 64) count])
    {
      goto LABEL_10;
    }

    v12 = [*(a1 + 40) _requestForTurnBasedSubmitValues:*(a1 + 64) withServerLabel:@"achievement-ids" sessionID:*(a1 + 32)];
    if (v12)
    {
      v21 = [*(a1 + 40) clientProxy];
      v22 = [v21 replyQueue];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1000EBC48;
      v35[3] = &unk_100360F00;
      v23 = v12;
      v24 = *(a1 + 40);
      v25 = *(a1 + 48);
      v36 = v23;
      v37 = v24;
      v38 = v25;
      [v4 performOnQueue:v22 block:v35];
    }
  }

LABEL_10:
  v13 = *(a1 + 48);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000EBDD0;
  v32[3] = &unk_100360F00;
  v26 = *(a1 + 32);
  v14 = v26.i64[0];
  v33 = vextq_s8(v26, v26, 8uLL);
  v34 = *(a1 + 48);
  [v13 perform:v32];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000EBF98;
  v31[3] = &unk_100361620;
  v15 = *(a1 + 48);
  v31[4] = *(a1 + 40);
  [v15 perform:v31];

LABEL_11:
  if (*(a1 + 72))
  {
    v16 = *(a1 + 48);
    v17 = [*(a1 + 40) clientProxy];
    v18 = [v17 replyQueue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000EC040;
    v27[3] = &unk_100361538;
    v30 = *(a1 + 72);
    v19 = *(a1 + 48);
    v20 = *(a1 + 40);
    v28 = v19;
    v29 = v20;
    [v16 notifyOnQueue:v18 block:v27];
  }
}

void sub_1000EBAC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) clientProxy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000EBBB4;
  v8[3] = &unk_1003627C8;
  v9 = *(a1 + 48);
  v10 = v3;
  v7 = v3;
  [v4 issueRequest:v5 bagKey:@"gk-submit-session-scores" clientProxy:v6 handler:v8];
}

void sub_1000EBBB4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) error];

    if (!v6)
    {
      [*(a1 + 32) setError:v5];
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000EBC48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) clientProxy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000EBD3C;
  v8[3] = &unk_1003627C8;
  v9 = *(a1 + 48);
  v10 = v3;
  v7 = v3;
  [v4 issueRequest:v5 bagKey:@"gk-submit-session-achievements" clientProxy:v6 handler:v8];
}

void sub_1000EBD3C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) error];

    if (!v6)
    {
      [*(a1 + 32) setError:v5];
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000EBDD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = *(a1 + 40);
  v5 = [NSArray arrayWithObjects:&v10 count:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000EBEDC;
  v7[3] = &unk_100362408;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v4 getDetailsForTurnBasedMatchIDs:v5 includeGameData:1 handler:v7];
}

void sub_1000EBEDC(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) error];

    if (!v6)
    {
      [*(a1 + 32) setError:v5];
    }
  }

  v7 = [v8 lastObject];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"result"];

  (*(*(a1 + 40) + 16))();
}

void sub_1000EBF98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000EC030;
  v6[3] = &unk_1003626B0;
  v7 = v3;
  v5 = v3;
  [v4 getTurnBasedMatchesWithHandler:v6];
}

void sub_1000EC040(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"result"];
  v4 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v3, v4);

  v5 = [*(a1 + 40) clientProxy];
  [v5 refreshContentsForDataType:14 userInfo:0];
}

void sub_1000EC428(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) context];
  v6 = [GKTurnBasedSessionCacheObject sessionWithID:v2 inManagedObjectContext:v3];

  [v6 expire];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) context];
  [GKTurnBasedSessionListCacheObject expireListsForSessionID:v4 context:v5];
}

void sub_1000EC4D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v19[0] = @"session-id";
  v4 = [*(a1 + 32) matchID];
  v5 = *(a1 + 40);
  v20[0] = v4;
  v20[1] = v5;
  v19[1] = @"participants";
  v19[2] = @"message-timeout";
  v6 = [NSNumber _gkServerTimeInterval:*(a1 + 88)];
  v7 = v6;
  v8 = &__NSDictionary0__struct;
  v9 = *(a1 + 56);
  if (*(a1 + 48))
  {
    v8 = *(a1 + 48);
  }

  v20[2] = v6;
  v20[3] = v8;
  v19[3] = @"notification-message";
  v19[4] = @"data";
  v10 = v9;
  if (!v9)
  {
    v10 = +[NSData data];
  }

  v20[4] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:5];
  if (!v9)
  {
  }

  v12 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v13 = [*(a1 + 64) updateRequestWithPushToken:v11];
  v14 = [*(a1 + 72) clientProxy];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000EC6E4;
  v16[3] = &unk_1003627C8;
  v17 = *(a1 + 80);
  v18 = v3;
  v15 = v3;
  [v12 issueRequest:v13 bagKey:@"gk-tb-send-request" clientProxy:v14 handler:v16];
}

uint64_t sub_1000EC6E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKey:@"request-id"];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:@"exchangeID"];

  [*(a1 + 32) setError:v5];
  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_1000EC774(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"exchangeID"];
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = *(a1 + 32);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000EC96C;
    v18[3] = &unk_100361F90;
    v18[4] = *(a1 + 48);
    v19 = v4;
    v20 = *(a1 + 32);
    v21 = v3;
    [v6 perform:v18];
  }

  v7 = *(a1 + 32);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000ECB58;
  v17[3] = &unk_100361620;
  v17[4] = *(a1 + 48);
  [v7 perform:v17];
  if (*(a1 + 56))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 48) clientProxy];
    v10 = [v9 replyQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000ECC00;
    v13[3] = &unk_100361538;
    v16 = *(a1 + 56);
    v11 = *(a1 + 32);
    v12 = *(a1 + 48);
    v14 = v11;
    v15 = v12;
    [v8 notifyOnQueue:v10 block:v13];
  }
}

void sub_1000EC96C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11 = *(a1 + 40);
  v5 = [NSArray arrayWithObjects:&v11 count:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000ECA8C;
  v7[3] = &unk_100361A58;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = v3;
  v6 = v3;
  [v4 getDetailsForTurnBasedMatchIDs:v5 includeGameData:1 handler:v7];
}

void sub_1000ECA8C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) error];

    if (!v6)
    {
      [*(a1 + 32) setError:v5];
    }
  }

  v7 = [v8 lastObject];
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"exchangeID"];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"match"];
  (*(*(a1 + 48) + 16))();
}

void sub_1000ECB58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000ECBF0;
  v6[3] = &unk_1003626B0;
  v7 = v3;
  v5 = v3;
  [v4 getTurnBasedMatchesWithHandler:v6];
}

void sub_1000ECC00(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"exchangeID"];
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"match"];
  v5 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v3, v4, v5);

  v6 = [*(a1 + 40) clientProxy];
  [v6 refreshContentsForDataType:14 userInfo:0];
}

void sub_1000ECF88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000ED118;
  v13[3] = &unk_1003610B8;
  v14 = *(a1 + 40);
  v15 = *(a1 + 32);
  [v4 performBlockAndWait:v13];

  v5 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v6 = [*(a1 + 48) updateRequestWithPushToken:*(a1 + 56)];
  v7 = *(a1 + 64);
  v8 = [*(a1 + 72) clientProxy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000ED1C4;
  v10[3] = &unk_1003627C8;
  v11 = *(a1 + 32);
  v12 = v3;
  v9 = v3;
  [v5 issueRequest:v6 bagKey:v7 clientProxy:v8 handler:v10];
}

void sub_1000ED118(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) context];
  v6 = [GKTurnBasedSessionCacheObject sessionWithID:v2 inManagedObjectContext:v3];

  [v6 expire];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) context];
  [GKTurnBasedSessionListCacheObject expireListsForSessionID:v4 context:v5];
}

uint64_t sub_1000ED1C4(uint64_t a1)
{
  [*(a1 + 32) setError:?];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_1000ED208(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000ED3CC;
    v15[3] = &unk_100361F90;
    v3 = *(a1 + 40);
    v15[4] = *(a1 + 48);
    v16 = v2;
    v17 = *(a1 + 40);
    v18 = *(a1 + 56);
    [v3 perform:v15];
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000ED5B8;
  v14[3] = &unk_100361620;
  v4 = *(a1 + 40);
  v14[4] = *(a1 + 48);
  [v4 perform:v14];
  if (*(a1 + 64))
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) clientProxy];
    v7 = [v6 replyQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000ED660;
    v10[3] = &unk_100361538;
    v13 = *(a1 + 64);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = v8;
    v12 = v9;
    [v5 notifyOnQueue:v7 block:v10];
  }
}

void sub_1000ED3CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11 = *(a1 + 40);
  v5 = [NSArray arrayWithObjects:&v11 count:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000ED4EC;
  v7[3] = &unk_100361A58;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = v3;
  v6 = v3;
  [v4 getDetailsForTurnBasedMatchIDs:v5 includeGameData:1 handler:v7];
}

void sub_1000ED4EC(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) error];

    if (!v6)
    {
      [*(a1 + 32) setError:v5];
    }
  }

  v7 = [v8 lastObject];
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"exchangeID"];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"match"];
  (*(*(a1 + 48) + 16))();
}

void sub_1000ED5B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000ED650;
  v6[3] = &unk_1003626B0;
  v7 = v3;
  v5 = v3;
  [v4 getTurnBasedMatchesWithHandler:v6];
}

void sub_1000ED660(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"match"];
  v4 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v3, v4);

  v5 = [*(a1 + 40) clientProxy];
  [v5 refreshContentsForDataType:14 userInfo:0];
}

void sub_1000EDF10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v5 = [*(a1 + 32) updateRequestWithPushToken:*(a1 + 40)];
  v6 = [*(a1 + 48) clientProxy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000EE018;
  v8[3] = &unk_1003627C8;
  v9 = *(a1 + 56);
  v10 = v3;
  v7 = v3;
  [v4 issueRequest:v5 bagKey:@"gk-tb-reminder" clientProxy:v6 handler:v8];
}

uint64_t sub_1000EE018(uint64_t a1)
{
  [*(a1 + 32) setError:?];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_1000EE05C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void sub_1000EE4B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) share];
  v5 = [v4 recordID];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [CKRecordID alloc];
    v9 = [*(a1 + 32) recordID];
    v10 = [v9 recordName];
    v11 = [NSString stringWithFormat:@"%@%@", @"share", v10];
    v12 = [*(a1 + 32) recordID];
    v13 = [v12 zoneID];
    v7 = [v8 initWithRecordName:v11 zoneID:v13];
  }

  v14 = [(GKService *)GKMultiplayerMatchService serviceFromService:*(a1 + 40)];
  v15 = *(a1 + 32);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000EE678;
  v17[3] = &unk_1003663E0;
  v18 = *(a1 + 48);
  v19 = v3;
  v16 = v3;
  [v14 setupInviteShareWithRecordID:v7 rootRecord:v15 handler:v17];
}

uint64_t sub_1000EE678(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 URL];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:@"url"];

  [*(a1 + 32) setError:v5];
  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_1000EE700(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:@"url"];
    v3 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v4, v3);
  }
}

void sub_1000EE9E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v37[0] = @"session-id";
  v4 = [*(a1 + 32) matchID];
  v38[0] = v4;
  v37[1] = @"num-reservations";
  v5 = [NSNumber numberWithInteger:*(a1 + 72)];
  v38[1] = v5;
  v37[2] = @"min-players";
  v6 = [NSNumber numberWithInteger:*(a1 + 80)];
  v38[2] = v6;
  v37[3] = @"max-players";
  v7 = [NSNumber numberWithInteger:*(a1 + 88)];
  v38[3] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:4];
  v9 = [NSMutableDictionary dictionaryWithDictionary:v8];

  if ([*(a1 + 40) count])
  {
    v25 = v9;
    v26 = v3;
    v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 40) count]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = *(a1 + 40);
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        v15 = 0;
        do
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v30 + 1) + 8 * v15);
          v34 = @"player-id";
          v35 = v16;
          v17 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
          v18 = [NSMutableDictionary dictionaryWithDictionary:v17];

          v19 = *(a1 + 48);
          if (v19)
          {
            [v18 setObject:v19 forKeyedSubscript:@"invite-message"];
          }

          [v10 addObject:v18];

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v13);
    }

    v9 = v25;
    [v25 setObject:v10 forKeyedSubscript:@"invites"];

    v3 = v26;
  }

  v20 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v21 = +[GKDataRequestManager sharedManager];
  v22 = [v21 updateRequestWithPushToken:v9];
  v23 = [*(a1 + 56) clientProxy];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000EED7C;
  v27[3] = &unk_1003627C8;
  v28 = *(a1 + 64);
  v29 = v3;
  v24 = v3;
  [v20 issueRequest:v22 bagKey:@"gk-tb-reserve-slots" clientProxy:v23 handler:v27];
}

uint64_t sub_1000EED7C(uint64_t a1)
{
  [*(a1 + 32) setError:?];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_1000EEDC0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v2);
  }
}

void sub_1000EF020(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = v5;
  if ([v5 code] == 2)
  {
    v7 = [v5 userInfo];
    v8 = [v7 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    v9 = [*(a1 + 32) recordID];
    v6 = [v8 objectForKeyedSubscript:v9];
  }

  if ([v6 code] == 26)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000EF1A0;
    v13[3] = &unk_1003613E8;
    v12 = *(a1 + 32);
    v10 = v12.i64[0];
    v14 = vextq_s8(v12, v12, 8uLL);
    v15 = *(a1 + 48);
    [GKCloudKitMultiplayerUtils createZoneWithName:@"com.apple.legacygaming.invites" handler:v13];
  }

  else
  {
    v11 = *(a1 + 48);
    if (v11)
    {
      (*(v11 + 16))(v11, *(a1 + 32), v6);
    }
  }
}

id *sub_1000EF1A0(id *result, uint64_t a2)
{
  if (!a2)
  {
    return [result[4] saveRecord:result[5] withHandler:result[6]];
  }

  return result;
}

void sub_1000EF464(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1000EF48C(uint64_t a1)
{
  v2 = [*(a1 + 32) clientProxy];
  v3 = [v2 bundleIdentifier];
  v4 = [*(a1 + 40) context];
  v9 = [GKGameCacheObject gameForBundleID:v3 context:v4];

  [*(a1 + 40) setObject:v9 forKeyedSubscript:@"game"];
  v5 = [v9 turnBasedSessionList];
  if ([v5 isValid])
  {
    v6 = +[GKBadgeController sharedController];
    v7 = [*(a1 + 32) clientProxy];
    v8 = [v7 bundleIdentifier];
    *(*(*(a1 + 48) + 8) + 24) = [v6 badgeCountForBundleID:v8 badgeType:2];

    *(*(*(a1 + 56) + 8) + 24) = [v5 expired];
  }
}

void sub_1000EF5CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) context];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000EF6CC;
  v11[3] = &unk_1003664A8;
  v12 = *(a1 + 48);
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v9 = *(a1 + 32);
  v13 = v7;
  v14 = v9;
  v15 = v3;
  v16 = v8;
  v10 = v3;
  [v4 loadTurnBasedMatchesForGame:v5 loadDetails:0 prefetchOnly:1 context:v6 handler:v11];
}

void sub_1000EF6CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000EF7C0;
  v9[3] = &unk_100366480;
  v10 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 64);
  v7 = *(a1 + 48);
  v11 = v5;
  v12 = v7;
  v13 = v3;
  v14 = v6;
  v8 = v3;
  [v4 performBlockAndWait:v9];

  (*(*(a1 + 56) + 16))();
}

id sub_1000EF7C0(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  [v2 refreshObject:*(a1 + 40) mergeChanges:1];

  v3 = +[GKBadgeController sharedController];
  v4 = [*(a1 + 48) clientProxy];
  v5 = [v4 bundleIdentifier];
  *(*(*(a1 + 64) + 8) + 24) = [v3 badgeCountForBundleID:v5 badgeType:2];

  v6 = *(a1 + 56);
  v7 = *(a1 + 32);

  return [v7 setError:v6];
}

void sub_1000EF878(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(*(*(a1 + 56) + 8) + 24);
  v4 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v3, v4);

  v5 = [*(a1 + 40) clientProxy];
  [v5 refreshContentsForDataType:14 userInfo:0];
}

void sub_1000EFC14(id a1)
{
  v4 = objc_alloc_init(_TtC14GameDaemonCore32GKInstrumentedURLSessionDelegate);
  v1 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  v2 = [NSURLSession sessionWithConfiguration:v1 delegate:v4 delegateQueue:0];
  v3 = qword_1003B9150;
  qword_1003B9150 = v2;
}

void sub_1000EFDB4(id a1)
{
  v1 = dispatch_semaphore_create(20);
  v2 = qword_1003B9168;
  qword_1003B9168 = v1;

  v3 = objc_opt_new();
  v4 = qword_1003B9160;
  qword_1003B9160 = v3;

  [qword_1003B9160 setName:@"com.apple.gamed.networkReplyHandler"];
  v5 = qword_1003B9160;

  [v5 setMaxConcurrentOperationCount:-1];
}

void sub_1000EFE2C(uint64_t a1)
{
  dispatch_semaphore_wait(qword_1003B9168, 0xFFFFFFFFFFFFFFFFLL);
  v2 = [*(a1 + 48) _gkForGameDaemonProcess];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000EFF14;
  v6[3] = &unk_100366560;
  v3 = *(a1 + 32);
  v7 = *(a1 + 40);
  v4 = [v2 dataTaskWithRequest:v3 completionHandler:v6];
  v5 = v4;
  if (*(a1 + 56) == 1)
  {
    [v4 set_preconnect:1];
  }

  [v5 resume];
}

void sub_1000EFF14(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  dispatch_semaphore_signal(qword_1003B9168);
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v7, v10, v8);
  }
}

void sub_1000F0674(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) clientProxy];
  (*(v1 + 16))(v1, [v2 isAppDistributorThirdParty]);
}

void sub_1000F08AC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) clientProxy];
  v3 = [v2 verifyAuthorized];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 clientProxy];
    v6 = [v5 replyQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000F09B8;
    v7[3] = &unk_100360EB0;
    v9 = *(a1 + 40);
    v8 = v3;
    dispatch_async(v6, v7);
  }

  else
  {
    [v4[5] generateIdentityVerificationSignatureWithCompletionHandler:*(a1 + 40)];
  }
}

void sub_1000F0AE4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) clientProxy];
  v3 = [v2 verifyAuthorized];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 clientProxy];
    v6 = [v5 replyQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000F0BF0;
    v7[3] = &unk_100360EB0;
    v9 = *(a1 + 40);
    v8 = v3;
    dispatch_async(v6, v7);
  }

  else
  {
    [v4[5] fetchItemsForIdentityVerificationSignature:*(a1 + 40)];
  }
}

void sub_1000F0EAC(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"%s:%d %s", "GKAuthenticationWrapperService.m", 161, "[GKAuthenticationWrapperService signOutPlayerWithOptOut:handler:]_block_invoke"];
  v3 = [GKDispatchGroup dispatchGroupWithName:v2];

  v4 = [NSError userErrorForCode:7 underlyingError:0];
  [v3 setError:v4];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F107C;
  v11[3] = &unk_1003665B0;
  v11[4] = *(a1 + 32);
  v13 = *(a1 + 48);
  v5 = v3;
  v12 = v5;
  [v5 perform:v11];
  [v5 wait];
  if (*(a1 + 40))
  {
    v6 = [*(a1 + 32) clientProxy];
    v7 = [v6 replyQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F118C;
    block[3] = &unk_100360EB0;
    v10 = *(a1 + 40);
    v9 = v5;
    dispatch_async(v7, block);
  }
}

void sub_1000F107C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v5 = *(a1 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F1144;
  v7[3] = &unk_100361198;
  v8 = *(a1 + 40);
  v9 = v3;
  v6 = v3;
  [v4 signOutPlayerWithOptOut:v5 handler:v7];
}

uint64_t sub_1000F1144(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000F118C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_1000F1310(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000F154C(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"%s:%d %s", "GKAuthenticationWrapperService.m", 209, "[GKAuthenticationWrapperService authenticateWithService:username:password:altDSID:isGame:usingFastPath:displayAuthUI:handler:]_block_invoke"];
  v3 = [GKDispatchGroup dispatchGroupWithName:v2];

  v4 = [NSError userErrorForCode:7 underlyingError:0];
  [v3 setError:v4];

  v5 = [*(a1 + 32) clientProxy];
  v6 = [v5 appInitState];
  v7 = [v6 isEqual:@"GKAppInitialized"];

  if (v7)
  {
    v8 = v22;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v9 = sub_1000F1854;
  }

  else
  {
    v10 = [*(a1 + 32) clientProxy];
    v11 = [v10 appInitState];
    if ([v11 isEqual:@"GKAppInitInProgress"])
    {
    }

    else
    {
      v12 = [*(a1 + 32) clientProxy];
      v13 = [v12 setAppInitState:@"GKAppInitInProgress"];

      if (!v13)
      {
        goto LABEL_8;
      }
    }

    v8 = v21;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v9 = sub_1000F19A8;
  }

  v8[2] = v9;
  v8[3] = &unk_1003665D8;
  v8[4] = *(a1 + 32);
  v8[5] = *(a1 + 40);
  v8[6] = *(a1 + 48);
  v8[7] = *(a1 + 56);
  *(v8 + 36) = *(a1 + 88);
  v14 = v3;
  v8[8] = v14;
  [v14 perform:v8];

LABEL_8:
  [v3 wait];
  if (*(a1 + 72))
  {
    v15 = [*(a1 + 64) clientProxy];
    v16 = [v15 replyQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F1C64;
    block[3] = &unk_100363918;
    v20 = *(a1 + 80);
    v19 = *(a1 + 72);
    v18 = v3;
    dispatch_async(v16, block);
  }
}

void sub_1000F1854(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  v9 = *(a1 + 73);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F1938;
  v11[3] = &unk_100361EF0;
  v12 = *(a1 + 64);
  v13 = v3;
  v10 = v3;
  [v4 authenticatePlayerWithUsername:v5 password:v6 altDSID:v7 isGame:v8 usingFastPath:v9 handler:v11];
}

uint64_t sub_1000F1938(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResult:a2];
  [*(a1 + 32) setError:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_1000F19A8(uint64_t a1, void *a2)
{
  v3 = a2;
  Current = CFAbsoluteTimeGetCurrent();
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 72);
  v10 = *(a1 + 73);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000F1AB4;
  v13[3] = &unk_100366600;
  v14 = v5;
  v11 = *(a1 + 64);
  v17 = Current;
  v15 = v11;
  v16 = v3;
  v12 = v3;
  [v14 authenticatePlayerWithUsername:v6 password:v7 altDSID:v8 isGame:v9 usingFastPath:v10 handler:v13];
}

void sub_1000F1AB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) clientProxy];
  v8 = [v7 appInitState];

  if (!v6 && v8 != @"GKAppInitialized")
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    v10 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "wrapper app-init state not set, returning not-authenticated", v15, 2u);
    }

    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKAccount;
    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_ERROR))
    {
      sub_10028D058(v12);
    }

    v6 = [NSError userErrorForCode:6 underlyingError:0];
  }

  [*(a1 + 40) setResult:v5];
  [*(a1 + 40) setError:v6];
  if (!os_log_GKGeneral)
  {
    v13 = GKOSLoggers();
  }

  v14 = os_log_GKPerf;
  if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
  {
    sub_10028D09C(v14);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000F1C64(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKPerf;
  if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
  {
    sub_10028D134(v3);
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) result];
  v6 = [*(a1 + 32) error];
  (*(v4 + 16))(v4, v5, v6);
}

uint64_t sub_1000F2048(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000F2D3C(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"%s:%d %s", "GKAuthenticationWrapperService.m", 550, "[GKAuthenticationWrapperService accountCreated:playerID:authenticationToken:alias:finished:handler:]_block_invoke"];
  v3 = [GKDispatchGroup dispatchGroupWithName:v2];

  v4 = [NSError userErrorForCode:7 underlyingError:0];
  [v3 setError:v4];

  v5 = [*(*(a1 + 32) + 40) clientProxy];
  [v5 setAppInitState:@"GKAppInitInProgress"];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000F2F98;
  v17[3] = &unk_100363C68;
  v13 = *(a1 + 32);
  v6 = *(&v13 + 1);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v18 = v13;
  v19 = v9;
  v20 = *(a1 + 64);
  v22 = *(a1 + 80);
  v10 = v3;
  v21 = v10;
  [v10 perform:v17];
  if (*(a1 + 72))
  {
    v11 = [*(a1 + 32) clientProxy];
    v12 = [v11 replyQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000F30F4;
    v14[3] = &unk_100360EB0;
    v16 = *(a1 + 72);
    v15 = v10;
    [v15 notifyOnQueue:v12 block:v14];
  }
}

void sub_1000F2F98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 80);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F3084;
  v11[3] = &unk_100361EF0;
  v9 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = v3;
  v10 = v3;
  [v5 accountCreated:v4 playerID:v6 authenticationToken:v7 alias:v9 finished:v8 handler:v11];
}

uint64_t sub_1000F3084(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResult:a2];
  [*(a1 + 32) setError:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_1000F30F4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_1000F334C(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"%s:%d %s", "GKAuthenticationWrapperService.m", 586, "[GKAuthenticationWrapperService accountCreated:playerID:authenticationToken:alias:altDSID:finished:handler:]_block_invoke"];
  v3 = [GKDispatchGroup dispatchGroupWithName:v2];

  v4 = [NSError userErrorForCode:7 underlyingError:0];
  [v3 setError:v4];

  v5 = [*(*(a1 + 32) + 40) clientProxy];
  [v5 setAppInitState:@"GKAppInitInProgress"];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000F35B8;
  v17[3] = &unk_100366678;
  v13 = *(a1 + 32);
  v6 = *(&v13 + 1);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v18 = v13;
  v19 = v9;
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  v23 = *(a1 + 88);
  v10 = v3;
  v22 = v10;
  [v10 perform:v17];
  if (*(a1 + 80))
  {
    v11 = [*(a1 + 32) clientProxy];
    v12 = [v11 replyQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000F3724;
    v14[3] = &unk_100360EB0;
    v16 = *(a1 + 80);
    v15 = v10;
    [v15 notifyOnQueue:v12 block:v14];
  }
}

void sub_1000F35B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 88);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000F36B4;
  v12[3] = &unk_100361EF0;
  v13 = *(a1 + 80);
  v14 = v3;
  v11 = v3;
  [v5 accountCreated:v4 playerID:v6 authenticationToken:v7 alias:v8 altDSID:v9 finished:v10 handler:v12];
}

uint64_t sub_1000F36B4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResult:a2];
  [*(a1 + 32) setError:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_1000F3724(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

uint64_t sub_1000F3910(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1000F3A44(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000F3DE8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) clientProxy];
  v3 = [v2 verifyAuthorized];

  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKAccount;
    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_ERROR))
    {
      sub_10028D1CC(v3, v5);
    }

    v6 = [*(a1 + 40) _gkReplyHandlerInvocation];
    v7 = [*(a1 + 32) clientProxy];
    v8 = [v7 replyQueue];
    [v6 _gkCallbackWithError:v3 queue:v8];
  }

  else
  {
    [*(a1 + 40) invokeWithTarget:*(*(a1 + 32) + 40)];
  }
}

void sub_1000F49A4(uint64_t a1, void *a2)
{
  [a2 _gkMapDictionaryWithKeyPath:@"playerID"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F4A78;
  v9 = v8[3] = &unk_1003666C8;
  v3 = *(a1 + 32);
  v10 = *(a1 + 40);
  v4 = v9;
  [v3 enumerateObjectsUsingBlock:v8];
  (*(*(a1 + 48) + 16))(*(a1 + 48), v5, v6, v7);
}

void sub_1000F4A78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 player];
  v5 = [v4 playerID];

  if (!v5)
  {
LABEL_9:
    v7 = *(a1 + 40);
    goto LABEL_10;
  }

  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v7 = v6;
  if (!v6 || ([v6 displayNameWithOptions:0], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, !v9))
  {
    v10 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
      v10 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_10028D244(v5, v3, v10);
    }

    goto LABEL_9;
  }

LABEL_10:
  [v3 setPlayer:v7];
}

void sub_1000F51BC(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:a2];
  if (a1[4])
  {
    v7 = [a1[5] leaderboardForServerRepresentations:?];
    v8 = [a1[4] objectForKeyedSubscript:@"results"];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000F53E8;
    v19[3] = &unk_1003666F0;
    v19[4] = a1[5];
    v9 = v7;
    v20 = v9;
    v10 = [v8 _gkMapWithBlock:v19];
    [v9 setScores:v10];

    v11 = [a1[4] objectForKeyedSubscript:@"player-score"];
    if ([v11 count])
    {
      v12 = [a1[5] scoreForServerRepresentation:v11 leaderboard:v9];
      v13 = [v6 internalRepresentation];
      [v12 setPlayer:v13];

      [v9 setPlayerScore:v12];
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000F53F8;
    v16[3] = &unk_100360F00;
    v14 = a1[6];
    v16[4] = a1[5];
    v17 = v9;
    v18 = a1[7];
    v15 = v9;
    [v14 perform:v16];
    [a1[6] setResult:v15];
  }

  v5[2](v5);
}

void sub_1000F53F8(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F54A4;
  v8[3] = &unk_100360FA0;
  v9 = v3;
  v7 = v3;
  [v4 updatePlayersForLeaderboard:v5 service:v6 handler:v8];
}

void sub_1000F54B4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) result];
  (*(v1 + 16))(v1, v2);
}

void sub_1000F5720(id *a1, void *a2)
{
  v3 = a2;
  v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v5 = [a1[4] serverRequestWithService:a1[5]];
  v6 = [a1[4] bagKey];
  v7 = [a1[5] clientProxy];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000F5888;
  v15[3] = &unk_100364BF0;
  v8 = a1[6];
  v14 = *(a1 + 2);
  v9 = v14.i64[1];
  v10 = a1[7];
  v11.i64[0] = v8;
  v11.i64[1] = v10;
  v12 = vzip2q_s64(v14, v11);
  v11.i64[1] = v14.i64[0];
  v17 = v12;
  v16 = v11;
  v18 = v3;
  v13 = v3;
  [v4 issueRequest:v5 bagKey:v6 clientProxy:v7 handler:v15];
}

void sub_1000F5888(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v7 = a2;
  [*(a1 + 32) setError:a3];
  if (v7 && !a3)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000F59A0;
    v13[3] = &unk_100366740;
    v12 = *(a1 + 32);
    v13[4] = *(a1 + 40);
    v14 = v7;
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v18 = a4;
    v17 = *(a1 + 32);
    [v12 perform:v13];
  }

  (*(*(a1 + 64) + 16))(*(a1 + 64), v8, v9, v10, v11);
}

void sub_1000F59A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000F5A7C;
  v10[3] = &unk_100366718;
  v11 = *(a1 + 64);
  v12 = v3;
  v9 = v3;
  [v4 generateScoresFromServerResponse:v5 service:v6 context:v7 timeToLive:v10 handler:v8];
}

uint64_t sub_1000F5A7C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setResult:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000F5AC4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_1000F5FC8(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:a2];
  v7 = [v6 internalRepresentation];
  v8 = [a1[4] leaderboardForServerRepresentations:a1[5]];
  v9 = [a1[5] objectForKeyedSubscript:@"results"];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000F629C;
  v27[3] = &unk_100366788;
  v27[4] = a1[4];
  v10 = v8;
  v28 = v10;
  v11 = [v9 _gkMapWithBlock:v27];
  v12 = [v11 _gkMapDictionaryWithKeyPath:@"player.playerID"];
  v13 = [a1[4] playerInternals];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000F62AC;
  v25[3] = &unk_1003667B0;
  v14 = v12;
  v26 = v14;
  v15 = [v13 _gkFilterWithBlock:v25];
  [v10 setScores:v15];

  v16 = [v7 playerID];

  if (v16)
  {
    v17 = [v7 playerID];
    v18 = [v14 objectForKeyedSubscript:v17];
    [v10 setPlayerScore:v18];

    v19 = [v10 playerScore];
    [v19 setPlayer:v7];
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000F6308;
  v22[3] = &unk_100360F00;
  v22[4] = a1[4];
  v23 = v10;
  v20 = a1[6];
  v24 = a1[7];
  v21 = v10;
  [v20 perform:v22];
  [a1[6] setResult:v21];
  v5[2](v5);
}

id sub_1000F62AC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 playerID];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

void sub_1000F6308(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F63B4;
  v8[3] = &unk_100360FA0;
  v9 = v3;
  v7 = v3;
  [v4 updatePlayersForLeaderboard:v5 service:v6 handler:v8];
}

void sub_1000F63C4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) result];
  (*(v1 + 16))(v1, v2);
}

void sub_1000F6648(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v5 = [*(a1 + 32) serverRequestWithService:*(a1 + 40)];
  v6 = [*(a1 + 32) bagKey];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000F6774;
  v12[3] = &unk_100364BF0;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = v8;
  v14 = v9;
  v15 = v10;
  v16 = *(a1 + 64);
  v17 = v3;
  v11 = v3;
  [v4 issueRequest:v5 bagKey:v6 clientProxy:v7 handler:v12];
}

void sub_1000F6774(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  [*(a1 + 32) setError:v8];
  if (v7 && !v8)
  {
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1000F68A4;
    v13 = &unk_100366740;
    v9 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = v7;
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    v19 = a4;
    v18 = *(a1 + 32);
    [v9 perform:&v10];
  }

  [*(a1 + 32) setError:{v8, v10, v11, v12, v13, v14}];
  (*(*(a1 + 64) + 16))();
}

void sub_1000F68A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000F6980;
  v10[3] = &unk_100366718;
  v11 = *(a1 + 64);
  v12 = v3;
  v9 = v3;
  [v4 generateScoresFromServerResponse:v5 service:v6 context:v7 timeToLive:v10 handler:v8];
}

uint64_t sub_1000F6980(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setResult:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000F69C8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_1000F6BD4(id a1)
{
  v6 = *off_100366828;
  v7 = *off_100366838;
  v8 = @"Media";
  *keys = *off_100366808;
  v5 = *off_100366818;
  v2[0] = xmmword_1002C2A68;
  v2[1] = unk_1002C2A78;
  v2[2] = xmmword_1002C2A88;
  v2[3] = unk_1002C2A98;
  v3 = 1024;
  qword_1003B9178 = CFDictionaryCreate(kCFAllocatorDefault, keys, v2, 9, &kCFTypeDictionaryKeyCallBacks, 0);
  for (i = 8; i != -1; --i)
  {
  }
}

id sub_1000F7484(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v7 = a2;
  v3 = a2;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [v2 resourceIdentifierForKeys:{v4, v7}];

  return v5;
}

void sub_1000F7648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_1000F7660(uint64_t a1, void *a2)
{
  result = [a2 hash];
  *(*(*(a1 + 32) + 8) + 24) ^= result;
  return result;
}

void sub_1000F79DC(id a1)
{
  qword_1003B9188 = objc_alloc_init(GKInviteURLManager);

  _objc_release_x1();
}

void sub_1000F7C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F7C3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000F7DF0(id a1)
{
  qword_1003B9198 = objc_alloc_init(_TtC14GameDaemonCore26GKCloudKitMultiplayerCache);

  _objc_release_x1();
}

void sub_1000F7FE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v7 = v3;
  if (v3)
  {
    v5 = [*(a1 + 32) ownerName];
    v6 = [v7 recordName];
    (*(v4 + 16))(v4, [v5 isEqualToString:v6]);
  }

  else
  {
    (*(v4 + 16))(v4, 0);
  }
}

void sub_1000F813C(uint64_t a1, char a2)
{
  if (a2)
  {
    +[GKCloudKitMultiplayerUtils privateDatabase];
  }

  else
  {
    +[GKCloudKitMultiplayerUtils sharedDatabase];
  }
  v3 = ;
  (*(*(a1 + 32) + 16))();
}

void sub_1000F8560(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F8628;
  v8[3] = &unk_100361198;
  v6 = *(a1 + 48);
  v9 = *(a1 + 40);
  v10 = v3;
  v7 = v3;
  [v6 handleLegacyShareMetadata:v4 needsAccept:v5 completionHandler:v8];
}

uint64_t sub_1000F8628(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000F8670(uint64_t a1)
{
  v2 = +[GKInviteURLManager sharedManager];
  v3 = [v2 acceptingInProgressRecordIDs];
  [v3 removeObject:*(a1 + 32)];

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = [*(a1 + 40) error];
    (*(v4 + 16))(v4, v5);
  }
}

void sub_1000F88D8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Accepting CKShareMetadata for Messages multiplayer invite.", buf, 2u);
  }

  v6 = [*(a1 + 32) rootRecordID];
  v7 = +[GKInviteURLManager sharedManager];
  [v7 setMostRecentInviteShareRootRecordID:v6];

  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = +[GKPreferences shared];
  v11 = [v10 maxPlayersP2P];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000F8A54;
  v13[3] = &unk_100361198;
  v14 = *(a1 + 40);
  v15 = v3;
  v12 = v3;
  [v8 acceptShareMetadata:v9 retryCount:v11 completionHandler:v13];
}

void sub_1000F8A54(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_10028D540();
    }

    [*(a1 + 32) setError:v3];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000F8AF0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Fetching share record for multiplayer invite to generate initiate bulletin.", buf, 2u);
  }

  v6 = [*(a1 + 32) rootRecordID];
  v7 = [v6 zoneID];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F8C54;
  v11[3] = &unk_100366958;
  v12 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v14 = v3;
  v15 = v9;
  v13 = v8;
  v10 = v3;
  [GKCloudKitMultiplayer databaseForZoneID:v7 withCompletionHandler:v11];
}

void sub_1000F8C54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) rootRecordID];
  v14 = v4;
  v5 = [NSArray arrayWithObjects:&v14 count:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F8DB4;
  v9[3] = &unk_100366930;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = v3;
  v8 = *(a1 + 48);
  v6 = v8;
  v13 = v8;
  v7 = v3;
  [GKCloudKitMultiplayerUtils fetchShareRecordsWithRecordIDs:v5 inDatabase:v7 handler:v9];
}

void sub_1000F8DB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_10028D5A8();
    }

    [*(a1 + 32) setError:v6];
  }

  else
  {
    v8 = [*(a1 + 40) rootRecordID];
    v9 = +[GKInviteURLManager sharedManager];
    [v9 setMostRecentInviteShareRootRecordID:v8];

    v10 = [*(a1 + 40) rootRecordID];
    v11 = [v5 objectForKeyedSubscript:v10];

    [*(a1 + 64) generateAndStoreInviteBulletinForRecord:v11 database:*(a1 + 48)];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1000F8EDC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v2);
  }
}

void sub_1000F90E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v13 = [*(a1 + 32) rootRecordID];
    v14 = [v13 zoneID];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000F93F8;
    v25[3] = &unk_1003669A8;
    v26 = *(a1 + 32);
    v19 = *(a1 + 40);
    v15 = v19;
    v27 = v19;
    [GKCloudKitMultiplayer databaseForZoneID:v14 withCompletionHandler:v25];

    v12 = v26;
LABEL_13:

    goto LABEL_16;
  }

  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    sub_10028D610();
  }

  if ([GKCloudKitMultiplayerUtils shouldRetryForError:v3 andRetryCount:*(a1 + 56)])
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v18 = *(a1 + 56);
      *buf = 138412802;
      v29 = v17;
      v30 = 2112;
      v31 = v3;
      v32 = 1024;
      v33 = v18;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error accepting CloudKit share metadata %@ due to: %@. Will retry at most %d times.", buf, 0x1Cu);
    }

    v7 = [v3 userInfo];
    v8 = [v7 valueForKey:CKErrorRetryAfterKey];
    [v8 doubleValue];
    v10 = v9;

    v11 = dispatch_time(0, 1000000000 * v10);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F9664;
    block[3] = &unk_1003669D0;
    v23 = *(a1 + 48);
    v21 = *(a1 + 32);
    v24 = *(a1 + 56);
    v22 = *(a1 + 40);
    dispatch_after(v11, &_dispatch_main_q, block);

    v12 = v21;
    goto LABEL_13;
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v3);
  }

LABEL_16:
}

void sub_1000F93F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) rootRecordID];
  v13 = v4;
  v5 = [NSArray arrayWithObjects:&v13 count:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F9544;
  v9[3] = &unk_100366980;
  v10 = *(a1 + 32);
  v11 = v3;
  v8 = *(a1 + 40);
  v6 = v8;
  v12 = v8;
  v7 = v3;
  [GKCloudKitMultiplayerUtils fetchShareRecordsWithRecordIDs:v5 inDatabase:v7 handler:v9];
}

void sub_1000F9544(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_10028D5A8();
    }
  }

  else
  {
    v8 = [*(a1 + 32) rootRecordID];
    v9 = +[GKInviteURLManager sharedManager];
    [v9 setMostRecentInviteShareRootRecordID:v8];

    v10 = [*(a1 + 32) rootRecordID];
    v11 = [v5 objectForKeyedSubscript:v10];

    [*(a1 + 56) generateAndStoreInviteBulletinForRecord:v11 database:*(a1 + 40)];
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, v6);
  }
}

void sub_1000FA744(uint64_t a1, void *a2)
{
  v3 = a2;
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v24[2] = objc_opt_class();
  v24[3] = objc_opt_class();
  v24[4] = objc_opt_class();
  v4 = [NSArray arrayWithObjects:v24 count:5];
  v5 = [NSSet setWithArray:v4];
  v6 = [*(a1 + 32) objectForKeyedSubscript:@"connectionData"];
  v21 = 0;
  v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v5 fromData:v6 error:&v21];
  v8 = v21;

  if (v8)
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_10028D830();
    }

    v3[2](v3);
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    v11 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Unarchived recordDictionary from invite record: %@", buf, 0xCu);
    }

    v12 = [v7 objectForKeyedSubscript:@"invite-type"];
    v13 = [v12 integerValue];

    if (v13 == 1)
    {
      v14 = [GKCloudKitMultiplayer packFakeTurnBasedBulletinWithZoneData:v7];
      v15 = +[GKDataRequestManager sharedManager];
      [v15 processIncomingiMessageInvite:v14];

      v3[2](v3);
    }

    else
    {
      v17 = *(a1 + 32);
      v16 = *(a1 + 40);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000FAA64;
      v18[3] = &unk_100366A20;
      v19 = v7;
      v20 = v3;
      [GKCloudKitMultiplayer searchAndSaveIdentityForRecord:v17 database:v16 completionHandler:v18];
    }
  }
}

void sub_1000FAA64(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Updated Messages invite record save completed: %@", &v14, 0xCu);
    }

    v10 = [GKCloudKitMultiplayer packFakeRealTimeBulletinWithZoneData:*(a1 + 32)];
    v11 = +[GKDataRequestManager sharedManager];
    [(__CFString *)v11 processIncomingiMessageInvite:v10];
    goto LABEL_7;
  }

  if (!v6)
  {
    v10 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings MESSAGE_BASED_INVITEE_ERROR_ALERT_TITLE];
    v11 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings MESSAGE_BASED_INVITEE_NOT_FOUND_ALERT_BODY];
    v13 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings MESSAGE_BASED_INVITEE_ERROR_ALERT_BUTTON];
    CFUserNotificationDisplayNotice(0.0, 0, 0, 0, 0, v10, v11, v13);

LABEL_7:
    goto LABEL_13;
  }

  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
  {
    sub_10028D89C();
  }

LABEL_13:
  (*(*(a1 + 40) + 16))();
}

void sub_1000FAC50(id a1)
{
  v1 = +[GKInviteURLManager sharedManager];
  [v1 setMostRecentInviteShareRootRecordID:0];
}

void sub_1000FACE0(id a1)
{
  qword_1003B91A8 = dispatch_queue_create("com.apple.GameKit.messageServicesQueue", 0);

  _objc_release_x1();
}

void sub_1000FADD0(uint64_t a1)
{
  v2 = +[IMDaemonController sharedInstance];
  [v2 blockUntilConnected];

  v12 = +[IMService iMessageService];
  v3 = +[IMAccountController sharedInstance];
  v4 = [v3 accountsForService:v12];
  v5 = qword_1003B91B8;
  qword_1003B91B8 = v4;

  v6 = +[IMAccountController sharedInstance];
  v7 = +[IMService smsService];
  v8 = [v6 accountsForService:v7];

  if (qword_1003B91B8)
  {
    v9 = [qword_1003B91B8 arrayByAddingObjectsFromArray:v8];
  }

  else
  {
    v9 = v8;
  }

  v10 = qword_1003B91B8;
  qword_1003B91B8 = v9;

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, qword_1003B91B8);
  }
}

void sub_1000FB2B4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v79 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GK-InviteMessage: got IM accounts: %@", buf, 0xCu);
  }

  v60 = v3;
  v87[0] = objc_opt_class();
  v87[1] = objc_opt_class();
  v87[2] = objc_opt_class();
  v87[3] = objc_opt_class();
  v6 = [NSArray arrayWithObjects:v87 count:4];
  v7 = [NSSet setWithArray:v6];
  v8 = [*(a1 + 32) objectForKeyedSubscript:@"invitedPlayers"];
  v77 = 0;
  v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v7 fromData:v8 error:&v77];
  v10 = v77;
  v11 = [NSMutableDictionary dictionaryWithDictionary:v9];

  if (v10)
  {
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_10028D95C();
    }
  }

  if (!os_log_GKGeneral)
  {
    v13 = GKOSLoggers();
  }

  v62 = v10;
  v14 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v79 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "GK-InviteMessage:playerContacts: %@", buf, 0xCu);
  }

  v15 = +[NSMutableDictionary dictionary];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v63 = v11;
  v16 = [v11 allKeys];
  v17 = [v16 countByEnumeratingWithState:&v73 objects:v86 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v74;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v74 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v73 + 1) + 8 * i);
        v22 = [*(a1 + 64) formattedContact:v21];
        v23 = +[NSMutableString string];

        if (v22 == v23)
        {
          if (!os_log_GKGeneral)
          {
            v25 = GKOSLoggers();
          }

          v26 = os_log_GKMatch;
          if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v79 = v22;
            v80 = 2112;
            v81 = v21;
            _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "formattedPlayerContact (%@) is neither phone num nor email address. it's from playerContact: %@", buf, 0x16u);
          }
        }

        else if (IMStringIsPhoneNumber())
        {
          v24 = [*(a1 + 64) lastSevenDigits:v22];
          [v15 setObject:v21 forKey:v24];
        }

        else
        {
          [v15 setObject:v21 forKey:v22];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v73 objects:v86 count:16];
    }

    while (v18);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v27 = v60;
  v58 = [v27 countByEnumeratingWithState:&v69 objects:v85 count:16];
  if (!v58)
  {
    goto LABEL_58;
  }

  v28 = *v70;
  v61 = v27;
  v57 = *v70;
  do
  {
    v29 = 0;
    do
    {
      if (*v70 != v28)
      {
        objc_enumerationMutation(v27);
      }

      v30 = *(*(&v69 + 1) + 8 * v29);
      if (!os_log_GKGeneral)
      {
        v31 = GKOSLoggers();
      }

      v59 = v29;
      v32 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v79 = v30;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "GK-InviteMessage:checking (local) account: %@", buf, 0xCu);
      }

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v33 = [v30 aliases];
      v34 = [v33 countByEnumeratingWithState:&v65 objects:v84 count:16];
      if (!v34)
      {
        goto LABEL_56;
      }

      v35 = v34;
      v36 = *v66;
      while (2)
      {
        for (j = 0; j != v35; j = j + 1)
        {
          if (*v66 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [*(a1 + 64) formattedContact:*(*(&v65 + 1) + 8 * j)];
          v39 = [v15 objectForKey:v38];
          if (v39)
          {
          }

          else
          {
            v40 = [*(a1 + 64) lastSevenDigits:v38];
            v41 = [v15 objectForKey:v40];

            if (!v41)
            {
              goto LABEL_54;
            }
          }

          v42 = [v15 objectForKey:v38];
          if (!v42)
          {
            v43 = [*(a1 + 64) lastSevenDigits:v38];
            v42 = [v15 objectForKey:v43];
          }

          v44 = [v63 objectForKey:v42];

          if (v44)
          {
            [v63 setObject:*(a1 + 40) forKey:v42];
            v64 = [NSKeyedArchiver archivedDataWithRootObject:v63 requiringSecureCoding:1 error:0];
            [*(a1 + 32) setObject:? forKeyedSubscript:?];
            if (!os_log_GKGeneral)
            {
              v51 = GKOSLoggers();
            }

            v52 = os_log_GKMatch;
            v27 = v61;
            if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
            {
              v53 = *(a1 + 40);
              *buf = 138412546;
              v79 = v53;
              v80 = 2112;
              v81 = v63;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "GK-InviteMessage: Found a match (formatted)->saving into invite CKRecord: %@ <- %@", buf, 0x16u);
            }

            v54 = *(a1 + 32);
            v55 = *(a1 + 48);
            v56 = +[GKPreferences shared];
            +[GKCloudKitMultiplayerUtils saveInviteRecord:database:retryCount:completionHandler:](GKCloudKitMultiplayerUtils, "saveInviteRecord:database:retryCount:completionHandler:", v54, v55, [v56 maxPlayersP2P], *(a1 + 56));

            v48 = v63;
            v50 = v62;
            goto LABEL_69;
          }

          if (!os_log_GKGeneral)
          {
            v45 = GKOSLoggers();
          }

          v46 = os_log_GKMatch;
          if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v79 = v42;
            v80 = 2112;
            v81 = v63;
            v82 = 2112;
            v83 = v15;
            _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "cannot find key: %@ in the playerContacts: %@. Currently the formattedPlayerContacts: %@", buf, 0x20u);
          }

LABEL_54:
        }

        v35 = [v33 countByEnumeratingWithState:&v65 objects:v84 count:16];
        if (v35)
        {
          continue;
        }

        break;
      }

LABEL_56:

      v29 = v59 + 1;
      v27 = v61;
      v28 = v57;
    }

    while ((v59 + 1) != v58);
    v58 = [v61 countByEnumeratingWithState:&v69 objects:v85 count:16];
  }

  while (v58);
LABEL_58:

  if (!os_log_GKGeneral)
  {
    v47 = GKOSLoggers();
  }

  v48 = v63;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
  {
    sub_10028D9C8();
  }

  v49 = *(a1 + 56);
  v50 = v62;
  if (v49)
  {
    (*(v49 + 16))(v49, 0, v62);
  }

LABEL_69:
}

void sub_1000FBCE4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028DA3C();
    }

    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028DAA4(a1, v12, v13, v14, v15, v16, v17, v18);
    }
  }
}

void sub_1000FCE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000FCEAC(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v3 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
    v3 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10028DC0C(v3, a2);
  }
}

id _localPlayerID()
{
  v0 = +[GKPreferences shared];
  v1 = [v0 networkManagerUserOverride];

  if ([v1 length])
  {
    v2 = v1;
  }

  else
  {
    v3 = +[GKClientProxy gameCenterClient];
    v4 = +[GKPlayerCredentialController sharedController];
    v5 = [v4 pushCredentialForEnvironment:{objc_msgSend(v3, "environment")}];
    v6 = [v5 playerInternal];

    v2 = [v6 playerID];
  }

  return v2;
}

id mergeValuesForKeyWithDictionary(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 mutableCopy];
  [v4 addEntriesFromDictionary:v3];

  v5 = [v4 copy];

  return v5;
}

void sub_1000FDB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000FDB28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setFairPlaySessionReady:v6 == 0];
  if (([WeakRetained fairPlaySessionReady] & 1) == 0)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028DCC8(v6, v9);
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v5);
  }
}

void sub_1000FE250(id a1)
{
  v1 = [[GKNetworkRequestManager alloc] initWithInMemoryEntityCache:0];
  v2 = qword_1003B91C0;
  qword_1003B91C0 = v1;

  v3 = qword_1003B91C0;

  [v3 setupSessionsAsync];
}

void sub_1000FE5D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FE67C;
  block[3] = &unk_100361770;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void sub_1000FE67C(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v14;
    *&v3 = 138412290;
    v12 = v3;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        if (!os_log_GKGeneral)
        {
          v8 = GKOSLoggers();
        }

        v9 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          v10 = v9;
          v11 = [GKNetworkRequestManager dictionaryFromTaskDescription:v7];
          *buf = v12;
          v18 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "GKNetworkRequestManager taskDescription: %@", buf, 0xCu);
        }

        [v7 cancel];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v1 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v4);
  }
}

void sub_1000FEA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000FEA34(uint64_t a1)
{
  v1 = a1;
  if ([*(a1 + 32) managerReady])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = *(v1 + 40);
    v2 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v23;
      v19 = v1;
      v20 = *v23;
      while (2)
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v23 != v4)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v22 + 1) + 8 * i);
          v7 = [*(v1 + 32) existingTasks];
          v8 = [v7 objectForKeyedSubscript:v6];

          if (v8)
          {
            v9 = _localPlayerID();
            v10 = [v8 objectForKeyedSubscript:v9];
            v11 = v10;
            if (v10)
            {
              v12 = [v10 currentTasks];
              v13 = [v12 allKeys];
              if ([v13 count])
              {

LABEL_17:
                *(*(*(v1 + 48) + 8) + 24) = 1;

                goto LABEL_18;
              }

              v14 = [v11 pendingRequests];
              [v14 allKeys];
              v15 = v9;
              v17 = v16 = v3;
              v18 = [v17 count];

              v3 = v16;
              v9 = v15;

              v1 = v19;
              v4 = v20;

              if (v18)
              {
                goto LABEL_17;
              }
            }
          }
        }

        v3 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }

  else
  {
    *(*(*(v1 + 48) + 8) + 24) = 0;
  }
}

void sub_1000FF6E8(uint64_t a1)
{
  v2 = [*(a1 + 32) dictionaryForBagAndPlayer:*(a1 + 40) createIfNotPresent:0 description:0];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 currentTasks];
    v4 = [*(a1 + 40) requestIdentifier];
    [v3 setObject:0 forKeyedSubscript:v4];
  }

  else if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(a1 + 40) removeFromStore:v2];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 40);
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKNetworkRequestManager error when trying to remove from store: %@", &v13, 0xCu);
    }
  }

  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    v11 = v9;
    v12 = [v10 existingTasks];
    v13 = 138412290;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "GKNetworkRequestManager handleTaskFinished state after update: %@", &v13, 0xCu);
  }
}

void sub_1000FF95C(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "GKNetworkRequestManager setupSessionsAsync", buf, 2u);
  }

  [*(a1 + 32) getFairPlaySession:0];
  v4 = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:@"com.apple.gamed.networking.background"];
  [*(a1 + 32) setBackgroundConfig:v4];

  v5 = [*(a1 + 32) backgroundConfig];
  [v5 setDiscretionary:0];

  v6 = [[GKNetworkRequestManagerSessionDelegate alloc] initWithNetworkManager:*(a1 + 32)];
  [*(a1 + 32) setBackgroundTasksSessionDelegate:v6];

  v7 = [*(a1 + 32) backgroundConfig];
  v8 = [*(a1 + 32) backgroundTasksSessionDelegate];
  v9 = [*(a1 + 32) operationQueue];
  v10 = [NSURLSession sessionWithConfiguration:v7 delegate:v8 delegateQueue:v9];
  [*(a1 + 32) setBackgroundSession:v10];

  [*(a1 + 32) setCurrentState:1];
  v11 = [*(a1 + 32) backgroundSession];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000FFB54;
  v12[3] = &unk_100366B48;
  v12[4] = *(a1 + 32);
  [v11 getAllTasksWithCompletionHandler:v12];
}

void sub_1000FFB54(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 count]);
    *buf = 138412290;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKNetworkRequestManager setupSessionsAsync tasks: %@", buf, 0xCu);
  }

  if (v3)
  {
    v8 = [*(a1 + 32) stateQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000FFCD8;
    v11[3] = &unk_1003610B8;
    v9 = v3;
    v10 = *(a1 + 32);
    v12 = v9;
    v13 = v10;
    dispatch_async(v8, v11);
  }
}

void sub_1000FFCD8(uint64_t a1)
{
  v1 = a1;
  v37 = [*(a1 + 32) count];
  if (v37 < 61 || ([*(v1 + 40) reportedExessiveRequests] & 1) != 0)
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v2 = objc_alloc_init(NSMutableDictionary);
    v3 = 1;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = *(v1 + 32);
  v4 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
  v38 = v1;
  if (v4)
  {
    v5 = v4;
    v6 = *v45;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v45 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v44 + 1) + 8 * i);
        if (!os_log_GKGeneral)
        {
          v9 = GKOSLoggers();
        }

        v10 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          v11 = v10;
          v12 = [GKNetworkRequestManager dictionaryFromTaskDescription:v8];
          *buf = 138412290;
          v52 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "GKNetworkRequestManager setupSessionsAsync task: %@", buf, 0xCu);
        }

        v13 = [GKNetworkRequestManager networkRequestFromNsurlTask:v8];
        v14 = v13;
        if (v13)
        {
          [v13 setCurrentlyRunning:1];
          v15 = *(v1 + 40);
          v16 = [v14 taskInfo];
          [v15 addNetworkRequest:v14 description:v16 clientProxy:0];

          if (v3)
          {
            v17 = [objc_opt_class() bagKey];
            v18 = [v2 objectForKeyedSubscript:v17];
            if (v18)
            {
              v19 = v18;
              v20 = [[NSNumber alloc] initWithInt:{objc_msgSend(v18, "intValue") + 1}];

              [v2 setObject:v20 forKeyedSubscript:v17];
              v1 = v38;
            }

            else
            {
              [v2 setObject:&off_100382598 forKeyedSubscript:v17];
            }
          }
        }

        else
        {
          if (!os_log_GKGeneral)
          {
            v21 = GKOSLoggers();
          }

          v22 = os_log_GKDaemon;
          if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "GKNetworkRequestManager got an invalid request, skipping", buf, 2u);
          }

          [v8 cancel];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v5);
  }

  if (v3)
  {
    v23 = objc_alloc_init(NSString);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v24 = [v2 allKeys];
    v25 = [v24 countByEnumeratingWithState:&v40 objects:v50 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v41;
      do
      {
        v28 = 0;
        v29 = v23;
        do
        {
          if (*v41 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v30 = *(*(&v40 + 1) + 8 * v28);
          v31 = [v2 objectForKeyedSubscript:v30];
          v23 = [NSString stringWithFormat:@"%@ %@:%@", v29, v30, v31];

          v28 = v28 + 1;
          v29 = v23;
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v40 objects:v50 count:16];
      }

      while (v26);
    }

    v48[0] = @"concurrentCount";
    v32 = [NSNumber numberWithLong:v37];
    v48[1] = @"concurrentBreakDown";
    v49[0] = v32;
    v49[1] = v23;
    v33 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:2];

    if (!os_log_GKGeneral)
    {
      v34 = GKOSLoggers();
    }

    v35 = os_log_GKDaemon;
    v1 = v38;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v52 = v33;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "GKNetworkRequestManager sending event %@", buf, 0xCu);
    }

    v36 = +[GKReporter reporter];
    [v36 reportEvent:GKReporterDomainNetworkRequests type:GKNetworkRequestCount payload:v33];

    [*(v38 + 40) setReportedExessiveRequests:1];
  }

  [*(v1 + 40) setCurrentState:2];
}

void sub_10010026C(id a1)
{
  v4 = @"x-gk-release-state";
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_1003B91D0;
  qword_1003B91D0 = v2;
}

void sub_100100368(id a1)
{
  v4[0] = @"gk-get-activity-feed";
  v4[1] = @"gk-get-friends-latest-activity";
  v4[2] = @"gk-challenge-accept";
  v4[3] = @"gk-challenge-compare";
  v4[4] = @"gk-challenge-create";
  v4[5] = @"gk-challenge-create-invite-code";
  v4[6] = @"gk-challenge-detail";
  v4[7] = @"gk-challenge-get-completed";
  v4[8] = @"gk-challenge-get-completed-summary";
  v4[9] = @"gk-challenge-invite";
  v4[10] = @"gk-challenge-leave";
  v4[11] = @"gk-challenge-summary";
  v4[12] = @"gk-accept-friend-invitation";
  v4[13] = @"gk-cancel-friend-invitation";
  v4[14] = @"gk-ignore-friend-invitation";
  v4[15] = GKBagKeyGetFriendInvitationMailbox;
  v4[16] = @"gk-send-friend-invitation";
  v1 = [NSArray arrayWithObjects:v4 count:17];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_1003B91E0;
  qword_1003B91E0 = v2;
}

void sub_10010077C(uint64_t a1)
{
  v2 = [GKNetworkRequestManager getGameDescriptorForRequest:*(a1 + 32)];
  v3 = [GKNetworkRequestManager getPostDataForRequest:*(a1 + 32) bagKey:*(a1 + 40)];
  v4 = +[GKDataRequestManager sharedManager];
  v5 = [v4 pushToken];
  v6 = [v4 storeBag];
  v7 = [v6 APNSRequired];
  v8 = [v7 containsObject:*(a1 + 40)];

  v9 = [*(a1 + 48) authenticationToken];
  v10 = v9;
  v11 = &stru_100374F10;
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  if (![(__CFString *)v12 length])
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028DD7C(v14);
    }
  }

  v15 = *(a1 + 40);
  v16 = [*(a1 + 56) stateQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100100A08;
  v22[3] = &unk_100366BB0;
  v33 = *(a1 + 88);
  v23 = v6;
  v24 = *(a1 + 48);
  v25 = v12;
  v26 = v5;
  v27 = *(a1 + 64);
  v28 = v2;
  v29 = v3;
  v34 = v8;
  v30 = *(a1 + 72);
  v31 = *(a1 + 40);
  v32 = *(a1 + 80);
  v17 = v3;
  v18 = v2;
  v19 = v5;
  v20 = v12;
  v21 = v6;
  [v21 getURLForKey:v15 queue:v16 handler:v22];
}

void sub_100100A08(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (*(a1 + 112))
  {
    v6 = [v15 _gkGetPreconnectURL];
  }

  else
  {
    v6 = v15;
  }

  v7 = v6;
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) playerInternal];
  v10 = [v9 playerID];
  BYTE1(v14) = *(a1 + 113);
  LOBYTE(v14) = 0;
  v11 = [v8 requestWithURL:v7 playerID:v10 authToken:*(a1 + 48) pushToken:*(a1 + 56) client:*(a1 + 64) gameDescriptor:*(a1 + 72) postData:*(a1 + 80) includeUDID:v14 includeAPNS:*(a1 + 88) sapSession:?];

  if ([GKNetworkRequestManager useJSONForBagKey:*(a1 + 96)])
  {
    [v11 setValue:@"application/json" forHTTPHeaderField:@"content-type"];
    [v11 setValue:@"application/json" forHTTPHeaderField:@"Accept"];
  }

  [v11 setCachePolicy:4];
  [v11 setValue:@"ra forHTTPHeaderField:{fp", @"x-gk-client-capabilities"}];
  v12 = [*(a1 + 64) originalBundleIdentifier];

  if (v12)
  {
    v13 = [*(a1 + 64) originalBundleIdentifier];
    [v11 setValue:v13 forHTTPHeaderField:@"x-gk-host-bundle-id"];
  }

  (*(*(a1 + 104) + 16))();
}

void sub_100100D28(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) handlerQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100100DF4;
    v5[3] = &unk_100360EB0;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

void sub_100100E08(uint64_t a1)
{
  [*(a1 + 32) getFairPlaySession:0];
  v2 = [objc_opt_class() bagKey];
  v3 = [*(a1 + 40) postBody];
  if (![*(a1 + 32) beforeFirstUnlock])
  {
    v4 = +[GKDataRequestManager sharedManager];
    v9 = [v4 storeBag];
    v10 = *(a1 + 48);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100101080;
    v14[3] = &unk_100366C00;
    v21 = *(a1 + 64);
    v15 = v9;
    v11 = v2;
    v12 = *(a1 + 32);
    v16 = v11;
    v17 = v12;
    v18 = v3;
    v19 = *(a1 + 48);
    v20 = *(a1 + 40);
    v13 = v9;
    [v13 verifyEligibilityForBagKey:v11 replyQueue:0 client:v10 completion:v14];

LABEL_9:
    goto LABEL_10;
  }

  if (*(a1 + 56))
  {
    v4 = [NSError userErrorForCode:31 underlyingError:0];
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      *buf = 67109378;
      v23 = [v7 beforeFirstUnlock];
      v24 = 2112;
      v25 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "GKNetworkRequestManager cannot send due to not being initialized beforeFirstUnlock: %d , error: %@", buf, 0x12u);
    }

    (*(*(a1 + 64) + 16))();
    goto LABEL_9;
  }

LABEL_10:
}

void sub_100101080(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      v7 = [v3 localizedDescription];
      *buf = 138412290;
      v27 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKNetworkRequestManager ignoring request to write to network as the request isn't eligible: %@", buf, 0xCu);
    }

    (*(*(a1 + 80) + 16))();
  }

  else
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = [v8 signatureRequired];
      v10 = [v9 containsObject:*(a1 + 40)];
    }

    else
    {
      v10 = 0;
    }

    v12 = *(a1 + 40);
    v11 = *(a1 + 48);
    v14 = *(a1 + 56);
    v13 = *(a1 + 64);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1001012A0;
    v21[3] = &unk_100366BD8;
    v25 = v10;
    v15 = *(a1 + 72);
    v16 = *(a1 + 56);
    v20 = *(a1 + 48);
    v17 = *(a1 + 64);
    *&v18 = v20;
    *(&v18 + 1) = v17;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v22 = v19;
    v23 = v18;
    v24 = *(a1 + 80);
    [v11 assembleRequest:v14 bagKey:v12 clientProxy:v13 sapSession:0 handler:v21];
  }
}

void sub_1001012A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 72) == 1)
  {
    [v3 setValue:@"1" forHTTPHeaderField:@"x-gk-sap-signature"];
  }

  [*(a1 + 32) setNsurlRequest:v4];
  [*(a1 + 32) setCurrentlyRunning:0];
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 40);
    v8 = v6;
    v9 = [v4 loggableHeaders];
    v13 = 138412802;
    v14 = v4;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "GKNetworkRequestManager sending background %@ postBody:%@ {\nheaders: %@}", &v13, 0x20u);
  }

  v10 = *(a1 + 48);
  v11 = *(a1 + 32);
  v12 = [v11 taskInfo];
  [v10 addNetworkRequest:v11 description:v12 clientProxy:*(a1 + 56)];

  (*(*(a1 + 64) + 16))();
}

void sub_100101830(id *a1)
{
  v2 = [a1[4] allHeaderFields];
  v7 = [v2 objectForKey:@"Retry-After"];

  if (v7)
  {
    v3 = a1[5];
    v4 = [objc_opt_class() bagKey];
    [v7 doubleValue];
    [v3 setWaitPeriod:v4 waitPeriod:?];
  }

  v5 = [a1[6] bundleID];
  v6 = [GKClientProxy clientForBundleID:v5 pid:0 createIfNecessary:1];

  [a1[5] writeToNetwork:a1[6] clientProxy:v6 handler:0];
}

id sub_100101CA0(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (!a2)
  {
    return [*(a1 + 32) _issueRequestForPlayer:*(a1 + 40) preconnect:0 bagKey:*(a1 + 48) clientProxy:*(a1 + 56) locale:*(a1 + 64) playerCredential:*(a1 + 72) handler:*(a1 + 80)];
  }

  v4 = *(*(a1 + 80) + 16);
  a3.n128_u64[0] = 0;

  return v4(a3);
}

void sub_100101E2C(void *a1, uint64_t a2, __n128 a3)
{
  if (a2)
  {
    v4 = *(a1[7] + 16);
    a3.n128_u64[0] = 0;

    v4(a3);
  }

  else
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    v8 = [v5 playerCredentialsForClientProxy:v7];
    [v5 _issueRequestForPlayer:0 preconnect:1 bagKey:v6 clientProxy:v7 locale:0 playerCredential:v8 handler:a1[7]];
  }
}

void sub_10010205C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) canSafelyIssueRequest:*(a1 + 40)];
  if (v4)
  {
    (*(*(a1 + 80) + 16))(0.0);
  }

  else
  {
    v18 = +[GKDataRequestManager sharedManager];
    v5 = [v18 storeBag];
    v17 = v5;
    if (v5 && ([v5 signatureRequired], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "containsObject:", *(a1 + 40)), v6, v7))
    {
      v16 = v3;
    }

    else
    {
      v16 = 0;
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 88);
    v12 = *(a1 + 48);
    v11 = *(a1 + 56);
    v13 = *(a1 + 64);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10010223C;
    v19[3] = &unk_100366CE0;
    v25 = *(a1 + 80);
    v14 = *(a1 + 72);
    v15 = *(a1 + 32);
    v20 = v14;
    v21 = v15;
    v22 = *(a1 + 56);
    v23 = *(a1 + 40);
    v26 = *(a1 + 88);
    v24 = *(a1 + 48);
    [v8 assembleRequestForPlayer:v12 bagKey:v9 preconnect:v10 clientProxy:v11 sapSession:v16 playerCredential:v13 handler:v19];
  }
}

void sub_10010223C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (*(a1 + 32))
    {
      if (!os_log_GKGeneral)
      {
        v4 = GKOSLoggers();
      }

      v5 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 32);
        v7 = v5;
        v8 = [v6 localeIdentifier];
        v9 = [v3 URL];
        *buf = 138412546;
        v34 = v8;
        v35 = 2112;
        v36 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Overriding locale to %@ for request to %@", buf, 0x16u);
      }

      [v3 setLocale:*(a1 + 32) isOverridingUsersPreferredLanguage:1];
    }

    v10 = [NSURLSessionConfiguration alloc];
    v11 = [*(a1 + 40) inProcessConfig];
    v12 = [v10 _initWithConfiguration:v11];

    v13 = [*(a1 + 48) originalBundleIdentifier];
    [v12 set_sourceApplicationBundleIdentifier:v13];

    [GKStoreBag addAuthHeadersToRequest:v3];
    v14 = [*(a1 + 40) inProcessSession];
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_100102608;
    v28 = &unk_100366CB8;
    v29 = *(a1 + 40);
    v30 = *(a1 + 56);
    v32 = *(a1 + 80);
    v31 = *(a1 + 72);
    v15 = [v14 dataTaskWithRequest:v3 completionHandler:&v25];

    if (!os_log_GKGeneral)
    {
      v16 = GKOSLoggers();
    }

    v17 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v18 = v17;
      v19 = [v3 URL];
      v20 = *(a1 + 64);
      v21 = [v3 loggableHeaders];
      v22 = *(a1 + 80);
      *buf = 138413570;
      v34 = v15;
      v35 = 2112;
      v36 = v19;
      v37 = 2112;
      v38 = v20;
      v39 = 2112;
      v40 = v3;
      v41 = 2112;
      v42 = v21;
      v43 = 1024;
      v44 = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "GKNetworkRequestManager sending in process task: %@ \nREQUEST:%@ postBody:%@ request: %@ {\nheaders: %@} preconnect: %d", buf, 0x3Au);
    }

    if (*(a1 + 80) == 1)
    {
      [v15 set_preconnect:1];
    }

    [v15 _adoptEffectiveConfiguration:{v12, v25, v26, v27, v28, v29}];
    [v15 resume];
  }

  else
  {
    v23 = *(a1 + 72);
    v45 = NSLocalizedFailureReasonErrorKey;
    v46 = @"Could not create network task";
    v12 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v24 = [NSError userErrorForCode:3 userInfo:v12];
    (*(v23 + 16))(v23, 0, v24, 0.0);
  }
}

void sub_100102608(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  [v10 _maxAge];
  v12 = v11;
  if ([v10 statusCode] == 520)
  {
    v13 = [v10 allHeaderFields];
    v14 = [v13 objectForKey:@"Retry-After"];

    if (v14)
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      [v14 doubleValue];
      [v15 setWaitPeriod:v16 waitPeriod:?];
    }

    v49 = NSLocalizedFailureReasonErrorKey;
    v50 = @"Server returned 520 with a wait period";
    v17 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v18 = [NSError userErrorForCode:3 userInfo:v17];

    goto LABEL_5;
  }

  if (v9)
  {
    v18 = [v9 serializableError];
    goto LABEL_8;
  }

  if (!v7)
  {
    v47 = NSLocalizedFailureReasonErrorKey;
    v48 = @"Empty server response";
    v14 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v18 = [NSError userErrorForCode:3 userInfo:v14];
LABEL_5:

LABEL_8:
    v19 = 0;
    goto LABEL_9;
  }

  if (*(a1 + 56))
  {
    v19 = 0;
    v18 = 0;
  }

  else
  {
    v29 = [v10 allHeaderFields];
    v30 = [v29 objectForKeyedSubscript:@"Content-Type"];
    v31 = [v30 isEqualToString:@"application/json"];

    if (v31)
    {
      v34 = 0;
      v19 = [NSDictionary _gkDictionaryWithServerDataJson:v7 error:&v34];
      v32 = v34;
    }

    else
    {
      v33 = 0;
      v19 = [NSDictionary _gkDictionaryWithServerData:v7 error:&v33];
      v32 = v33;
    }

    v18 = v32;
  }

LABEL_9:
  if (!os_log_GKGeneral)
  {
    v20 = GKOSLoggers();
  }

  v21 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v22 = v21;
    v23 = [v10 URL];
    v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 statusCode]);
    v25 = [v10 allHeaderFields];
    v26 = *(a1 + 56);
    *buf = 138413570;
    v36 = v23;
    v37 = 2112;
    v38 = v24;
    v39 = 2112;
    v40 = v9;
    v41 = 2112;
    v42 = v25;
    v43 = 2112;
    v44 = v19;
    v45 = 1024;
    v46 = v26;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "GKNetworkRequestManager in process task completed:%@ code:%@ error: %@ headers: %@ plist: %@ preconnect: %d", buf, 0x3Au);
  }

  v27 = [v18 underlyingErrors];
  v28 = [v27 _gkContainsObjectPassingTest:&stru_100366C90];

  if (v28)
  {

    v18 = 0;
  }

  (*(*(a1 + 48) + 16))(v12);
}

BOOL sub_1001029E8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = [(NSError *)v2 code]== 5044 || [(NSError *)v2 code]== 5043;

  return v3;
}

void sub_100102FA8(uint64_t a1)
{
  v2 = [*(a1 + 32) stateQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10010304C;
  v5[3] = &unk_1003610B8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  dispatch_async(v2, v5);
}

void sub_10010304C(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "GKNetworkRequestManager issuing pending requests", buf, 2u);
  }

  v4 = [NSPredicate predicateWithFormat:@"lastPathComponent CONTAINS %@", *(a1 + 32)];
  v5 = [*(a1 + 40) pendingLocation];
  v6 = [NSURL fileURLWithPath:v5];

  if (v6)
  {
    v7 = +[NSFileManager defaultManager];
    v8 = [v7 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:&__NSArray0__struct options:0 error:0];
    v9 = [v8 filteredArrayUsingPredicate:v4];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v26 = v6;
      v27 = v4;
      v13 = 0;
      v14 = *v29;
      do
      {
        v15 = 0;
        v16 = v13;
        do
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v28 + 1) + 8 * v15);
          if (!os_log_GKGeneral)
          {
            v18 = GKOSLoggers();
          }

          v19 = os_log_GKDaemon;
          if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v33 = v17;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Issueing: %@", buf, 0xCu);
          }

          v20 = *(a1 + 40);
          v21 = [v17 lastPathComponent];
          v22 = [v20 taskFromIdentifier:v21];

          v23 = [v22 bundleID];
          v13 = [GKClientProxy clientForBundleID:v23 pid:0 createIfNecessary:1];

          [v22 setIssueRequests:1];
          [*(a1 + 40) writeToNetwork:v22 clientProxy:v13 handler:0];

          v15 = v15 + 1;
          v16 = v13;
        }

        while (v12 != v15);
        v12 = [v10 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v12);

      v6 = v26;
      v4 = v27;
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v24 = GKOSLoggers();
    }

    v25 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028DDC0(v25);
    }
  }
}

id networkRequestIdentifier(void *a1)
{
  v1 = a1;
  v2 = [v1 bundleID];
  v3 = [v1 playerID];
  v4 = objc_opt_class();

  v5 = [v4 bagKey];
  v6 = [NSString stringWithFormat:@"%@+%@+%@", v2, v3, v5];

  return v6;
}

void updateCoalescingState(int a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = a2;
  v6 = [v8 requestIdentifier];
  v7 = [v5 alreadyCoalescingNetworkRequests];

  if (a1)
  {
    [v7 setObject:v8 forKeyedSubscript:v6];
  }

  else
  {
    [v7 removeObjectForKey:v6];
  }
}

BOOL alreadyCoalescing(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 alreadyCoalescingNetworkRequests];
  v5 = [v4 objectForKeyedSubscript:v3];

  return v5 != 0;
}

void handleStandardRequest(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [v7 requestIdentifier];
  v12 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v13 = [v8 currentTasks];
  v14 = [v13 objectForKeyedSubscript:v11];

  v15 = [v12 managerReady];
  if (![v7 currentlyRunning])
  {
    v59 = v10;
    if (objc_opt_respondsToSelector())
    {
      v19 = [v12 contentsOfPendingStore:v11];
      if (v19)
      {
        if (!os_log_GKGeneral)
        {
          v20 = GKOSLoggers();
        }

        v21 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v61 = v11;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "GKNetworkRequestManager adding in pending data: %@", buf, 0xCu);
        }

        v22 = [v12 taskFromIdentifier:v11];
        [v7 mergeRequestData:v22];
      }
    }

    v23 = [objc_opt_class() bagKey];
    v18 = [v12 canSafelyIssueRequest:v23];

    if (v18)
    {
      v24 = 0;
    }

    else
    {
      v24 = v15;
    }

    if ((v24 & 1) == 0)
    {
      if (!os_log_GKGeneral)
      {
        v28 = GKOSLoggers();
      }

      v29 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        v30 = v29;
        v31 = [v7 nsurlTask];
        *buf = 138412802;
        v61 = v11;
        v62 = 2112;
        v63 = v31;
        v64 = 2112;
        v65 = v18;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "GKNetworkRequestManager cannot issue request, writing to pending: %@ : %@ %@", buf, 0x20u);
      }

      v27 = [v7 taskInfo];
      v32 = [v7 requestIdentifier];
      [v12 writeToPendingStore:v27 fileName:v32];

      goto LABEL_54;
    }

    v58 = v9;
    if (v14)
    {
      if ([v7 isDuplicateRequest:v14])
      {
        if (!os_log_GKGeneral)
        {
          v25 = GKOSLoggers();
        }

        v26 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v61 = v11;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "GKNetworkRequestManager duplicate request skipping: %@", buf, 0xCu);
        }

        v27 = [v7 requestIdentifier];
        [v12 cleanUpPendingStore:v27];
LABEL_54:

        v10 = v59;
        goto LABEL_55;
      }

      if (!os_log_GKGeneral)
      {
        v33 = GKOSLoggers();
      }

      v34 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v61 = v11;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "GKNetworkRequestManager non duplicate value for same request, reissuing: %@", buf, 0xCu);
      }

      v35 = [v14 nsurlTask];
      [v35 cancel];

      if (objc_opt_respondsToSelector())
      {
        if (!os_log_GKGeneral)
        {
          v36 = GKOSLoggers();
        }

        v37 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v61 = v11;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "GKNetworkRequestManager non duplicate requires merge of data: %@", buf, 0xCu);
        }

        [v7 mergeRequestData:v14];
      }
    }

    v38 = [v8 currentTasks];
    [v38 setObject:v7 forKeyedSubscript:v11];

    v39 = [v7 requestIdentifier];
    [v12 cleanUpPendingStore:v39];

    if (!os_log_GKGeneral)
    {
      v40 = GKOSLoggers();
    }

    v41 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v42 = v41;
      v43 = objc_opt_class();
      v57 = v43;
      v44 = [v7 nsurlRequest];
      v45 = [v44 allHTTPHeaderFields];
      *buf = 138412802;
      v61 = v43;
      v62 = 2112;
      v63 = v7;
      v64 = 2112;
      v65 = v45;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%@ issuing request: %@ headers: %@", buf, 0x20u);
    }

    v46 = [v7 nsurlRequest];
    v47 = [v7 taskInfo];
    v48 = [GKNetworkRequestManager taskWithRequest:v46 description:v47 session:v58];
    [v7 setNsurlTask:v48];

    v49 = [v7 nsurlTask];

    if (v49)
    {
      v50 = [NSURLSessionConfiguration alloc];
      v51 = [v12 backgroundConfig];
      v27 = [v50 _initWithConfiguration:v51];

      v52 = [v59 originalBundleIdentifier];
      [v27 set_sourceApplicationBundleIdentifier:v52];

      v53 = [v7 nsurlTask];
      [v53 _adoptEffectiveConfiguration:v27];

      v54 = [v7 nsurlTask];
      [v54 resume];
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v55 = GKOSLoggers();
      }

      v56 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v61 = v11;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "GKNetworkRequestManager cannot issue request as it is nil, writing to pending: %@", buf, 0xCu);
      }

      v27 = [v7 taskInfo];
      v54 = [v7 requestIdentifier];
      [v12 writeToPendingStore:v27 fileName:v54];
    }

    v9 = v58;
    goto LABEL_54;
  }

  if (v14)
  {
    if (!os_log_GKGeneral)
    {
      v16 = GKOSLoggers();
    }

    v17 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v61 = v11;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "GKNetworkRequestManager possible duplicate tasks when syncing nsurlsession: %@", buf, 0xCu);
    }
  }

  v18 = [v8 currentTasks];
  [v18 setObject:v7 forKeyedSubscript:v11];
LABEL_55:
}

void handleCoalescingRequest(void *a1, void *a2, void *a3, unint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = [v8 bundleID];

  if (v12)
  {
    [v8 bundleID];
  }

  else
  {
    [v9 bundleIdentifier];
  }
  v13 = ;
  v191 = v10;
  if (v13)
  {
    v14 = v11;
    v193 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v185 = [v193 managerReady];
    v15 = objc_alloc_init(NSMutableDictionary);
    v16 = [v10 pendingRequests];
    v17 = [v16 objectForKeyedSubscript:v13];

    v188 = [v8 requestIdentifier];
    v18 = alreadyCoalescing(v9, v188);
    v192 = v17;
    v187 = [v17 numberOfRequests];
    v19 = [v10 currentTasks];
    v189 = [v19 objectForKeyedSubscript:v13];

    if (!os_log_GKGeneral)
    {
      v20 = GKOSLoggers();
    }

    v21 = os_log_GKDaemon;
    v22 = v9;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v23 = v21;
      v24 = objc_opt_class();
      v25 = v24;
      v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 currentlyRunning]);
      *buf = 138414082;
      v201 = v24;
      v10 = v191;
      v202 = 2112;
      v203 = v13;
      v204 = 2048;
      v205 = a4;
      v206 = 2048;
      *v207 = v187;
      *&v207[8] = 1024;
      *&v207[10] = v185;
      v208 = 1024;
      v209 = v18;
      v210 = 2112;
      v211 = v8;
      v212 = 2112;
      v213 = v26;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%@ bundleID: %@ previousPending:%ld pending:%ld managerReady: %d clientProxyFlag:%d request:%@ currentlyRunning:%@", buf, 0x4Au);

      v9 = v22;
    }

    if (!v192)
    {
      v27 = [v193 contentsOfPendingStore:v188];
      if (v27)
      {
        v28 = objc_alloc_init(objc_opt_class());
        [v28 updateWithTaskInfo:v27];
        v29 = [v10 pendingRequests];
        v192 = v28;
        [v29 setObject:v28 forKeyedSubscript:v13];

        if (!os_log_GKGeneral)
        {
          v30 = GKOSLoggers();
        }

        v31 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          v32 = v31;
          v33 = objc_opt_class();
          *buf = 138412802;
          v201 = v33;
          v202 = 2112;
          v203 = v13;
          v204 = 2112;
          v205 = v192;
          v34 = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%@ bundleID: %@ using file system cache: %@", buf, 0x20u);
        }
      }

      else
      {
        v192 = 0;
      }

      v9 = v22;
    }

    v39 = [objc_opt_class() bagKey];
    v186 = [v193 canSafelyIssueRequest:v39];

    if ([v8 currentlyRunning])
    {
      if (!v189)
      {
        if (!os_log_GKGeneral)
        {
          v61 = GKOSLoggers();
        }

        v62 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          v63 = v62;
          v64 = objc_opt_class();
          v65 = v64;
          v66 = [v8 nsurlTask];
          v67 = [v66 taskDescription];
          *buf = 138413314;
          v201 = v64;
          v202 = 2048;
          v203 = a4;
          v204 = 2048;
          v205 = v187;
          v206 = 1024;
          *v207 = v185;
          *&v207[4] = 2112;
          *&v207[6] = v67;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "%@ already running with no other current, update state: previousPending:%ld pending:%ld managerReady: %d request:%@", buf, 0x30u);

          v9 = v22;
          v10 = v191;
        }

        v68 = [v10 currentTasks];
        [v68 setObject:v8 forKeyedSubscript:v13];

        v11 = v14;
        v50 = v192;
        goto LABEL_145;
      }

      v40 = [v189 requestData];
      v41 = [v8 requestData];
      v42 = [v40 isEqualToDictionary:v41];

      if (v42)
      {
        if (!os_log_GKGeneral)
        {
          v43 = GKOSLoggers();
        }

        v44 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          v45 = v44;
          v46 = objc_opt_class();
          v47 = v46;
          v48 = [v8 nsurlTask];
          v49 = [v48 taskDescription];
          *buf = 138413314;
          v201 = v46;
          v202 = 2048;
          v203 = a4;
          v204 = 2048;
          v205 = v187;
          v206 = 1024;
          *v207 = v185;
          *&v207[4] = 2112;
          *&v207[6] = v49;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "%@ already running this task, doing nothing: previousPending:%ld pending:%ld managerReady: %d request:%@", buf, 0x30u);

          v9 = v22;
        }

        v11 = v14;
        v10 = v191;
        v50 = v192;
        goto LABEL_145;
      }

      if (!os_log_GKGeneral)
      {
        v69 = GKOSLoggers();
      }

      v70 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        v71 = v70;
        v72 = objc_opt_class();
        v73 = v72;
        v74 = [v8 nsurlTask];
        v75 = [v74 taskDescription];
        *buf = 138413314;
        v201 = v72;
        v202 = 2048;
        v203 = a4;
        v204 = 2048;
        v205 = v187;
        v206 = 1024;
        *v207 = v185;
        *&v207[4] = 2112;
        *&v207[6] = v75;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "%@ currently running two tasks, cancel and issue again: previousPending:%ld pending:%ld managerReady: %d request:%@", buf, 0x30u);

        v9 = v22;
      }

      v76 = [v8 nsurlTask];
      [v76 cancel];

      v11 = v14;
      v50 = v192;
      goto LABEL_49;
    }

    if ([v8 coalescingAgent] && v187 != a4)
    {
      v51 = 0;
      v52 = 1;
      v11 = v14;
      v50 = v192;
      goto LABEL_108;
    }

    v11 = v14;
    if (v186)
    {
      v50 = v192;
      if (!os_log_GKGeneral)
      {
        v53 = GKOSLoggers();
      }

      v54 = os_log_GKDaemon;
      v51 = 1;
      if (!os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        goto LABEL_38;
      }

      v55 = v54;
      v56 = objc_opt_class();
      *buf = 138412290;
      v201 = v56;
      v57 = v56;
      v58 = "%@ do not retry wait period exists, adding to pending";
      v59 = v55;
      v60 = 12;
LABEL_37:
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, v58, buf, v60);

LABEL_38:
      v52 = 0;
      goto LABEL_108;
    }

    v50 = v192;
    if ((v185 & 1) == 0)
    {
      goto LABEL_154;
    }

    if ([v8 issueRequests])
    {
      if (v18)
      {
        if (!os_log_GKGeneral)
        {
          v118 = GKOSLoggers();
        }

        v119 = os_log_GKDaemon;
        v51 = 1;
        if (!os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          goto LABEL_38;
        }

        v55 = v119;
        v120 = objc_opt_class();
        *buf = 138413058;
        v201 = v120;
        v202 = 2048;
        v203 = a4;
        v204 = 2048;
        v205 = v187;
        v206 = 1024;
        *v207 = 1;
        v57 = v120;
        v58 = "%@ issue pending request while coalescing add to pending, update state: previousPending:%ld pending:%ld managerReady: %d";
        v59 = v55;
        v60 = 38;
        goto LABEL_37;
      }

      if (!os_log_GKGeneral)
      {
        v144 = GKOSLoggers();
      }

      v145 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        v146 = v145;
        v147 = objc_opt_class();
        *buf = 138413058;
        v201 = v147;
        v202 = 2048;
        v203 = a4;
        v204 = 2048;
        v205 = v187;
        v206 = 1024;
        *v207 = 1;
        v148 = v147;
        _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_INFO, "%@ issue pending request while not coalescing issue request, update state: previousPending:%ld pending:%ld managerReady: %d", buf, 0x26u);
      }

LABEL_49:
      v77 = [v189 requestData];
      v78 = [v8 mergeRequestData:v15 additional:v77];
      v79 = [v78 mutableCopy];

      v80 = [v50 requestData];
      v81 = [v8 mergeRequestData:v79 additional:v80];
      v82 = [v81 mutableCopy];

      v83 = [v8 requestData];
      v84 = [v8 mergeRequestData:v82 additional:v83];
      v15 = [v84 mutableCopy];

      if ([v8 numberOfRequests])
      {
        if (!os_log_GKGeneral)
        {
          v85 = GKOSLoggers();
        }

        v86 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          v87 = v86;
          v88 = objc_opt_class();
          *buf = 138412546;
          v201 = v88;
          v202 = 2112;
          v203 = v15;
          v89 = v88;
          _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_INFO, "%@ attempting to issue request:%@", buf, 0x16u);
        }

        if (v189)
        {
          if (!os_log_GKGeneral)
          {
            v90 = GKOSLoggers();
          }

          v91 = os_log_GKDaemon;
          if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
          {
            v92 = v91;
            v93 = objc_opt_class();
            *buf = 138412546;
            v201 = v93;
            v202 = 2112;
            v203 = v8;
            v94 = v93;
            _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_INFO, "%@ canceling previous request as we are going to replace it with new data: %@", buf, 0x16u);
          }

          v95 = [v189 nsurlTask];
          [v95 cancel];
        }

        v96 = [v191 pendingRequests];
        [v96 removeObjectForKey:v13];

        [v8 setRequestData:v15];
        v97 = [v8 nsurlRequest];
        v98 = [v8 postBody];
        v99 = [GKCoalescingNetworkRequestDefaults _updateRequestBody:v97 newBody:v98];
        [v8 setNsurlRequest:v99];

        v100 = [v191 currentTasks];
        [v100 setObject:v8 forKeyedSubscript:v13];

        v101 = [v8 nsurlRequest];
        v102 = [v8 taskInfo];
        v103 = [GKNetworkRequestManager taskWithRequest:v101 description:v102 session:v11];
        [v8 setNsurlTask:v103];

        v104 = [v8 nsurlTask];

        if (v104)
        {
          if (!os_log_GKGeneral)
          {
            v105 = GKOSLoggers();
          }

          v106 = os_log_GKDaemon;
          if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
          {
            v107 = v106;
            v108 = objc_opt_class();
            v109 = v108;
            v110 = [v8 nsurlTask];
            *buf = 138412546;
            v201 = v108;
            v202 = 2112;
            v203 = v110;
            _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_INFO, "%@ resuming task:%@", buf, 0x16u);
          }

          v111 = [NSURLSessionConfiguration alloc];
          v112 = [v193 backgroundConfig];
          v113 = [v111 _initWithConfiguration:v112];

          v114 = [v9 originalBundleIdentifier];
          [v113 set_sourceApplicationBundleIdentifier:v114];

          v115 = [v8 nsurlTask];
          [v115 _adoptEffectiveConfiguration:v113];

          v116 = [v8 nsurlTask];
          [v116 resume];

          v117 = [v8 requestIdentifier];
          [v193 cleanUpPendingStore:v117];
          v10 = v191;
          v50 = v192;
        }

        else
        {
          if (!os_log_GKGeneral)
          {
            v129 = GKOSLoggers();
          }

          v130 = os_log_GKDaemon;
          v10 = v191;
          if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
          {
            v131 = v130;
            v132 = [v8 requestData];
            *buf = 138412290;
            v201 = v132;
            _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_INFO, "GKNetworkRequestManager cannot issue request as it is nil, writing to pending: %@", buf, 0xCu);
          }

          v50 = v192;
          v113 = [v192 taskInfo];
          v117 = [v8 requestIdentifier];
          [v193 writeToPendingStore:v113 fileName:v117];
        }

        updateCoalescingState(0, v9, v8);
        goto LABEL_145;
      }

      v10 = v191;
      if (!os_log_GKGeneral)
      {
        v121 = GKOSLoggers();
      }

      v122 = os_log_GKDaemon;
      if (!os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        goto LABEL_145;
      }

      v123 = v122;
      v124 = objc_opt_class();
      *buf = 138412546;
      v201 = v124;
      v202 = 2112;
      v203 = v8;
      v125 = v124;
      v126 = "%@ new request is empty, skipping: %@";
      v127 = v123;
      v128 = 22;
      goto LABEL_124;
    }

    if (!(a4 | v187))
    {
      if (v18)
      {
        if (!os_log_GKGeneral)
        {
          v133 = GKOSLoggers();
        }

        v134 = os_log_GKDaemon;
        v51 = 1;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          v135 = v134;
          v136 = objc_opt_class();
          *buf = 138413314;
          v201 = v136;
          v202 = 2048;
          v203 = 0;
          v204 = 2048;
          v205 = 0;
          v206 = 1024;
          *v207 = 1;
          *&v207[4] = 2112;
          *&v207[6] = v8;
          v137 = v136;
          _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_INFO, "%@ first request condition: previousPending:%ld pending:%ld managerReady: %d request:%@", buf, 0x30u);
        }

        if ([v8 coalescingAgent])
        {
          if (!os_log_GKGeneral)
          {
            v138 = GKOSLoggers();
          }

          v139 = os_log_GKDaemon;
          if (!os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
          {
            goto LABEL_144;
          }

          v140 = v139;
          v141 = objc_opt_class();
          *buf = 138413314;
          v201 = v141;
          v202 = 2048;
          v203 = 0;
          v204 = 2048;
          v205 = 0;
          v206 = 1024;
          *v207 = 1;
          *&v207[4] = 2112;
          *&v207[6] = v8;
          v142 = v141;
          v143 = "%@ stopping coalescing monitoring: previousPending:%ld pending:%ld managerReady: %d request:%@";
LABEL_143:
          _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_INFO, v143, buf, 0x30u);

LABEL_144:
          v10 = v191;
          goto LABEL_145;
        }

        goto LABEL_106;
      }

      goto LABEL_105;
    }

    if (!v187)
    {
      if (!os_log_GKGeneral)
      {
        v177 = GKOSLoggers();
      }

      v178 = os_log_GKDaemon;
      if (!os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        goto LABEL_144;
      }

      v140 = v178;
      v179 = objc_opt_class();
      *buf = 138413314;
      v201 = v179;
      v202 = 2048;
      v203 = a4;
      v204 = 2048;
      v205 = 0;
      v206 = 1024;
      *v207 = 1;
      *&v207[4] = 2112;
      *&v207[6] = v8;
      v142 = v179;
      v143 = "%@ Selection logic failure: previousPending:%ld pending:%ld managerReady: %d request:%@";
      goto LABEL_143;
    }

    if (v187 == a4)
    {
      goto LABEL_49;
    }

    if (a4)
    {
      if (v18)
      {
        v51 = 0;
LABEL_106:
        v52 = 1;
        goto LABEL_108;
      }

      if (!os_log_GKGeneral)
      {
        v180 = GKOSLoggers();
      }

      v181 = os_log_GKDaemon;
      v52 = 1;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        v182 = v181;
        v183 = objc_opt_class();
        *buf = 138413314;
        v201 = v183;
        v202 = 2048;
        v203 = a4;
        v204 = 2048;
        v205 = v187;
        v206 = 1024;
        *v207 = 1;
        *&v207[4] = 2112;
        *&v207[6] = v8;
        v184 = v183;
        _os_log_impl(&_mh_execute_header, v182, OS_LOG_TYPE_INFO, "%@ dispatch logic failure: previousPending:%ld pending:%ld managerReady: %d request:%@", buf, 0x30u);
      }

      v51 = 0;
    }

    else
    {
LABEL_154:
      if (!v18 || [v8 coalescingAgent])
      {
LABEL_105:
        v51 = 1;
        goto LABEL_106;
      }

      v52 = 0;
      v51 = 1;
    }

LABEL_108:
    if ([v8 coalescingAgent])
    {
      if (!os_log_GKGeneral)
      {
        v149 = GKOSLoggers();
      }

      v150 = os_log_GKDaemon;
      v10 = v191;
      if (!os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
LABEL_129:
        if ((v52 & 1) == 0)
        {
          goto LABEL_145;
        }

LABEL_130:
        if (!os_log_GKGeneral)
        {
          v168 = GKOSLoggers();
        }

        v169 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          v170 = v169;
          v171 = objc_opt_class();
          *buf = 138413314;
          v201 = v171;
          v202 = 2048;
          v203 = a4;
          v204 = 2048;
          v205 = v187;
          v206 = 1024;
          *v207 = v185;
          *&v207[4] = 2112;
          *&v207[6] = v8;
          v172 = v171;
          _os_log_impl(&_mh_execute_header, v170, OS_LOG_TYPE_INFO, "%@ Dispatching block: previousPending:%ld pending:%ld managerReady: %d request:%@", buf, 0x30u);
        }

        [v8 setCoalescingAgent:1];
        updateCoalescingState(1, v9, v8);
        v173 = [v50 numberOfRequests];
        v174 = 1000000000 * [objc_opt_class() coalescingDelay];
        if (v174)
        {
          v175 = dispatch_time(0, v174);
          v176 = [v193 stateQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100105834;
          block[3] = &unk_100366D58;
          v195 = v8;
          v196 = v10;
          v197 = v11;
          v198 = v9;
          v199 = v173;
          dispatch_after(v175, v176, block);
        }

        else
        {
          [v8 handleNetworkRequest:v10 session:v11 clientProxy:v9 previousKnownPendingAmount:v173];
        }

        goto LABEL_145;
      }

      v151 = v150;
      v152 = objc_opt_class();
      *buf = 138412546;
      v201 = v152;
      v202 = 2112;
      v203 = v8;
      v153 = v152;
      _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_INFO, "%@ we have already added in the coalescingAgent's data, do nothing: %@", buf, 0x16u);
    }

    else
    {
      if (!v51)
      {
        if (!os_log_GKGeneral)
        {
          v164 = GKOSLoggers();
        }

        v165 = os_log_GKDaemon;
        v10 = v191;
        if (!os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          goto LABEL_145;
        }

        v123 = v165;
        v166 = objc_opt_class();
        *buf = 138413314;
        v201 = v166;
        v202 = 2048;
        v203 = a4;
        v204 = 2048;
        v205 = v187;
        v206 = 1024;
        *v207 = v185;
        *&v207[4] = 2112;
        *&v207[6] = v8;
        v125 = v166;
        v126 = "%@ Issuance failure: previousPending:%ld pending:%ld managerReady: %d request:%@";
        v127 = v123;
        v128 = 48;
LABEL_124:
        _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_INFO, v126, buf, v128);

LABEL_145:
        goto LABEL_146;
      }

      if (!os_log_GKGeneral)
      {
        v154 = GKOSLoggers();
      }

      v155 = os_log_GKDaemon;
      v10 = v191;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        v156 = v155;
        v157 = objc_opt_class();
        *buf = 138412546;
        v201 = v157;
        v202 = 2112;
        v203 = v8;
        v158 = v157;
        _os_log_impl(&_mh_execute_header, v156, OS_LOG_TYPE_INFO, "%@ adding request to pending:%@", buf, 0x16u);
      }

      if (v50)
      {
        v159 = [v8 requestData];
        v160 = [v8 mergeRequestData:v15 additional:v159];
        v161 = [v160 mutableCopy];

        v162 = [v50 requestData];
        v163 = [v8 mergeRequestData:v161 additional:v162];
        v15 = [v163 mutableCopy];

        v10 = v191;
        [v50 setRequestData:v15];
      }

      else
      {
        v167 = [v191 pendingRequests];
        [v167 setObject:v8 forKeyedSubscript:v13];

        v50 = v8;
      }

      if ([v50 numberOfRequests] < 1)
      {
        if (!v52)
        {
          goto LABEL_145;
        }

        goto LABEL_130;
      }

      v151 = [v50 taskInfo];
      v153 = [v8 requestIdentifier];
      [v193 writeToPendingStore:v151 fileName:v153];
    }

    goto LABEL_129;
  }

  if (!os_log_GKGeneral)
  {
    v35 = GKOSLoggers();
  }

  v36 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v37 = v36;
    *buf = 138412546;
    v201 = objc_opt_class();
    v202 = 2112;
    v203 = v8;
    v38 = v201;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%@ cannot issue a request without bundleId: %@", buf, 0x16u);

    v10 = v191;
  }

LABEL_146:
}