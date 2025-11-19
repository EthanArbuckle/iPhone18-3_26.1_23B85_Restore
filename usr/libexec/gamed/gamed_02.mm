uint64_t sub_10006F2E8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 setError:a3];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:@"response"];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_10006F360(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"response"];
  v4 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v3, v4);

  v5 = [*(a1 + 32) error];
  if (v5 || !*(a1 + 40))
  {
  }

  else if ([*(a1 + 48) isGameCenter])
  {
    v6 = *(a1 + 56);

    [v6 _preloadDataForGameCenterTabs];
  }
}

void sub_10006F8DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKPlayerCredentialController sharedController];
  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006F99C;
  v7[3] = &unk_100361CB8;
  v8 = v3;
  v6 = v3;
  [v4 setPrimaryCredential:v5 completionHandler:v7];
}

void sub_10006F99C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    sub_10028886C();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10006FA28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006FAC0;
  v6[3] = &unk_100360FA0;
  v7 = v3;
  v5 = v3;
  [v4 updateClientSettings:v6];
}

void sub_10006FAD0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) context];
  v12 = [GKPlayerProfileCacheObject playerProfileWithPlayerID:v2 inManagedObjectContext:v3];

  [GKPlayerProfileCacheObject buildFamiliarilyLookupForProfile:v12];
  v4 = [*(a1 + 48) clientProxy];
  v5 = [v4 gameDescriptor];
  v6 = [*(a1 + 40) context];
  v7 = [GKGameCacheObject gameForGameDescriptor:v5 context:v6];

  if (*(a1 + 56))
  {
    [v12 setAlias:?];
  }

  v8 = [*(a1 + 72) playerInternal];
  v9 = [v8 playerID];
  [*(a1 + 64) setPlayerID:v9];

  v10 = [v12 internalRepresentation];
  [*(a1 + 40) setResult:*(a1 + 64)];
  v11 = [v7 internalRepresentation];
  [*(a1 + 40) setObject:v11 forKeyedSubscript:@"game"];

  [*(a1 + 40) setObject:v10 forKeyedSubscript:@"player"];
}

void sub_10006FC54(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006FD0C;
  v6[3] = &unk_100361EF0;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 authenticatePlayerWithUsername:0 password:0 handler:v6];
}

uint64_t sub_10006FD0C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResult:a2];
  [*(a1 + 32) setError:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_10006FD7C(uint64_t a1)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006FE90;
  v7[3] = &unk_100360F00;
  v4 = *(a1 + 32);
  v2 = v4.i64[0];
  v8 = vextq_s8(v4, v4, 8uLL);
  v9 = *(a1 + 48);
  [v2 perform:v7];
  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006FF84;
  v5[3] = &unk_100361620;
  v6 = v3;
  [v6 perform:v5];
}

void sub_10006FE90(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] clientProxy];
  v5 = [a1[5] objectForKeyedSubscript:@"game"];
  v6 = [a1[6] currentEnvironment];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006FF74;
  v8[3] = &unk_100360FA0;
  v9 = v3;
  v7 = v3;
  [v4 setCurrentGame:v5 serverEnvironment:v6 reply:v8];
}

void sub_10006FF84(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"player"];
  if (v3)
  {
    +[GKClientProxy authenticationDidChange];
  }

  v4[2]();
}

void sub_100070004(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_100070538(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKPlayerCredentialController sharedController];
  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000705F8;
  v7[3] = &unk_100361CB8;
  v8 = v3;
  v6 = v3;
  [v4 setPrimaryCredential:v5 completionHandler:v7];
}

void sub_1000705F8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    sub_10028886C();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100070684(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10007071C;
  v6[3] = &unk_100360FA0;
  v7 = v3;
  v5 = v3;
  [v4 updateClientSettings:v6];
}

void sub_10007072C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) context];
  v12 = [GKPlayerProfileCacheObject playerProfileWithPlayerID:v2 inManagedObjectContext:v3];

  [GKPlayerProfileCacheObject buildFamiliarilyLookupForProfile:v12];
  v4 = [*(a1 + 48) clientProxy];
  v5 = [v4 gameDescriptor];
  v6 = [*(a1 + 40) context];
  v7 = [GKGameCacheObject gameForGameDescriptor:v5 context:v6];

  if (*(a1 + 56))
  {
    [v12 setAlias:?];
  }

  v8 = [*(a1 + 72) playerInternal];
  v9 = [v8 playerID];
  [*(a1 + 64) setPlayerID:v9];

  v10 = [v12 internalRepresentation];
  [*(a1 + 40) setResult:*(a1 + 64)];
  v11 = [v7 internalRepresentation];
  [*(a1 + 40) setObject:v11 forKeyedSubscript:@"game"];

  [*(a1 + 40) setObject:v10 forKeyedSubscript:@"player"];
}

void sub_1000708B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100070968;
  v6[3] = &unk_100361EF0;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 authenticatePlayerWithUsername:0 password:0 handler:v6];
}

uint64_t sub_100070968(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResult:a2];
  [*(a1 + 32) setError:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_1000709D8(uint64_t a1)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100070AEC;
  v7[3] = &unk_100360F00;
  v4 = *(a1 + 32);
  v2 = v4.i64[0];
  v8 = vextq_s8(v4, v4, 8uLL);
  v9 = *(a1 + 48);
  [v2 perform:v7];
  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100070BE0;
  v5[3] = &unk_100361620;
  v6 = v3;
  [v6 perform:v5];
}

void sub_100070AEC(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] clientProxy];
  v5 = [a1[5] objectForKeyedSubscript:@"game"];
  v6 = [a1[6] currentEnvironment];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100070BD0;
  v8[3] = &unk_100360FA0;
  v9 = v3;
  v7 = v3;
  [v4 setCurrentGame:v5 serverEnvironment:v6 reply:v8];
}

void sub_100070BE0(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"player"];
  if (v3)
  {
    +[GKClientProxy authenticationDidChange];
  }

  v4[2]();
}

void sub_100070C60(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_100070EF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100070FBC;
  v8[3] = &unk_100361BD0;
  v6 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = v3;
  v7 = v3;
  [v4 _authenticateUsername:v5 password:v6 altDSID:0 validateOnly:1 handler:v8];
}

uint64_t sub_100070FBC(uint64_t a1)
{
  [*(a1 + 32) setError:?];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_100071000(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) error];
    (*(v1 + 16))(v1, v2, v3);
  }
}

void sub_100071244(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKPlayerCredentialController sharedController];
  v5 = *(a1 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100071320;
  v8[3] = &unk_100361198;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v3;
  v7 = v3;
  [v4 renewCredentialForUsername:v6 ttl:v8 completionHandler:v5];
}

uint64_t sub_100071320(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_100071368(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void sub_100072138(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) context];
  v5 = [GKPlayerProfileCacheObject playerProfileWithPlayerID:v2 inManagedObjectContext:v3];

  [GKPlayerProfileCacheObject buildFamiliarilyLookupForProfile:v5];
  if (*(a1 + 48))
  {
    [v5 setAlias:?];
  }

  if (*(a1 + 56))
  {
    [v5 setFirstName:?];
  }

  v4 = v5;
  if (*(a1 + 64))
  {
    [v5 setLastName:?];
    v4 = v5;
  }
}

void sub_1000721F8(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v2];

  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Account setup (Player did not change): current profile:%@", &v8, 0xCu);
  }

  if (*(a1 + 40))
  {
    [v3 setAlias:?];
  }

  if (*(a1 + 48))
  {
    [v3 setFirstName:?];
  }

  if (*(a1 + 56))
  {
    [v3 setLastName:?];
  }

  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
  }

  v7 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Account setup (Player did not change): updated profile:%@", &v8, 0xCu);
  }
}

void sub_100072538(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v10 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v2];

  v3 = +[GKPlayerCredentialController sharedController];
  v4 = [*(a1 + 40) credential];
  v5 = [v4 copy];

  v6 = [v5 playerInternal];
  v7 = [*(a1 + 40) clientProxy];
  [v5 setEnvironment:{objc_msgSend(v7, "environment")}];

  if (*(a1 + 48))
  {
    [v5 setAccountName:?];
  }

  if (*(a1 + 56))
  {
    [v10 setAlias:?];
    [v6 setAlias:*(a1 + 56)];
  }

  if (*(a1 + 64))
  {
    [v10 setFirstName:?];
    [v6 setFirstName:*(a1 + 64)];
  }

  if (*(a1 + 72))
  {
    [v10 setLastName:?];
    [v6 setLastName:*(a1 + 72)];
  }

  v8 = [*(a1 + 40) credential];
  [v3 replaceCredential:v8 withCredential:v5 completionHandler:0];

  v9 = *(a1 + 80);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

void sub_1000728C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  if (!os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    if (v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_1002888D4();
  if (!v3)
  {
LABEL_5:
    v5 = [*(a1 + 32) clientProxy];
    [v5 setAppInitState:@"GKAppInitialized"];
  }

LABEL_6:
  +[GKClientProxy authenticationDidChange];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void sub_100072CC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12[0] = GKMaxPlayersP2P;
  v12[1] = GKMaxPlayersHosted;
  v12[2] = GKMaxPlayersTurnBased;
  v12[3] = GKMaxGameStateSizeTurnBased;
  v12[4] = GKExchangeDataMaximumSize;
  v12[5] = GKExchangeMaxPerPlayer;
  v5 = [NSArray arrayWithObjects:v12 count:6];
  v6 = [*(a1 + 40) clientProxy];
  v7 = [v6 replyQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100072E48;
  v9[3] = &unk_100360ED8;
  v10 = *(a1 + 48);
  v11 = v3;
  v8 = v3;
  [v4 getValuesForKeys:v5 queue:v7 completion:v9];
}

uint64_t sub_100072E48(uint64_t a1, void *a2)
{
  v3 = GKMaxPlayersP2P;
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:v3];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:@"GKMaxPlayersP2P"];

  v6 = [v4 objectForKeyedSubscript:GKMaxPlayersHosted];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:@"GKMaxPlayersHosted"];

  v7 = [v4 objectForKeyedSubscript:GKMaxPlayersTurnBased];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"GKMaxPlayersTurnBased"];

  v8 = [v4 objectForKeyedSubscript:GKMaxGameStateSizeTurnBased];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:@"GKMaxGameStateSizeTurnBased"];

  v9 = [v4 objectForKeyedSubscript:GKExchangeDataMaximumSize];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:@"GKExchangeDataMaximumSize"];

  v10 = [v4 objectForKeyedSubscript:GKExchangeMaxPerPlayer];

  [*(a1 + 32) setObject:v10 forKeyedSubscript:@"GKExchangeMaxPerPlayer"];
  v11 = *(*(a1 + 40) + 16);

  return v11();
}

uint64_t sub_100072FD0(uint64_t a1)
{
  v2 = [*(a1 + 32) clientProxy];
  v3 = [*(a1 + 40) allValues];
  [v2 updatePreferencesFromBag:v3];

  result = *(a1 + 48);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_100073254(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v4 localPlayer];
  v6 = [v5 playerID];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100073340;
  v10[3] = &unk_100362080;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v13 = v3;
  v9 = v3;
  [v4 getAccountAgeCategoryForPlayerID:v6 withCompletion:v10];
}

void sub_100073340(id *a1, int a2)
{
  if (a2 == 1)
  {
    v3 = [a1[5] transport];
    v4 = [a1[5] clientProxy];
    v5 = [a1[5] localPlayer];
    v6 = [(GKService *)GKProfileServicePrivate serviceWithTransport:v3 forClient:v4 localPlayer:v5];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000734E4;
    v10[3] = &unk_100362080;
    v11 = a1[4];
    v7 = a1[6];
    v12 = a1[5];
    v13 = v7;
    [v6 getProfilePrivacyWithHandler:v10];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "checkActivitySharingRepromptWithCompletion: No, the user is not adult.", buf, 2u);
    }

    [a1[4] setResult:&__kCFBooleanFalse];
    (*(a1[6] + 2))();
  }
}

void sub_1000734E4(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    v3 = [*(a1 + 40) transport];
    v4 = [*(a1 + 40) clientProxy];
    v5 = [*(a1 + 40) localPlayer];
    v6 = [(GKService *)GKUtilityService serviceWithTransport:v3 forClient:v4 localPlayer:v5];

    v18[0] = GKActivitySharingRepromptLimit;
    v18[1] = GKActivitySharingRepromptMinDaysBetween;
    v7 = [NSArray arrayWithObjects:v18 count:2];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000736F0;
    v13[3] = &unk_100362058;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v14 = v8;
    v15 = v9;
    v16 = v10;
    [v6 getStoreBagValuesForKeys:v7 handler:v13];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "checkActivitySharingRepromptWithCompletion: No, the user's profile privacy is not Only You.", buf, 2u);
    }

    [*(a1 + 32) setResult:&__kCFBooleanFalse];
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000736F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = &__NSDictionary0__struct;
  }

  v6 = v3;
  v4 = [v3 integerValueFromKey:GKActivitySharingRepromptLimit defaultValue:3];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 40) shouldCadencedActivitySharingRepromptWithLimit:v4 minDaysBetween:{objc_msgSend(v6, "integerValueFromKey:defaultValue:", GKActivitySharingRepromptMinDaysBetween, 30)}]);
  [*(a1 + 32) setResult:v5];

  (*(*(a1 + 48) + 16))();
}

void sub_1000737C8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) result];
  (*(v1 + 16))(v1, [v2 BOOLValue]);
}

void sub_100074614(id *a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = [a1[4] objectAtIndexedSubscript:a3];
  v6 = [a1[5] objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [a1[6] count]);
    [a1[5] setObject:v6 forKeyedSubscript:v5];
  }

  [v6 addObject:v7];
}

void sub_1000746D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(GKService *)GKGameServicePrivate serviceFromService:*(a1 + 32)];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000747BC;
  v7[3] = &unk_100362128;
  v5 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = v3;
  v6 = v3;
  [v4 getGameMetadataForBundleIDs:v5 handler:v7];
}

void sub_1000747BC(uint64_t a1, void *a2)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100074870;
  v7[3] = &unk_100362100;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  [a2 enumerateObjectsUsingBlock:v7];
  (*(*(a1 + 48) + 16))(*(a1 + 48), v4, v5, v6);
}

void sub_100074870(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 bundleIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007494C;
  v9[3] = &unk_1003620D8;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  [v6 enumerateObjectsUsingBlock:v9];
}

void sub_100074F38(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_100074F68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) count];
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    goto LABEL_42;
  }

  v8 = +[NSDate date];
  v9 = [(GKCacheObject *)GKPlayerProfileCacheObject fetchRequestForContext:v5];
  [v9 setFetchLimit:v7];
  v10 = [NSPredicate predicateWithFormat:@"expirationDate > %@ && ((availablePieces & %d) = %d) && playerID in %@", v8, *(a1 + 100), *(a1 + 100), *(a1 + 32)];
  [v9 setPredicate:v10];

  v44 = 0;
  v11 = [v5 countForFetchRequest:v9 error:&v44];
  v12 = v44;
  if (v12)
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
    {
      sub_10028893C();
    }
  }

  *(*(*(a1 + 80) + 8) + 24) = v11 == v7;
  *(*(*(a1 + 72) + 8) + 24) = v11 == v7;
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    v14 = v12;
  }

  else
  {
    v15 = [NSPredicate predicateWithFormat:@"expirationDate != nil && ((availablePieces & %d) = %d) && playerID in %@", *(a1 + 100), *(a1 + 100), *(a1 + 32)];
    [v9 setPredicate:v15];

    v43 = v12;
    v16 = [v5 countForFetchRequest:v9 error:&v43];
    v14 = v43;

    if (v14)
    {
      if (!os_log_GKGeneral)
      {
        v17 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
      {
        sub_1002889AC();
      }
    }

    *(*(*(a1 + 72) + 8) + 24) = v16 == v7;
  }

  if (*(*(*(a1 + 72) + 8) + 24))
  {
LABEL_42:
    if (*(a1 + 96))
    {
      v18 = [GKPlayerProfileCacheObject playerProfilesWithPlayerIDs:*(a1 + 32) inManagedObjectContext:v5];
      if ([v18 count] != v7)
      {
        if (!os_log_GKGeneral)
        {
          v19 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
        {
          sub_100288A1C();
        }
      }

      v33 = v18;
      v20 = [v18 _gkMapDictionaryWithKeyPath:@"playerID"];
      if (*(a1 + 101) == 1)
      {
        v21 = [NSMutableArray arrayWithCapacity:v7];
      }

      else
      {
        v21 = 0;
      }

      if (*(a1 + 101) == 1)
      {
        v22 = [NSMutableArray arrayWithCapacity:v7];
      }

      else
      {
        v22 = 0;
      }

      if (*(a1 + 102) == 1)
      {
        v23 = [NSMutableArray arrayWithCapacity:v7];
      }

      else
      {
        v23 = 0;
      }

      if (*(a1 + 102) == 1)
      {
        v24 = [NSMutableArray arrayWithCapacity:v7];
      }

      else
      {
        v24 = 0;
      }

      v25 = *(a1 + 56);
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100075468;
      v34[3] = &unk_1003621D8;
      v26 = v20;
      v27 = *(a1 + 88);
      v35 = v26;
      v40 = v27;
      v41 = *(a1 + 101);
      v28 = v21;
      v36 = v28;
      v29 = v22;
      v37 = v29;
      v42 = *(a1 + 102);
      v30 = v23;
      v38 = v30;
      v31 = v24;
      v39 = v31;
      v32 = [v25 _gkFilterWithBlock:v34];
      [*(a1 + 48) setResult:v32];

      if ([v28 count])
      {
        [*(a1 + 64) updateLastPlayedGames:v28 forPlayers:v29 group:*(a1 + 48)];
      }

      if ([v30 count])
      {
        [*(a1 + 64) updateChallengedGames:v30 forPlayers:v31 group:*(a1 + 48)];
      }
    }
  }

  v6[2](v6);
}

id sub_100075468(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (v4)
  {
    v5 = [*(a1 + 72) internalRepresentationForCacheObject:v4];
LABEL_8:
    v7 = v5;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:GKAnonymousPlayerID])
  {
    v6 = GKAnonymousPlayerInternal;
LABEL_7:
    v5 = objc_alloc_init(v6);
    goto LABEL_8;
  }

  if ([v3 isEqualToString:GKUnknownPlayerID])
  {
    v6 = GKUnknownPlayerInternal;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_9:
  if (*(a1 + 80) == 1)
  {
    v8 = [v4 lastPlayedGame];
    if (v8)
    {
      [*(a1 + 40) addObject:v8];
      [*(a1 + 48) addObject:v7];
    }
  }

  if (*(a1 + 81) == 1)
  {
    v9 = [v4 lastChallengedGame];
    if (v9)
    {
      [*(a1 + 56) addObject:v9];
      [*(a1 + 64) addObject:v7];
    }
  }

  return v7;
}

void sub_1000755B4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) result];
  (*(v2 + 16))(v2, v3, 0, *(*(*(a1 + 48) + 8) + 24), *(*(*(a1 + 56) + 8) + 24));
}

void sub_100075844(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_100288A90();
  }

  v5 = [*(a1 + 32) mutableCopy];
  v6 = [NSString stringWithFormat:@"%hhu", *(a1 + 72)];
  [v5 addObject:v6];
  [*(a1 + 40) setObject:v5 forKeyedSubscript:@"callParams"];
  v7 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v8 = objc_retainBlock(*(a1 + 64));
  v9 = [v7 doesCallbackListExistFor:@"gk-get-profile-info" parameters:v5 callback:v8];

  if (v9)
  {
    [*(a1 + 40) setObject:&__kCFBooleanTrue forKeyedSubscript:@"skipCallbacks"];
LABEL_13:
    v3[2](v3);
    goto LABEL_14;
  }

  if (![*(a1 + 32) count])
  {
    goto LABEL_13;
  }

  v10 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
    v10 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100288ACC(a1 + 32, v10);
  }

  v12 = +[NSUUID UUID];
  v13 = [v12 UUIDString];

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100075BDC;
  v32[3] = &unk_100362250;
  v14 = v13;
  v33 = v14;
  *&v15 = *(a1 + 40);
  *(&v15 + 1) = *(a1 + 48);
  v26 = v15;
  v16 = *(a1 + 32);
  v37 = *(a1 + 72);
  v17 = *(a1 + 56);
  *&v18 = v16;
  *(&v18 + 1) = v17;
  v34 = v26;
  v35 = v18;
  v36 = v3;
  v19 = objc_retainBlock(v32);
  v20 = [GKProfileService profileRequestForPlayerIDs:*(a1 + 32) pieces:*(a1 + 72)];
  v21 = +[GKClientProxy gameCenterClient];
  v22 = [(GKService *)GKUtilityServicePrivate serviceWithTransport:0 forClient:v21 localPlayer:0];

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100075E10;
  v27[3] = &unk_100362278;
  v28 = v14;
  v29 = v20;
  v30 = *(a1 + 48);
  v31 = v19;
  v23 = v19;
  v24 = v20;
  v25 = v14;
  [v22 checkAndUpdateArcadeSubscriberStatusWithHandler:v27];

LABEL_14:
}

void sub_100075BDC(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKPerf;
  if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
  {
    sub_100288B64(Current, a1, v11);
  }

  v12 = [NSNumber numberWithDouble:a4];
  [*(a1 + 40) setObject:v12 forKeyedSubscript:@"timeToLive"];

  v13 = [v7 objectForKeyedSubscript:@"profile-infos"];
  if (v13)
  {
    [*(a1 + 40) setError:v8];
    v14 = objc_opt_class();
    v15 = *(a1 + 56);
    v16 = *(a1 + 80);
    v17 = [NSDate dateWithTimeIntervalSinceNow:a4];
    [v14 storeProfilesWithServerResults:v13 playerIDs:v15 pieces:v16 expirationDate:v17 context:*(a1 + 64)];
  }

  else
  {
    v18 = [v7 objectForKeyedSubscript:@"status"];
    if (v18)
    {
      v19 = [v7 objectForKeyedSubscript:@"status"];
      v20 = [v19 integerValue];
    }

    else
    {
      v20 = 1;
    }

    v21 = [NSError errorWithDomain:GKServerErrorDomain code:v20 userInfo:0];
    [*(a1 + 40) setError:v21];

    if (!os_log_GKGeneral)
    {
      v22 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100288C1C();
    }
  }

  (*(*(a1 + 72) + 16))();
}

void sub_100075E10(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKPerf;
  if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
  {
    sub_100288C84(Current, a1, v4);
  }

  v5 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) clientProxy];
  [v5 issueRequest:v6 bagKey:@"gk-get-profile-info" clientProxy:v7 handler:*(a1 + 56)];
}

void sub_100075EDC(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"callParams"];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"skipCallbacks"];

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  if (!v4)
  {
    v5 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v6 = [v5 retrieveAndClearCallbacks:@"gk-get-profile-info" parameters:v2];

    v7 = [*(a1 + 32) objectForKeyedSubscript:@"timeToLive"];
    [v7 doubleValue];
    v9 = v8;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v17 + 1) + 8 * v14);
          v16 = [*(a1 + 32) error];
          (*(v15 + 16))(v15, v16, v9);

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }
}

void sub_100076250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100076268(id a1, id a2)
{
  v6[0] = @"GKPlayerInternal";
  v6[1] = a2;
  v2 = a2;
  v3 = [NSArray arrayWithObjects:v6 count:2];
  v4 = [GKResourceIdentifier resourceIdentifierForKeys:v3];

  return v4;
}

uint64_t sub_10007632C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100076344(uint64_t a1)
{
  v2 = [*(a1 + 32) _gkMapWithBlock:&stru_100362320];
  v3 = [NSMutableSet setWithArray:v2];

  v4 = [*(a1 + 40) allObjects];
  v5 = [GKPlayerProfileCacheObject playerProfilesWithPlayerIDs:v4 inManagedObjectContext:*(a1 + 48)];

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000764C8;
  v13 = &unk_100362348;
  v15 = *(a1 + 64);
  v14 = v3;
  v6 = v3;
  [v5 enumerateObjectsUsingBlock:&v10];
  v7 = [v6 allObjects];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

id sub_100076474(id a1, GKResourceIdentifier *a2, unint64_t a3)
{
  v3 = [(GKResourceIdentifier *)a2 keys];
  v4 = [v3 objectAtIndexedSubscript:1];

  return v4;
}

void sub_1000764C8(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 availablePieces] == *(a1 + 40) && (objc_msgSend(v5, "expired") & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = [v5 playerID];
    [v3 removeObject:v4];
  }
}

void sub_10007665C(uint64_t a1)
{
  v2 = [GKPlayerProfileCacheObject playerProfilesWithPlayerIDs:*(a1 + 32) inManagedObjectContext:*(a1 + 40)];
  v3 = [*(a1 + 48) _gkMapDictionaryWithKeyPath:@"input-id"];
  if (![v3 count])
  {
    v4 = [*(a1 + 48) _gkMapDictionaryWithKeyPath:@"player-id"];

    v3 = v4;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100076780;
  v6[3] = &unk_100362398;
  v7 = v3;
  v8 = *(a1 + 56);
  v10 = *(a1 + 64);
  v9 = *(a1 + 40);
  v5 = v3;
  [v2 enumerateObjectsUsingBlock:v6];
}

void sub_100076780(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = *(a1 + 32);
  v4 = [v11 playerID];
  v5 = [v3 objectForKeyedSubscript:v4];

  if ([v11 isLocalPlayer])
  {
    v6 = +[GKPreferences shared];
    v7 = [v6 arcadeSubscriptionState];

    if ((v7 - 1) <= 2)
    {
      v8 = *(&off_100362DB8 + (v7 - 1));
      v9 = [v5 mutableCopy];
      [v9 setObject:v8 forKeyedSubscript:GKIsArcadeSubscriberKey];

      v5 = v9;
    }
  }

  if (v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = &__NSDictionary0__struct;
  }

  [v11 updateWithServerRepresentation:v10 expirationDate:*(a1 + 40) pieces:*(a1 + 56)];
  [*(a1 + 48) refreshObject:v11 mergeChanges:1];
}

void sub_1000769D8(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.gamed.GKProfileService.profile.serial", v3);
  v2 = qword_1003B9100;
  qword_1003B9100 = v1;
}

void sub_100076C7C(uint64_t a1)
{
  v2 = [GKDispatchGroup dispatchGroupWithName:@"_getProfilesForPlayerIDs"];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100076EE8;
  v18[3] = &unk_100361670;
  v3 = *(a1 + 40);
  v18[4] = *(a1 + 32);
  v19 = v3;
  v21 = *(a1 + 72);
  v4 = v2;
  v20 = v4;
  [v4 perform:v18];
  if ([v4 waitWithTimeout:10.0])
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_ERROR))
    {
      sub_100288E0C();
    }

    v6 = [NSString stringWithFormat:@"profile request [%@] timed out.", *(a1 + 48)];
    v7 = [NSError gkInternalErrorWithCode:106 andDetails:v6];
    [v4 setError:v7];
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKPerf;
  if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
  {
    sub_100288E78(a1, v10, Current);
  }

  v11 = [*(a1 + 32) clientProxy];
  v12 = [v11 replyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100077020;
  block[3] = &unk_100360EB0;
  v13 = *(a1 + 56);
  v16 = v4;
  v17 = v13;
  v14 = v4;
  dispatch_async(v12, block);
}

void sub_100076EE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100076FB0;
  v8[3] = &unk_100362408;
  v9 = *(a1 + 48);
  v10 = v3;
  v7 = v3;
  [v4 _getProfilesForPlayerIDs:v5 discardingStaleData:v6 handler:v8];
}

uint64_t sub_100076FB0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResult:a2];
  [*(a1 + 32) setError:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_100077020(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_1000777D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id a48)
{
  objc_destroyWeak((v48 + 56));
  objc_destroyWeak(&a48);
  objc_destroyWeak((v49 - 200));
  _Unwind_Resume(a1);
}

void sub_100077838(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000778EC;
  v5[3] = &unk_1003610B8;
  v6 = a2;
  v3 = *(a1 + 32);
  v7 = *(a1 + 40);
  v4 = v6;
  dispatch_sync(v3, v5);
}

void sub_1000778EC(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100077974;
  v2[3] = &unk_100362458;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateObjectsUsingBlock:v2];
}

void sub_100077974(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 playerID];
  if (v3)
  {
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  }
}

void sub_1000779DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10007632C;
  v22 = sub_10007633C;
  v23 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100077C00;
    v15[3] = &unk_1003624A8;
    v17 = &v18;
    v5 = *(a1 + 32);
    v16 = *(a1 + 40);
    [v5 performBlockAndWait:v15];
    v6 = v19[5];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100077C54;
    v9[3] = &unk_1003624F8;
    v10 = *(a1 + 48);
    v11 = WeakRetained;
    v14 = *(a1 + 72);
    v12 = *(a1 + 32);
    v13 = *(a1 + 56);
    [v6 enumerateKeysAndObjectsUsingBlock:v9];
    v3[2](v3);
  }

  else
  {
    v7 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
      v7 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100288FB4();
    }

    v3[2](v3);
  }

  _Block_object_dispose(&v18, 8);
}

uint64_t sub_100077C00(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [GKPlayerProfileCacheObject playersByFamiliarity:*(a1 + 32)];

  return _objc_release_x1();
}

void sub_100077C54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100077D64;
    v8[3] = &unk_1003624D0;
    v7 = *(a1 + 32);
    v8[4] = *(a1 + 40);
    v9 = v6;
    v14 = *(a1 + 64);
    v10 = v5;
    v11 = *(a1 + 48);
    v12 = *(a1 + 32);
    v13 = *(a1 + 56);
    [v7 perform:v8];
  }
}

void sub_100077D64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 80);
  v7 = [*(a1 + 48) integerValue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100077E5C;
  v10[3] = &unk_100362128;
  v8 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = v3;
  v9 = v3;
  [v4 _getProfilesForPlayerIDs:v5 discardingStaleData:v6 familiarity:v7 context:v8 handler:v10];
}

uint64_t sub_100077E5C(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = a2;
  [v5 setError:a3];
  (*(a1[5] + 16))();

  v7 = *(a1[6] + 16);

  return v7();
}

void sub_100077ED4(uint64_t a1)
{
  v2 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
    v2 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100288FF0(a1, v2);
  }
}

void sub_100077F3C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v12 = *(a1 + 40);
    v6 = [NSArray arrayWithObjects:&v12 count:1];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000780B4;
    v9[3] = &unk_100362408;
    v10 = *(a1 + 48);
    v11 = v3;
    [WeakRetained loadScopedPlayerIDs:v5 gameBundleIDs:v6 handler:v9];
  }

  else
  {
    v7 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
      v7 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100288FB4();
    }

    v3[2](v3);
  }
}

void sub_1000780B4(uint64_t a1, void *a2, void *a3)
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
      sub_1002890C4();
    }
  }

  else
  {
    v8 = [GKScopedIDs makePlayerIDtoScopedIDsDictFromScopedIDs:v5];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:@"playerIDtoScopedIDs"];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100078184(uint64_t a1)
{
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_10007823C;
  v7 = &unk_100362570;
  v2 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v3 = [v2 _gkFilterWithBlock:&v4];
  [*(a1 + 32) setResult:{v3, v4, v5, v6, v7}];
}

id sub_10007823C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [*(a1 + 40) objectForKeyedSubscript:v4];

  [v5 setScopedIDs:v6];

  return v5;
}

void sub_100078508(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_100078528(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 80);
  v7 = *(a1 + 64) != 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100078670;
  v10[3] = &unk_100362598;
  v8 = *(a1 + 48);
  v11 = *(a1 + 56);
  v9 = v3;
  v14 = v9;
  objc_copyWeak(&v15, (a1 + 72));
  v12 = *(a1 + 40);
  v17 = *(a1 + 84);
  v16 = *(a1 + 80);
  v13 = *(a1 + 48);
  [v4 _fetchProfilesForPlayerIDs:v5 familiarity:v6 responseKind:v7 context:v8 handler:v10];

  objc_destroyWeak(&v15);
}

void sub_100078670(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a4)
  {
    [*(a1 + 32) setResult:a2];
    v6 = *(*(a1 + 56) + 16);

    v6();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v9 = os_log_GKGeneral;
    if (WeakRetained)
    {
      if (!os_log_GKGeneral)
      {
        v10 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
      {
        sub_10028912C();
      }

      v11 = *(a1 + 76);
      v12 = *(a1 + 72);
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100078830;
      v16[3] = &unk_100362408;
      v17 = *(a1 + 32);
      v18 = *(a1 + 56);
      [WeakRetained _loadProfilesForPlayerIDs:v13 familiarity:v12 responseComplete:a5 & ~v11 context:v14 handler:v16];
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v15 = GKOSLoggers();
        v9 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_1002891B0();
      }

      (*(*(a1 + 56) + 16))();
    }
  }
}

uint64_t sub_100078830(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResult:a2];
  [*(a1 + 32) setError:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_1000788A0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_100078B9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_100078BC4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v5 = [GKPlayerProfileCacheObject piecesToLoadForFamiliarity:*(a1 + 72)];
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100078D80;
    v10[3] = &unk_100362660;
    objc_copyWeak(&v16, (a1 + 64));
    v14 = v3;
    v11 = *(a1 + 48);
    v12 = *(a1 + 32);
    v15 = *(a1 + 56);
    v13 = *(a1 + 40);
    v18 = *(a1 + 76);
    v17 = *(a1 + 72);
    [WeakRetained _loadProfilesForPlayerIDs:v7 pieces:v5 context:v6 handler:v10];

    objc_destroyWeak(&v16);
  }

  else
  {
    v3[2](v3);
    v8 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
      v8 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1002891EC();
    }
  }
}

void sub_100078D80(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    if (v3)
    {
      if (!os_log_GKGeneral)
      {
        v5 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_100289228();
      }

      [*(a1 + 32) setError:v3];
      if (![v3 gkIsNotConnectedToInternetError])
      {
        goto LABEL_16;
      }

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100078FE4;
      v18[3] = &unk_100362610;
      v18[4] = WeakRetained;
      v6 = *(a1 + 32);
      v19 = *(a1 + 40);
      v22 = *(a1 + 64);
      v20 = *(a1 + 48);
      v21 = *(a1 + 32);
      [v6 perform:v18];

      v7 = v19;
    }

    else
    {
      if (*(a1 + 84))
      {
LABEL_16:
        (*(*(a1 + 56) + 16))();
        goto LABEL_17;
      }

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100079108;
      v11[3] = &unk_100362638;
      v10 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = WeakRetained;
      v17 = *(a1 + 80);
      v16 = *(a1 + 64);
      v14 = *(a1 + 48);
      v15 = *(a1 + 32);
      [v10 perform:v11];

      v7 = v12;
    }

    goto LABEL_16;
  }

  (*(*(a1 + 56) + 16))();
  v8 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
    v8 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100289290();
  }

LABEL_17:
}

void sub_100078FE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = 2 * (*(a1 + 64) != 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000790C0;
  v9[3] = &unk_1003625E8;
  v7 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = v3;
  v8 = v3;
  [v4 _fetchProfilesForPlayerIDs:v5 familiarity:0 responseKind:v6 context:v7 handler:v9];
}

uint64_t sub_1000790C0(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setResult:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_100079108(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1002892CC();
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 72);
  v9 = 2 * (*(a1 + 64) != 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100079230;
  v12[3] = &unk_1003625E8;
  v10 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = v3;
  v11 = v3;
  [v6 _fetchProfilesForPlayerIDs:v7 familiarity:v8 responseKind:v9 context:v10 handler:v12];
}

uint64_t sub_100079230(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setResult:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_100079278(uint64_t a1)
{
  [*(a1 + 32) _gkSaveIfDirty];
  v2 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
    v2 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100289340(a1, v2);
  }

  v4 = *(a1 + 48);
  v5 = [*(a1 + 40) result];
  v6 = [*(a1 + 40) error];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_1000794FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12 = GKFriendSupportPageURL;
  v5 = [NSArray arrayWithObjects:&v12 count:1];
  v6 = [*(a1 + 40) clientProxy];
  v7 = [v6 replyQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100079640;
  v9[3] = &unk_100360ED8;
  v10 = *(a1 + 48);
  v11 = v3;
  v8 = v3;
  [v4 getValuesForKeys:v5 queue:v7 completion:v9];
}

void sub_100079640(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 count])
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002893F8();
    }
  }

  v8 = [v5 objectForKeyedSubscript:GKFriendSupportPageURL];
  [*(a1 + 32) setResult:v8];

  [*(a1 + 32) setError:v6];
  (*(*(a1 + 40) + 16))();
}

void sub_100079724(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_100079AEC(uint64_t a1, void *a2)
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100079BE8;
  v12[3] = &unk_1003626D8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v11 = *(a1 + 56);
  v7 = *(a1 + 32);
  *&v8 = v11;
  *(&v8 + 1) = v7;
  *&v9 = v5;
  *(&v9 + 1) = v6;
  v13 = v9;
  v14 = v8;
  v10 = a2;
  [v4 performOnManagedObjectContext:v12];
  v10[2](v10);
}

void sub_100079BE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[GKPlayerProfileCacheObject selfPlayerID];
  if (v7)
  {
    v8 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v5];
    [v8 setStatus:*(a1 + 32)];
    [v8 expire];
    if (*(a1 + 32))
    {
      v9 = *(a1 + 32);
    }

    else
    {
      v9 = &stru_100374F10;
    }

    v10 = [GKResource resourceWithID:v7 representedItem:v9];
    v11 = *(a1 + 40);
    v12 = [*(a1 + 48) credential];
    v13 = [v11 setPlayerStatusWriterWithCredential:v12];
    v14 = [NSSet setWithObject:v10];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100079D80;
    v15[3] = &unk_100361198;
    v16 = *(a1 + 56);
    v17 = v6;
    [v13 writeResources:v14 handler:v15];
  }
}

uint64_t sub_100079D80(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_100079DC8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void sub_10007A050(uint64_t a1, void *a2)
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007A144;
  v12[3] = &unk_1003626D8;
  v4 = (a1 + 48);
  v5 = *(a1 + 32);
  *&v6 = *(a1 + 40);
  *(&v6 + 1) = *v4;
  v11 = v6;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v13 = v11;
  v14 = v9;
  v10 = a2;
  [v5 performOnManagedObjectContext:v12];
  v10[2](v10);
}

void sub_10007A144(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:a2];
  [v6 setAvatarType:*(a1 + 32)];
  v7 = [*(a1 + 40) localPlayer];
  v8 = [v7 playerID];
  v9 = GKAvatarSubdirectoryNameForPlayerID();

  v10 = [v6 imageCacheKeyPathsByKey];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10007A2A8;
  v13[3] = &unk_100362700;
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = v9;
  v17 = v6;
  v11 = v6;
  v12 = v9;
  [v10 enumerateKeysAndObjectsUsingBlock:v13];

  v5[2](v5);
}

void sub_10007A2A8(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [*(a1 + 40) objectForKeyedSubscript:v6];

  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = GKImageCachePathForSubdirectoryAndFilename();
    [*(a1 + 56) setValue:v10 forKeyPath:v11];
    [v7 _gkWriteToImageCacheWithURLString:v10];
  }
}

void sub_10007A588(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007A688;
  v12[3] = &unk_1003626D8;
  v11 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v11;
  *(&v9 + 1) = v5;
  v13 = v9;
  v14 = v8;
  v10 = a2;
  [v4 performOnManagedObjectContext:v12];
  v10[2](v10);
}

void sub_10007A688(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) localPlayer];
  v6 = [v5 playerID];

  v21[0] = @"photo-data";
  v21[1] = GKAvatarTypeKey;
  v7 = *(a1 + 48);
  v22[0] = *(a1 + 40);
  v22[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  v9 = [(GKResource *)GKMutableResource resourceWithID:v6 representedItem:v8];
  v10 = [*(a1 + 32) clientProxy];
  v11 = [*(a1 + 32) credential];
  v12 = [v10 setPlayerPhotoWriterWithCredential:v11];
  v13 = [NSSet setWithObject:v9];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10007A86C;
  v17[3] = &unk_1003613E8;
  v14 = *(a1 + 56);
  v15 = *(a1 + 32);
  v18 = v14;
  v19 = v15;
  v20 = v4;
  v16 = v4;
  [v12 writeResources:v13 handler:v17];
}

uint64_t sub_10007A86C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  if (!a2)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10007A914;
    v5[3] = &unk_100361410;
    v5[4] = *(a1 + 40);
    [GKClientProxy enumerateClientsUsingBlock:v5];
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_10007A914(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) clientProxy];
  v4 = [v5 isEqual:v3];

  if ((v4 & 1) == 0)
  {
    [v5 refreshContentsForDataType:16 userInfo:0];
  }
}

void sub_10007ABB0(int8x16_t *a1, void *a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10007AC6C;
  v6[3] = &unk_100361708;
  v5 = a1[2];
  v3 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  v4 = a2;
  [v3 performOnManagedObjectContext:v6];
  v4[2](v4);
}

void sub_10007AC6C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:a2];
  [v6 clearImages];
  v7 = [*(a1 + 32) localPlayer];
  v8 = [v7 playerID];

  v9 = [GKResource resourceWithID:v8];
  v10 = [*(a1 + 32) clientProxy];
  v11 = [*(a1 + 32) credential];
  v12 = [v10 deletePlayerPhotoWriterWithCredential:v11];
  v13 = [NSSet setWithObject:v9];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007ADF8;
  v15[3] = &unk_100361198;
  v16 = *(a1 + 40);
  v17 = v5;
  v14 = v5;
  [v12 writeResources:v13 handler:v15];
}

uint64_t sub_10007ADF8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_10007AF80(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v2];

  v4 = [v3 isFindable];
  [v3 setFindable:*(a1 + 56)];
  v15 = @"findable";
  v5 = [NSNumber numberWithBool:*(a1 + 56)];
  v16 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

  v7 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v8 = [*(a1 + 40) clientProxy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007B148;
  v11[3] = &unk_100361648;
  v10 = *(a1 + 32);
  v9 = v10.i64[0];
  v12 = vextq_s8(v10, v10, 8uLL);
  v14 = v4;
  v13 = *(a1 + 48);
  [v7 issueRequest:v6 bagKey:@"gk-set-findable" clientProxy:v8 handler:v11];
}

void sub_10007B148(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 40) context];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10007B254;
    v10[3] = &unk_100362728;
    v11 = *(a1 + 40);
    v12 = *(a1 + 56);
    [v7 performBlock:v10];
  }

  else
  {
    v8 = [*(a1 + 32) clientProxy];
    [v8 refreshContentsForDataType:6 userInfo:0];
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, v6);
  }
}

void sub_10007B254(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v2];

  [v3 setFindable:*(a1 + 40)];
}

void sub_10007B53C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:a2];
  v7 = [v6 alias];
  [v6 setAlias:*(a1 + 32)];
  v24[0] = *(a1 + 32);
  v23[0] = @"player-nickname";
  v23[1] = @"suggestions-count";
  v8 = [NSNumber numberWithInteger:*(a1 + 56)];
  v24[1] = v8;
  v23[2] = @"min-suggestion-length";
  v9 = [NSNumber numberWithInteger:*(a1 + 64)];
  v24[2] = v9;
  v23[3] = @"max-suggestion-length";
  v10 = [NSNumber numberWithInteger:*(a1 + 72)];
  v24[3] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];

  v12 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v13 = [*(a1 + 40) clientProxy];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10007B768;
  v18[3] = &unk_100362778;
  v14 = *(a1 + 48);
  v15 = *(a1 + 40);
  v19 = v14;
  v20 = v15;
  v21 = v7;
  v22 = v5;
  v16 = v7;
  v17 = v5;
  [v12 issueRequest:v11 bagKey:@"gk-set-player-nickname" clientProxy:v13 handler:v18];
}

void sub_10007B768(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"suggestions"];
  v8 = [v6 objectForKeyedSubscript:@"player-nickname-update-status"];

  v9 = [v8 unsignedIntegerValue];
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  [*(a1 + 32) setResult:v10];
  v11 = [NSNumber numberWithUnsignedInteger:v9];
  [*(a1 + 32) setObject:v11 forKeyedSubscript:@"updateStatus"];

  [*(a1 + 32) setError:v5];
  if (v5 || v9)
  {
    if ([v7 count])
    {
      goto LABEL_11;
    }

    v14 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v15 = GKOSLoggers();
      v14 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_10028949C();
      if (v5)
      {
        goto LABEL_12;
      }
    }

    else
    {
LABEL_11:
      if (v5)
      {
LABEL_12:
        [*(a1 + 32) setObject:&off_1003823D0 forKeyedSubscript:@"updateStatus"];
        if (!os_log_GKGeneral)
        {
          v16 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
        {
          sub_1002894D8();
        }
      }
    }

    v17 = [*(a1 + 32) context];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10007BA18;
    v18[3] = &unk_1003610B8;
    v13 = &v19;
    v19 = *(a1 + 32);
    v20 = *(a1 + 48);
    [v17 performBlock:v18];

    (*(*(a1 + 56) + 16))();
    goto LABEL_17;
  }

  v12 = *(a1 + 40);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10007BA08;
  v21[3] = &unk_100360FA0;
  v13 = &v22;
  v22 = *(a1 + 56);
  [v12 invalidateCachedProfileForLocalPlayerWithHandler:v21];
LABEL_17:
}

void sub_10007BA18(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v2];

  [v3 setAlias:*(a1 + 40)];
}

void sub_10007BA98(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"updateStatus"];
  v4 = [v3 unsignedIntegerValue];
  v5 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v6, v4, v5);
}

void sub_10007BDE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) clientProxy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10007BED8;
  v8[3] = &unk_1003627C8;
  v9 = *(a1 + 48);
  v10 = v3;
  v7 = v3;
  [v4 issueRequest:v5 bagKey:@"gk-get-suggested-player-nickname" clientProxy:v6 handler:v8];
}

void sub_10007BED8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:@"suggestions"];
  if ([v6 count])
  {
    goto LABEL_5;
  }

  v7 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
    v7 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100289540();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    sub_10028957C();
  }

LABEL_10:
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  [*(a1 + 32) setResult:v10];
  [*(a1 + 32) setError:v5];
  (*(*(a1 + 40) + 16))();
}

void sub_10007BFF4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_10007C284(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) clientProxy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10007C378;
  v8[3] = &unk_1003627C8;
  v9 = *(a1 + 48);
  v10 = v3;
  v7 = v3;
  [v4 issueRequest:v5 bagKey:@"gk-get-localized-key" clientProxy:v6 handler:v8];
}

void sub_10007C378(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:@"value"];
  v7 = v6;
  if (v6 && [v6 length])
  {
    goto LABEL_6;
  }

  v8 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
    v8 = os_log_GKGeneral;
  }

  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
LABEL_6:
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1002895E4();
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    sub_100289620();
  }

LABEL_11:
  [*(a1 + 32) setResult:v7];
  [*(a1 + 32) setError:v5];
  (*(*(a1 + 40) + 16))();
}

void sub_10007C490(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_10007C6A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:a2];
  v7 = [v6 globalFriendListAccess];
  v8 = &GKGlobalFriendListAccessAllowed;
  v9 = &GKGlobalFriendListAccessDenied;
  v10 = *(a1 + 48);
  if (v10 != 1)
  {
    v9 = &GKGlobalFriendListAccessUndetermined;
  }

  if (v10)
  {
    v8 = v9;
  }

  v11 = *v8;
  v20 = GKGlobalFriendListAccessKey;
  v21 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  [v6 setGlobalFriendListAccess:*(a1 + 48)];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10007C840;
  v16[3] = &unk_100362818;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v19 = v7;
  v17 = v14;
  v18 = v5;
  v15 = v5;
  [v13 setProfileSettings:v12 handler:v16];
}

uint64_t sub_10007C840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) setError:?];
  if (a3)
  {
    v8 = [*(a1 + 32) context];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10007C908;
    v10[3] = &unk_1003627F0;
    v11 = *(a1 + 32);
    v12 = *(a1 + 48);
    [v8 performBlock:v10];
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v6, v7);
}

void sub_10007C908(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v2];

  [v3 setGlobalFriendListAccess:*(a1 + 40)];
}

void sub_10007C988(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void sub_10007CBA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = @"arcade-subscription-expiration";
  [*(a1 + 32) timeIntervalSince1970];
  v5 = [NSNumber numberWithDouble:v4 * 1000.0];
  v13 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007CCEC;
  v9[3] = &unk_100360ED8;
  v7 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = v3;
  v8 = v3;
  [v7 setProfileSettings:v6 handler:v9];
}

uint64_t sub_10007CCEC(uint64_t a1)
{
  [*(a1 + 32) setError:?];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_10007CD30(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void sub_10007CFCC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Done syncing friend invites allowed flag.", v10, 2u);
  }

  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100289688();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10007D300(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Done syncing privacy notice version.", v10, 2u);
  }

  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002896F0();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10007D6A0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:a2];
  v7 = [v6 achievementsVisibility];
  v20 = @"privacy-settings";
  v8 = *(a1 + 32);
  v18[0] = @"achievements";
  v18[1] = @"friends";
  v19[0] = v8;
  v19[1] = v8;
  v18[2] = @"games-played";
  v19[2] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
  v21 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];

  [v6 setAchievementsVisibility:*(a1 + 56)];
  [v6 setGamesPlayedVisibility:*(a1 + 56)];
  [v6 setFriendsVisibility:*(a1 + 56)];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10007D858;
  v14[3] = &unk_100362818;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v17 = v7;
  v15 = v12;
  v16 = v5;
  v13 = v5;
  [v11 setProfileSettings:v10 handler:v14];
}

uint64_t sub_10007D858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) setError:?];
  if (a3)
  {
    v8 = [*(a1 + 32) context];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10007D920;
    v10[3] = &unk_1003627F0;
    v11 = *(a1 + 32);
    v12 = *(a1 + 48);
    [v8 performBlock:v10];
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v6, v7);
}

void sub_10007D920(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v2];

  [v3 setGamesPlayedVisibility:*(a1 + 40)];
  [v3 setFriendsVisibility:*(a1 + 40)];
  [v3 setAchievementsVisibility:*(a1 + 40)];
}

void sub_10007D9B8(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  if (!v2)
  {
    [*(a1 + 40) refreshContentsForDataType:17 userInfo:0];
  }

  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) error];
  (*(v3 + 16))(v3, v4);
}

void sub_10007DC08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) clientProxy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007DD04;
  v10[3] = &unk_1003628B8;
  v7 = *(a1 + 48);
  v8 = *(a1 + 40);
  v11 = v7;
  v12 = v8;
  v13 = v3;
  v9 = v3;
  [v4 issueRequest:v5 bagKey:@"gk-set-profile-settings" clientProxy:v6 handler:v10];
}

void sub_10007DD04(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResult:a2];
  [*(a1 + 32) setError:v6];

  if (v6)
  {
    v7 = *(*(a1 + 48) + 16);

    v7();
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10007DDF8;
    v9[3] = &unk_100360FA0;
    v8 = *(a1 + 40);
    v10 = *(a1 + 48);
    [v8 invalidateCachedProfileForLocalPlayerWithHandler:v9];
  }
}

void sub_10007DE08(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_10007DFAC(id a1, NSManagedObjectContext *a2, id a3)
{
  v4 = a3;
  v5 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:a2];
  [v5 expire];
  v4[2](v4);
}

void sub_10007E224(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:a2];
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 achievementsVisibility]);
  [*(a1 + 32) setResult:v6];

  v5[2](v5);
}

void sub_10007E2D4(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  (*(*(a1 + 40) + 16))(*(a1 + 40), [v2 intValue]);
}

void sub_10007E530(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:a2];
  v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 contactsIntegrationConsent]);
  [*(a1 + 32) setResult:v7];

  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    v11 = v9;
    v12 = [v10 result];
    v13 = 138412290;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "GKProfileService: getContactsIntegrationConsentWithCompletionHandler: result=%@", &v13, 0xCu);
  }

  v5[2](v5);
}

void sub_10007E68C(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  (*(*(a1 + 40) + 16))(*(a1 + 40), [v2 intValue]);
}

void sub_10007E950(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v5];
  v8 = [v7 contactsIntegrationConsent];
  if (*(a1 + 48) == v8)
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100289758();
    }

    v6[2](v6);
  }

  else
  {
    v10 = v8;
    [v7 setContactsIntegrationConsent:?];
    v11 = &GKContactsIntegrationConsentAllowed;
    v12 = &GKContactsIntegrationConsentDenied;
    v13 = *(a1 + 48);
    if (v13)
    {
      v12 = &GKContactsIntegrationConsentUndetermined;
    }

    if (v13 != 1)
    {
      v11 = v12;
    }

    v14 = *v11;
    v23 = GKContactsIntegrationConsentKey;
    v24 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    objc_initWeak(&location, *(a1 + 32));
    v16 = *(a1 + 32);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10007EBAC;
    v17[3] = &unk_100362970;
    v18 = *(a1 + 40);
    objc_copyWeak(&v20, &location);
    v21 = v10;
    v19 = v6;
    [v16 setProfileSettings:v15 handler:v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void sub_10007EB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007EBAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setError:v6];
  v7 = *(a1 + 32);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10007ECCC;
  v13[3] = &unk_100362948;
  objc_copyWeak(&v16, (a1 + 48));
  v8 = v6;
  v14 = v8;
  v17 = *(a1 + 56);
  v9 = v5;
  v15 = v9;
  [v7 performOnManagedObjectContext:v13];
  (*(*(a1 + 40) + 16))(*(a1 + 40), v10, v11, v12);

  objc_destroyWeak(&v16);
}

void sub_10007ECCC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v6];

  if (*(a1 + 32))
  {
    [v8 setContactsIntegrationConsent:*(a1 + 56)];
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100289794();
    }

    v5[2](v5);
  }

  else
  {
    v10 = [*(a1 + 40) objectForKeyedSubscript:GKContactsAssociationIDKey];
    v11 = [GKContactsIntegrationUserSettings associationIDFromServerResult:v10];
    [v8 setContactsAssociationID:v11];

    v12 = [*(a1 + 40) objectForKeyedSubscript:GKServiceLastUpdateTimestamp];
    v13 = [GKContactsIntegrationUserSettings dateFromServerResult:v12];
    [v8 setServiceLastUpdatedTimestamp:v13];

    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    v15 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "GKProfileService: setContactsIntegrationConsent from game center server succeeded", buf, 2u);
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10007EF1C;
    v16[3] = &unk_100361CB8;
    v17 = v5;
    [WeakRetained updateContactsIntegrationInfoFromLocalPlayerProfile:v8 completionHandler:v16];
  }
}

void sub_10007EF2C(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  if (!v2)
  {
    [*(a1 + 40) refreshContentsForDataType:17 userInfo:0];
  }

  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) error];
  (*(v3 + 16))(v3, v4);
}

uint64_t sub_10007F1E8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10007F4B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) contactsIntegrationController];
  v11 = *(a1 + 40);
  v5 = [NSArray arrayWithObjects:&v11 count:1];
  v6 = *(a1 + 56);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10007F5E4;
  v8[3] = &unk_100362998;
  v9 = *(a1 + 48);
  v10 = v3;
  v7 = v3;
  [v4 getRelationshipsForContacts:v5 updateExistingContactEntries:v6 completionHandler:v8];
}

uint64_t sub_10007F5E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  [v6 setResult:a2];
  [*(a1 + 32) setError:v7];

  v8 = *(*(a1 + 40) + 16);

  return v8();
}

void sub_10007F654(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_10007F7B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007F864;
  v7[3] = &unk_100360EB0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_10007FB50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) contactsIntegrationController];
  v5 = *(a1 + 56);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10007FC40;
  v8[3] = &unk_1003629E8;
  v6 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = v3;
  v10 = *(a1 + 40);
  v7 = v3;
  [v4 getRelationshipsForContacts:v6 updateExistingContactEntries:v5 completionHandler:v8];
}

void sub_10007FC40(uint64_t a1, void *a2, void *a3, void *a4)
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

    v11 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
    {
      sub_1002898A4(v11);
    }

    [*(a1 + 32) setResult:0];
    [*(a1 + 32) setError:v9];
  }

  else
  {
    if (v7)
    {
      v12 = [GKProfileServicePrivate parseContactAssociationIDsFromRelationships:v7 contactAssociationIDMap:v8 contacts:*(a1 + 40)];
      [*(a1 + 32) setResult:v12];
      [*(a1 + 32) setError:0];
      (*(*(a1 + 48) + 16))();

      goto LABEL_10;
    }

    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "getContactAssociationIDsForContacts: Unable to get relationships for contacts: relationships list was nil", v15, 2u);
    }

    [*(a1 + 32) setResult:0];
  }

  (*(*(a1 + 48) + 16))();
LABEL_10:
}

void sub_10007FDDC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_10008006C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 contactsIntegrationController];
  v9 = [v8 getContactsForContactAssociationIDs:*(a1 + 40) withContext:v7];

  [*(a1 + 48) setResult:v9];
  v6[2](v6);
}

void sub_100080114(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) result];
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_10008028C(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Finished starting contacts controller", v5, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_100080408(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
  {
    sub_10028993C();
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void sub_10008055C(id *a1, int a2)
{
  if (a2 && (+[GKPreferences shared](GKPreferences, "shared"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isAddingFriendsRestricted], v3, (v4 & 1) == 0))
  {
    v10 = a1[4];
    v11 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1877, "[GKProfileServicePrivate filterForContactIDsSupportingFriendingViaPushFromContactIDs:withCompletion:]_block_invoke"];
    v12 = [v10 transactionGroupWithName:v11];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10008080C;
    v23[3] = &unk_100361348;
    v23[4] = a1[4];
    v13 = v12;
    v24 = v13;
    v25 = a1[5];
    [v13 performOnManagedObjectContext:v23];
    v14 = [a1[4] clientProxy];
    v15 = [v14 replyQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000808B4;
    v20[3] = &unk_100360EB0;
    v16 = a1[6];
    v21 = v13;
    v22 = v16;
    v9 = v13;
    [v9 notifyOnQueue:v15 block:v20];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "filterForContactIDsSupportingFriendingViaPushFromContactIDs - friending via push is disabled (via bag key), returning no contact IDs", buf, 2u);
    }

    v7 = [a1[4] clientProxy];
    v8 = [v7 replyQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008092C;
    block[3] = &unk_100360FA0;
    v18 = a1[6];
    dispatch_async(v8, block);

    v9 = v18;
  }
}

void sub_10008080C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v9 = [v5 contactsIntegrationController];
  v8 = [v9 filterForContactIDsSupportingFriendingViaPushFromContactIDs:*(a1 + 48) withContext:v7];

  [*(a1 + 40) setResult:v8];
  v6[2](v6);
}

void sub_1000808B4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_10008092C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[NSSet set];
  (*(v1 + 16))(v1, v2, 0);
}

void sub_100080B60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = +[NSDictionary dictionary];
  }

  v8 = v7;
  if (v6 || ![v7 count])
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002899B0();
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), [v8 integerValueFromKey:GKFriendingViaPushEnabled defaultValue:1] == 1);
}

void sub_100080E20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100080EE4;
  v10[3] = &unk_100362A38;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  v11 = v6;
  v12 = v8;
  v13 = v3;
  v14 = v7;
  v9 = v3;
  [v4 getProfilesForPlayerIDs:v5 handler:v10];
}

void sub_100080EE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  [v6 setObject:v5 forKeyedSubscript:@"profiles"];
  [*(a1 + 32) setError:v7];

  if (!v7 && (*(a1 + 56) & 1) != 0)
  {
    v8 = [*(a1 + 40) clientProxy];
    v9 = [*(a1 + 40) localPlayer];
    v10 = [v9 playerID];
    v11 = [v8 managedObjectContextForPlayerID:v10];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100081054;
    v13[3] = &unk_100360F78;
    v13[4] = *(a1 + 40);
    v14 = v5;
    v15 = v11;
    v16 = *(a1 + 48);
    v12 = v11;
    [v12 performBlock:v13];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t sub_100081054(uint64_t a1)
{
  v2 = [*(a1 + 32) contactsIntegrationController];
  [v2 populateContactInfoForProfiles:*(a1 + 40) withContext:*(a1 + 48)];

  [*(a1 + 48) _gkSaveIfDirty];
  v3 = *(*(a1 + 56) + 16);

  return v3();
}

void sub_1000810B4(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) error];

  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100289A18(v2, v5);
    }

    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) error];
    (*(v6 + 16))(v6, 0, v7);
  }

  else
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:@"profiles"];
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000813AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100081480;
  v9[3] = &unk_100362A88;
  v10 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v13 = v3;
  v8 = v3;
  [v4 getProfilesForPlayerIDs:v5 handler:v9];
}

void sub_100081480(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1[4];
  v7 = a3;
  [v6 setObject:v5 forKeyedSubscript:@"profiles"];
  [a1[4] setError:v7];

  if (v7 || ![a1[5] count])
  {
    (*(a1[7] + 2))();
  }

  else
  {
    v8 = [a1[6] clientProxy];
    v9 = [a1[6] localPlayer];
    v10 = [v9 playerID];
    v11 = [v8 managedObjectContextForPlayerID:v10];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100081608;
    v13[3] = &unk_100360F28;
    v13[4] = a1[6];
    v14 = v5;
    v15 = a1[5];
    v16 = v11;
    v17 = a1[7];
    v12 = v11;
    [v12 performBlock:v13];
  }
}

uint64_t sub_100081608(uint64_t a1)
{
  v2 = [*(a1 + 32) contactsIntegrationController];
  [v2 populateContactInfoForProfiles:*(a1 + 40) playerIdToContactAssociationIdMap:*(a1 + 48) withContext:*(a1 + 56)];

  [*(a1 + 56) _gkSaveIfDirty];
  v3 = *(*(a1 + 64) + 16);

  return v3();
}

void sub_10008166C(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) error];

  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100289AA8(v2, v5);
    }

    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) error];
    (*(v6 + 16))(v6, 0, v7);
  }

  else
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:@"profiles"];
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100081870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100081888(void *a1)
{
  v2 = [GKPlayerProfileCacheObject playerProfileWithPlayerID:a1[4] inManagedObjectContext:a1[5]];
  if ([v2 isValid])
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    v4 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = a1[4];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Profile is still valid for: %@", &v6, 0xCu);
    }

    *(*(a1[6] + 8) + 24) = 1;
  }
}

void sub_100081C94(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) checkExistingProfileIsValidForPlayer:*(a1 + 40) context:*(a1 + 48)])
  {
    v3[2](v3);
  }

  else
  {
    v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v5 = *(a1 + 56);
    v6 = [*(a1 + 32) clientProxy];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100081DE4;
    v10[3] = &unk_100362B00;
    v11 = *(a1 + 48);
    v7 = *(a1 + 64);
    v16 = *(a1 + 88);
    v9 = *(a1 + 72);
    v8 = *(a1 + 80);
    v12 = v7;
    v15 = v8;
    v13 = v9;
    v14 = v3;
    [v4 issueRequest:v5 bagKey:@"gk-get-profile-info" clientProxy:v6 handler:v10];
  }
}

void sub_100081DE4(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  if (v7)
  {
    v9 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100081F44;
    v12[3] = &unk_100362AD8;
    v20 = a4;
    v13 = v7;
    v14 = *(a1 + 40);
    v10 = *(a1 + 32);
    v21 = *(a1 + 72);
    v11 = *(a1 + 64);
    v15 = v10;
    v19 = v11;
    v16 = *(a1 + 48);
    v17 = v8;
    v18 = *(a1 + 56);
    [v9 performBlock:v12];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = a4;
    [*(a1 + 48) setError:v8];
    (*(*(a1 + 56) + 16))();
  }
}

void sub_100081F44(uint64_t a1)
{
  v2 = [NSDate dateWithTimeIntervalSinceNow:*(a1 + 88)];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"profile-infos"];
  if (v3)
  {
    v4 = [GKPlayerProfileCacheObject playerProfilesWithPlayerIDs:*(a1 + 40) inManagedObjectContext:*(a1 + 48)];
    v5 = [v3 _gkMapDictionaryWithKeyPath:@"input-id"];
    if (![v5 count])
    {
      v6 = [v3 _gkMapDictionaryWithKeyPath:@"player-id"];

      v5 = v6;
    }

    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1000820D8;
    v11 = &unk_100362398;
    v12 = v5;
    v13 = v2;
    v15 = *(a1 + 96);
    v14 = *(a1 + 48);
    v7 = v5;
    [v4 enumerateObjectsUsingBlock:&v8];
    [*(a1 + 48) _gkSafeSave];
  }

  *(*(*(a1 + 80) + 8) + 24) = *(a1 + 88);
  [*(a1 + 56) setError:*(a1 + 64)];
  (*(*(a1 + 72) + 16))();
}

void sub_1000820D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 playerID];
  v7 = [v3 objectForKeyedSubscript:v5];

  if (v7)
  {
    v6 = v7;
  }

  else
  {
    v6 = &__NSDictionary0__struct;
  }

  [v4 updateWithServerRepresentation:v6 expirationDate:*(a1 + 40) pieces:*(a1 + 56)];
  [*(a1 + 48) refreshObject:v4 mergeChanges:1];
}

void sub_100082184(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(*(a1 + 48) + 8) + 24);
  v3 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v3, v2);
}

uint64_t sub_100082360(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100082378(uint64_t a1, void *a2, void *a3)
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
      sub_100289B38();
    }
  }

  else if ([v5 count])
  {
    v8 = [v5 allObjects];
    v9 = *(a1 + 32);
    v10 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 2133, "[GKProfileServicePrivate preloadInstalledGamesScopedPlayerIDs:completion:]_block_invoke"];
    v11 = [v9 transactionGroupWithName:v10];

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000825FC;
    v28[3] = &unk_1003626D8;
    v12 = *(a1 + 40);
    v28[4] = *(a1 + 32);
    v29 = v12;
    v13 = v8;
    v30 = v13;
    v14 = v11;
    v31 = v14;
    [v14 performOnManagedObjectContext:v28];
    v15 = [*(a1 + 32) clientProxy];
    v16 = [v15 replyQueue];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100082708;
    v22[3] = &unk_100362B50;
    v23 = v14;
    v17 = *(a1 + 48);
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v27 = v17;
    v24 = v18;
    v25 = v19;
    v26 = v13;
    v20 = v13;
    v21 = v14;
    [v21 notifyOnQueue:v16 block:v22];

    goto LABEL_9;
  }

  (*(*(a1 + 48) + 16))();
LABEL_9:
}

void sub_1000825FC(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) filterPlayerIDsThatNeedPreloading:*(a1 + 40) gameBundleIDs:*(a1 + 48) moc:v9];
  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 count]);
  [*(a1 + 56) setObject:v7 forKeyedSubscript:@"incompletePlayerIDsCount"];

  if ([v6 count])
  {
    v8 = [*(a1 + 32) fetchScopedIDsCacheKeysWithPlayerIDs:v6 gameBundleIDs:*(a1 + 48) moc:v9];
    [*(a1 + 56) setResult:v8];
    v5[2](v5);
  }

  else
  {
    v5[2](v5);
  }
}

void sub_100082708(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"incompletePlayerIDsCount"];
  v3 = [v2 unsignedIntValue];

  if (v3)
  {
    v4 = [*(a1 + 32) result];
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = *(a1 + 56);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100082854;
    v9[3] = &unk_100361A58;
    v10 = v5;
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    [v6 fetchAndCacheScopedPlayerIDs:v10 gameBundleIDs:v7 scopedIDsCacheKeys:v4 cacheOnly:1 handler:v9];
  }

  else
  {
    v8 = *(*(a1 + 64) + 16);

    v8();
  }
}

void sub_100082854(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_GKGeneral;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100289BA0();
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
      v7 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100289C08(a1, v7);
    }
  }

  (*(*(a1 + 48) + 16))();
}

id sub_100083068(id a1, NSDictionary *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [(NSDictionary *)v3 objectForKeyedSubscript:@"gameBundleId"];
  v5 = [(NSDictionary *)v3 objectForKeyedSubscript:@"playerId"];

  v6 = [GKProfileServicePrivate cacheKeyForScopedIDsWithGameBundleID:v4 playerID:v5];

  return v6;
}

void sub_10008338C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = 0;
  v7 = a3;
  v8 = [GKProfileServicePrivate loadCachedScopedPlayerIDs:v5 gameBundleIDs:v6 error:&v10 moc:a2];
  v9 = v10;
  [*(a1 + 48) setError:v9];
  [*(a1 + 48) setResult:v8];

  v7[2](v7);
}

void sub_100083440(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3 = v2;
  v4 = &__NSArray0__struct;
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [*(a1 + 32) error];
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
    {
      sub_100289D1C();
    }
  }

  v8 = [*(a1 + 40) count];
  v9 = ([*(a1 + 48) count] * v8);
  if ([v5 count] == v9)
  {
    v10 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
      v10 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100289DFC();
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v12 = [GKScopedIDsUtils incompletePlayerIDs:*(a1 + 40) gameBundleIDs:*(a1 + 48) scopedIDs:v5];
    v13 = [v12 count];
    v14 = os_log_GKGeneral;
    if (v13)
    {
      if (!os_log_GKGeneral)
      {
        v15 = GKOSLoggers();
        v14 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v19 = v14;
        *buf = 134218496;
        v24 = [v5 count];
        v25 = 2048;
        v26 = v9;
        v27 = 2048;
        v28 = [v12 count];
        _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Loading scoped ids from server after cache hits: %lu, expected: %lu, incompletes: %lu", buf, 0x20u);
      }

      v17 = *(a1 + 48);
      v16 = *(a1 + 56);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10008374C;
      v20[3] = &unk_100362408;
      v21 = v5;
      v22 = *(a1 + 64);
      [v16 fetchAndCacheScopedPlayerIDs:v12 gameBundleIDs:v17 cachedScopedIDs:v21 handler:v20];
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v18 = GKOSLoggers();
        v14 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_100289D8C();
      }

      (*(*(a1 + 64) + 16))();
    }
  }
}

void sub_10008374C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [GKScopedIDsUtils mergeWithScopedIDs:*(a1 + 32) with:v5];
  v8 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
    v8 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v6;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Loaded scoped ids from server: %@, merged: %@, error: %@", &v10, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

id sub_100083D2C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 playerId];
  v6 = [*(a1 + 32) gameBundleId];
  v7 = [v4 isForPlayerID:v5 gameBundleID:v6];

  return v7;
}

void sub_100084320(uint64_t a1, void *a2)
{
  v3 = a2;
  v14[0] = @"related-player-ids";
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) playerIDs];
  v14[1] = @"games";
  v15[0] = v5;
  v6 = [*(a1 + 40) gameBundleIDs];
  v15[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  v8 = *(a1 + 64);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100084484;
  v11[3] = &unk_100362408;
  v9 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = v3;
  v10 = v3;
  [v4 fetchAndCacheScopedPlayerIDsForRequest:v7 scopedIDsCacheKeys:v9 cacheOnly:v8 handler:v11];
}

void sub_100084484(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) setError:v5];
  }

  if ([v8 count])
  {
    v6 = *(a1 + 32);
    v7 = +[NSUUID UUID];
    [v6 setObject:v8 forKeyedSubscript:v7];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100084538(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 40);
    v13 = [*(a1 + 32) error];
    (*(v2 + 16))(v2, &__NSArray0__struct);
  }

  else
  {
    v3 = +[NSArray array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [*(a1 + 32) allValues];
    v5 = [v4 allValues];

    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        v10 = v3;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v3 = [GKScopedIDsUtils mergeWithScopedIDs:v10 with:*(*(&v14 + 1) + 8 * v9)];

          v9 = v9 + 1;
          v10 = v3;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v11 = *(a1 + 40);
    v12 = [*(a1 + 32) error];
    (*(v11 + 16))(v11, v3, v12);
  }
}

void sub_100084864(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = [v5 objectForKeyedSubscript:@"status"];
    if ([v7 isEqualToNumber:&off_1003823E8])
    {
      v8 = [v6 objectForKeyedSubscript:@"results"];
      v9 = *(a1 + 32);
      v10 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 2459, "[GKProfileServicePrivate fetchAndCacheScopedPlayerIDsForRequest:scopedIDsCacheKeys:cacheOnly:handler:]_block_invoke"];
      v11 = [v9 transactionGroupWithName:v10];

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100084B00;
      v22[3] = &unk_100362D48;
      v23 = v8;
      v24 = *(a1 + 40);
      v26 = *(a1 + 56);
      v12 = v11;
      v25 = v12;
      v13 = v8;
      [v12 performOnManagedObjectContext:v22];
      v14 = [*(a1 + 32) clientProxy];
      v15 = [v14 replyQueue];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100084E78;
      v19[3] = &unk_100360EB0;
      v16 = *(a1 + 48);
      v20 = v12;
      v21 = v16;
      v17 = v12;
      [v17 notifyOnQueue:v15 block:v19];
    }

    else
    {
      v18 = *(a1 + 48);
      v13 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", GKServerErrorDomain, [v7 integerValue], 0);
      (*(v18 + 16))(v18, &__NSArray0__struct, v13);
    }
  }
}

void sub_100084B00(uint64_t a1, void *a2, void *a3)
{
  v30 = a2;
  v28 = a3;
  v29 = +[NSMutableArray array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v32 = a1;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    v34 = GKGamePlayerIDKey;
    v9 = &off_1003823E8;
    v33 = GKTeamPlayerIDKey;
    v31 = v5;
    do
    {
      v10 = 0;
      v35 = v7;
      do
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v36 + 1) + 8 * v10);
        v12 = [v11 objectForKeyedSubscript:@"status"];
        v13 = [v12 isEqualToNumber:v9];

        if (v13)
        {
          v14 = v9;
          v15 = [v11 objectForKeyedSubscript:@"bundle-id"];
          v16 = [v11 objectForKeyedSubscript:@"player-id"];
          v17 = [v11 objectForKeyedSubscript:v34];
          v18 = [v11 objectForKeyedSubscript:v33];
          if (v15)
          {
            v19 = v16 == 0;
          }

          else
          {
            v19 = 1;
          }

          if (!v19)
          {
            if ([v17 length])
            {
              if ([v18 length])
              {
                v20 = *(a1 + 40);
                v21 = [GKProfileServicePrivate cacheKeyForScopedIDsWithGameBundleID:v15 playerID:v16];
                LOBYTE(v20) = [v20 containsObject:v21];

                v5 = v31;
                if ((v20 & 1) == 0)
                {
                  v22 = [[GKCDScopedIds alloc] initWithContext:v30];
                  v23 = +[NSDate now];
                  [(GKCDScopedIds *)v22 setFetchedOn:v23];

                  [(GKCDScopedIds *)v22 setPlayerId:v16];
                  [(GKCDScopedIds *)v22 setGameBundleId:v15];
                  [(GKCDScopedIds *)v22 setGamePlayerId:v17];
                  [(GKCDScopedIds *)v22 setTeamPlayerId:v18];
                  if ((*(a1 + 56) & 1) == 0)
                  {
                    v24 = [GKProfileServicePrivate makeGKScopedIDsFromInternal:v22];
                    if (v24)
                    {
                      [v29 addObject:v24];
                    }
                  }

                  v5 = v31;
                }
              }
            }
          }

          v9 = v14;
          v7 = v35;
        }

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v7);
  }

  if (*(a1 + 56) == 1)
  {
    [*(a1 + 48) setResult:&__NSArray0__struct];
    v25 = v28;
    v26 = v29;
  }

  else
  {
    v26 = v29;
    v27 = [v29 copy];
    [*(v32 + 48) setResult:v27];

    v25 = v28;
  }

  v25[2](v25);
}

void sub_100084E78(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) result];
  (*(v1 + 16))(v1, v2, 0);
}

void sub_100085064(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[GKCDScopedIds _gkFetchRequest];
  v8 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v7];
  v11 = 0;
  v9 = [v5 executeRequest:v8 error:&v11];
  v10 = v11;
  [*(a1 + 32) setError:v10];
  v6[2](v6);
}

void sub_100085138(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v2);
  }
}

void sub_1000858E0(void *a1)
{
  v3 = [[GKCDScopedIds alloc] initWithContext:a1[4]];
  v2 = +[NSDate now];
  [(GKCDScopedIds *)v3 setFetchedOn:v2];

  [(GKCDScopedIds *)v3 setPlayerId:a1[5]];
  [(GKCDScopedIds *)v3 setGameBundleId:a1[6]];
  [(GKCDScopedIds *)v3 setGamePlayerId:a1[7]];
  [(GKCDScopedIds *)v3 setTeamPlayerId:a1[8]];
}

uint64_t sub_100085988(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 gamePlayerID];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 teamPlayerID];
    v6 = [v5 isEqualToString:*(a1 + 40)] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void sub_100085BF4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v13 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:a2];
  v6 = +[GKPlayerCredentialController sharedController];
  v7 = [v13 playerID];
  v8 = [*(a1 + 32) clientProxy];
  v9 = [v6 credentialForPlayerID:v7 environment:{objc_msgSend(v8, "environment")}];

  v10 = [NSNumber numberWithInt:[GKAccountServicePrivate getAccountAgeCategoryForCredential:v9]];
  [*(a1 + 40) setObject:v10 forKeyedSubscript:@"ageCategory"];

  v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 achievementsVisibility]);
  [*(a1 + 40) setObject:v11 forKeyedSubscript:@"profilePrivacy"];

  v12 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 contactsIntegrationConsent]);
  [*(a1 + 40) setObject:v12 forKeyedSubscript:@"contactsIntegration"];

  v5[2](v5);
}

void sub_100085D90(uint64_t a1)
{
  v7[0] = @"ageCategory";
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  v8[0] = v3;
  v7[1] = @"profilePrivacy";
  v4 = [*(a1 + 32) objectForKeyedSubscript:?];
  v8[1] = v4;
  v7[2] = @"contactsIntegration";
  v5 = [*(a1 + 32) objectForKeyedSubscript:?];
  v8[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];
  (*(v2 + 16))(v2, v6);
}

void sub_100085ED8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_100086014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

void sub_1000860DC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 transport];
  v5 = [*(a1 + 32) clientProxy];
  v6 = [*(a1 + 32) localPlayer];
  v7 = [(GKService *)GKProfileService serviceWithTransport:v8 forClient:v5 localPlayer:v6];
  [v7 getProfilesForPlayerIDs:v4 handler:*(a1 + 40)];
}

void sub_100086720(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = [GKFriendService filterFriends:v5 filter:v6];
  v9 = [v8 _gkValuesForKeyPath:@"playerID"];

  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 40);
    v13 = v11;
    v14[0] = 67109632;
    v14[1] = v12;
    v15 = 2048;
    v16 = [v9 count];
    v17 = 2048;
    v18 = [v5 count];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "getFriendIDsForPlayer: filter %d kept %lu player IDs from %lu filterable friends", v14, 0x1Cu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000868A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_100086DD0;
  v47 = sub_100086DE0;
  v48 = 0;
  v4 = [(GKCacheObject *)GKFriendListCacheObject fetchRequestForContext:*(a1 + 32)];
  v5 = *(a1 + 32);
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100086DE8;
  v42[3] = &unk_100362E00;
  v42[4] = &v43;
  [v5 performBlockAndWait:v42];
  v6 = [*(a1 + 40) playerID];
  v7 = v6;
  if (!v6)
  {
    v7 = v44[5];
  }

  v8 = v7;

  [*(a1 + 48) setObject:v8 forKeyedSubscript:@"playerID"];
  if (v8)
  {
    v9 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v51 = v8;
    v10 = [NSArray arrayWithObjects:&v51 count:1];
    v11 = objc_retainBlock(*(a1 + 64));
    v12 = [v9 doesCallbackListExistFor:@"gk-get-friend-player-ids" parameters:v10 callback:v11];

    if (v12)
    {
      if (!os_log_GKGeneral)
      {
        v13 = GKOSLoggers();
      }

      v14 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "getFriendIDsForPlayer: callback already exists, will use its value when ready", buf, 2u);
      }

      [*(a1 + 48) setObject:&__kCFBooleanTrue forKeyedSubscript:@"skipCallbacks"];
      v3[2](v3);
    }

    else
    {
      v16 = +[GKNetworkRequestManager commonNetworkRequestManager];
      v17 = [v16 relatedTasksExistForBagKey:@"gk-get-friend-player-ids"];

      *buf = 0;
      v39 = buf;
      v40 = 0x2020000000;
      v41 = 0;
      v18 = *(a1 + 32);
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100086E38;
      v32[3] = &unk_100362E28;
      v19 = v4;
      v33 = v19;
      v34 = *(a1 + 32);
      v37 = v17;
      v35 = *(a1 + 48);
      v36 = buf;
      [v18 performBlockAndWait:v32];
      if (v39[24] == 1)
      {
        v3[2](v3);
      }

      else
      {
        v49[0] = @"requested-player-id";
        v49[1] = @"friend-type";
        v50[0] = v8;
        v50[1] = GKFriendTypeAll;
        v20 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];
        v21 = +[GKNetworkRequestManager commonNetworkRequestManager];
        v22 = [*(a1 + 56) clientProxy];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_100086FC4;
        v25[3] = &unk_100362E78;
        v26 = *(a1 + 48);
        v30 = v3;
        v27 = *(a1 + 32);
        v28 = v8;
        v23 = v19;
        v24 = *(a1 + 72);
        v29 = v23;
        v31 = v24;
        [v21 issueRequest:v20 bagKey:@"gk-get-friend-player-ids" clientProxy:v22 handler:v25];
      }

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v15 = [NSError userErrorForCode:8 underlyingError:0];
    [*(a1 + 48) setError:v15];

    v3[2](v3);
  }

  _Block_object_dispose(&v43, 8);
}

void sub_100086D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100086DD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100086DE8(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 40) = +[GKPlayerProfileCacheObject selfPlayerID];

  return _objc_release_x1();
}

void sub_100086E38(uint64_t a1)
{
  [*(a1 + 32) setReturnsDistinctResults:1];
  v2 = [NSManagedObject _gkRetrieveCleanEntry:*(a1 + 40) request:*(a1 + 32)];
  v3 = [v2 expired];
  if (v2 && (!v3 || *(a1 + 64) <= 1uLL))
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      v7 = [v2 entries];
      v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 count]);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "getFriendIDsForPlayer: cache is valid, using it: %@", &v10, 0xCu);
    }

    v9 = [v2 filterableFriends];
    [*(a1 + 48) setObject:v9 forKeyedSubscript:@"filterablePlayers"];

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void sub_100086FC4(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v7 = a2;
  v8 = v7;
  if (!v7 || a3)
  {
    [*(a1 + 32) setError:a3];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v9 = *(a1 + 40);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10008712C;
    v18[3] = &unk_100362E50;
    v19 = v7;
    v10 = *(a1 + 48);
    v11 = *(a1 + 40);
    v12 = *(a1 + 56);
    v23 = a4;
    v13 = *(a1 + 32);
    *&v14 = v12;
    *(&v14 + 1) = v13;
    *&v15 = v10;
    *(&v15 + 1) = v11;
    v20 = v15;
    v21 = v14;
    v17 = *(a1 + 64);
    v16 = v17;
    v22 = v17;
    [v9 performBlock:v18];
  }
}

void sub_10008712C(uint64_t a1)
{
  v8 = [*(a1 + 32) objectForKey:@"results"];
  v2 = [GKPlayerProfileCacheObject playerProfileWithPlayerID:*(a1 + 40) inManagedObjectContext:*(a1 + 48)];
  v3 = [NSManagedObject _gkRetrieveCleanEntry:*(a1 + 48) request:*(a1 + 56)];
  if (v3)
  {
    [*(a1 + 48) deleteObject:v3];
  }

  v4 = +[GKContactsIntegrationController sharedController];
  v5 = [v3 entries];
  [v4 updateIDSEntriesFromOldFriendEntries:v5 againstServerRepresentation:v8 withContext:*(a1 + 48)];

  v6 = [GKFriendListCacheObject cacheFriendList:v8 withTimeToLive:v2 forProfile:*(a1 + 48) managedObjectContext:0 commonFriends:*(a1 + 88)];
  [*(a1 + 48) _gkSafeSave];
  v7 = [v6 filterableFriends];
  [*(a1 + 64) setObject:v7 forKeyedSubscript:@"filterablePlayers"];

  *(*(*(a1 + 80) + 8) + 24) = *(a1 + 88) > 0.0;
  (*(*(a1 + 72) + 16))();
}

void sub_10008729C(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"playerID"];
  if (v2)
  {
    v3 = [*(a1 + 32) objectForKeyedSubscript:@"skipCallbacks"];

    if (v3)
    {
      if (!os_log_GKGeneral)
      {
        v4 = GKOSLoggers();
      }

      v5 = os_log_GKTrace;
      if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "getFriendIDsForPlayer: not calling handler because callbacks are skipped", buf, 2u);
      }
    }

    else
    {
      v10 = [*(a1 + 32) objectForKeyedSubscript:@"filterablePlayers"];
      v11 = +[GKNetworkRequestManager commonNetworkRequestManager];
      v28 = v2;
      v12 = [NSArray arrayWithObjects:&v28 count:1];
      v13 = [v11 retrieveAndClearCallbacks:@"gk-get-friend-player-ids" parameters:v12];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v23;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v23 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v22 + 1) + 8 * i);
            v20 = [*(a1 + 32) error];
            (*(v19 + 16))(v19, v10, v20);
          }

          v16 = [v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v16);
      }

      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        v21 = [*(a1 + 40) clientProxy];
        [v21 refreshContentsForDataType:2 userInfo:0];
      }
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "getFriendIDsForPlayer: returning nil because no playerID set", buf, 2u);
    }

    v8 = *(a1 + 48);
    v9 = [*(a1 + 32) error];
    (*(v8 + 16))(v8, 0, v9);
  }
}

void sub_10008773C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v5 = [*(a1 + 32) clientProxy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008782C;
  v8[3] = &unk_1003628B8;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v6;
  v10 = v3;
  v7 = v3;
  [v4 issueRequest:0 bagKey:@"gk-get-nearby-friend-token" clientProxy:v5 handler:v8];
}

void sub_10008782C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKey:@"friend-token"];
  if (![(__CFString *)v6 length])
  {
    v7 = [*(a1 + 32) localPlayer];
    v8 = [v7 playerID];
    v9 = [NSString stringWithFormat:@"NEARBY_TOKEN_%@", v8];

    v6 = v9;
  }

  v10 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
    v10 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10028A058();
  }

  if (v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = &stru_100374F10;
  }

  [*(a1 + 40) setResult:v12];
  [*(a1 + 40) setError:v5];
  if (v5)
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028A0C8();
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000879A0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_100087D1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12 = @"friend-tokens";
  v13 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v6 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v7 = [*(a1 + 40) clientProxy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100087E70;
  v9[3] = &unk_1003627C8;
  v10 = *(a1 + 48);
  v11 = v3;
  v8 = v3;
  [v6 issueRequest:v5 bagKey:@"gk-establish-nearby-relationship" clientProxy:v7 handler:v9];
}

void sub_100087E70(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [*(a1 + 32) setError:v4];
  if (v4)
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028A1A0();
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100087F0C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void sub_100088124(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12 = @"request-id";
  v13 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v6 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v7 = [*(a1 + 40) clientProxy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100088278;
  v9[3] = &unk_1003627C8;
  v10 = *(a1 + 48);
  v11 = v3;
  v8 = v3;
  [v6 issueRequest:v5 bagKey:@"gk-get-friend-code" clientProxy:v7 handler:v9];
}

void sub_100088278(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v8 = v5;
  if (a2 && !v5)
  {
    v7 = [a2 objectForKey:@"friend-code"];
    [*(a1 + 32) setResult:v7];

    v6 = v8;
  }

  [*(a1 + 32) setError:v6];
  (*(*(a1 + 40) + 16))();
}

void sub_100088314(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_1000885A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 transport];
  v6 = [*(a1 + 32) clientProxy];
  v7 = [*(a1 + 32) localPlayer];
  v8 = [(GKService *)GKProfileServicePrivate serviceWithTransport:v5 forClient:v6 localPlayer:v7];

  [v8 getProfilesForPlayerIDs:v4 fetchOptions:*(a1 + 48) handler:*(a1 + 40)];
}

void sub_100088728(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 transport];
  v6 = [*(a1 + 32) clientProxy];
  v7 = [*(a1 + 32) localPlayer];
  v8 = [(GKService *)GKProfileServicePrivate serviceWithTransport:v5 forClient:v6 localPlayer:v7];

  [v8 getProfilesForPlayerIDs:v4 fetchOptions:*(a1 + 48) handler:*(a1 + 40)];
}

void sub_100088B54(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = +[GKPlayerProfileCacheObject selfPlayerID];
  v9 = [NSSet setWithObjects:v5, v8, 0];

  v10 = [GKGameStatServicePrivate currentFriendsPlayedList:v7];
  [v10 setExpirationDate:0];
  v11 = [NSPredicate predicateWithFormat:@"playerID == %@", *(a1 + 32)];
  [(GKCacheObject *)GKFriendListEntryCacheObject deleteObjectsMatchingPredicate:v11 context:v7];

  v12 = [NSPredicate predicateWithFormat:@"playerID == %@", *(a1 + 32)];
  [(GKCacheObject *)GKRecentPlayerListEntryCacheObject deleteObjectsMatchingPredicate:v12 context:v7];

  v13 = [NSPredicate predicateWithFormat:@"player.playerID IN %@", v9];
  [(GKExpiringCacheObject *)GKFriendListCacheObject expireObjectsMatchingPredicate:v13 context:v7];

  v14 = [NSPredicate predicateWithFormat:@"player.playerID IN %@", v9];
  [(GKExpiringCacheObject *)GKRecentPlayerListCacheObject expireObjectsMatchingPredicate:v14 context:v7];

  [(GKExpiringCacheObject *)GKFriendRecommendationListCacheObject expireObjectsMatchingPredicate:0 context:v7];
  [(GKExpiringCacheObject *)GKFriendRequestListCacheObject expireObjectsMatchingPredicate:0 context:v7];

  v15 = [*(a1 + 40) playerID];
  v17 = v15;
  v16 = [NSArray arrayWithObjects:&v17 count:1];
  [GKPlayerProfileCacheObject removeFamiliarPlayerIDs:v16 familiarity:2];

  v6[2](v6);
}

void sub_100088DBC(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) clientProxy];
  [v2 refreshContentsForDataType:2 userInfo:0];
}

void sub_100088FC0(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [a1[5] setError:v3];
    v4 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
      v4 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10028A2B4();
    }
  }

  else
  {
    v6 = [a1[4] clientProxy];
    v7 = [a1[4] localPlayer];
    v8 = [(GKService *)GKGameStatServicePrivate serviceWithTransport:0 forClient:v6 localPlayer:v7];

    [v8 expireGamesFriendsPlayed];
    [a1[5] performOnManagedObjectContext:&stru_100362F10];
  }

  if (a1[6])
  {
    v9 = a1[5];
    v10 = [a1[4] clientProxy];
    v11 = [v10 replyQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100089298;
    v14[3] = &unk_100361538;
    v17 = a1[6];
    v12 = v3;
    v13 = a1[4];
    v15 = v12;
    v16 = v13;
    [v9 notifyOnQueue:v11 block:v14];
  }
}

void sub_100089164(id a1, NSManagedObjectContext *a2, id a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [GKGameStatServicePrivate currentFriendsPlayedList:v4];
  if (v6)
  {
    [(NSManagedObjectContext *)v4 deleteObject:v6];
  }

  [(GKCacheObject *)GKFriendListEntryCacheObject deleteObjectsMatchingPredicate:0 context:v4];
  [(GKCacheObject *)GKRecentPlayerListEntryCacheObject deleteObjectsMatchingPredicate:0 context:v4];
  [(GKExpiringCacheObject *)GKFriendListCacheObject expireObjectsMatchingPredicate:0 context:v4];
  [(GKExpiringCacheObject *)GKFriendRecommendationListCacheObject expireObjectsMatchingPredicate:0 context:v4];
  [(GKExpiringCacheObject *)GKFriendRequestListCacheObject expireObjectsMatchingPredicate:0 context:v4];
  [(GKExpiringCacheObject *)GKRecentPlayerListCacheObject expireObjectsMatchingPredicate:0 context:v4];
  v5[2](v5);

  v7 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
    v7 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10028A324();
  }
}

void sub_100089298(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 40) clientProxy];
  [v2 refreshContentsForDataType:2 userInfo:0];
}

void sub_1000894C0(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] playerID];
  if (v4)
  {
    v14 = @"reported-player-id";
    v5 = [a1[4] playerID];
    v15 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v8 = [a1[5] clientProxy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008965C;
  v10[3] = &unk_1003628B8;
  v11 = a1[4];
  v12 = a1[6];
  v13 = v3;
  v9 = v3;
  [v7 issueRequest:v6 bagKey:@"gk-report-a-concern-metadata" clientProxy:v8 handler:v10];
}

void sub_10008965C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:@"reported-player"];
  if ([v7 count])
  {
    v8 = [v7 objectForKeyedSubscript:@"nickname"];
    [*(a1 + 32) setAlias:v8];

    v9 = [v7 objectForKeyedSubscript:@"first-name"];
    [*(a1 + 32) setFirstName:v9];

    v10 = [v7 objectForKeyedSubscript:@"last-name"];
    [*(a1 + 32) setLastName:v10];
  }

  v11 = [v5 objectForKeyedSubscript:@"concerns"];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100089800;
  v13[3] = &unk_100362F38;
  v14 = *(a1 + 32);
  v12 = [v11 _gkMapWithBlock:v13];
  [*(a1 + 40) setResult:v12];

  [*(a1 + 40) setError:v6];
  (*(*(a1 + 48) + 16))();
}

id sub_100089800(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKConcernInternal internalRepresentation];
  [v4 setPlayer:*(a1 + 32)];
  v5 = [v3 objectForKeyedSubscript:@"id"];
  [v4 setConcernID:{objc_msgSend(v5, "unsignedLongValue")}];

  v6 = [v3 objectForKeyedSubscript:@"value"];

  [v4 setMessage:v6];

  return v4;
}

void sub_1000898BC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_100089B80(uint64_t a1, void *a2)
{
  v3 = a2;
  v13[0] = @"reported-player-id";
  v13[1] = @"comments";
  v4 = *(a1 + 40);
  v14[0] = *(a1 + 32);
  v14[1] = v4;
  v13[2] = @"concern-id";
  v5 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 48) concernID]);
  v14[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];

  v7 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v8 = [*(a1 + 56) clientProxy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100089D18;
  v10[3] = &unk_1003627C8;
  v11 = *(a1 + 64);
  v12 = v3;
  v9 = v3;
  [v7 issueRequest:v6 bagKey:@"gk-report-a-concern" clientProxy:v8 handler:v10];
}

uint64_t sub_100089D18(uint64_t a1)
{
  [*(a1 + 32) setError:?];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_100089D5C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void sub_100089E80(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 transport];
  v5 = [*(a1 + 32) clientProxy];
  v6 = [*(a1 + 32) localPlayer];
  v7 = [(GKService *)GKProfileService serviceWithTransport:v8 forClient:v5 localPlayer:v6];
  [v7 getProfilesForPlayerIDs:v4 handler:*(a1 + 40)];
}

void sub_10008A104(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12 = @"friend-code";
  v13 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v6 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v7 = [*(a1 + 40) clientProxy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008A258;
  v9[3] = &unk_1003627C8;
  v10 = *(a1 + 48);
  v11 = v3;
  v8 = v3;
  [v6 issueRequest:v5 bagKey:@"gk-cancel-friend-code" clientProxy:v7 handler:v9];
}

uint64_t sub_10008A258(uint64_t a1)
{
  [*(a1 + 32) setError:?];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_10008A29C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void sub_10008A4B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = *(a1 + 48);
    if (v10)
    {
      (*(v10 + 16))(v10, v7);
    }
  }

  else
  {
    [*(a1 + 32) expireFriendList];
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10008A59C;
    v11[3] = &unk_100361CB8;
    v12 = *(a1 + 48);
    [v8 _invalidateCacheForFriendCode:v9 handler:v11];
  }
}

uint64_t sub_10008A59C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!v5)
  {
    [GKClientProxy enumerateClientsUsingBlock:&stru_100362F78];
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v5);
  }

  return _objc_release_x1();
}

void sub_10008A81C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12 = @"friend-code";
  v13 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v6 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v7 = [*(a1 + 40) clientProxy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008A970;
  v9[3] = &unk_1003627C8;
  v10 = *(a1 + 48);
  v11 = v3;
  v8 = v3;
  [v6 issueRequest:v5 bagKey:@"gk-reject-friend-code" clientProxy:v7 handler:v9];
}

uint64_t sub_10008A970(uint64_t a1)
{
  [*(a1 + 32) setError:?];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_10008A9B4(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  if (!v2)
  {
    [*(a1 + 40) _invalidateCacheForFriendCode:*(a1 + 48) handler:0];
  }

  v3 = [*(a1 + 40) clientProxy];
  [v3 refreshContentsForDataType:3 userInfo:0];

  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = [*(a1 + 32) error];
    (*(v4 + 16))(v4, v5);
  }
}

void sub_10008AC2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[GKCDFriendCodeDetail _gkFetchRequest];
  v8 = [NSPredicate predicateWithFormat:@"friendCode == %@", *(a1 + 32)];
  [v7 setPredicate:v8];

  v20 = 0;
  v9 = [v5 executeFetchRequest:v7 error:&v20];
  v10 = v20;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [v5 deleteObject:*(*(&v16 + 1) + 8 * v15)];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v13);
  }

  [*(a1 + 40) setError:v10];
  v6[2](v6);
}

void sub_10008ADE0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v2);
  }
}

void sub_10008B28C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 727, "[GKFriendServicePrivate getFriendCodeDetailWithIdentifiers:handler:]_block_invoke"];
  v5 = [GKDispatchGroup dispatchGroupWithName:v4];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10008B4C0;
  v21[3] = &unk_100362FC8;
  v6 = *(a1 + 40);
  v21[4] = *(a1 + 32);
  v22 = v6;
  v23 = *(a1 + 48);
  v7 = v5;
  v24 = v7;
  v25 = *(a1 + 56);
  v26 = *(a1 + 64);
  [v7 perform:v21];
  v8 = [*(a1 + 32) clientProxy];
  v9 = [v8 replyQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10008B714;
  v14[3] = &unk_100362FF0;
  v15 = v7;
  v16 = *(a1 + 72);
  v20 = v3;
  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v17 = v10;
  v18 = v11;
  v19 = *(a1 + 64);
  v12 = v3;
  v13 = v7;
  [v13 notifyOnQueue:v9 block:v14];
}

void sub_10008B4C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008B5B0;
  v8[3] = &unk_100362FA0;
  v6 = *(a1 + 48);
  v9 = *(a1 + 56);
  v12 = v3;
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v7 = v3;
  [v4 fetchFriendCodeDetailsForIdentifiers:v5 context:v6 handler:v8];
}

void sub_10008B5B0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    [*(a1 + 32) setError:a3];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          [*(a1 + 40) addObject:v11];
          v12 = [v11 creatorPlayerID];

          if (v12)
          {
            v13 = *(a1 + 48);
            v14 = [v11 creatorPlayerID];
            [v13 addObject:v14];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  (*(*(a1 + 56) + 16))();
}

void sub_10008B714(id *a1)
{
  v2 = [a1[4] error];

  if (v2)
  {
    v3 = [a1[4] error];
    [a1[5] setError:v3];

    v4 = *(a1[9] + 2);

    v4();
  }

  else
  {
    v5 = [a1[6] copy];
    [a1[5] setObject:v5 forKeyedSubscript:@"GKCDFriendCodeDetails"];

    v6 = [a1[7] transport];
    v7 = [a1[7] clientProxy];
    v8 = [a1[7] localPlayer];
    v9 = [(GKService *)GKProfileService serviceWithTransport:v6 forClient:v7 localPlayer:v8];
    v10 = [a1[8] array];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10008B8D0;
    v11[3] = &unk_100362408;
    v12 = a1[5];
    v13 = a1[9];
    [v9 getProfilesForPlayerIDs:v10 handler:v11];
  }
}

uint64_t sub_10008B8D0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 setError:a3];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:@"GKPlayers"];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_10008B948(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 setResult:0];
    v4 = *(a1 + 48);
    v19 = [*(a1 + 32) result];
    v5 = [*(a1 + 32) error];
    (*(v4 + 16))(v4, v19, v5);
  }

  else
  {
    v19 = [v3 objectForKeyedSubscript:@"GKCDFriendCodeDetails"];
    v5 = [v19 _gkMapDictionaryWithKeyPath:@"friendCode"];
    v6 = [*(a1 + 32) objectForKeyedSubscript:@"GKPlayers"];
    v7 = [v6 _gkMapDictionaryWithKeyPath:@"playerID"];
    v8 = +[NSMutableArray array];
    if ([*(a1 + 40) count])
    {
      v9 = 0;
      do
      {
        v10 = [*(a1 + 40) objectAtIndexedSubscript:v9];
        v11 = [v5 objectForKeyedSubscript:v10];

        v12 = [v11 creatorPlayerID];

        if (v12)
        {
          v13 = [v11 creatorPlayerID];
          v14 = [v7 objectForKeyedSubscript:v13];

          if (v14)
          {
            [v11 setCreatorPlayer:v14];
            [v8 addObject:v11];
          }
        }

        ++v9;
      }

      while (v9 < [*(a1 + 40) count]);
    }

    v15 = [v8 copy];
    [*(a1 + 32) setResult:v15];

    v16 = *(a1 + 48);
    v17 = [*(a1 + 32) result];
    v18 = [*(a1 + 32) error];
    (*(v16 + 16))(v16, v17, v18);
  }
}

void sub_10008BCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008BCF0(void *a1)
{
  v2 = +[GKCDFriendCodeDetail _gkFetchRequest];
  v3 = [NSPredicate predicateWithFormat:@"friendCode IN %@", a1[4]];
  [v2 setPredicate:v3];

  v4 = a1[5];
  v24 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v24];
  v6 = v24;
  v19 = v6;
  if (v6)
  {
    v7 = v6;
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028A360(v9, v7);
    }

    v5 = &__NSArray0__struct;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [v15 expirationDate];
        v17 = [v15 _gkIsExpired:v16];

        if ((v17 & 1) == 0)
        {
          v18 = [[GKFriendCodeDetailInternal alloc] initWithFriendCodeDetail:v15];
          [*(*(a1[6] + 8) + 40) addObject:v18];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v12);
  }
}

void sub_10008C0D0(id *a1, void *a2, uint64_t a3, double a4)
{
  v7 = a2;
  if (!v7 || a3)
  {
    (*(a1[7] + 2))();
  }

  else
  {
    v8 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 843, "[GKFriendServicePrivate fetchFriendCodeDetailsForIdentifiers:context:handler:]_block_invoke"];
    v9 = [GKDispatchGroup dispatchGroupWithName:v8];

    v10 = [a1[4] clientProxy];
    v11 = [v10 replyQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008C270;
    v12[3] = &unk_100363018;
    v13 = a1[5];
    v14 = v7;
    v15 = a1[6];
    v17 = a4;
    v16 = a1[7];
    [v9 notifyOnQueue:v11 block:v12];
  }
}

void sub_10008C270(uint64_t a1)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_100086DD0;
  v10[4] = sub_100086DE0;
  v11 = +[NSMutableArray array];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008C3CC;
  v4[3] = &unk_100362E28;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v3 = *(a1 + 32);
  v9 = *(a1 + 64);
  v7 = v3;
  v8 = v10;
  [v2 performBlockAndWait:v4];
  (*(*(a1 + 56) + 16))();

  _Block_object_dispose(v10, 8);
}

void sub_10008C3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008C3CC(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"results"];
  if ([v2 count])
  {
    v3 = 0;
    p_superclass = GKBulletinNearbyInvite.superclass;
    v25 = v2;
    do
    {
      v5 = [*(a1 + 40) objectAtIndexedSubscript:v3];
      v6 = [p_superclass + 164 _gkFetchRequest];
      v7 = [NSPredicate predicateWithFormat:@"friendCode == %@", v5];
      [v6 setPredicate:v7];

      v8 = [*(a1 + 48) executeFetchRequest:v6 error:0];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v27;
        do
        {
          v12 = 0;
          do
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [*(a1 + 48) deleteObject:*(*(&v26 + 1) + 8 * v12)];
            v12 = v12 + 1;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v10);
      }

      v13 = [v2 objectAtIndexedSubscript:v3];
      v14 = [NSDate dateWithTimeIntervalSinceNow:*(a1 + 64)];
      v15 = objc_alloc((p_superclass + 164));
      v16 = [p_superclass + 164 entity];
      v17 = [v15 initWithEntity:v16 insertIntoManagedObjectContext:*(a1 + 48)];

      [v17 setFriendCode:v5];
      v18 = [v13 objectForKeyedSubscript:@"creator-player-id"];
      [v17 setCreatorPlayerId:v18];

      v19 = [v13 objectForKeyedSubscript:@"friend-code-state"];
      [v17 setFriendCodeState:v19];

      v20 = [v13 objectForKeyedSubscript:@"num-uses"];
      [v17 setNumUses:v20];

      v21 = [v13 objectForKeyedSubscript:@"already-used-player-ids"];
      v22 = v21;
      if (v21 && [v21 count])
      {
        v23 = [v22 componentsJoinedByString:{@", "}];
        [v17 setAlreadyUsedPlayerIds:v23];
      }

      [v17 setExpirationDate:v14];
      v24 = [[GKFriendCodeDetailInternal alloc] initWithFriendCodeDetail:v17];
      [*(*(*(a1 + 56) + 8) + 40) addObject:v24];

      ++v3;
      v2 = v25;
      p_superclass = (GKBulletinNearbyInvite + 8);
    }

    while (v3 < [v25 count]);
  }

  [*(a1 + 48) _gkSafeSave];
}

void sub_10008CBD4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [NSManagedObject _gkRetrieveCleanEntry:a2 request:v5];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 timeToLive];
    if (([v8 _gkIsExpired:v9] & 1) == 0)
    {
      v10 = [v8 activityData];
      v23 = 0;
      v11 = [NSDictionary _gkDictionaryWithServerDataJson:v10 error:&v23];
      v12 = v23;

      if (v12)
      {
        if (!os_log_GKGeneral)
        {
          v13 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
        {
          sub_10028A404();
        }

        [*(a1 + 72) setError:v12];
      }

      else
      {
        v20 = [[GKPlayerActivityInternal alloc] initWithServerResponse:v11];
        [*(a1 + 72) setResult:v20];
        if (!os_log_GKGeneral)
        {
          v21 = GKOSLoggers();
        }

        v22 = os_log_GKTrace;
        if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "PlayerActivity: loaded from cache", buf, 2u);
        }
      }
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    v15 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 40);
      v17 = *(a1 + 48);
      v18 = *(a1 + 56);
      v19 = *(a1 + 64);
      *buf = 138413058;
      v25 = v16;
      v26 = 2112;
      v27 = v17;
      v28 = 2112;
      v29 = v18;
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "PlayerActivity: No cache results found for continuation: %@, bundleID: %@, and playerID: %@, and GameCategoryFilter: %@", buf, 0x2Au);
    }
  }

  v6[2](v6);
}

void sub_10008CE74(id *a1)
{
  v2 = [a1[4] result];
  v3 = v2;
  if (v2 && a1[14])
  {
    v4 = [a1[4] error];

    if (!v4)
    {
      v5 = a1[14];
      v23 = [a1[4] result];
      v5[2](v5, v23, 0);

      return;
    }
  }

  else
  {
  }

  v6 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 953, "[GKFriendServicePrivate getPlayerActivityFeed:bundleID:continuation:gameCategoryFilter:handler:]_block_invoke"];
  v7 = [GKDispatchGroup dispatchGroupWithName:v6];

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10008D174;
  v27[3] = &unk_1003630E0;
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v28 = v13;
  v29 = v12;
  v30 = a1[9];
  v14 = v7;
  v31 = v14;
  v15 = a1[10];
  v16 = a1[11];
  v17 = a1[12];
  v18 = a1[13];
  *&v19 = v17;
  *(&v19 + 1) = v18;
  *&v20 = v15;
  *(&v20 + 1) = v16;
  v32 = v20;
  v33 = v19;
  [v14 perform:v27];
  if (a1[14])
  {
    v21 = [a1[9] clientProxy];
    v22 = [v21 replyQueue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10008DA6C;
    v24[3] = &unk_100361270;
    v25 = v14;
    v26 = a1[14];
    [v25 notifyOnQueue:v22 block:v24];
  }
}

void sub_10008D174(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableDictionary dictionary];
  if (([*(a1 + 32) isEqualToString:@"NoGameId"] & 1) == 0)
  {
    [v4 setObject:*(a1 + 32) forKeyedSubscript:@"bundle-id"];
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    [v4 setObject:v5 forKeyedSubscript:@"player-id"];
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    [v4 setObject:v6 forKeyedSubscript:@"continuation-key"];
  }

  v7 = +[GKPreferences shared];
  v8 = [v7 activityFeedTestFeedOnly];

  if (v8)
  {
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"include-test-feed"];
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    [v4 setObject:v9 forKeyedSubscript:@"type"];
  }

  v10 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v11 = [*(a1 + 64) clientProxy];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10008D3A8;
  v18[3] = &unk_1003630B8;
  *&v12 = *(a1 + 72);
  *(&v12 + 1) = *(a1 + 64);
  v17 = v12;
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  v19 = v17;
  v20 = v15;
  v21 = *(a1 + 32);
  v22 = *(a1 + 96);
  v23 = *(a1 + 104);
  v24 = v3;
  v16 = v3;
  [v10 issueRequest:v4 bagKey:@"gk-get-activity-feed" clientProxy:v11 handler:v18];
}

void sub_10008D3A8(id *a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (!v7 || v8)
  {
    [a1[4] setError:v8];
  }

  else
  {
    v10 = [[GKPlayerActivityInternal alloc] initWithServerResponse:v7];
    [a1[4] setResult:v10];
  }

  v11 = a1[5];
  v12 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 980, "[GKFriendServicePrivate getPlayerActivityFeed:bundleID:continuation:gameCategoryFilter:handler:]_block_invoke_3"];
  v13 = [v11 transactionGroupWithName:v12];

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10008D650;
  v30[3] = &unk_100363090;
  v31 = a1[6];
  v32 = v9;
  v14 = v13;
  v33 = v14;
  v34 = v7;
  v15 = a1[7];
  v16 = a1[8];
  v17 = a1[9];
  v37 = a4;
  v18 = a1[10];
  *&v19 = v17;
  *(&v19 + 1) = v18;
  *&v20 = v15;
  *(&v20 + 1) = v16;
  v35 = v20;
  v36 = v19;
  v21 = v7;
  v22 = v9;
  [v14 performOnManagedObjectContext:v30];
  v23 = [a1[5] clientProxy];
  v24 = [v23 replyQueue];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10008D9BC;
  v26[3] = &unk_100360FC8;
  v27 = v14;
  v28 = a1[4];
  v29 = a1[11];
  v25 = v14;
  [v25 notifyOnQueue:v24 block:v26];
}

void sub_10008D650(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [NSManagedObject _gkRetrieveCleanEntry:v5 request:*(a1 + 32)];
  v8 = *(a1 + 40);
  if (v7)
  {
    v9 = v7;
    if (v8)
    {
      v10 = [(GKCDPlayerActivity *)v7 activityData];
      v26 = 0;
      v11 = [NSDictionary _gkDictionaryWithServerDataJson:v10 error:&v26];
      v12 = v26;

      if (v12)
      {
        if (!os_log_GKGeneral)
        {
          v13 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
        {
          sub_10028A46C();
        }

        [*(a1 + 48) setError:v12];
      }

      else
      {
        v14 = [[GKPlayerActivityInternal alloc] initWithServerResponse:v11];
        [*(a1 + 48) setResult:v14];
        if (!os_log_GKGeneral)
        {
          v15 = GKOSLoggers();
        }

        v16 = os_log_GKTrace;
        if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Player Activity: loaded from stale cache", buf, 2u);
        }
      }

LABEL_26:
      v6[2](v6);

      goto LABEL_27;
    }

LABEL_17:
    v19 = *(a1 + 56);
    v24 = 0;
    v11 = [NSJSONSerialization dataWithJSONObject:v19 options:1 error:&v24];
    v12 = v24;
    if (v12)
    {
      if (!os_log_GKGeneral)
      {
        v20 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_10028A4D4();
      }
    }

    else
    {
      [(GKCDPlayerActivity *)v9 setActivityData:v11];
      [(GKCDPlayerActivity *)v9 setContinuation:*(a1 + 64)];
      [(GKCDPlayerActivity *)v9 setGameID:*(a1 + 72)];
      [(GKCDPlayerActivity *)v9 setTargetPlayerID:*(a1 + 80)];
      v21 = [NSDate dateWithTimeIntervalSinceNow:*(a1 + 96)];
      [(GKCDPlayerActivity *)v9 setTimeToLive:v21];

      [(GKCDPlayerActivity *)v9 setGameCategoryFilter:*(a1 + 88)];
      [(GKCDPlayerActivity *)v9 setVersion:@"v1.0"];
      if (!os_log_GKGeneral)
      {
        v22 = GKOSLoggers();
      }

      v23 = os_log_GKTrace;
      if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Player Activity: updated cache from network", buf, 2u);
      }
    }

    goto LABEL_26;
  }

  if (!v8)
  {
    v17 = [GKCDPlayerActivity alloc];
    v18 = +[GKCDPlayerActivity entity];
    v9 = [(GKCDPlayerActivity *)v17 initWithEntity:v18 insertIntoManagedObjectContext:v5];

    goto LABEL_17;
  }

  v6[2](v6);
LABEL_27:
}

uint64_t sub_10008D9BC(uint64_t a1)
{
  v2 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
    v2 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10028A53C(a1, v2);
  }

  v4 = [*(a1 + 40) result];

  if (!v4)
  {
    v5 = [*(a1 + 32) result];
    [*(a1 + 40) setResult:v5];
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_10008DA6C(uint64_t a1)
{
  v2 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
    v2 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10028A53C(a1, v2);
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) result];
  v6 = [*(a1 + 32) error];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_10008DCA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[GKCDPlayerActivity _gkFetchRequest];
  v8 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v7];
  v11 = 0;
  v9 = [v5 executeRequest:v8 error:&v11];
  v10 = v11;
  [*(a1 + 32) setError:v10];
  v6[2](v6);
}

void sub_10008DD74(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v2);
  }
}

void sub_10008DF58(id a1, NSManagedObjectContext *a2, id a3)
{
  v4 = a3;
  v5 = a2;
  v7 = [(GKCacheObject *)GKFriendListCacheObject fetchRequestForContext:v5];
  [v7 setReturnsDistinctResults:1];
  v6 = [NSManagedObject _gkRetrieveCleanEntry:v5 request:v7];

  [v6 expire];
  v4[2](v4);
}

void sub_10008E010(uint64_t a1)
{
  v1 = [*(a1 + 32) clientProxy];
  [v1 refreshContentsForDataType:2 userInfo:0];
}

void sub_10008E0A0(id a1)
{
  v1 = GKInsecureCacheRoot();
  v2 = gkEnsureDirectory();
  v3 = [v1 stringByAppendingPathComponent:@"messageInboxCache.plist"];

  v4 = qword_1003B9110;
  qword_1003B9110 = v3;
}

void sub_10008E738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = +[GKPreferences shared];
    v6 = [v5 fakeFriendRequestCount];

    v7 = *(a1 + 32);
    v8 = [v7 localPlayer];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10008E84C;
    v11[3] = &unk_100362EF0;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v13 = v6;
    v11[4] = v9;
    v12 = v10;
    [v7 getFriendsForPlayer:v8 handler:v11];
  }
}

void sub_10008E84C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 count];
  if (v4 >= *(a1 + 48))
  {
    v5 = *(a1 + 48);
  }

  else
  {
    v5 = v4;
  }

  v6 = [*(a1 + 32) transport];
  v7 = [*(a1 + 32) clientProxy];
  v8 = [*(a1 + 32) localPlayer];
  v9 = [(GKService *)GKProfileServicePrivate serviceWithTransport:v6 forClient:v7 localPlayer:v8];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10008E98C;
  v12[3] = &unk_1003631B8;
  v10 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = v5;
  v13 = v3;
  v14 = v10;
  v11 = v3;
  [v9 getNicknameSuggestions:20 handler:v12];
}

void sub_10008E98C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[NSMutableArray array];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v66 objects:v70 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v67;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v67 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v66 + 1) + 8 * i);
        v10 = [v9 length];
        v64[0] = _NSConcreteStackBlock;
        v64[1] = 3221225472;
        v64[2] = sub_10008F1D4;
        v64[3] = &unk_100363190;
        v65 = v3;
        [v9 enumerateSubstringsInRange:0 options:v10 usingBlock:{3, v64}];
      }

      v6 = [v4 countByEnumeratingWithState:&v66 objects:v70 count:16];
    }

    while (v6);
  }

  v11 = [v4 count];
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  v44 = v12;
  v58 = +[NSMutableArray array];
  v13 = a1;
  if (*(a1 + 48) >= 1)
  {
    v62 = 0;
    v63 = 0;
    v14 = 0;
    v60 = 0;
    v61 = 0;
    v59 = 0;
    v15 = 0;
    v16 = 0;
    while (1)
    {
      v17 = [*(v13 + 32) objectAtIndexedSubscript:v16 % *(v13 + 56)];
      v18 = [v17 copy];

      v19 = [v18 alias];
      v20 = [NSNumber numberWithInteger:v16];
      v21 = [NSString stringWithFormat:@"%@-%@", v19, v20];
      [v18 setAlias:v21];

      v22 = [v18 playerID];
      v23 = [NSNumber numberWithInteger:v16];
      v24 = [NSString stringWithFormat:@"%@-%@", v22, v23];
      [v18 setPlayerID:v24];

      v25 = objc_alloc_init(GKMessageInboxEntryInternal);
      [v18 setInboxEntry:v25];
      v26 = [NSNumber numberWithInteger:v16];
      v27 = [NSString stringWithFormat:@"%@", v26];
      [v25 setFriendCode:v27];

      [v18 setIsInContacts:0];
      if (v16 == 1)
      {
        break;
      }

      if (v16 == 2)
      {
        v28 = v25;
        v29 = @"555-987-6543";
LABEL_19:
        [v28 setSenderHandle:v29];
        v13 = a1;
        goto LABEL_27;
      }

      if (v16 != 4)
      {
        v30 = v14 % 0xAuLL;
        v31 = v63 % 0xA;
        if (v16 % 5uLL == 1)
        {
          v46 = [NSNumber numberWithInteger:v31];
          v45 = [NSNumber numberWithInteger:v30];
          v48 = [NSNumber numberWithInteger:v62 % 0xA];
          v50 = [NSNumber numberWithInteger:v61 % 0xA];
          v34 = [NSNumber numberWithInteger:v60 % 0xA];
          v35 = [NSNumber numberWithInteger:v59 % 0xA];
          v53 = [NSNumber numberWithInteger:v15 % 0xA];
          v36 = [NSString stringWithFormat:@"555-%@%@%@-%@%@%@%@", v46, v45, v48, v50, v34, v35, v53];
          [v25 setSenderHandle:v36];

          v37 = v46;
        }

        else
        {
          if (v16 % 5uLL == 4)
          {
            v52 = [v3 objectAtIndexedSubscript:((v16 + 1) >> 2) % v44];
            v32 = [v3 objectAtIndexedSubscript:(7 * ((v16 + 1) >> 2)) % v44];
            v33 = [NSString stringWithFormat:@"%@ %@", v52, v32];
            [v25 setContactName:v33];

            [v18 setIsInContacts:1];
LABEL_26:
            v13 = a1;
            goto LABEL_27;
          }

          v56 = [NSNumber numberWithInteger:v31];
          v47 = [NSNumber numberWithInteger:v30];
          v49 = [NSNumber numberWithInteger:v62 % 0xA];
          v51 = [NSNumber numberWithInteger:v61 % 0xA];
          v38 = [NSNumber numberWithInteger:v60 % 0xA];
          v39 = [NSNumber numberWithInteger:v59 % 0xA];
          v54 = [NSNumber numberWithInteger:v15 % 0xA];
          v40 = [NSString stringWithFormat:@"555-%@%@%@-%@%@%@%@", v56, v47, v49, v51, v38, v39, v54];
          [v25 setSenderHandle:v40];

          v55 = [v3 objectAtIndexedSubscript:v16 % v44];
          v41 = [NSNumber numberWithInteger:v16];
          v42 = [v3 objectAtIndexedSubscript:v14 % v44];
          v43 = [NSString stringWithFormat:@"%@%@@%@.com", v55, v41, v42];
          [v25 setSenderAlias:v43];

          v37 = v55;
        }

        goto LABEL_26;
      }

      [v25 setSenderHandle:@"555-987-6543"];
      [v25 setSenderAlias:@"gracec@email.com"];
      [v25 setContactName:@"Grace Copeland"];
      [v18 setIsInContacts:1];
      v13 = a1;
LABEL_27:
      [v58 addObject:v18];

      ++v16;
      v15 += 29;
      v59 += 23;
      v60 += 17;
      v61 += 11;
      v62 += 7;
      v14 += 3;
      v63 += 13;
      if (v16 >= *(v13 + 48))
      {
        goto LABEL_28;
      }
    }

    v28 = v25;
    v29 = @"user@email.com";
    goto LABEL_19;
  }

LABEL_28:
  (*(*(v13 + 40) + 16))();
}

void sub_10008F2B0(uint64_t a1, void *a2, void *a3)
{
  v32 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 1242, "[GKFriendServicePrivate getActiveFriendRequests:]_block_invoke"];
    v30 = [GKDispatchGroup dispatchGroupWithName:v6];

    v7 = +[NSMutableDictionary dictionary];
    v31 = +[NSMutableDictionary dictionary];
    v29 = +[NSMutableArray array];
    v28 = +[NSMutableDictionary dictionary];
    v8 = +[NSMutableSet set];
    v54[0] = 0;
    v54[1] = v54;
    v54[2] = 0x2020000000;
    v55 = 0;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v9 = v32;
    v10 = [v9 countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v10)
    {
      v11 = *v51;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v51 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v50 + 1) + 8 * i);
          v14 = [v13 friendCode];
          [v7 setObject:v13 forKeyedSubscript:v14];

          v15 = [v13 contactID];
          v16 = [v15 length] == 0;

          if (!v16)
          {
            v17 = [v13 contactID];
            [v8 addObject:v17];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v10);
    }

    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10008F798;
    v44[3] = &unk_100363258;
    v44[4] = *(a1 + 32);
    v18 = v7;
    v45 = v18;
    v19 = v30;
    v46 = v19;
    v20 = v28;
    v47 = v20;
    v21 = v29;
    v48 = v21;
    v49 = v54;
    [v19 perform:v44];
    if ([v8 count])
    {
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_10008FF3C;
      v40[3] = &unk_100360F00;
      v41 = v8;
      v42 = v19;
      v43 = v31;
      [v42 perform:v40];
    }

    v22 = [*(a1 + 32) clientProxy];
    v23 = [v22 replyQueue];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100090150;
    v33[3] = &unk_100363280;
    v24 = v20;
    v34 = v24;
    v25 = v31;
    v35 = v25;
    v38 = *(a1 + 40);
    v26 = v19;
    v39 = v54;
    v27 = *(a1 + 32);
    v36 = v26;
    v37 = v27;
    [v26 notifyOnQueue:v23 block:v33];

    _Block_object_dispose(v54, 8);
    v5 = 0;
  }
}

void sub_10008F798(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v4 localPlayer];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10008F8CC;
  v14[3] = &unk_100363230;
  v13 = *(a1 + 32);
  v6 = *(&v13 + 1);
  v7 = *(a1 + 48);
  v18 = v3;
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v15 = v13;
  v16 = v9;
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v17 = v10;
  v19 = v11;
  v12 = v3;
  [v4 getFriendsForPlayer:v5 withFilter:1 handler:v14];
}

void sub_10008F8CC(uint64_t a1, void *a2)
{
  v3 = [a2 _gkValuesForKeyPath:@"playerID"];
  v4 = [NSSet setWithArray:v3];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) allKeys];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008FA24;
  v10[3] = &unk_100363208;
  v11 = *(a1 + 48);
  v17 = *(a1 + 72);
  v12 = v4;
  v13 = *(a1 + 40);
  v14 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 32);
  v15 = v7;
  v16 = v8;
  v18 = *(a1 + 80);
  v9 = v4;
  [v5 getFriendCodeDetailWithIdentifiers:v6 handler:v10];
}

void sub_10008FA24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 count])
  {
    [*(a1 + 32) setError:v6];
    (*(*(a1 + 80) + 16))();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v28 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v33;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v32 + 1) + 8 * i);
          if ([v12 friendCodeState] == 3 && (v13 = *(a1 + 40), objc_msgSend(v12, "creatorPlayerID"), v14 = objc_claimAutoreleasedReturnValue(), LOBYTE(v13) = objc_msgSend(v13, "containsObject:", v14), v14, (v13 & 1) == 0))
          {
            v17 = [v12 creatorPlayer];
            v19 = *(a1 + 48);
            v20 = [v12 friendCode];
            v21 = [v19 objectForKeyedSubscript:v20];
            [v17 setInboxEntry:v21];

            v22 = [v17 inboxEntry];
            v23 = [v22 contactID];
            [v17 setIsInContacts:{objc_msgSend(v23, "length") != 0}];

            v24 = *(a1 + 56);
            v18 = [v17 playerID];
            [v24 setObject:v17 forKeyedSubscript:v18];
          }

          else
          {
            v15 = *(a1 + 64);
            v16 = *(a1 + 48);
            v17 = [v12 friendCode];
            v18 = [v16 objectForKeyedSubscript:v17];
            [v15 addObject:v18];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v9);
    }

    if ([*(a1 + 64) count])
    {
      v25 = *(a1 + 32);
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10008FD34;
      v29[3] = &unk_100361860;
      v27 = *(a1 + 64);
      v26 = v27.i64[0];
      v30 = vextq_s8(v27, v27, 8uLL);
      v31 = *(a1 + 88);
      [v25 perform:v29];
    }

    (*(*(a1 + 80) + 16))();
    v5 = v28;
  }
}

void sub_10008FD34(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1[4];
  v4 = a1[5];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008FDF4;
  v9[3] = &unk_1003631E0;
  v6 = v4;
  v7 = a1[6];
  v11 = v3;
  v12 = v7;
  v10 = v6;
  v8 = v3;
  [v5 removeMessageInboxEntries:v6 handler:v9];
}

void sub_10008FDF4(void *a1, void *a2)
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
      sub_10028A620(a1, v3, v5);
    }
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 1;
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = a1[4];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "removed inbox entries: %@", &v9, 0xCu);
    }
  }

  (*(a1[5] + 16))();
}

void sub_10008FF3C(uint64_t a1, void *a2)
{
  v20 = a2;
  v3 = objc_opt_new();
  v4 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
  v27 = v4;
  v5 = [NSArray arrayWithObjects:&v27 count:1];

  v6 = [*(a1 + 32) allObjects];
  v7 = [CNContact predicateForContactsWithIdentifiers:v6];

  v25 = 0;
  v18 = v5;
  v19 = v3;
  v8 = [v3 unifiedContactsMatchingPredicate:v7 keysToFetch:v5 error:&v25];
  v9 = v25;
  [*(a1 + 40) setError:v9];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = *(a1 + 48);
        v17 = [v15 identifier];
        [v16 setObject:v15 forKeyedSubscript:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v12);
  }

  v20[2](v20);
}

void sub_100090150(uint64_t a1)
{
  v2 = [*(a1 + 32) allValues];
  v3 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 inboxEntry];
        v11 = [v10 contactID];

        if (v11)
        {
          v12 = [*(a1 + 40) objectForKeyedSubscript:v11];
          if (v12)
          {
            v13 = [v3 stringFromContact:v12];
            v14 = [v9 inboxEntry];
            [v14 setContactName:v13];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v15 = *(a1 + 64);
  v16 = [*(a1 + 48) error];
  (*(v15 + 16))(v15, v4, v16);

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v17 = [*(a1 + 56) clientProxy];
    [v17 refreshContentsForDataType:3 userInfo:0];
  }
}

void sub_100090558(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 56) == 1)
  {
    v4 = [*(a1 + 32) transport];
    v5 = [*(a1 + 32) clientProxy];
    v6 = [*(a1 + 32) localPlayer];
    v7 = [(GKService *)GKGameServicePrivate serviceWithTransport:v4 forClient:v5 localPlayer:v6];

    v8 = [*(a1 + 40) playerID];
    [v7 clearGamesPlayedSummariesCacheForPlayerID:v8];
  }

  v9 = [*(a1 + 40) inboxEntry];

  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) inboxEntry];
    v31 = v11;
    v12 = [NSArray arrayWithObjects:&v31 count:1];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100090A2C;
    v20[3] = &unk_1003632F8;
    v24 = *(a1 + 56);
    v13 = *(a1 + 40);
    v20[4] = *(a1 + 32);
    v14 = v13;
    v15 = *(a1 + 48);
    v21 = v14;
    v23 = v15;
    v22 = v3;
    [v10 removeMessageInboxEntries:v12 handler:v20];

    v16 = v21;
  }

  else
  {
    v17 = *(a1 + 56);
    v18 = *(a1 + 32);
    v19 = [*(a1 + 40) playerID];
    if (v17 == 1)
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100090838;
      v28[3] = &unk_1003632D0;
      v30 = *(a1 + 48);
      v29 = v3;
      [v18 acceptFriendInvitationWithPlayerID:v19 completion:v28];

      v16 = v29;
    }

    else
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100090960;
      v25[3] = &unk_1003632D0;
      v27 = *(a1 + 48);
      v26 = v3;
      [v18 ignoreFriendInvitationWithPlayerID:v19 completion:v25];

      v16 = v26;
    }
  }
}

void sub_100090838(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_GKGeneral;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKFriending;
    if (os_log_type_enabled(os_log_GKFriending, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKFriendService didAccept: accept native friend request failed: %@", &v8, 0xCu);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
      v4 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10028A6AC();
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  (*(*(a1 + 32) + 16))();
}

void sub_100090960(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_GKGeneral;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028A6E8();
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
      v4 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10028A750();
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  (*(*(a1 + 32) + 16))();
}

void sub_100090A2C(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) inboxEntry];
  v5 = [v4 friendCode];
  if (v2 == 1)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100090BAC;
    v15[3] = &unk_1003631E0;
    v6 = &v16;
    v16 = *(a1 + 40);
    v7 = &v17;
    v10 = *(a1 + 48);
    v8 = v10;
    v17 = v10;
    [v3 acceptFriendRequestWithIdentifier:v5 sendPush:1 handler:v15];
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100090CDC;
    v12[3] = &unk_1003631E0;
    v6 = &v13;
    v13 = *(a1 + 40);
    v7 = &v14;
    v11 = *(a1 + 48);
    v9 = v11;
    v14 = v11;
    [v3 rejectFriendRequestWithIdentifier:v5 handler:v12];
  }
}

void sub_100090BAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_GKGeneral;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKFriending;
    if (os_log_type_enabled(os_log_GKFriending, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "acccept friend code failed: %@", &v8, 0xCu);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
      v4 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10028A78C(a1, v4);
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  (*(*(a1 + 40) + 16))();
}

void sub_100090CDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_GKGeneral;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028A838();
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
      v4 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10028A8A0(a1, v4);
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  (*(*(a1 + 40) + 16))();
}

void sub_100090DB0(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v2 = [*(a1 + 32) clientProxy];
    [v2 refreshContentsForDataType:3 userInfo:0];
  }

  v3 = *(a1 + 48);
  v4 = [*(a1 + 40) error];
  (*(v3 + 16))(v3, v4);
}

NSSecureCoding *__cdecl sub_1000910A8(id a1, NSDictionary *a2)
{
  v2 = [(NSDictionary *)a2 objectForKeyedSubscript:@"friends-last-activities"];
  v3 = [v2 _gkMapWithBlock:&stru_1003633A8];

  return v3;
}

id sub_100091108(id a1, NSDictionary *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [[GKFriendActivityInternal alloc] initWithServerRepresentation:v3];

  return v4;
}

void sub_1000914B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100091564;
  v6[3] = &unk_100362408;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 getActiveFriendRequests:v6];
}

void sub_100091564(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKFriending;
    if (os_log_type_enabled(os_log_GKFriending, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Unable to fetch iMessage friend requests --- %@", &v10, 0xCu);
    }

    [*(a1 + 32) setError:v6];
  }

  else
  {
    v9 = [*(a1 + 32) result];
    [v9 setObject:v5 forKeyedSubscript:@"messagesFriendRequests"];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100091690(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100091750;
  v8[3] = &unk_100363458;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v11 = v3;
  v7 = v3;
  [v4 getFriendInvitationMailboxWithType:@"inbox" completion:v8];
}

void sub_100091750(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKFriending;
    if (os_log_type_enabled(os_log_GKFriending, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v39 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Unable to fetch native friend requests --- %@", buf, 0xCu);
    }

    [*(a1 + 32) setError:v6];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v25 = a1;
    v9 = +[NSMutableArray array];
    v10 = +[NSMutableDictionary dictionary];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v26 = v5;
    v11 = [v5 objectForKeyedSubscript:@"inbox"];
    v12 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v34;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v34 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v33 + 1) + 8 * i);
          v17 = [v16 objectForKeyedSubscript:@"issuing-player-id"];
          v18 = [v16 objectForKeyedSubscript:@"issuing-player-caid"];
          if (v17)
          {
            [v9 addObject:v17];
            if (v18)
            {
              [v10 setObject:v18 forKeyedSubscript:v17];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v13);
    }

    v19 = *(v25 + 40);
    v20 = [v19 localPlayer];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100091A68;
    v27[3] = &unk_100361A80;
    v22 = *(v25 + 32);
    v21 = *(v25 + 40);
    v28 = v9;
    v29 = v21;
    v30 = v10;
    v31 = v22;
    v32 = *(v25 + 48);
    v23 = v10;
    v24 = v9;
    [v19 getFriendsForPlayer:v20 withFilter:1 handler:v27];

    v6 = 0;
    v5 = v26;
  }
}

void sub_100091A68(uint64_t a1, void *a2)
{
  v3 = [a2 _gkMapWithBlock:&stru_100363408];
  v4 = *(a1 + 32);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100091C3C;
  v15[3] = &unk_100363430;
  v5 = v3;
  v16 = v5;
  v6 = [v4 _gkFilterWithBlock:v15];
  if ([v6 count])
  {
    v7 = [*(a1 + 40) transport];
    v8 = [*(a1 + 40) clientProxy];
    v9 = [*(a1 + 40) localPlayer];
    v10 = [(GKService *)GKProfileServicePrivate serviceWithTransport:v7 forClient:v8 localPlayer:v9];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100091C88;
    v12[3] = &unk_100362408;
    v11 = *(a1 + 48);
    v13 = *(a1 + 56);
    v14 = *(a1 + 64);
    [v10 getProfilesForPlayerIDs:v6 playerIdToContactAssociationIdMap:v11 handler:v12];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void *sub_100091C3C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  if ([v2 containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v4;
}

uint64_t sub_100091C88(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 result];
  [v5 setObject:v4 forKeyedSubscript:@"nativeFriendRequests"];

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

void sub_100091D00(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3 = [v2 objectForKeyedSubscript:@"messagesFriendRequests"];

  v4 = [*(a1 + 32) result];
  v5 = [v4 objectForKeyedSubscript:@"nativeFriendRequests"];

  v6 = [NSMutableArray alloc];
  if (v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  v8 = [v6 initWithArray:v7];
  v9 = v8;
  if (v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  [v8 addObjectsFromArray:v10];
  v11 = [NSSortDescriptor sortDescriptorWithKey:@"alias" ascending:1 selector:"caseInsensitiveCompare:"];
  v14 = v11;
  v12 = [NSArray arrayWithObjects:&v14 count:1];
  v13 = [v9 sortedArrayUsingDescriptors:v12];

  (*(*(a1 + 40) + 16))();
}

void sub_100091FF4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKFriending;
    if (os_log_type_enabled(os_log_GKFriending, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Failed while sending friend invitation via push: %@", &v7, 0xCu);
    }
  }

  else
  {
    v6 = +[GKAMPController controller];
    [v6 reportFriendInviteActivityEventAtStage:0 hostApp:*(a1 + 32)];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100092228(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKFriending;
    if (os_log_type_enabled(os_log_GKFriending, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Failed to accept a friend invitation: %@", &v7, 0xCu);
    }
  }

  else
  {
    v6 = +[GKAMPController controller];
    [v6 reportFriendInviteActivityEventAtStage:4 hostApp:0];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100092524(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKFriending;
    if (os_log_type_enabled(os_log_GKFriending, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Failed to ignore a friend invitation: %@", &v7, 0xCu);
    }
  }

  else
  {
    v6 = +[GKAMPController controller];
    [v6 reportFriendInviteActivityEventAtStage:6 hostApp:0];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000929DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v6 = GKBagKeyGetFriendInvitationMailbox;
  v7 = [*(a1 + 32) clientProxy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100092AE0;
  v10[3] = &unk_1003634A8;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v13 = *(a1 + 48);
  v11 = v4;
  v12 = v8;
  v9 = v4;
  [v5 deleteEntitiesWithBagKey:v6 clientProxy:v7 completionHandler:v10];
}

void sub_100092AE0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_ERROR))
    {
      sub_10028A94C();
    }
  }

  v5 = [*(a1 + 32) clientProxy];
  v6 = [v5 replyQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100092C14;
  v7[3] = &unk_100363480;
  v10 = *(a1 + 56);
  v7[4] = *(a1 + 32);
  v9 = *(a1 + 48);
  v8 = *(a1 + 40);
  dispatch_async(v6, v7);
}

uint64_t sub_100092C14(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = [*(a1 + 32) clientProxy];
    [v2 refreshContentsForDataType:3 userInfo:0];
  }

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void sub_100092FF8(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.gamed.GKGameService.metadata.serial", v3);
  v2 = qword_1003B9130;
  qword_1003B9130 = v1;
}

void sub_1000931A4(id a1)
{
  qword_1003B9148 = [[ASCLockupViewGroup alloc] initWithName:@"ASCLockupView.Group.gameCenter"];

  _objc_release_x1();
}

void sub_1000931EC(uint64_t a1)
{
  v2 = qword_1003B9148;
  v3 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000932A8;
  v6[3] = &unk_100363588;
  v9 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = v4;
  v8 = v5;
  [v2 _cacheLockupsWithCollectionRequest:v3 withCompletionBlock:v6];
}

void sub_1000932A8(uint64_t a1, void *a2, void *a3)
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
      sub_10028AA9C();
    }

    v8 = *(*(a1 + 48) + 16);
    goto LABEL_7;
  }

  if (![v5 count])
  {
    v8 = *(*(a1 + 48) + 16);
LABEL_7:
    v8();
    goto LABEL_17;
  }

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100093658;
  v34[3] = &unk_100363538;
  v23 = a1;
  v35 = *(a1 + 32);
  v9 = [v5 _gkFilterWithBlock:v34];

  v10 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 111, "[GKGameService getArcadeHighlightForAdamID:count:handler:]_block_invoke_2"];
  v11 = [GKDispatchGroup dispatchGroupWithName:v10];

  v12 = +[NSMutableArray array];
  [v11 setResult:v12];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = v9;
  v13 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v5);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_1000936CC;
        v27[3] = &unk_100360F00;
        v27[4] = v17;
        v18 = v11;
        v28 = v18;
        v29 = v12;
        [v18 perform:v27];
      }

      v14 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v14);
  }

  v19 = [*(v23 + 40) clientProxy];
  v20 = [v19 replyQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000939D4;
  v24[3] = &unk_100360EB0;
  v21 = *(v23 + 48);
  v25 = v11;
  v26 = v21;
  v22 = v11;
  [v22 notifyOnQueue:v20 block:v24];

  v6 = 0;
LABEL_17:
}

void *sub_100093658(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 id];
  v5 = [v4 numberValue];

  if ([v5 isEqual:*(a1 + 32)])
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v6;
}

void sub_1000936CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1003B9148;
  v5 = *(a1 + 32);
  v16[0] = _ASCLockupKeyIcon;
  v16[1] = _ASCLockupKeyTitle;
  v16[2] = _ASCLockupKeySubtitle;
  v6 = [NSArray arrayWithObjects:v16 count:3];
  v7 = [NSSet setWithArray:v6];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100093848;
  v11[3] = &unk_100363560;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v12 = v8;
  v13 = v9;
  v14 = *(a1 + 48);
  v15 = v3;
  v10 = v3;
  [v4 _lockupDictionaryForRequest:v5 includingKeys:v7 withCompletionBlock:v11];
}

void sub_100093848(uint64_t a1, void *a2, void *a3)
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
      sub_10028AB04();
    }

    [*(a1 + 32) setError:v6];
  }

  else
  {
    v8 = objc_alloc_init(GKGameHighlightInternal);
    v9 = [*(a1 + 40) id];
    v10 = [v9 numberValue];
    [v8 setAdamID:v10];

    v11 = [v5 objectForKeyedSubscript:_ASCLockupKeyIcon];
    [v8 setArtwork:v11];

    v12 = [v5 objectForKeyedSubscript:_ASCLockupKeyTitle];
    [v8 setTitle:v12];

    v13 = [v5 objectForKeyedSubscript:_ASCLockupKeySubtitle];
    [v8 setSubtitle:v13];

    [*(a1 + 48) addObject:v8];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1000939D4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_100093C00(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[GKCDGameSettings _gkFetchRequest];
  v8 = [NSPredicate predicateWithFormat:@"bundleID == %@", a1[4]];
  [v7 setPredicate:v8];

  v9 = [v5 executeFetchRequest:v7 error:0];
  if (![v9 count])
  {
    v11 = 0;
LABEL_6:
    v15 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v16 = GKBagKeyGetPerGameSettings;
    v17 = [a1[5] clientProxy];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100093E34;
    v18[3] = &unk_1003635D8;
    v19 = a1[6];
    v20 = a1[4];
    v21 = v5;
    v22 = v6;
    [v15 issueRequest:&__NSDictionary0__struct bagKey:v16 clientProxy:v17 handler:v18];

    goto LABEL_7;
  }

  v10 = [v9 firstObject];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_6;
  }

  v12 = [v10 expirationDate];
  v13 = [v11 _gkIsExpired:v12];

  if (v13)
  {
    goto LABEL_6;
  }

  v14 = [[GKGameSettingsInternal alloc] initWithGameSettings:v11];
  [a1[6] setResult:v14];

  v6[2](v6);
LABEL_7:
}

void sub_100093E34(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v7 = a2;
  [*(a1 + 32) setError:a3];
  v11 = [NSDate dateWithTimeIntervalSinceNow:a4];
  if (v7 && !a3)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100093F74;
    v13[3] = &unk_100363068;
    v12 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16 = 0;
    v17 = v7;
    v18 = v11;
    v19 = *(a1 + 32);
    [v12 performOnManagedObjectContext:v13];
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), v8, v9, v10);
}

void sub_100093F74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[GKCDGameSettings _gkFetchRequest];
  v8 = [NSPredicate predicateWithFormat:@"bundleID == %@", *(a1 + 32)];
  [v7 setPredicate:v8];

  v9 = *(a1 + 40);
  v28 = 0;
  v10 = [v9 executeFetchRequest:v7 error:&v28];
  v11 = v28;
  if (v11)
  {
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028AB6C();
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      v17 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [v5 deleteObject:*(*(&v24 + 1) + 8 * v17)];
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v15);
  }

  v18 = *(a1 + 56);
  v19 = [GKCDGameSettings alloc];
  v20 = +[GKCDGameSettings entity];
  v21 = [(GKCDGameSettings *)v19 initWithEntity:v20 insertIntoManagedObjectContext:v5];

  [(GKCDGameSettings *)v21 setBundleID:*(a1 + 32)];
  [(GKCDGameSettings *)v21 setExpirationDate:*(a1 + 64)];
  v22 = [v18 objectForKeyedSubscript:@"allow-friend-list-access"];
  [(GKCDGameSettings *)v21 setAllowFriendListAccess:v22];

  v23 = [[GKGameSettingsInternal alloc] initWithGameSettings:v21];
  [*(a1 + 72) setResult:v23];

  v6[2](v6);
}

void sub_10009421C(uint64_t a1)
{
  v4 = [*(a1 + 32) result];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_100094450(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v31 = a3;
  v6 = +[GKCDGameSettings _gkFetchRequest];
  v7 = [a1[4] bundleID];
  v8 = [NSPredicate predicateWithFormat:@"bundleID == %@", v7];
  [v6 setPredicate:v8];

  v9 = [v5 executeFetchRequest:v6 error:0];
  if ([v9 count])
  {
    v10 = [v9 firstObject];
    if ([v9 count] >= 2)
    {
      v11 = 1;
      do
      {
        v12 = [v9 objectAtIndexedSubscript:v11];
        [v5 deleteObject:v12];

        ++v11;
      }

      while (v11 < [v9 count]);
    }
  }

  else
  {
    v13 = [GKCDGameSettings alloc];
    v14 = +[GKCDGameSettings entity];
    v10 = [(GKCDGameSettings *)v13 initWithEntity:v14 insertIntoManagedObjectContext:v5];

    v15 = [a1[4] bundleID];
    [(GKCDGameSettings *)v10 setBundleID:v15];

    v16 = [a1[4] serverAllowFriendListAccessValue];
    [(GKCDGameSettings *)v10 setAllowFriendListAccess:v16];
  }

  v17 = [(GKCDGameSettings *)v10 allowFriendListAccess];
  v18 = [a1[4] serverAllowFriendListAccessValue];
  [(GKCDGameSettings *)v10 setAllowFriendListAccess:v18];
  if ([v18 length])
  {
    v38[0] = v18;
    v37[0] = @"allow-friend-list-access";
    v37[1] = @"for-bundle-id";
    v19 = [a1[4] bundleID];
    v38[1] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];

    [(GKCDGameSettings *)v10 objectID];
    v21 = v30 = v17;
    v22 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v29 = v6;
    v23 = GKBagKeySetPerGameSettings;
    v24 = [a1[6] clientProxy];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100094824;
    v32[3] = &unk_1003635D8;
    v33 = a1[5];
    v34 = v21;
    v35 = v30;
    v25 = v31;
    v36 = v31;
    v26 = v21;
    v27 = v23;
    v6 = v29;
    [v22 issueRequest:v20 bagKey:v27 clientProxy:v24 handler:v32];

    v17 = v30;
  }

  else
  {
    [(GKCDGameSettings *)v10 setAllowFriendListAccess:v17];
    v28 = [NSError userErrorForCode:3 underlyingError:0];
    [a1[5] setError:v28];

    v25 = v31;
    v31[2](v31);
  }
}

void sub_100094824(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [*(a1 + 32) setError:v4];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100094904;
  v7[3] = &unk_100361348;
  v5 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v4;
  v10 = *(a1 + 48);
  v6 = v4;
  [v5 performOnManagedObjectContext:v7];
  (*(*(a1 + 56) + 16))();
}

void sub_100094904(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v35 = 0;
  v8 = [v5 existingObjectWithID:v7 error:&v35];
  v9 = v35;
  if (v9)
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028ABD8();
    }
  }

  if (a1[5])
  {
    [v8 setAllowFriendListAccess:a1[6]];
  }

  v11 = +[GKCDGameAccessList _gkFetchRequest];
  v34 = 0;
  v12 = [v5 executeFetchRequest:v11 error:&v34];
  v13 = v34;
  v14 = v13;
  if (v12 || a1[5])
  {
    v28 = v13;
    v29 = v11;
    v15 = v6;
    v16 = v9;
    v17 = v8;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = v12;
    v19 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      do
      {
        v22 = 0;
        do
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [v5 deleteObject:{*(*(&v30 + 1) + 8 * v22), v28, v29, v30}];
          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v20);
    }

    if (!os_log_GKGeneral)
    {
      v23 = GKOSLoggers();
    }

    v24 = os_log_GKDaemon;
    v8 = v17;
    v9 = v16;
    v6 = v15;
    v14 = v28;
    v11 = v29;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v25 = a1[5];
      *buf = 138412290;
      v37 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Could not fetch data from cache: %@", buf, 0xCu);
    }
  }

  if ([v12 count])
  {
    v26 = 0;
    do
    {
      v27 = [v12 objectAtIndexedSubscript:v26];
      [v5 deleteObject:v27];

      ++v26;
    }

    while (v26 < [v12 count]);
  }

  v6[2](v6);
}

void sub_100094BEC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v2);
  }
}

void sub_100094E1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100094EEC;
  v10[3] = &unk_100363628;
  v6 = *(a1 + 48);
  v14 = v3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v9 = v3;
  [v4 getPerGameSettingsForBundleID:v5 handler:v10];
}

void sub_100094EEC(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    [*(a1 + 32) setError:?];
    v4 = *(*(a1 + 56) + 16);

    v4();
  }

  else if ([a2 allowFriendListAccess] == 2)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10009504C;
    v9[3] = &unk_100363600;
    v10 = *(a1 + 32);
    v7 = *(a1 + 56);
    v11 = *(a1 + 40);
    v12 = v7;
    [v5 _getPerGameFriendsPlayerIDForBundleID:v6 handler:v9];
  }

  else
  {
    v8 = [NSError userErrorForCode:102 underlyingError:0];
    [*(a1 + 32) setError:v8];
    (*(*(a1 + 56) + 16))();
  }
}

void sub_10009504C(id *a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    [a1[4] setError:?];
    v4 = *(a1[6] + 2);

    v4();
  }

  else
  {
    v5 = [a2 _gkValuesForKeyPath:@"playerID"];
    v6 = [a1[5] transport];
    v7 = [a1[5] clientProxy];
    v8 = [a1[5] localPlayer];
    v9 = [(GKService *)GKProfileService serviceWithTransport:v6 forClient:v7 localPlayer:v8];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000951C0;
    v10[3] = &unk_100362408;
    v11 = a1[4];
    v12 = a1[6];
    [v9 getProfilesForPlayerIDs:v5 handler:v10];
  }
}

void sub_1000951C0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [*(a1 + 32) setError:a3];
  if (!a3)
  {
    [*(a1 + 32) setResult:v5];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100095234(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_100095444(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 clientProxy];
  v6 = [v5 connection];

  if (v6)
  {
    [v6 auditToken];
  }

  v9[0] = kTCCAccessCheckOptionPurposeRequired;
  v9[1] = kTCCAccessCheckOptionPrompt;
  v10[0] = &__kCFBooleanTrue;
  v10[1] = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  v8 = [NSNumber numberWithBool:TCCAccessCheckAuditToken() != 0, 0, 0];
  [*(a1 + 40) setResult:v8];

  v4[2](v4);
}

void sub_10009559C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) result];
    (*(v1 + 16))(v1, [v2 BOOLValue]);
  }
}

void sub_1000957C8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 clientProxy];
  v5 = [v4 connection];

  if (v5)
  {
    [v5 auditToken];
  }

  TCCAccessResetForBundleIdWithAuditToken();
  v3[2](v3);
}

uint64_t sub_100095874(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

NSArray *__cdecl sub_100095A50(id a1, NSOrderedSet *a2)
{
  v2 = a2;
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKGameService _getPerGameFriendsPlayerIDForBundleID:handler:]_block_invoke", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKGameService.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKGameService _getPerGameFriendsPlayerIDForBundleID:handler:]_block_invoke", [v7 UTF8String], 431);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v9 = [NSMutableArray arrayWithCapacity:[(NSOrderedSet *)v2 count]];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v2;
  v11 = [(NSOrderedSet *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = objc_opt_new();
        v17 = [v15 playerID];
        [v16 setPlayerID:v17];

        [v9 addObject:v16];
      }

      v12 = [(NSOrderedSet *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v18 = [v9 copy];

  return v18;
}

void sub_100095CC4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[GKCDGameFriendList _gkFetchRequest];
  v8 = [NSPredicate predicateWithFormat:@"bundleID == %@", a1[4]];
  [v7 setPredicate:v8];

  v42 = 0;
  v9 = [v5 executeFetchRequest:v7 error:&v42];
  v10 = v42;
  if (v10)
  {
    v11 = v6;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v39;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v39 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [v5 deleteObject:*(*(&v38 + 1) + 8 * i)];
        }

        v14 = [v12 countByEnumeratingWithState:&v38 objects:v45 count:16];
      }

      while (v14);
    }

    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    v18 = os_log_GKDaemon;
    v6 = v11;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v44 = v10;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Could not fetch data from cache: %@", buf, 0xCu);
    }
  }

  else if ([v9 count])
  {
    v19 = [v9 firstObject];
    goto LABEL_16;
  }

  v20 = [GKCDGameFriendList alloc];
  v21 = +[GKCDGameFriendList entity];
  v19 = [(GKCDGameFriendList *)v20 initWithEntity:v21 insertIntoManagedObjectContext:v5];

  [(GKCDGameFriendList *)v19 setBundleID:a1[4]];
LABEL_16:
  v22 = [(GKCDGameFriendList *)v19 expirationDate];
  v23 = [(GKCDGameFriendList *)v19 _gkIsExpired:v22];

  if (v23)
  {
    v24 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v25 = GKBagKeyGetPerGameFriendPlayerIDs;
    v26 = [a1[5] clientProxy];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000960D4;
    v32[3] = &unk_1003636B8;
    v33 = a1[6];
    v34 = a1[4];
    v35 = v5;
    v36 = a1[7];
    v37 = v6;
    [v24 issueRequest:&__NSDictionary0__struct bagKey:v25 clientProxy:v26 handler:v32];
  }

  else
  {
    v27 = [(GKCDGameFriendList *)v19 entries];
    v28 = [v27 count];

    if (v28)
    {
      v29 = a1[7];
      v30 = [(GKCDGameFriendList *)v19 entries];
      v31 = v29[2](v29, v30);
      [a1[6] setResult:v31];
    }

    v6[2](v6);
  }
}

void sub_1000960D4(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v7 = a2;
  [*(a1 + 32) setError:a3];
  if (v7 && !a3)
  {
    v8 = [v7 objectForKey:@"results"];
    v9 = +[NSMutableOrderedSet orderedSetWithCapacity:](NSMutableOrderedSet, "orderedSetWithCapacity:", [v8 count]);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100096254;
    v13[3] = &unk_100363690;
    v10 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16 = v8;
    v17 = v9;
    v20 = a4;
    v18 = *(a1 + 32);
    v19 = *(a1 + 56);
    v11 = v9;
    v12 = v8;
    [v10 performOnManagedObjectContext:v13];
  }

  (*(*(a1 + 64) + 16))();
}