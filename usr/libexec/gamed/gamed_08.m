void sub_10019EA04(uint64_t a1)
{
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v7 count:3];
  v3 = [NSMutableSet setWithArray:v2, v7, v8];

  v4 = [*(a1 + 32) persistedBulletinClasses];
  [v3 unionSet:v4];

  v5 = [v3 copy];
  v6 = qword_1003B9468;
  qword_1003B9468 = v5;
}

void sub_10019ECC0(id a1)
{
  qword_1003B9480 = dispatch_queue_create("com.apple.gamed.GKBulletinController.file.queue", 0);

  _objc_release_x1();
}

void sub_10019EE44(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [*(a1 + 32) bulletinStorageFilePath];
  v4 = [v3 stringByAppendingString:@".doomed"];
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKBulletinController+Common removing bulletin store: %@", buf, 0xCu);
  }

  v16 = 0;
  v7 = [v2 moveItemAtPath:v3 toPath:v4 error:&v16];
  v8 = v16;
  v9 = v8;
  if (v7)
  {
    v15 = v8;
    v10 = [v2 removeItemAtPath:v4 error:&v15];
    v11 = v15;

    if ((v10 & 1) == 0)
    {
      if (!os_log_GKGeneral)
      {
        v12 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_ERROR))
      {
        sub_10029633C();
      }
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v18 = v3;
      v19 = 2112;
      v20 = v4;
      v21 = 2112;
      v22 = v9;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "GKBulletinController+Common failed to move store from: %@, to: %@, error: %@", buf, 0x20u);
    }

    v11 = v9;
  }
}

void sub_10019F160(uint64_t a1)
{
  v2 = [*(a1 + 32) bulletinStorageFilePath];
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKBulletinController+Common writing bulletin store: %@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) bulletins];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10019F384;
  v14[3] = &unk_10036A478;
  v14[4] = *(a1 + 32);
  v6 = [v5 keysOfEntriesPassingTest:v14];

  v7 = [*(a1 + 32) bulletins];
  v8 = [v6 allObjects];
  v9 = [v7 _gkSubDictionaryWithKeys:v8];

  v13 = 0;
  v10 = [NSKeyedArchiver archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v13];
  v11 = v13;
  if (v11)
  {
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_ERROR))
    {
      sub_1002963C0();
    }
  }

  else
  {
    [v10 writeToFile:v2 atomically:1];
  }
}

id sub_10019F384()
{
  v0 = objc_opt_class();
  v1 = [objc_opt_class() persistedBulletinClasses];
  v2 = [v1 containsObject:v0];

  if ((v2 & 1) == 0)
  {
    v3 = [objc_opt_class() notPersistedBulletinClasses];
    v4 = [v3 containsObject:v0];

    if ((v4 & 1) == 0)
    {
      if (!os_log_GKGeneral)
      {
        v5 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_ERROR))
      {
        sub_100296434();
      }
    }
  }

  return v2;
}

void sub_10019F550(uint64_t a1)
{
  v2 = [*(a1 + 32) bulletinStorageFilePath];
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v28 = a1;
  v4 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v41 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKBulletinController+Common reading bulletin store: %@", buf, 0xCu);
  }

  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKGameInviteBulletinMultiplayerTurnBased"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKPlayerTurnTurnBasedMultiplayerBulletin"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKCompletedGameTurnBasedMultiplayerBulletinBased"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKUpdateTurnCountTurnBasedMultiplayerBulletin"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKClearTurnBasedMultiplayerBulletin"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKMatchChangedTurnBasedMultiplayerBulletin"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKRequestedExchangeTurnBasedMultiplayerBulletin"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKCompletedExchangeTurnBasedMultiplayerBulletin"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKCanceledExchangeTurnBasedMultiplayerBulletin"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKTurnReminderTurnBasedMultiplayerBulletin"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKBulletinChallengeReceive"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKBulletinChallengeComplete"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKBulletinMultiplayerTurnBasedInvite"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKBulletinMultiplayerTurnBasedTurn"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKBulletinMultiplayerTurnBasedCompleted"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKBulletinMultiplayerTurnBasedTurnCount"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKBulletinMultiplayerTurnBasedClear"];
  v5 = v2;
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKBulletinMultiplayerTurnBasedMatchChanged"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKBulletinMultiplayerTurnBasedExchangeRequested"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKBulletinMultiplayerTurnBasedExchangeCompleted"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKBulletinMultiplayerTurnBasedExchangeCanceled"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKBulletinMultiplayerTurnBasedReminder"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKBulletinMultiplayerInviteInitiate"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKBulletinMultiplayerInviteAccept"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKBulletinMultiplayerInviteDecline"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKBulletinMultiplayerInviteCancel"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKFriendRequestReceivedBulletin"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKFriendRequestBulletin"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKFriendRequestAcceptedBulletin"];
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"GKFriendRequestCancelBulletin"];
  v6 = [NSData dataWithContentsOfFile:v2];
  if (v6)
  {
    v7 = a1;
    v8 = [objc_opt_class() allowedPersistedClasses];
    v38 = 0;
    v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v8 fromData:v6 error:&v38];
    v10 = v38;

    if (!v10)
    {
      goto LABEL_10;
    }

    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_ERROR))
    {
      sub_1002964A8(v10, a1, v12);
      if (v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
LABEL_10:
      if (v9)
      {
LABEL_11:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v13 = [v9 mutableCopy];

          v9 = v13;
        }

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v14 = [v9 allValues];
        v15 = [v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v35;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v35 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v34 + 1) + 8 * i);
              if ([v19 conformsToProtocol:&OBJC_PROTOCOL___GKDeprecated])
              {
                v20 = [v19 recordID];
                [v9 removeObjectForKey:v20];
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
          }

          while (v16);
        }

        v7 = v28;
        v21 = [*(v28 + 32) bulletins];
        [v21 addEntriesFromDictionary:v9];

        +[NSMutableString string];
        v29 = _NSConcreteStackBlock;
        v30 = 3221225472;
        v31 = sub_10019FDC0;
        v22 = v32 = &unk_10036A4A0;
        v33 = v22;
        [v9 enumerateKeysAndObjectsUsingBlock:&v29];
        if (!os_log_GKGeneral)
        {
          v23 = GKOSLoggers();
        }

        v24 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_DEBUG))
        {
          sub_100296568(v24, v9, v22);
        }

LABEL_37:
        [*(v7 + 32) registerUserNotifications];

        goto LABEL_38;
      }
    }

    if (!os_log_GKGeneral)
    {
      v27 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_DEBUG))
    {
      sub_100296618();
    }

    goto LABEL_37;
  }

  if (!os_log_GKGeneral)
  {
    v25 = GKOSLoggers();
  }

  v26 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "GKBulletinController+Common did not find any persisted bulletins to load.", buf, 2u);
  }

  [*(a1 + 32) registerUserNotifications];
LABEL_38:
}

void sub_10019FDC0(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  if ([v5 length])
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  [*(a1 + 32) appendFormat:@"%@: %@", v6, objc_opt_class()];
}

void sub_10019FF80(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [v6 matchID];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    [*(a1 + 40) withdrawBulletin:v6];
  }
}

void sub_1001A011C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [v7 challenge];
  v5 = [v4 challengeID];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    [*(a1 + 40) withdrawBulletin:v7];
  }
}

void sub_1001A0330(uint64_t a1)
{
  v1 = [*(a1 + 32) sharedController];
  [v1 loadBulletins];
}

void sub_1001A0428(id a1)
{
  qword_1003B9488 = [[GKBulletinController alloc] initForTests:0];

  _objc_release_x1();
}

void sub_1001A0604(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  [*(a1 + 32) setBulletins:v2];
}

void sub_1001A07C8(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (v4)
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      v8 = [(NSError *)v4 description];
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Error requesting authorization\nPlease make sure you read instructions in DEDUserNotificationNotifier.h\n[error info] %@", &v11, 0xCu);
    }
  }

  else if (!a2)
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    v10 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "The user denied notification privileges.", &v11, 2u);
    }
  }
}

void sub_1001A18DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A1904(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001A191C(uint64_t a1)
{
  v8 = [*(a1 + 32) bulletins];
  v2 = [*(a1 + 40) notification];
  v3 = [v2 request];
  v4 = [v3 identifier];
  v5 = [v8 objectForKey:v4];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1001A1BC8(uint64_t a1)
{
  v3 = [*(a1 + 32) bulletins];
  v2 = [*(a1 + 40) recordID];
  [v3 removeObjectForKey:v2];
}

void sub_1001A24EC(uint64_t a1, void *a2)
{
  v13 = UNNotificationAttachmentOptionsHiddenFromDefaultExpandedViewKey;
  v3 = a2;
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 hiddenFromDefaultExpandedView]);
  v14 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];

  v6 = [v3 identifier];
  v7 = [v3 url];

  v12 = 0;
  v8 = [UNNotificationAttachment attachmentWithIdentifier:v6 URL:v7 options:v5 error:&v12];
  v9 = v12;

  if (v8)
  {
    [*(a1 + 32) addObject:v8];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    v11 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100296744(v9, v11);
    }
  }
}

void sub_1001A2978(uint64_t a1)
{
  v4 = [*(a1 + 32) bulletins];
  v2 = *(a1 + 40);
  v3 = [v2 recordID];
  [v4 setObject:v2 forKey:v3];
}

void sub_1001A2AFC(uint64_t a1)
{
  v1 = [*(a1 + 32) bulletins];
  [v1 removeAllObjects];
}

void sub_1001A2D90(uint64_t a1, void *a2)
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
      sub_100296834(v3, v5);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }
}

void sub_1001A2F78(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndexedSubscript:1];
  v3 = [v2 integerValue];
  v4 = +[PRMonogramColor availableColors];
  v5 = v3 % [v4 count];

  v6 = +[UIApplication sharedApplication];
  v7 = [v6 userInterfaceLayoutDirection] == 1;

  v8 = *(a1 + 72);
  v9 = +[PRMonogramColor availableColors];
  v10 = [v9 objectAtIndexedSubscript:v5];
  v11 = [CNAvatarImageRenderingScope scopeWithPointSize:v7 scale:0 rightToLeft:v10 style:*(a1 + 56) color:*(a1 + 64), v8];

  v12 = [CNAvatarImageRenderer alloc];
  v13 = +[CNAvatarImageRendererSettings defaultSettings];
  v14 = [v12 initWithSettings:v13];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001A312C;
  v17[3] = &unk_10036A5A8;
  v15 = *(a1 + 40);
  v18 = *(a1 + 48);
  v16 = [v14 renderMonogramForString:v15 scope:v11 imageHandler:v17];
}

void sub_1001A3268(id a1)
{
  qword_1003B9498 = [NSSet setWithArray:&off_1003834A8];

  _objc_release_x1();
}

void sub_1001A3E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A3E94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001A3EAC(void *a1, void *a2)
{
  v28 = a2;
  v3 = [v28 name];
  v4 = [v3 isEqualToString:GKActivityFeedMarkdownURLFormulationQueryIds];

  if (v4)
  {
    v5 = [v28 value];
    v6 = [v5 componentsSeparatedByString:{@", "}];
    v7 = *(a1[4] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = [v28 name];
    v10 = [v9 isEqualToString:GKActivityFeedMarkdownURLFormulationQueryAdamId];

    if (v10)
    {
      v11 = [v28 value];
      v12 = a1[5];
    }

    else
    {
      v13 = [v28 name];
      v14 = [v13 isEqualToString:GKActivityFeedMarkdownURLFormulationQueryBundleId];

      if (v14)
      {
        v11 = [v28 value];
        v12 = a1[6];
      }

      else
      {
        v15 = [v28 name];
        v16 = [v15 isEqualToString:GKActivityFeedMarkdownURLFormulationQueryPlayerId];

        if (v16)
        {
          v11 = [v28 value];
          v12 = a1[7];
        }

        else
        {
          v17 = [v28 name];
          v18 = [v17 isEqualToString:GKActivityFeedMarkdownURLFormulationQueryName];

          if (v18)
          {
            v11 = [v28 value];
            v12 = a1[8];
          }

          else
          {
            v19 = [v28 name];
            v20 = [v19 isEqualToString:GKActivityFeedMarkdownURLFormulationQueryActivityId];

            if (v20)
            {
              v11 = [v28 value];
              v12 = a1[9];
            }

            else
            {
              v21 = [v28 name];
              v22 = [v21 isEqualToString:GKActivityFeedMarkdownURLFormulationQueryActivityType];

              if (v22)
              {
                v11 = [v28 value];
                v12 = a1[10];
              }

              else
              {
                v23 = [v28 name];
                v24 = [v23 isEqualToString:GKActivityFeedMarkdownURLFormulationQueryWidgetFamily];

                if (v24)
                {
                  v11 = [v28 value];
                  v12 = a1[11];
                }

                else
                {
                  v25 = [v28 name];
                  v26 = [v25 isEqualToString:GKMarkdownURLFormulationQueryWidgetId];

                  if (!v26)
                  {
                    goto LABEL_21;
                  }

                  v11 = [v28 value];
                  v12 = a1[12];
                }
              }
            }
          }
        }
      }
    }

    v27 = *(v12 + 8);
    v5 = *(v27 + 40);
    *(v27 + 40) = v11;
  }

LABEL_21:
}

void sub_1001A4FAC(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 name];

  if (v3)
  {
    v4 = [v7 value];
    v5 = *(a1 + 32);
    v6 = [v7 name];
    [v5 setObject:v4 forKeyedSubscript:v6];
  }
}

void sub_1001A5048(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    v11 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      v13 = [v7 localizedDescription];
      *buf = 138412290;
      v40 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "GKWidgetEventListener: Not reporting metric because invokeASCAppLaunchTrampoline failed with error: %@", buf, 0xCu);
    }
  }

  else
  {
    v14 = *(a1 + 32);
    v43[0] = @"widgetId";
    v43[1] = @"size";
    v45 = *(a1 + 40);
    v43[2] = @"name";
    v43[3] = @"targetId";
    v15 = *(a1 + 56);
    v44 = v14;
    v46 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v44 forKeys:v43 count:4];
    v17 = [v16 mutableCopy];

    if (v9)
    {
      [v17 setObject:v9 forKeyedSubscript:@"targetId"];
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v18 = GKOSLoggers();
      }

      v19 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        v20 = *(a1 + 32);
        v21 = *(a1 + 40);
        *buf = 138412546;
        v40 = v20;
        v41 = 2112;
        v42 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "GKWidgetEventListener: Unexpected nil value returned in targetId for widgetId: %@, size: %@", buf, 0x16u);
      }
    }

    v30[0] = @"eventType";
    v30[1] = @"actionType";
    v31[0] = @"click";
    v31[1] = @"navigate";
    v30[2] = @"pageType";
    v30[3] = @"widgetContext";
    v22 = *(a1 + 40);
    v32 = *(a1 + 32);
    v33 = v17;
    v30[4] = @"widgetId";
    v30[5] = @"size";
    v34 = v32;
    v35 = v22;
    v30[6] = @"targetId";
    v30[7] = @"destinationUrl";
    v23 = *(a1 + 48);
    v36 = *(a1 + 56);
    v37 = v9;
    v30[8] = @"location";
    v27 = @"name";
    v28 = v23;
    v24 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v29 = v24;
    v25 = [NSArray arrayWithObjects:&v29 count:1];
    v38 = v25;
    v26 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:9];

    [*(a1 + 64) reportMetricsEventWithTopic:GKReporterCSTopic shouldFlush:&__kCFBooleanFalse metricsFields:v26];
  }
}

void sub_1001A5390(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    v11 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      v13 = [v7 localizedDescription];
      *buf = 138412290;
      v27 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "GKWidgetEventListener: Not reporting metric because invokeASCAppLaunchTrampoline failed with error: %@", buf, 0xCu);
    }
  }

  else
  {
    v20[0] = @"eventType";
    v20[1] = @"actionType";
    v21[0] = @"click";
    v21[1] = @"navigate";
    v14 = *(a1 + 40);
    v22 = *(a1 + 32);
    v20[2] = @"pageType";
    v20[3] = @"widgetContext";
    v18[0] = @"widgetId";
    v18[1] = @"size";
    v19[0] = v22;
    v19[1] = v14;
    v18[2] = @"targetId";
    v19[2] = *(a1 + 48);
    v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
    v24 = *(a1 + 32);
    v20[4] = @"widgetId";
    v20[5] = @"size";
    v20[6] = @"targetId";
    v16 = *(a1 + 48);
    v23 = v15;
    v25 = v16;
    v17 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:7];

    [*(a1 + 56) reportMetricsEventWithTopic:GKReporterCSTopic shouldFlush:&__kCFBooleanFalse metricsFields:v17];
  }
}

uint64_t sub_1001A5B40()
{
  v1 = *(v0 + OBJC_IVAR____TtC14GameDaemonCore18GKFilterableFriend_playerID);

  return v1;
}

id sub_1001A5C38()
{
  sub_1001A815C();
  ObjectType = swift_getObjectType();
  v6 = &v1[OBJC_IVAR____TtC14GameDaemonCore18GKFilterableFriend_playerID];
  *v6 = v4;
  v6[1] = v3;
  v1[OBJC_IVAR____TtC14GameDaemonCore18GKFilterableFriend_friendBiDirectional] = v2;
  v1[OBJC_IVAR____TtC14GameDaemonCore18GKFilterableFriend_friendPlayedWith] = v0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_1001A5CF8(void *a1)
{
  result = sub_1001A7A84(a1);
  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();

    v6 = [v1 initWithPlayerID:v5 friendBiDirectional:objc_msgSend(a1 friendPlayedWith:{"friendBiDirectional"), objc_msgSend(a1, "friendPlayedWith")}];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id MultiplayerActivityEventFilter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1001A5EA4()
{
  v1 = [v0 entries];
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = v1;
  if ([v1 count] < 1)
  {

    return &_swiftEmptyArrayStorage;
  }

  v3 = sub_1001A6000();
  v4 = sub_1001E6E2C();
  if (!v4)
  {

    return &_swiftEmptyArrayStorage;
  }

  v5 = v4;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      v10 = objc_allocWithZone(type metadata accessor for GKFilterableFriend());
      sub_1001A5CF8(v9);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v5 != v7);

    return &_swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

void *sub_1001A6000()
{
  v0 = type metadata accessor for NSFastEnumerationIterator();
  v6 = *(v0 - 8);
  __chkstk_darwin();
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = &_swiftEmptyArrayStorage;
  v12 = &_swiftEmptyArrayStorage;
  NSOrderedSet.makeIterator()();
  sub_1001A6D70(&qword_1003B5608, &type metadata accessor for NSFastEnumerationIterator);
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v11)
    {
      break;
    }

    sub_100005C2C(&v10, v9);
    sub_1001A7AE8(v9, v7);
    sub_1001A7B44(0, &qword_1003B5610);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v8 = 0;
    }

    sub_100005BE0(v9);
    if (v8)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = v12;
    }
  }

  (*(v6 + 8))(v2, v0);
  return v3;
}

void *sub_1001A6208(unint64_t a1, int a2)
{
  v2 = a1;
  if (a1)
  {
    LODWORD(v3) = a2;
    if (a1 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v5 = sub_1001A6360(v3);
      v7 = v6;
      v8 = 0;
      v12 = &_swiftEmptyArrayStorage;
      while (1)
      {
        if (i == v8)
        {

          return v12;
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v9 = *(v2 + 8 * v8 + 32);
        }

        v10 = v9;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        LODWORD(v3) = v7;
        if ((v5)(v9))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v3 = &v12;
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v8;
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }
  }

  return v2;
}

uint64_t (*sub_1001A6360(unsigned int a1))()
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 3)
  {
    return off_10036AEB8[a1];
  }

  static GKLog.daemon.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v7, v8, "Ignoring unsupported friends filter: %d", v9, 8u);
  }

  (*(v3 + 8))(v5, v2);
  return _s14GameDaemonCore19AppMetadataSchemaV1V0dE0C9_metadata33_9DC203CAEB983F42B18FE72770C1F807LLAE16_SwiftDataNoTypeVSgvpfi_0;
}

uint64_t variable initialization expression of GKLRUCache.cache()
{
  type metadata accessor for GKLRUDequeNode();

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t variable initialization expression of OverlayServiceUtils.dashboardClientProxy()
{
  type metadata accessor for GameOverlayUIConfig.ServiceKind();
  sub_1000043C4();
  __chkstk_darwin();
  sub_1000043B4();
  (*(v2 + 104))(v1 - v0, enum case for GameOverlayUIConfig.ServiceKind.dashboard(_:));
  v3 = objc_allocWithZone(type metadata accessor for DashboardClientProxy());
  return DashboardClientProxy.init(serviceKind:)();
}

Swift::Int sub_1001A66C8(char a1)
{
  Hasher.init(_seed:)();
  AppMetadataPlatform.rawValue.getter(a1);
  sub_1001A81AC();

  return Hasher._finalize()();
}

Swift::Int sub_1001A6724(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_1001A676C(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_1001A67B4(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_1001A67FC(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  AppMetadataPlatform.rawValue.getter(a2);
  sub_1001A81AC();

  return Hasher._finalize()();
}

Swift::Int sub_1001A6848()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1001A68D4(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_1001A6918(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_1001A695C(uint64_t a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

uint64_t ArcadeStateMetricsFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MetricsFieldsProviderCategory.timeSensitive(_:);
  v3 = type metadata accessor for MetricsFieldsProviderCategory();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t variable initialization expression of MatchReporter.matchQueue()
{
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_1000043C4();
  __chkstk_darwin();
  sub_1000043B4();
  sub_1001A8190();
  sub_1001A8128();
  __chkstk_darwin();
  sub_1000043B4();
  sub_1001A8174();
  __chkstk_darwin();
  sub_1000043B4();
  sub_1001A7B44(0, &qword_1003B5578);
  static DispatchQoS.unspecified.getter();
  sub_1001A80E0();
  sub_1001A6D70(v0, v1);
  sub_1001A6C04(&qword_1003B5588);
  sub_100004A48();
  sub_1001A8100();
  v2 = sub_1001A813C();
  v3(v2);
  return sub_10000575C();
}

uint64_t sub_1001A6C04(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001A6C4C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t variable initialization expression of AppMetadataSchemaV1.AppMetadata._$backingData@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AppMetadataSchemaV1.AppMetadata(0);
  a1[3] = sub_1001A6C04(&qword_1003B5598);
  sub_1001A6D70(&qword_1003B55A0, type metadata accessor for AppMetadataSchemaV1.AppMetadata);
  a1[4] = swift_getOpaqueTypeConformance2();
  sub_100005668(a1);
  return static PersistentModel.createBackingData<A>()();
}

uint64_t sub_1001A6D70(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t variable initialization expression of MultiplayerActivityEventFilter.serialQueue()
{
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_1000043C4();
  __chkstk_darwin();
  sub_1000043B4();
  sub_1001A8190();
  sub_1001A8128();
  __chkstk_darwin();
  sub_1000043B4();
  sub_1001A8174();
  __chkstk_darwin();
  sub_1000043B4();
  sub_1001A7B44(0, &qword_1003B5578);
  static DispatchQoS.default.getter();
  sub_1001A80E0();
  sub_1001A6D70(v0, v1);
  sub_1001A6C04(&qword_1003B5588);
  sub_100004A48();
  sub_1001A8100();
  v2 = sub_1001A813C();
  v3(v2);
  return sub_10000575C();
}

uint64_t variable initialization expression of GKGameModeListener.gameModeNotificationQueue()
{
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_1000043C4();
  __chkstk_darwin();
  sub_1000043B4();
  sub_1001A8190();
  sub_1001A8128();
  __chkstk_darwin();
  sub_1000043B4();
  sub_1001A8174();
  __chkstk_darwin();
  sub_1000043B4();
  sub_1001A7B44(0, &qword_1003B5578);
  static DispatchQoS.default.getter();
  sub_1001A80E0();
  sub_1001A6D70(v0, v1);
  sub_1001A6C04(&qword_1003B5588);
  sub_100004A48();
  sub_1001A8100();
  v2 = sub_1001A813C();
  v3(v2);
  return sub_10000575C();
}

uint64_t sub_1001A71E8@<X0>(_DWORD *a1@<X8>)
{
  result = variable initialization expression of LibraryBagObserver.bagUpdating();
  *a1 = result;
  return result;
}

uint64_t sub_1001A7214(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1001A728C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1001A730C@<X0>(uint64_t *a1@<X8>)
{
  result = variable initialization expression of GKCloudKitMultiplayerCache.userRecordID();
  *a1 = result;
  return result;
}

uint64_t sub_1001A7334(uint64_t a1)
{
  v2 = sub_1001A814C(a1);
  result = sub_1001AC94C(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1001A738C(uint64_t a1)
{
  v2 = sub_1001A6D70(&qword_1003B5680, type metadata accessor for AMSError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001A73F8(uint64_t a1)
{
  v2 = sub_1001A6D70(&qword_1003B5680, type metadata accessor for AMSError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1001A7468(uint64_t a1)
{
  v2 = sub_1001A6D70(&qword_1003B56B8, type metadata accessor for AMSError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1001A7508()
{
  v1 = sub_100005FE8();
  result = AppMetadataNetworkFetcher.init(batchTask:)(v1);
  *v0 = result;
  return result;
}

NSString sub_1001A7540@<X0>(void *a1@<X8>)
{
  result = sub_1001A8024();
  *a1 = result;
  return result;
}

uint64_t sub_1001A7570()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1001A75B0()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

uint64_t sub_1001A760C@<X0>(_BYTE *a1@<X8>)
{
  result = AppMetadataNetworkFetcher.init(batchTask:)(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1001A7658(uint64_t a1)
{
  v2 = sub_1001A6D70(&qword_1003B56B8, type metadata accessor for AMSError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1001A76C4(uint64_t a1)
{
  v2 = sub_1001A6D70(&qword_1003B56B8, type metadata accessor for AMSError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1001A7730(void *a1, uint64_t a2)
{
  v4 = sub_1001A6D70(&qword_1003B56B8, type metadata accessor for AMSError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1001A77EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A6D70(&qword_1003B56B8, type metadata accessor for AMSError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1001A7868()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001A78D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001A6D70(&qword_1003B56B8, type metadata accessor for AMSError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1001A7958@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1001A79A0()
{
  sub_100005FE8();
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1001A79C8(uint64_t a1)
{
  v2 = sub_1001A6D70(&qword_1003B6240, type metadata accessor for URLResourceKey);
  v3 = sub_1001A6D70(&qword_1003B56D0, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1001A7A84(void *a1)
{
  v1 = [a1 playerID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1001A7AE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1001A7B44(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 sub_1001A7BAC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_1001A7C20(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1001A7C2C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001A7C4C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

unint64_t sub_1001A7EF8()
{
  result = qword_1003B56A8;
  if (!qword_1003B56A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B56A8);
  }

  return result;
}

NSString sub_1001A8024()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

void sub_1001A8070(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1001A8100()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1001A8174()
{

  return type metadata accessor for DispatchQoS();
}

uint64_t sub_1001A8190()
{

  return type metadata accessor for OS_dispatch_queue.Attributes();
}

uint64_t sub_1001A81AC()
{

  return String.hash(into:)();
}

uint64_t sub_1001A81D0()
{
  sub_1001A6C04(&qword_1003B5820);
  type metadata accessor for ValidationCategory.Value();
  *(swift_allocObject() + 16) = xmmword_1002C3280;
  static ValidationCategory.Value.developerID.getter();
  static ValidationCategory.Value.development.getter();
  static ValidationCategory.Value.testflight.getter();
  v6 = type metadata accessor for ValidationCategory();
  v7 = sub_1001A981C(&qword_1003B5828, &type metadata accessor for ValidationCategory);
  sub_100005668(v5);
  static ValidationCategory.in(_:)();

  v0 = static OnDiskConstraintBuilder.buildExpression(_:)();
  sub_100005BE0(v5);
  v6 = type metadata accessor for TeamIdentifier();
  v7 = sub_1001A981C(&qword_1003B5830, &type metadata accessor for TeamIdentifier);
  sub_100005668(v5);
  static TeamIdentifier.in(_:)();
  v1 = static OnDiskConstraintBuilder.buildExpression(_:)();
  sub_100005BE0(v5);
  sub_1001A6C04(&qword_1003B5838);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1002C3290;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = static OnDiskConstraintBuilder.buildBlock(_:)();

  return v3;
}

uint64_t sub_1001A83D8(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  sub_1000043C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000043B4();
  v10 = v9 - v8;
  v11 = sub_1001A6C04(&qword_1003B5800);
  __chkstk_darwin(v11 - 8);
  v13 = v27 - v12;
  v14 = objc_allocWithZone(LSApplicationRecord);

  v15 = sub_10025352C(a1, a2, 0);
  v21 = v15;
  if (v15)
  {
    v22 = [v15 executableURL];
    if (v22)
    {
      v23 = v22;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = type metadata accessor for URL();
      v25 = 0;
    }

    else
    {
      v24 = type metadata accessor for URL();
      v25 = 1;
    }

    sub_1001A9674(v13, v25, 1, v24);
    v20 = sub_1001A8688(a1, a2, v13);

    sub_1001A974C(v13, &qword_1003B5800);
  }

  else
  {
    static GKLog.daemon.getter();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_100005C3C(a1, a2, v27);
      _os_log_impl(&_mh_execute_header, v16, v17, "No application record found for bundleID: %s -> isDevSigned = false", v18, 0xCu);
      sub_100005BE0(v19);
      sub_1000043D8();
      sub_1000043D8();
    }

    (*(v6 + 8))(v10, v4);
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1001A8688(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v54 = a1;
  v7 = type metadata accessor for Logger();
  sub_1000043C4();
  v53 = v8;
  v10 = __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v52 = &v47 - v13;
  v14 = sub_1001A6C04(&qword_1003B5800);
  __chkstk_darwin(v14 - 8);
  v16 = &v47 - v15;
  type metadata accessor for URL();
  sub_1000043C4();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_1000043B4();
  v22 = (v21 - v20);
  v23 = a3;
  v25 = v24;
  sub_1001A96E4(v23, v16, &qword_1003B5800);
  if (sub_1001A969C(v16, 1, v25) == 1)
  {
    sub_1001A974C(v16, &qword_1003B5800);
    static GKLog.daemon.getter();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v56[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_100005C3C(v54, a2, v56);
      _os_log_impl(&_mh_execute_header, v26, v27, "No executableUrl for bundleID: %s -> isDevSigned = false", v28, 0xCu);
      sub_100005BE0(v29);
      sub_1000043D8();
      sub_1000043D8();
    }

    (*(v53 + 8))(v12, v7);
    LOBYTE(v30) = 0;
    return v30 & 1;
  }

  v50 = v18;
  v51 = a2;
  v48 = v7;
  v49 = v25;
  (*(v18 + 32))(v22, v16, v25);
  v31 = URL.absoluteString.getter();
  v33 = v32;
  v34 = *(v4 + OBJC_IVAR___GKCodeSigningManager_cache);
  v35 = __chkstk_darwin(v31);
  *(&v47 - 4) = v34;
  *(&v47 - 3) = v35;
  *(&v47 - 2) = v36;
  sub_1001A6C04(&qword_1003B5808);
  OS_dispatch_queue.sync<A>(execute:)();
  if (!v57)
  {
    sub_1001A974C(v56, &qword_1003B5808);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v45 = v50;
    LOBYTE(v30) = sub_1001A8C3C(v54, v51, v22);
    v57 = &type metadata for Bool;
    LOBYTE(v56[0]) = v30 & 1;
    GKLRUCache.insertValue(_:forKey:)(v56, v31, v33);

    (*(v45 + 8))(v22, v49);
    sub_100005BE0(v56);
    return v30 & 1;
  }

  v30 = v55;
  v37 = v52;
  static GKLog.daemon.getter();
  v38 = v51;

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();

  v41 = os_log_type_enabled(v39, v40);
  v42 = v50;
  if (v41)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v56[0] = v44;
    *v43 = 136315394;
    *(v43 + 4) = sub_100005C3C(v54, v38, v56);
    *(v43 + 12) = 1024;
    *(v43 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v39, v40, "Using cached value for bundleID: %s -> isDevSigned = %{BOOL}d", v43, 0x12u);
    sub_100005BE0(v44);
    sub_1000043D8();
    sub_1000043D8();
  }

  (*(v53 + 8))(v37, v48);
  (*(v42 + 8))(v22, v49);
  return v30 & 1;
}

uint64_t sub_1001A8C3C(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  os_transaction_create();
  sub_1001A8DD0(v3, a1, a2, a3, &v8);
  swift_unknownObjectRelease();
  return v8;
}

void sub_1001A8DD0(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _BYTE *a4@<X3>, _BYTE *a5@<X8>)
{
  v58 = a2;
  v57 = a4;
  v61 = a5;
  v7 = type metadata accessor for Logger();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = (__chkstk_darwin)();
  v10 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v51[-v12];
  __chkstk_darwin(v11);
  v56 = &v51[-v14];
  v15 = type metadata accessor for ValidationResult();
  v54 = *(v15 - 8);
  v55 = v15;
  __chkstk_darwin(v15);
  v53 = &v51[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_1001A6C04(&qword_1003B5810);
  __chkstk_darwin(v17 - 8);
  v19 = &v51[-v18];
  v20 = type metadata accessor for OnDiskCodeRequirement();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v51[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = a1 + OBJC_IVAR___GKCodeSigningManager_devSignedRequirement;
  v26 = v25;
  sub_1001A96E4(v24, v19, &qword_1003B5810);
  if (sub_1001A969C(v19, 1, v26) == 1)
  {
    sub_1001A974C(v19, &qword_1003B5810);
    static GKLog.daemon.getter();

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      staticCode = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_100005C3C(v58, a3, &staticCode);
      _os_log_impl(&_mh_execute_header, v27, v28, "devSignedRequirement not available for bundleID: %s -> isDevSigned = false", v29, 0xCu);
      sub_100005BE0(v30);
    }

    (*(v59 + 8))(v10, v60);
    *v61 = 0;
  }

  else
  {
    (*(v21 + 32))(v23, v19, v26);
    staticCode = 0;
    URL._bridgeToObjectiveC()(v31);
    v33 = v32;
    v34 = SecStaticCodeCreateWithPath(v32, 0, &staticCode);

    if (v34 || !staticCode)
    {
      v57 = v23;
      static GKLog.daemon.getter();
      v46 = a3;

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v62 = v50;
        *v49 = 67109378;
        *(v49 + 4) = v34;
        *(v49 + 8) = 2080;
        *(v49 + 10) = sub_100005C3C(v58, v46, &v62);
        _os_log_impl(&_mh_execute_header, v47, v48, "SecStaticCodeCreateWithPath failed with: %d for bundleID: %s -> isDevSigned = false", v49, 0x12u);
        sub_100005BE0(v50);
      }

      (*(v59 + 8))(v13, v60);
      (*(v21 + 8))(v57, v26);
      *v61 = 0;
    }

    else
    {
      v35 = staticCode;
      v36 = v53;
      SecStaticCodeCheckValidityWithOnDiskRequirement(code:flags:requirement:)();
      v52 = ValidationResult.requirementMatched.getter();
      v37 = v56;
      static GKLog.daemon.getter();

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v57 = v23;
        v41 = v40;
        v42 = v21;
        v43 = swift_slowAlloc();
        v62 = v43;
        *v41 = 136315394;
        *(v41 + 4) = sub_100005C3C(v58, a3, &v62);
        *(v41 + 12) = 1024;
        v44 = v52;
        *(v41 + 14) = v52 & 1;
        _os_log_impl(&_mh_execute_header, v38, v39, "SecStaticCodeCheckValidityWithOnDiskRequirement success for bundleID: %s -> isDevSigned = %{BOOL}d", v41, 0x12u);
        sub_100005BE0(v43);

        (*(v59 + 8))(v56, v60);
        (*(v54 + 8))(v36, v55);
        (*(v42 + 8))(v57, v26);
        v45 = v44;
      }

      else
      {

        (*(v59 + 8))(v37, v60);
        (*(v54 + 8))(v36, v55);
        (*(v21 + 8))(v23, v26);
        v45 = v52;
      }

      *v61 = v45 & 1;
    }
  }
}

uint64_t type metadata accessor for CodeSigningManager()
{
  result = qword_1003B57E8;
  if (!qword_1003B57E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001A957C()
{
  sub_1001A961C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001A961C()
{
  if (!qword_1003B57F8)
  {
    type metadata accessor for OnDiskCodeRequirement();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003B57F8);
    }
  }
}

uint64_t sub_1001A96E4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1001A6C04(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001A974C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1001A6C04(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001A97AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A6C04(&qword_1003B5810);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A981C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1001A9864()
{
  result = [objc_allocWithZone(type metadata accessor for AchievementBiome()) init];
  static AchievementBiome.shared = result;
  return result;
}

uint64_t *AchievementBiome.shared.unsafeMutableAddressor()
{
  if (qword_1003B54B0 != -1)
  {
    sub_1001A9DAC();
  }

  return &static AchievementBiome.shared;
}

id static AchievementBiome.shared.getter()
{
  if (qword_1003B54B0 != -1)
  {
    sub_1001A9DAC();
  }

  v1 = static AchievementBiome.shared;

  return v1;
}

id sub_1001A9948()
{
  ObjectType = swift_getObjectType();
  v1 = [BiomeLibrary() GameCenter];
  swift_unknownObjectRelease();
  v2 = [v1 AchievementEarned];
  swift_unknownObjectRelease();
  v3 = [v2 source];

  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = objc_allocWithZone(ObjectType);
  v6 = &v5[OBJC_IVAR___GKAchievementBiome_achievementHandler];
  *v6 = sub_1001A9D98;
  v6[1] = v4;
  v9.receiver = v5;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "init");
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

id AchievementBiome.__allocating_init(achievementHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___GKAchievementBiome_achievementHandler];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, "init");
}

id AchievementBiome.init(achievementHandler:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___GKAchievementBiome_achievementHandler];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "init");
}

void AchievementBiome.logEarned(achievement:)(void *a1)
{
  v2 = v1;
  v4 = [a1 rarityPercent];
  if (v4)
  {
    v5 = v4;
    [v5 doubleValue];
    v7 = [objc_allocWithZone(NSNumber) initWithDouble:v6 / 100.0];
  }

  else
  {
    v7 = 0;
  }

  v8 = [a1 identifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = objc_allocWithZone(BMGameCenterAchievementEarned);
  v13 = v7;
  v14 = sub_1001A9D04(v9, v11, v7);
  (*(v2 + OBJC_IVAR___GKAchievementBiome_achievementHandler))();
}

id sub_1001A9D04(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithAchievementID:v5 achievementRarityPercent:a3];

  return v6;
}

uint64_t sub_1001A9DAC()
{

  return swift_once();
}

uint64_t GKLRUCache.insertValue(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = type metadata accessor for DispatchQoS();
  sub_1000043C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000043B4();
  v12 = v11 - v10;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000043C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000043B4();
  v19 = v18 - v17;
  static DispatchWorkItemFlags.barrier.getter();
  sub_1001A7AE8(a1, v26);
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  sub_100005C2C(v26, (v20 + 40));
  aBlock[4] = sub_1001AAB20;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001AA95C;
  aBlock[3] = &unk_10036AF20;
  v21 = _Block_copy(aBlock);
  v22 = v3;

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v8 + 8))(v12, v24);
  (*(v15 + 8))(v19, v13);
}

uint64_t sub_1001AA0B8(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(v3 + 64) = 0;
  swift_weakInit();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_100005C2C(a3, (v3 + 32));
  return v3;
}

uint64_t sub_1001AA10C()
{

  sub_100005BE0(v0 + 32);
  swift_weakDestroy();
  v1 = *(v0 + 64);
  *(v0 + 64) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + 64);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t sub_1001AA19C()
{
  v0 = sub_1001AA10C();

  return _swift_deallocClassInstance(v0, 80, 7);
}

Swift::Void __swiftcall GKLRUCache.clear()()
{
  v1 = *&v0[OBJC_IVAR____TtC14GameDaemonCore10GKLRUCache_dispatchQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001AAB48;
  *(v3 + 24) = v2;
  v7[4] = sub_1001AAB50;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1001AA430;
  v7[3] = &unk_10036AF98;
  v4 = _Block_copy(v7);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_1001AA348(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14GameDaemonCore10GKLRUCache_mostRecentNode;
  for (i = *(a1 + OBJC_IVAR____TtC14GameDaemonCore10GKLRUCache_mostRecentNode); ; i = v4)
  {
    swift_retain_n();
    if (!i)
    {
      break;
    }

    v4 = *(i + 64);
  }

  *(a1 + v2) = 0;

  swift_beginAccess();
  sub_1001A6C04(&qword_1003B5978);
  Dictionary._Variant.removeAll(keepingCapacity:)(0);
  swift_endAccess();
}

uint64_t sub_1001AA4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = OBJC_IVAR____TtC14GameDaemonCore10GKLRUCache_cache;
  swift_beginAccess();
  v9 = sub_1001B2F9C(a2, a3, *(a1 + v8));
  if (v9)
  {
    v10 = v9;
    swift_endAccess();
    sub_1001AA6A4(v10);
    swift_beginAccess();
    sub_1001AADBC((v10 + 32), a4);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1001A7AE8(a4, v17);
    type metadata accessor for GKLRUDequeNode();
    swift_allocObject();
    v11 = sub_1001AA0B8(a2, a3, v17);
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v16 = *(a1 + v8);
    sub_1001B9888(v11, a2, a3);
    *(a1 + v8) = v16;
    swift_endAccess();
    sub_1001AA7EC(v11);
    if (*(a1 + OBJC_IVAR____TtC14GameDaemonCore10GKLRUCache_capacity) < *(*(a1 + v8) + 16))
    {
      v12 = *(a1 + OBJC_IVAR____TtC14GameDaemonCore10GKLRUCache_leastRecentNode);
      if (v12)
      {
        v13 = *(v12 + 16);
        v14 = *(v12 + 24);
        swift_beginAccess();

        sub_10020AF34(v13, v14);
        swift_endAccess();

        sub_1001AA88C();
      }
    }
  }
}

uint64_t sub_1001AA6A4(uint64_t result)
{
  v2 = OBJC_IVAR____TtC14GameDaemonCore10GKLRUCache_mostRecentNode;
  v3 = *(v1 + OBJC_IVAR____TtC14GameDaemonCore10GKLRUCache_mostRecentNode);
  if (v3)
  {
    v4 = v3 == result;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    return result;
  }

  v5 = result;
  Strong = swift_weakLoadStrong();
  v7 = Strong;
  v8 = *(v5 + 64);
  if (!Strong)
  {

    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *(Strong + 64) = v8;
  swift_retain_n();

  if (v8)
  {
LABEL_7:
    swift_weakAssign();
  }

LABEL_8:
  swift_weakAssign();
  *(v5 + 64) = *(v1 + v2);

  if (*(v1 + v2))
  {
    swift_weakAssign();
  }

  *(v1 + v2) = v5;

  v9 = *(v1 + OBJC_IVAR____TtC14GameDaemonCore10GKLRUCache_leastRecentNode);
  if (v9 && v9 == v5)
  {
    *(v1 + OBJC_IVAR____TtC14GameDaemonCore10GKLRUCache_leastRecentNode) = v7;
  }

  else
  {
  }
}

uint64_t sub_1001AA7EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14GameDaemonCore10GKLRUCache_mostRecentNode;
  *(a1 + 64) = *(v1 + OBJC_IVAR____TtC14GameDaemonCore10GKLRUCache_mostRecentNode);

  if (*(v1 + v3))
  {
    swift_weakAssign();
  }

  *(v1 + v3) = a1;

  if (!*(v1 + OBJC_IVAR____TtC14GameDaemonCore10GKLRUCache_leastRecentNode))
  {
    *(v1 + OBJC_IVAR____TtC14GameDaemonCore10GKLRUCache_leastRecentNode) = a1;
  }
}

void sub_1001AA88C()
{
  v1 = OBJC_IVAR____TtC14GameDaemonCore10GKLRUCache_leastRecentNode;
  v2 = *(v0 + OBJC_IVAR____TtC14GameDaemonCore10GKLRUCache_leastRecentNode);
  if (v2)
  {
    Strong = swift_weakLoadStrong();
    v4 = Strong;
    if (Strong)
    {
      *(Strong + 64) = 0;
    }

    else
    {
    }

    swift_weakAssign();
    v5 = OBJC_IVAR____TtC14GameDaemonCore10GKLRUCache_mostRecentNode;
    v6 = *(v0 + OBJC_IVAR____TtC14GameDaemonCore10GKLRUCache_mostRecentNode);

    if (v2 == v6)
    {
      *(v0 + v5) = 0;
    }

    *(v0 + v1) = v4;
  }
}

uint64_t sub_1001AA95C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

double sub_1001AAA40@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC14GameDaemonCore10GKLRUCache_cache;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (*(v9 + 16) && (v10 = sub_1001B247C(a2, a3), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();

    sub_1001AA6A4(v13);
    swift_beginAccess();
    sub_1001A7AE8(v12 + 32, a4);
  }

  else
  {
    swift_endAccess();
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1001AAB30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id NetworkRequestEligibiltyChecker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *sub_1001AADBC(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;

        *v3 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v5;
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        if ((v9 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v7 + 16))(result, a2, v5);
        }
      }

      else
      {
        (*(v6 + 32))(v13, result, v4);
        if ((v9 & 0x20000) != 0)
        {
          *v3 = *a2;
        }

        else
        {
          (*(v8 + 16))(v3, a2, v5);
        }

        return (*(v6 + 8))(v13, v4);
      }
    }
  }

  return result;
}

void GKInstallMetadata.capabilities.getter()
{
  sub_10000469C();
  v1 = type metadata accessor for GameDescription.Capabilities();
  sub_1000043C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000043F0();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  sub_1001AC8A4(&qword_1003B5980, &type metadata accessor for GameDescription.Capabilities);
  sub_1001A6C04(&qword_1003B5988);
  sub_1001AC968();
  sub_1001AC7E4(v9, &qword_1003B5988);
  sub_100005790();
  if ([v0 supportsGameController])
  {
    static GameDescription.Capabilities.controller.getter();
    sub_1001AB174();
    v10 = *(v3 + 8);
    v10(v7, v1);
    v11 = sub_1001ACA00();
    (v10)(v11);
  }

  sub_1000057D8();
}

void sub_1001AB174()
{
  sub_10000469C();
  v3 = v2;
  sub_1001A6C04(&qword_1003B5A20);
  sub_100005780();
  __chkstk_darwin(v4);
  sub_1000043F0();
  sub_1001ACA6C();
  __chkstk_darwin(v5);
  sub_1001ACA80();
  v6 = type metadata accessor for GameDescription.Capabilities();
  sub_1000043C4();
  __chkstk_darwin(v7);
  sub_1000043F0();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  v12 = sub_1001AC980();
  v0(v12);
  v13 = sub_1001AC8A4(&qword_1003B5980, &type metadata accessor for GameDescription.Capabilities);
  sub_100005FF4(v13);
  sub_1001AC8A4(&qword_1003B5A28, &type metadata accessor for GameDescription.Capabilities);
  v14 = sub_1001AC9A8();
  sub_1001AC9E8(v14);
  if (v15)
  {
    v18 = sub_1001ACA58();
    v19(v18);
    v20 = sub_1001ACA44();
    v0(v20);
    (v0)(v10, v3, v6);
    sub_1001ACA94();
  }

  else
  {
    v16 = sub_1001AC9D0();
    v17(v16);
  }

  sub_1001AC8EC(v1, v23, &qword_1003B5A20);
  v21 = sub_1000057BC();
  v22(v21);
  sub_1000057D8();
}

uint64_t sub_1001AB380(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v26 = sub_1001A6C04(&qword_1003B5A10);
  v4 = __chkstk_darwin(v26);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = type metadata accessor for GameDescription.CompatiblePlatforms();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(v9 + 16);
  v25 = v2;
  v15(v12, v2, v8);
  v23 = sub_1001AC8A4(&qword_1003B59B8, &type metadata accessor for GameDescription.CompatiblePlatforms);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v16 = v26;
  sub_1001AC8A4(&qword_1003B5A18, &type metadata accessor for GameDescription.CompatiblePlatforms);
  v24 = a2;
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v16 + 48);
  *v7 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v9 + 32))(&v7[v18], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v19 = v24;
    v15(&v7[v18], v24, v8);
    v15(v12, v19, v8);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v20 = v27;
  sub_1001AC8EC(v7, v27, &qword_1003B5A10);
  v21 = *v20;
  (*(v9 + 32))(v28, &v20[*(v16 + 48)], v8);
  return v21;
}

uint64_t sub_1001AB684(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v26 = sub_1001A6C04(&qword_1003B5A00);
  v4 = __chkstk_darwin(v26);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = type metadata accessor for MetadataEligibility();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(v9 + 16);
  v25 = v2;
  v15(v12, v2, v8);
  v23 = sub_1001AC8A4(&qword_1003B59D0, &type metadata accessor for MetadataEligibility);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v16 = v26;
  sub_1001AC8A4(&qword_1003B5A08, &type metadata accessor for MetadataEligibility);
  v24 = a2;
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v16 + 48);
  *v7 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v9 + 32))(&v7[v18], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v19 = v24;
    v15(&v7[v18], v24, v8);
    v15(v12, v19, v8);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v20 = v27;
  sub_1001AC8EC(v7, v27, &qword_1003B5A00);
  v21 = *v20;
  (*(v9 + 32))(v28, &v20[*(v16 + 48)], v8);
  return v21;
}

void sub_1001AB988()
{
  sub_10000469C();
  v3 = v2;
  sub_1001A6C04(&qword_1003B59F0);
  sub_100005780();
  __chkstk_darwin(v4);
  sub_1000043F0();
  sub_1001ACA6C();
  __chkstk_darwin(v5);
  sub_1001ACA80();
  v6 = type metadata accessor for Profile.Subscriptions();
  sub_1000043C4();
  __chkstk_darwin(v7);
  sub_1000043F0();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  v12 = sub_1001AC980();
  v0(v12);
  v13 = sub_1001AC8A4(&qword_1003B5998, &type metadata accessor for Profile.Subscriptions);
  sub_100005FF4(v13);
  sub_1001AC8A4(&qword_1003B59F8, &type metadata accessor for Profile.Subscriptions);
  v14 = sub_1001AC9A8();
  sub_1001AC9E8(v14);
  if (v15)
  {
    v18 = sub_1001ACA58();
    v19(v18);
    v20 = sub_1001ACA44();
    v0(v20);
    (v0)(v10, v3, v6);
    sub_1001ACA94();
  }

  else
  {
    v16 = sub_1001AC9D0();
    v17(v16);
  }

  sub_1001AC8EC(v1, v23, &qword_1003B59F0);
  v21 = sub_1000057BC();
  v22(v21);
  sub_1000057D8();
}

uint64_t GKInstallMetadata.subscriptions.getter()
{
  if ([v0 isArcade])
  {
    sub_1001A6C04(&qword_1003B59B0);
    type metadata accessor for Profile.Subscriptions();
    *(swift_allocObject() + 16) = xmmword_1002C33A0;
    static Profile.Subscriptions.arcade.getter();
  }

  else
  {
    type metadata accessor for Profile.Subscriptions();
  }

  sub_1001AC8A4(&qword_1003B5998, &type metadata accessor for Profile.Subscriptions);
  sub_1001A6C04(&qword_1003B59A0);
  sub_1001AC968();
  sub_1001AC7E4(v1, &qword_1003B59A0);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

void GKInstallMetadata.compatiblePlatforms.getter()
{
  sub_10000469C();
  v0 = type metadata accessor for GameDescription.CompatiblePlatforms();
  sub_1000043C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000043F0();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v9 = v13 - v8;
  v13[1] = &_swiftEmptyArrayStorage;
  sub_1001AC8A4(&qword_1003B59B8, &type metadata accessor for GameDescription.CompatiblePlatforms);
  sub_1001A6C04(&qword_1003B59C0);
  sub_1001AC968();
  sub_1001AC7E4(v10, &qword_1003B59C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static GameDescription.CompatiblePlatforms.iOS.getter();
  sub_1001AB380(v9, v6);
  v11 = *(v2 + 8);
  v11(v6, v0);
  v12 = sub_1001ACA00();
  (v11)(v12);
  sub_1000057D8();
}

void GKInstallMetadata.servicesMetadataEligibility.getter()
{
  sub_10000469C();
  v1 = type metadata accessor for MetadataEligibility();
  sub_1000043C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000043F0();
  __chkstk_darwin(v5);
  v7 = v15 - v6;
  v15[1] = &_swiftEmptyArrayStorage;
  sub_1001AC8A4(&qword_1003B59D0, &type metadata accessor for MetadataEligibility);
  sub_1001A6C04(&qword_1003B59D8);
  sub_1001AC968();
  sub_1001AC7E4(v8, &qword_1003B59D8);
  sub_100005790();
  if ([v0 metadataEligibility])
  {
    static MetadataEligibility.appProduction.getter();
    sub_1001ACA28();
    v9 = *(v3 + 8);
    v10 = sub_1001ACA00();
    v9(v10);
    (v9)(v7, v1);
  }

  if (([v0 metadataEligibility] & 4) != 0)
  {
    static MetadataEligibility.appSandbox.getter();
    sub_1001ACA28();
    v11 = *(v3 + 8);
    v12 = sub_1001ACA00();
    v11(v12);
    (v11)(v7, v1);
  }

  if (([v0 metadataEligibility] & 8) != 0)
  {
    static MetadataEligibility.gameCenter.getter();
    sub_1001ACA28();
    v13 = *(v3 + 8);
    v14 = sub_1001ACA00();
    v13(v14);
    (v13)(v7, v1);
  }

  sub_1000057D8();
}

uint64_t GKInstallMetadata.servicesApplicationType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 applicationType];
  type metadata accessor for ApplicationType();
  sub_100005780();
  v5 = *(v4 + 104);
  if (v3 > 2)
  {
    v6 = &enum case for ApplicationType.user(_:);
  }

  else
  {
    v6 = *(&off_10036AFC0 + v3);
  }

  v7 = *v6;

  return v5(a1, v7);
}

uint64_t sub_1001AC1E0(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1001AC2A0@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 estimatedInstallDate];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();

  return sub_1001A9674(a1, v5, 1, v6);
}

uint64_t sub_1001AC460()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1001ACA0C();
  }

  return v5 & 1;
}

uint64_t sub_1001AC4D8(unsigned __int8 a1, char a2)
{
  v2 = 1684107369;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x656E6F687069;
    }

    else
    {
      v4 = 6513005;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1684107369;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x656E6F687069;
    }

    else
    {
      v2 = 6513005;
    }

    if (a2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1001ACA0C();
  }

  return v8 & 1;
}

uint64_t sub_1001AC5AC(unsigned __int8 a1, char a2)
{
  v2 = 7565161;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7565161;
  switch(v4)
  {
    case 1:
      v5 = 7893871;
      break;
    case 2:
      v5 = 0x6F7674656C707061;
      v3 = 0xE900000000000073;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1936683640;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x6863746177;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v2 = 7893871;
      break;
    case 2:
      v2 = 0x6F7674656C707061;
      v6 = 0xE900000000000073;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1936683640;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v2 = 0x6863746177;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1001ACA0C();
  }

  return v8 & 1;
}

uint64_t sub_1001AC6F0()
{
  sub_1001A6C04(&qword_1003B6260);
  sub_1001AC7E4(&qword_1003B59E8, &qword_1003B6260);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v1 & 1;
}

uint64_t sub_1001AC7E4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001A6C4C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001AC844(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_1001AC8A4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001AC8EC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1001A6C04(a3);
  sub_100005780();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1001AC980()
{
  result = v1;
  *(v2 - 112) = v0;
  return result;
}

uint64_t sub_1001AC9A8()
{
  *(v1 - 120) = v0;

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_1001ACA0C()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1001ACA28()
{

  return sub_1001AB684(v1, v0);
}

uint64_t sub_1001ACA94()
{

  return dispatch thunk of SetAlgebra.formUnion(_:)();
}

void sub_1001ACAB4(void *a1)
{
  v61 = a1;
  v2 = type metadata accessor for Date();
  sub_1000043C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000046B4();
  v60 = v6;
  v8 = __chkstk_darwin(v7);
  v10 = &v58 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v58 - v12;
  __chkstk_darwin(v11);
  v15 = &v58 - v14;
  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v17 = type metadata accessor for ScoreSubmissionBulletin();
  v64.receiver = v1;
  v64.super_class = v17;
  v18 = objc_msgSendSuper2(&v64, "initWithPushNotification:", isa);

  if (!v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v18;
  Date.init()();
  v20 = Date._bridgeToObjectiveC()().super.isa;
  v21 = *(v4 + 8);
  v21(v15, v2);
  [v19 setDate:v20];

  v22 = [v19 date];
  if (!v22)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v23 = v22;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.advanced(by:)();
  v21(v10, v2);
  v24 = Date._bridgeToObjectiveC()().super.isa;
  v21(v13, v2);
  [v19 setExpirationDate:v24];

  sub_100286CE8(0x75532065726F6353, 0xEF64657474696D62, v19);
  v25 = v61;
  v26 = sub_1001AD9DC(v61);
  if (v27)
  {
    v28 = v27;
    v59 = v26;
  }

  else
  {
    v62 = [v25 value];
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v29;
  }

  v30 = [v25 player];
  if (!v30)
  {
    v31 = [objc_opt_self() localPlayer];
    v30 = [v31 internal];
  }

  v32 = sub_100231A58(v30);
  v34 = v33;
  if (qword_1003B54B8 != -1)
  {
    sub_1001ADAA8();
  }

  v35 = qword_1003C0A80;
  v36 = [v19 date];
  if (!v36)
  {
    goto LABEL_18;
  }

  v37 = v36;
  v38 = v34 == 0;
  if (!v34)
  {
    v34 = 0xE90000000000003ELL;
  }

  v39 = 0x6E776F6E6B6E753CLL;
  if (!v38)
  {
    v39 = v32;
  }

  v58 = v39;
  v40 = v60;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = Date._bridgeToObjectiveC()().super.isa;
  v21(v40, v2);
  v42 = [v35 stringFromDate:v41];

  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v62 = 0x206465726F6353;
  v63 = 0xE700000000000000;
  v46._countAndFlagsBits = v59;
  v46._object = v28;
  String.append(_:)(v46);

  v47._countAndFlagsBits = 544108320;
  v47._object = 0xE400000000000000;
  String.append(_:)(v47);
  v48 = v61;
  v49 = [v61 leaderboardIdentifier];
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  v53._countAndFlagsBits = v50;
  v53._object = v52;
  String.append(_:)(v53);

  v54._countAndFlagsBits = 544825888;
  v54._object = 0xE400000000000000;
  String.append(_:)(v54);
  v55._countAndFlagsBits = v58;
  v55._object = v34;
  String.append(_:)(v55);

  v56._countAndFlagsBits = 544497952;
  v56._object = 0xE400000000000000;
  String.append(_:)(v56);
  v57._countAndFlagsBits = v43;
  v57._object = v45;
  String.append(_:)(v57);

  sub_100286CF4(v62, v63, v19);
  [v19 setHasSound:0];
}

void sub_1001AD00C()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  sub_1001AD978(0x73733A6D6D3A4848, 0xEC0000005353532ELL, v0);
  qword_1003C0A80 = v0;
}

id sub_1001AD070()
{
  if (qword_1003B54B8 != -1)
  {
    sub_1001ADAA8();
  }

  v1 = qword_1003C0A80;

  return v1;
}

uint64_t sub_1001AD150(uint64_t a1, uint64_t a2)
{
  v77 = a1;
  v3 = sub_1001A6C04(&qword_1003B8220);
  __chkstk_darwin(v3 - 8);
  v78 = &v69 - v4;
  v76 = type metadata accessor for Date();
  sub_1000043C4();
  v80 = v5;
  __chkstk_darwin(v6);
  sub_1000046B4();
  v71 = v7;
  __chkstk_darwin(v8);
  v75 = &v69 - v9;
  sub_1001A7B44(0, &qword_1003B5A58);
  v10 = Dictionary.init(dictionaryLiteral:)();
  v11 = sub_1001E6E2C(a2);
  v12 = 0;
  v82 = a2;
  v83 = a2 & 0xC000000000000001;
  v81 = a2 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v11 == v12)
    {
      v36 = sub_1001E6E2C(v77);
      if (v36)
      {
        if (v36 < 1)
        {
          goto LABEL_43;
        }

        v37 = 0;
        v70 = (v80 + 32);
        v72 = (v80 + 8);
        v73 = v77 & 0xC000000000000001;
        v38 = &selRef_isSharePlayInvite;
        v74 = v36;
        do
        {
          if (v73)
          {
            v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v39 = *(v77 + 8 * v37 + 32);
          }

          v40 = v39;
          v41 = [objc_allocWithZone(type metadata accessor for OverlayServiceUtils()) init];
          v42 = [v40 v38[50]];
          v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;

          v46 = sub_1001AD9DC(v40);
          v82 = v45;
          v83 = v41;
          v81 = v43;
          if (v47)
          {
            v80 = v46;
          }

          else
          {
            v84 = [v40 value];
            v80 = dispatch thunk of CustomStringConvertible.description.getter();
          }

          v48 = [v40 v38[50]];
          v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v50;

          if (v10[2] && (v52 = sub_1001B247C(v49, v51), (v53 & 1) != 0))
          {
            v54 = *(v10[7] + 8 * v52);

            v55 = [v54 title];
          }

          else
          {

            v55 = [v40 v38[50]];
          }

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v57 = v56;

          v58 = [v40 date];
          if (v58)
          {
            v59 = v58;
            v60 = v71;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v79 = v57;
            v61 = *v70;
            v62 = v78;
            v63 = v60;
            v64 = v76;
            (*v70)(v78, v63, v76);
            sub_1001A9674(v62, 0, 1, v64);
            v65 = v75;
            v61(v75, v62, v64);
          }

          else
          {
            v66 = v78;
            v64 = v76;
            sub_1001A9674(v78, 1, 1, v76);
            v65 = v75;
            static Date.now.getter();
            if (sub_1001A969C(v66, 1, v64) != 1)
            {
              sub_1001ADA40(v78);
            }
          }

          ++v37;
          v67 = v83;
          OverlayServiceUtils.showLeaderboardScoreBanner(id:score:name:date:)();

          (*v72)(v65, v64);
          v38 = &selRef_isSharePlayInvite;
        }

        while (v74 != v37);
      }
    }

    if (v83)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *(v81 + 16))
      {
        goto LABEL_40;
      }

      v13 = *(v82 + 8 * v12 + 32);
    }

    v14 = v13;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    v15 = [v13 baseLeaderboardID];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84 = v10;
    v21 = sub_1001B247C(v16, v18);
    v23 = v10[2];
    v24 = (v22 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_41;
    }

    v26 = v21;
    v27 = v22;
    sub_1001A6C04(&qword_1003B5A60);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v25))
    {
      v28 = sub_1001B247C(v16, v18);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_44;
      }

      v26 = v28;
    }

    if (v27)
    {

      v10 = v84;
      v30 = v84[7];
      v31 = *(v30 + 8 * v26);
      *(v30 + 8 * v26) = v19;
    }

    else
    {
      v10 = v84;
      v84[(v26 >> 6) + 8] |= 1 << v26;
      v32 = (v10[6] + 16 * v26);
      *v32 = v16;
      v32[1] = v18;
      *(v10[7] + 8 * v26) = v19;

      v33 = v10[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_42;
      }

      v10[2] = v35;
    }

    ++v12;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_1001AD91C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScoreSubmissionBulletin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001AD978(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setDateFormat:v4];
}

uint64_t sub_1001AD9DC(void *a1)
{
  v1 = [a1 formattedValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1001ADA40(uint64_t a1)
{
  v2 = sub_1001A6C04(&qword_1003B8220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001ADAA8()
{

  return swift_once();
}

id sub_1001ADAC8()
{
  result = [objc_allocWithZone(type metadata accessor for LibraryDependencies()) init];
  qword_1003C0A88 = result;
  return result;
}

id sub_1001ADAF8()
{
  if (qword_1003B54C0 != -1)
  {
    sub_1001AFA0C();
  }

  v1 = qword_1003C0A88;

  return v1;
}

void sub_1001ADB6C(uint64_t a1)
{
  if (qword_1003B54C0 != -1)
  {
    sub_1001AFA0C();
  }

  v2 = qword_1003C0A88;
  qword_1003C0A88 = a1;
}

uint64_t sub_1001ADC88()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1001ADD04()
{
  v1 = *(v0 + OBJC_IVAR___GKLibraryDependencies_gamePolicyLibrary);
  v2 = v1;
  return v1;
}

char *sub_1001ADD34()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1001A6C04(&qword_1003B60F0);
  __chkstk_darwin(v3 - 8);
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR___GKLibraryDependencies_gamePolicyLibrary;
  type metadata accessor for GamePolicyLibrary();
  *&v0[v4] = sub_100278E84();
  *&v0[OBJC_IVAR___GKLibraryDependencies_notificationsTask] = 0;
  v5 = [objc_opt_self() defaultCenter];
  v6 = [objc_opt_self() defaultCenter];
  type metadata accessor for GameRestrictionsPolicyProvider();
  v7 = v5;
  v8 = v6;
  *&v1[OBJC_IVAR___GKLibraryDependencies_gameRestrictionsProvider] = GameRestrictionsPolicyProvider.__allocating_init(notificationCenter:distributedNotificationCenter:)();
  v30.receiver = v1;
  v30.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v30, "init");
  v10 = type metadata accessor for TaskPriority();
  v11 = sub_1001AFA2C();
  sub_1001A9674(v11, v12, v13, v10);
  sub_1001AFA5C();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v7;
  v15[5] = v14;
  v16 = v7;
  v17 = v9;
  sub_1001AFA3C();
  sub_1001D1C0C();
  *&v17[OBJC_IVAR___GKLibraryDependencies_notificationsTask] = v18;

  v19 = sub_1001AFA2C();
  sub_1001A9674(v19, v20, v21, v10);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v17;
  sub_1001AFA3C();
  sub_1001D1C0C();

  v23 = *&v17[OBJC_IVAR___GKLibraryDependencies_gamePolicyLibrary];
  if (v23)
  {
    sub_1001AFA5C();
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = *&v23[OBJC_IVAR___GKGamePolicyLibrary_library + 24];
    v26 = *&v23[OBJC_IVAR___GKGamePolicyLibrary_library + 32];
    sub_100006454(&v23[OBJC_IVAR___GKGamePolicyLibrary_library], v25);
    v27 = *(v26 + 24);
    v28 = v23;

    v27(sub_1001AF408, v24, v25, v26);
  }

  return v17;
}

uint64_t sub_1001AE02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_1001AE050, 0, 0);
}

uint64_t sub_1001AE050()
{
  sub_100005528();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1001AE138;
  v3 = *(v0 + 16);

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v3, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_1002C3568, v1, &type metadata for () + 8);
}

uint64_t sub_1001AE138()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  sub_1000046F8();

  return v3();
}

uint64_t sub_1001AE234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  sub_1001A6C04(&qword_1003B60F0);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1001AE2D4, 0, 0);
}

uint64_t sub_1001AE2D4()
{
  sub_1001AFA50();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  type metadata accessor for TaskPriority();
  v4 = sub_1001AFA2C();
  sub_1001A9674(v4, v5, v6, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v3;
  v8[5] = v2;
  v9 = v3;

  sub_1001AE890(0xD000000000000018, 0x8000000100309B70, v1, &unk_1002C3578, v8);
  sub_1001A974C(v1, &qword_1003B60F0);

  sub_1000046F8();

  return v10();
}

uint64_t sub_1001AE3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_1001A6C04(&qword_1003B5AB8);
  v5[8] = swift_task_alloc();
  v6 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_1001AE4CC, 0, 0);
}

uint64_t sub_1001AE4CC()
{
  sub_1000057FC();
  NSNotificationCenter.notifications(named:object:)();
  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  sub_1001AF978();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v2 = sub_1000046C8(v1);

  return dispatch thunk of AsyncIteratorProtocol.next()(v2);
}

uint64_t sub_1001AE58C()
{
  sub_100005528();
  sub_1000057F0();
  v2 = *v1;
  sub_100004410();
  *v3 = v2;
  *(v4 + 104) = v0;

  if (v0)
  {
    v5 = sub_1001AE808;
  }

  else
  {
    v5 = sub_1001AE690;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001AE6AC()
{
  sub_100005528();
  v1 = v0[8];
  v2 = type metadata accessor for Notification();
  if (sub_1001A969C(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    sub_1000046F8();

    return v3();
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = swift_unknownObjectWeakLoadStrong();

      if (v7)
      {
        [v7 libraryDependenciesDidChangeFor:23];
        swift_unknownObjectRelease();
      }
    }

    sub_1001A974C(v0[8], &qword_1003B5AB8);
    sub_1001AF978();
    v8 = swift_task_alloc();
    v0[12] = v8;
    *v8 = v0;
    v9 = sub_1000046C8();

    return dispatch thunk of AsyncIteratorProtocol.next()(v9);
  }
}

uint64_t sub_1001AE808()
{
  sub_100005528();
  *(v0 + 40) = *(v0 + 104);
  sub_1001A6C04(&unk_1003B6170);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1001AE890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_1001A6C04(&qword_1003B60F0);
  __chkstk_darwin(v11 - 8);
  v13 = v28 - v12;
  sub_1001AF7C0(a3, v28 - v12);
  v14 = type metadata accessor for TaskPriority();
  v15 = sub_1001A969C(v13, 1, v14);

  if (v15 == 1)
  {
    sub_1001A974C(v13, &qword_1003B60F0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = *v6;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v19 | v17)
      {
        v30[0] = 0;
        v30[1] = 0;
        v23 = v30;
        v30[2] = v17;
        v30[3] = v19;
      }

      else
      {
        v23 = 0;
      }

      v29[0] = 1;
      v29[1] = v23;
      v29[2] = v21;
      v28[1] = 7;
      v28[2] = v29;
      v28[3] = v20;
      swift_task_create();
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = *v6;
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  v26 = (v19 | v17);
  if (v19 | v17)
  {
    v31[0] = 0;
    v31[1] = 0;
    v26 = v31;
    v31[2] = v17;
    v31[3] = v19;
  }

  v30[4] = 1;
  v30[5] = v26;
  v30[6] = v24;
  swift_task_create();
}

uint64_t sub_1001AEB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1001AEC14, 0, 0);
}

uint64_t sub_1001AEC14()
{
  sub_1000057FC();
  v0[6] = *(v0[2] + OBJC_IVAR___GKLibraryDependencies_gameRestrictionsProvider);
  sub_1001AFA5C();
  v1 = swift_allocObject();
  v0[7] = v1;
  swift_unknownObjectWeakInit();

  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1001AED10;

  return GameRestrictionsPolicyProvider.registerRestrictionsDidChangeHandler(_:)(sub_1001AF428, v1);
}

uint64_t sub_1001AED10()
{
  sub_100005528();
  sub_1000057F0();
  v3 = v2;
  v4 = *v1;
  sub_100004410();
  *v5 = v4;
  *(v3 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001AEE4C, 0, 0);
  }

  else
  {

    sub_1000046F8();

    return v6();
  }
}

uint64_t sub_1001AEE4C()
{
  sub_1001AFA50();

  static GKLog.library.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to register restrictions did change handler: %@", v3, 0xCu);
    sub_1001A974C(v4, &unk_1003B6180);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  sub_1000046F8();

  return v6();
}

void sub_1001AEFE4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      [v5 libraryDependenciesDidChangeFor:a2];
      swift_unknownObjectRelease();
    }
  }
}

id LibraryDependencies.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR___GKLibraryDependencies_notificationsTask])
  {

    Task.cancel()();
  }

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001AF1DC()
{
  sub_1001AFA50();
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = sub_100004400(v4);
  *v5 = v6;
  v5[1] = sub_1001AF9F8;
  v7 = sub_1001AF9FC();

  return sub_1001AE02C(v7, v8, v1, v3, v2);
}

uint64_t sub_1001AF288()
{
  sub_1000057FC();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_100004400(v3);
  *v4 = v5;
  v4[1] = sub_1001AF328;
  v6 = sub_1001AF9FC();

  return sub_1001AEB54(v6, v7, v1, v2);
}

uint64_t sub_1001AF328()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  sub_1000046F8();

  return v3();
}

uint64_t sub_1001AF448(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1001AF540;

  return v6(a1);
}

uint64_t sub_1001AF540()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  sub_1000046F8();

  return v3();
}

uint64_t sub_1001AF624()
{
  sub_1000057FC();
  v2 = v1;
  v4 = v3;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = sub_100004400(v7);
  *v8 = v9;
  v8[1] = sub_1001AF9F8;

  return sub_1001AE234(v4, v2, v6, v5);
}

uint64_t sub_1001AF6CC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001AF714()
{
  sub_1001AFA50();
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = sub_100004400(v4);
  *v5 = v6;
  v5[1] = sub_1001AF9F8;
  v7 = sub_1001AF9FC();

  return sub_1001AE3D4(v7, v8, v1, v3, v2);
}

uint64_t sub_1001AF7C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A6C04(&qword_1003B60F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AF830()
{
  sub_1000057FC();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  v1[1] = sub_1001AF9F8;
  v3 = sub_1001AF9FC();

  return v4(v3);
}

uint64_t sub_1001AF8D4()
{
  sub_1000057FC();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  v1[1] = sub_1001AF328;
  v3 = sub_1001AF9FC();

  return v4(v3);
}

unint64_t sub_1001AF978()
{
  result = qword_1003B5AC0;
  if (!qword_1003B5AC0)
  {
    type metadata accessor for NSNotificationCenter.Notifications.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B5AC0);
  }

  return result;
}

uint64_t sub_1001AFA0C()
{

  return swift_once();
}

double sub_1001AFA68@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v3 = sub_1001B24EC(), (v4 & 1) != 0))
  {
    v5 = sub_1001B3030(v3);

    sub_1001A7AE8(v5, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1001AFAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1001B247C(a1, a2);
  if (v3)
  {
    return sub_1001B3088();
  }

  else
  {
    return 0;
  }
}

double sub_1001AFB10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v5 = sub_1001B247C(a1, a2), (v6 & 1) != 0))
  {
    v7 = sub_1001B3030(v5);

    sub_1001A7AE8(v7, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1001AFB70(Swift::UInt a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1001B252C(a1);
  if (v2)
  {
    return sub_1001B3088();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001AFBB8(Swift::UInt a1, char a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1001B2590(a1, a2 & 1);
  if (v3)
  {
    return sub_1001B3088();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001AFC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1001B247C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_1001AFC5C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1001B2608();
  if (v2)
  {
    return sub_1001B3088();
  }

  else
  {
    return 0;
  }
}

void *sub_1001AFCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1001B247C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

id sub_1001AFD3C()
{
  v1 = [v0 error];

  return v1;
}

uint64_t BMSQLDatabase.gkExecute(query:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = BMSQLDatabase.execute(query:)();
  result = sub_1001A7B44(0, &qword_1003B5AC8);
  a1[3] = result;
  a1[4] = &protocol witness table for BMSQLResultSet;
  *a1 = v2;
  return result;
}

id sub_1001AFE34()
{
  type metadata accessor for Library.Databases.Games.RecentlyPlayed();
  sub_1001B2EF4(&qword_1003B5BA0, &type metadata accessor for Library.Databases.Games.RecentlyPlayed);
  v0 = static DatabaseResource.sqlDatabase(useCase:)();
  v1 = v0;
  if (v0)
  {
    *(&v8 + 1) = sub_1001A7B44(0, &qword_1003B5BA8);
    v9 = &protocol witness table for BMSQLDatabase;
    *&v7 = v1;
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
  }

  v2 = type metadata accessor for GameLibraryBiome();
  v3 = objc_allocWithZone(v2);
  sub_1001B00A4(&v7, v3 + OBJC_IVAR___GKGameLibraryBiome_database);
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = objc_msgSendSuper2(&v6, "init");
  sub_1001B2DDC(&v7, &qword_1003B5AD8);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

id GameLibraryBiome.__allocating_init(database:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1001B00A4(a1, v3 + OBJC_IVAR___GKGameLibraryBiome_database);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, "init");
  sub_1001B2DDC(a1, &qword_1003B5AD8);
  return v4;
}

id GameLibraryBiome.init(database:)(uint64_t a1)
{
  sub_1001B00A4(a1, v1 + OBJC_IVAR___GKGameLibraryBiome_database);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GameLibraryBiome();
  v3 = objc_msgSendSuper2(&v5, "init");
  sub_1001B2DDC(a1, &qword_1003B5AD8);
  return v3;
}

uint64_t sub_1001B00A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A6C04(&qword_1003B5AD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::OpaquePointer_optional __swiftcall GameLibraryBiome.appInFocusData(for:)(Swift::OpaquePointer a1)
{
  v3 = type metadata accessor for Logger();
  sub_1000043C4();
  v5 = v4;
  v7 = __chkstk_darwin(v6);
  v9 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v108 - v10;
  v113 = type metadata accessor for Date();
  sub_1000043C4();
  v114 = v12;
  __chkstk_darwin(v13);
  v111 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1001A6C04(&qword_1003B5AE0);
  sub_1000043C4();
  v16 = v15;
  v18 = __chkstk_darwin(v17);
  v115 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v108 - v20;
  v22 = sub_1001A6C04(&qword_1003B5AE8);
  __chkstk_darwin(v22 - 8);
  v122 = &v108 - v23;
  sub_1001B00A4(v1 + OBJC_IVAR___GKGameLibraryBiome_database, &v129);
  if (!v130)
  {
    sub_1001B2DDC(&v129, &qword_1003B5AD8);
    static GKLog.daemon.getter();
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Could not find database for querying timestamps", v58, 2u);
    }

    (*(v5 + 8))(v9, v3);
    v60 = Dictionary.init(dictionaryLiteral:)();
LABEL_56:
    v107 = v60;
    goto LABEL_62;
  }

  v108 = v11;
  v109 = v5;
  v110 = v3;
  sub_10005671C(&v129, &v131);
  v24 = 0;
  v25 = *(a1._rawValue + 2);
  v120 = "Purchase History Updates";
  v119 = v16 + 8;
  v26 = a1._rawValue + 40;
  v116 = &_swiftEmptyArrayStorage;
  v123 = v21;
  v121 = v25;
  v112 = a1._rawValue + 40;
  v27 = v122;
LABEL_3:
  for (i = &v26[16 * v24]; ; i += 16)
  {
    v29 = v124;
    if (v25 == v24)
    {
      v45 = v116;
      v46 = v116[2];
      if (v46)
      {
        v127[0] = &_swiftEmptyArrayStorage;
        sub_1001B16C8(0, v46, 0);
        v47 = v127[0];
        v48 = (v45 + 5);
        do
        {
          v49 = *(v48 - 1);
          v50 = *v48;
          *&v129 = 34;
          *(&v129 + 1) = 0xE100000000000000;

          v51._countAndFlagsBits = v49;
          v51._object = v50;
          String.append(_:)(v51);
          v52._countAndFlagsBits = 34;
          v52._object = 0xE100000000000000;
          String.append(_:)(v52);

          v53 = v129;
          v127[0] = v47;
          v55 = v47[2];
          v54 = v47[3];
          if (v55 >= v54 >> 1)
          {
            sub_1001B16C8(v54 > 1, v55 + 1, 1);
            v47 = v127[0];
          }

          v47[2] = v55 + 1;
          *&v47[2 * v55 + 4] = v53;
          v48 += 2;
          --v46;
        }

        while (v46);
      }

      else
      {

        v47 = &_swiftEmptyArrayStorage;
      }

      *&v129 = v47;
      sub_1001A6C04(&unk_1003B6BD0);
      sub_1001B2D98(&qword_1003B5B00, &unk_1003B6BD0);
      v61 = BidirectionalCollection<>.joined(separator:)();
      v63 = v62;

      v64 = HIBYTE(v63) & 0xF;
      if ((v63 & 0x2000000000000000) == 0)
      {
        v64 = v61 & 0xFFFFFFFFFFFFLL;
      }

      if (!v64)
      {

        sub_100005BE0(&v131);
        v60 = 0;
        goto LABEL_56;
      }

      *&v129 = 0;
      *(&v129 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      v65._countAndFlagsBits = 0xD000000000000037;
      v65._object = 0x8000000100309BB0;
      String.append(_:)(v65);
      v66._countAndFlagsBits = v61;
      v66._object = v63;
      String.append(_:)(v66);

      v67._countAndFlagsBits = 41;
      v67._object = 0xE100000000000000;
      String.append(_:)(v67);
      v68 = v129;
      v69 = v132;
      v70 = v133;
      sub_100006454(&v131, v132);
      (*(v70 + 8))(&v129, v68, *(&v68 + 1), v69, v70);

      v124 = 0x8000000100309BF0;
      v123 = (v114 + 32);
      v122 = (v114 + 40);
      v60 = &_swiftEmptyDictionarySingleton;
      while (1)
      {
        while (1)
        {
          do
          {
            sub_100006454(&v129, v130);
            v71 = sub_1001B2FD0();
            v73 = v72(v71);
            sub_100006454(&v129, v130);
            if ((v73 & 1) == 0)
            {
              v99 = sub_1001B2FD0();
              if (v100(v99))
              {
                v101 = v108;
                static GKLog.daemon.getter();
                swift_errorRetain();
                v102 = Logger.logObject.getter();
                v103 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v102, v103))
                {
                  v104 = swift_slowAlloc();
                  v105 = swift_slowAlloc();
                  *v104 = 138412290;
                  swift_errorRetain();
                  v106 = _swift_stdlib_bridgeErrorToNSError();
                  *(v104 + 4) = v106;
                  *v105 = v106;
                  _os_log_impl(&_mh_execute_header, v102, v103, "Encountered error while querying for event timestamps: %@", v104, 0xCu);
                  sub_1001B2DDC(v105, &unk_1003B6180);
                }

                else
                {
                }

                (*(v109 + 8))(v101, v110);
              }

              sub_100005BE0(&v129);
              sub_100005BE0(&v131);
              goto LABEL_56;
            }

            v74 = sub_1001B2FD0();
            v76 = v75(v74);
          }

          while (!v76);
          v77 = v76;
          v125 = 0x4449656C646E7562;
          v126 = 0xE800000000000000;
          sub_1001B3050();
          if (*(v77 + 16))
          {
            v78 = sub_1001B24EC();
            if (v79)
            {
              break;
            }
          }

LABEL_37:

          sub_1001B2E34(v127);
        }

        v80 = sub_1001B3030(v78);
        sub_1001A7AE8(v80, v128);
        sub_1001B2E34(v127);
        if (swift_dynamicCast())
        {
          v81 = v125;
          v82 = v126;
          v125 = 0xD000000000000011;
          v126 = v124;
          sub_1001B3050();
          if (!*(v77 + 16) || (v83 = sub_1001B24EC(), (v84 & 1) == 0))
          {

            goto LABEL_37;
          }

          v85 = sub_1001B3030(v83);
          sub_1001A7AE8(v85, v128);
          sub_1001B2E34(v127);

          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_36;
          }

          Date.init(timeIntervalSince1970:)();
          LODWORD(v120) = swift_isUniquelyReferenced_nonNull_native();
          v127[0] = v60;
          v119 = sub_1001B247C(v81, v82);
          v86 = *(v60 + 2);
          LODWORD(v121) = v87;
          v88 = (v87 & 1) == 0;
          v89 = v86 + v88;
          if (__OFADD__(v86, v88))
          {
            goto LABEL_59;
          }

          sub_1001A6C04(&qword_1003B5B08);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v120, v89))
          {
            v90 = sub_1001B247C(v81, v82);
            v92 = v121;
            if ((v121 & 1) != (v91 & 1))
            {
              goto LABEL_61;
            }
          }

          else
          {
            v90 = v119;
            v92 = v121;
          }

          v60 = v127[0];
          if (v92)
          {
            sub_1001B2FEC(v90);
            sub_1001B301C();
            v93();
            goto LABEL_36;
          }

          *(v127[0] + 8 * (v90 >> 6) + 64) |= 1 << v90;
          v94 = (*(v60 + 6) + 16 * v90);
          *v94 = v81;
          v94[1] = v82;
          sub_1001B2FEC(v90);
          sub_1001B301C();
          v95();
          v96 = *(v60 + 2);
          v97 = __OFADD__(v96, 1);
          v98 = v96 + 1;
          if (v97)
          {
            goto LABEL_60;
          }

          *(v60 + 2) = v98;
        }

        else
        {
LABEL_36:
        }
      }
    }

    if (v24 >= v25)
    {
      break;
    }

    if (__OFADD__(v24, 1))
    {
      goto LABEL_58;
    }

    v118 = v24 + 1;
    v31 = *(i - 1);
    v30 = *i;

    Regex.init(_regexString:version:)();
    sub_1001B2D98(&qword_1003B5AF0, &qword_1003B5AE0);
    dispatch thunk of RegexComponent.regex.getter();
    v117 = v31;
    String.subscript.getter();
    v32 = v21;
    v33 = v29;
    v35 = v34;
    Regex.wholeMatch(in:)();

    v36 = sub_1001B3004();
    v35(v36);
    (v35)(v32, v33);
    v37 = sub_1001A6C04(&qword_1003B5AF8);
    v38 = sub_1001A969C(v27, 1, v37);
    v21 = v123;
    v25 = v121;
    if (v38 != 1)
    {
      sub_1001B2DDC(v27, &qword_1003B5AE8);
      v39 = v116;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v129 = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1001B16C8(0, v39[2] + 1, 1);
        v39 = v129;
      }

      v24 = v118;
      v41 = v117;
      v43 = v39[2];
      v42 = v39[3];
      if (v43 >= v42 >> 1)
      {
        sub_1001B16C8(v42 > 1, v43 + 1, 1);
        v39 = v129;
      }

      v39[2] = v43 + 1;
      v116 = v39;
      v44 = &v39[2 * v43];
      v44[4] = v41;
      v44[5] = v30;
      v21 = v123;
      v26 = v112;
      goto LABEL_3;
    }

    sub_1001B2DDC(v27, &qword_1003B5AE8);
    ++v24;
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  v107 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_62:
  result.value._rawValue = v107;
  result.is_nil = v59;
  return result;
}

Swift::Bool __swiftcall String.validBundleIDCharactersOnly()()
{
  v0 = sub_1001A6C04(&qword_1003B5AE0);
  sub_1000043C4();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v12 - v4;
  v6 = sub_1001A6C04(&qword_1003B5AE8);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  Regex.init(_regexString:version:)();
  sub_1001B1158();
  (*(v2 + 8))(v5, v0);
  v9 = sub_1001A6C04(&qword_1003B5AF8);
  v10 = sub_1001A969C(v8, 1, v9) != 1;
  sub_1001B2DDC(v8, &qword_1003B5AE8);
  return v10;
}

id GameLibraryBiome.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GameLibraryBiome();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001B1158()
{
  v0 = sub_1001A6C04(&qword_1003B5AE0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_1001B2D98(&qword_1003B5AF0, &qword_1003B5AE0);
  dispatch thunk of RegexComponent.regex.getter();
  sub_1001B2D64();
  Regex.wholeMatch(in:)();
  (*(v1 + 8))(v3, v0);
}

uint64_t sub_1001B1320(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

char *sub_1001B1394(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_1001B2FA0(a3, result);
  }

  return result;
}

char *sub_1001B13B4(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

char *sub_1001B13F4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return sub_1001B2FA0(a3, result);
  }

  return result;
}

char *sub_1001B1444(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_1001B2FA0(a3, result);
  }

  return result;
}

void sub_1001B1480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1001B303C();
  if (v8 && (sub_1001A6C04(a4), sub_100005780(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      v10 = sub_100004704();

      _swift_arrayInitWithTakeBackToFront(v10);
    }
  }

  else
  {
    sub_1001A6C04(a4);
    v11 = sub_100004704();

    _swift_arrayInitWithTakeFrontToBack(v11);
  }
}

void sub_1001B1590(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_1001B303C();
  if (v8 && (a4(0), sub_100005780(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      v10 = sub_100004704();

      _swift_arrayInitWithTakeBackToFront(v10);
    }
  }

  else
  {
    a4(0);
    v11 = sub_100004704();

    _swift_arrayInitWithTakeFrontToBack(v11);
  }
}

_BYTE **sub_1001B1644(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_1001B1654(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

char *sub_1001B16E8(char *a1, int64_t a2, char a3)
{
  result = sub_1001B1A84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1001B1708(size_t a1, int64_t a2, char a3)
{
  result = sub_1001B1B90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001B1840(void *a1, int64_t a2, char a3)
{
  result = sub_1001B1D6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001B1860(char *a1, int64_t a2, char a3)
{
  result = sub_1001B1E9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1001B1990(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_1001B2FC0();
    if (v7 != v8)
    {
      sub_10000601C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1001B2FB0();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_1001A6C04(&qword_1003B5B98);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_1001B1A84(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001A6C04(&qword_1003B5B60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1001B1B90(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001A6C04(&qword_1003B5B38);
  v10 = *(sub_1001A6C04(&qword_1003B6260) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1001A6C04(&qword_1003B6260) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1001B1480(a4 + v16, v8, v13 + v16, &qword_1003B6260);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1001B1D6C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001A6C04(&qword_1003B5BD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001A6C04(&unk_1003B6BD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001B1E9C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001A6C04(&qword_1003B5BD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1001B1FB4(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_1001B2FC0();
    if (v7 != v8)
    {
      sub_10000601C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1001B2FB0();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_1001A6C04(&qword_1003B6330);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 8);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[8 * v9] <= v13)
    {
      memmove(v13, v14, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v9);
  }
}

void sub_1001B20A0(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_1001B2FC0();
    if (v7 != v8)
    {
      sub_10000601C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1001B2FB0();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_1001A6C04(&qword_1003B5B90);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[40 * v9] <= v13)
    {
      memmove(v13, v14, 40 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1001B21A4(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void), void (*a8)(void))
{
  if (a3)
  {
    sub_1001B2FC0();
    if (v13 != v14)
    {
      sub_10000601C();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_1001B2FB0();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_1001A6C04(a5);
  v17 = *(a7(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = j__malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(a7(0) - 8);
  if (a1)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_1001B1590(a4 + v24, v15, v20 + v24, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1001B2358(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  if (a3)
  {
    sub_1001B2FC0();
    if (v11 != v12)
    {
      sub_10000601C();
      if (v11)
      {
        __break(1u);
        return;
      }

      sub_1001B2FB0();
    }
  }

  else
  {
    v10 = a2;
  }

  v13 = a4[2];
  if (v10 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v10;
  }

  if (v14)
  {
    sub_1001A6C04(a5);
    v15 = swift_allocObject();
    v16 = j__malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = &_swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (v15 != a4 || &a4[5 * v13 + 4] <= v15 + 4)
    {
      memmove(v15 + 4, a4 + 4, 40 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001A6C04(a7);
    swift_arrayInitWithCopy();
  }
}

unint64_t sub_1001B247C(uint64_t a1, uint64_t a2)
{
  sub_1001B3070();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1001B2774(a1, a2, v4);
}

unint64_t sub_1001B24EC()
{
  AnyHashable._rawHashValue(seed:)(*(v0 + 40));
  v1 = sub_1001B2FE0();

  return sub_1001B2828(v1, v2);
}

unint64_t sub_1001B252C(Swift::UInt a1)
{
  sub_1001B3070();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_1001B28EC(a1, v2);
}

unint64_t sub_1001B2590(Swift::UInt a1, char a2)
{
  sub_1001B3070();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2 & 1);
  v4 = Hasher._finalize()();

  return sub_1001B294C(a1, a2 & 1, v4);
}

unint64_t sub_1001B2608()
{
  type metadata accessor for NWEndpoint();
  sub_1001B2EF4(&unk_1003B6DA0, &type metadata accessor for NWEndpoint);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v0 = sub_1001B2FE0();

  return sub_1001B29D0(v0, v1);
}

unint64_t sub_1001B269C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1001B3070();
  String.hash(into:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();

  return sub_1001B2B8C(a1, a2, a3, a4, v8);
}

unint64_t sub_1001B2734()
{
  NSObject._rawHashValue(seed:)(*(v0 + 40));
  v1 = sub_1001B2FE0();

  return sub_1001B2C88(v1, v2);
}

unint64_t sub_1001B2774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1001B2828(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_1001B2F38(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_1001B2E34(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1001B28EC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1001B294C(uint64_t a1, int a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      if (!((*(*(v3 + 48) + 16 * result) != a1) | (*(*(v3 + 48) + 16 * result + 8) ^ a2) & 1))
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1001B29D0(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = type metadata accessor for NWEndpoint();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_1001B2EF4(&qword_1003B5BC8, &type metadata accessor for NWEndpoint);
    v9 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1001B2B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_1001B2C88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_1001A7B44(0, &qword_1003B5B78);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1001B2D98(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001A6C4C(a2);
    sub_1001B2FE0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001B2DDC(uint64_t a1, uint64_t *a2)
{
  sub_1001A6C04(a2);
  sub_100005780();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001B2E88(void *a1)
{
  v1 = [a1 row];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1001B2EF4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1001B2FE0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001B3050()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_1001B3070()
{

  return Hasher.init(_seed:)();
}

uint64_t sub_1001B3088()
{
}

uint64_t sub_1001B30A0()
{
  sub_100005528();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for GameActivityInstance.ParsedLink();
  v1[4] = v3;
  sub_1001B6A00(v3);
  v1[5] = v4;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[9] = v5;
  sub_1001B6A00(v5);
  v1[10] = v6;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_1001A6C04(&qword_1003B5BF0);
  v1[13] = swift_task_alloc();
  v7 = type metadata accessor for GameActivityInstance();
  v1[14] = v7;
  sub_1001B6A00(v7);
  v1[15] = v8;
  v1[16] = swift_task_alloc();
  sub_1001B6A34();

  return _swift_task_switch(v9, v10, v11);
}

id sub_1001B3254()
{
  v78 = v0;
  v1 = GameActivityInstance.ParsedLink.gameBundleID.getter();
  v0[17] = v2;
  if (!v2)
  {
    v28 = v0[5];
    v27 = v0[6];
    v29 = v0[4];
    v30 = v0[2];
    static GKLog.daemon.getter();
    v31 = *(v28 + 16);
    v31(v27, v30, v29);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v0[10];
    v36 = v0[11];
    v37 = v0[9];
    if (v34)
    {
      loga = v0[9];
      v76 = v0[11];
      v70 = v32;
      v38 = v0[6];
      v39 = v0[7];
      v41 = v0[4];
      v40 = v0[5];
      v42 = sub_100005AE4();
      v72 = sub_100005808();
      v77 = v72;
      *v42 = 136315138;
      v31(v39, v38, v41);
      v43 = String.init<A>(describing:)();
      v44 = v33;
      v46 = v45;
      (*(v40 + 8))(v38, v41);
      v47 = sub_100005C3C(v43, v46, &v77);

      *(v42 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v70, v44, "Invalid parsedResult for launching game activity: %s", v42, 0xCu);
      sub_100005BE0(v72);
      sub_1000043D8();
      sub_1000043D8();

      (*(v35 + 8))(v76, loga);
    }

    else
    {
      v53 = v0[5];
      v52 = v0[6];
      v54 = v0[4];

      (*(v53 + 8))(v52, v54);
      (*(v35 + 8))(v36, v37);
    }

    goto LABEL_19;
  }

  v3 = v1;
  v4 = v2;
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v6 = result;
    v7 = sub_1001B6874(v3, v4, result);

    if (v7)
    {
      v9 = v0[13];
      v8 = v0[14];
      GameActivityInstance.ParsedLink.activityInstance.getter();
      if (sub_1001A969C(v9, 1, v8) == 1)
      {
        v10 = v0[8];
        v11 = v0[4];
        v12 = v0[5];
        v13 = v0[2];
        sub_1001A974C(v0[13], &qword_1003B5BF0);
        static GKLog.daemon.getter();
        v14 = *(v12 + 16);
        v14(v10, v13, v11);
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.error.getter();
        log = v15;
        v17 = os_log_type_enabled(v15, v16);
        v71 = v0[12];
        v18 = v0[10];
        v75 = v0[9];
        v19 = v0[8];
        if (v17)
        {
          v20 = v0[7];
          v69 = v0[10];
          v68 = v16;
          v21 = v0[4];
          v22 = v0[5];
          buf = sub_100005AE4();
          v67 = sub_100005808();
          v77 = v67;
          *buf = 136315138;
          v14(v20, v19, v21);
          v23 = String.init<A>(describing:)();
          v25 = v24;
          (*(v22 + 8))(v19, v21);
          v26 = sub_100005C3C(v23, v25, &v77);

          *(buf + 4) = v26;
          _os_log_impl(&_mh_execute_header, log, v68, "Invalid parsedResult for launching game activity without an activityInstance: %s", buf, 0xCu);
          sub_100005BE0(v67);
          sub_1000043D8();
          sub_1000043D8();

          (v69[1].isa)(v71, v75);
        }

        else
        {
          v61 = v0[4];
          v62 = v0[5];

          (*(v62 + 8))(v19, v61);
          (*(v18 + 8))(v71, v75);
        }

        v63 = String._bridgeToObjectiveC()();

        GKLaunchApplicationWithIdentifier(v63, 0);

LABEL_19:
        sub_1001B6A10();

        sub_1001B69F0();
        sub_1001B6A68();

        __asm { BRAA            X1, X16 }
      }

      (*(v0[15] + 32))(v0[16], v0[13], v0[14]);
      GameActivityInstance.ParsedLink.supportsPartyCode.getter();
      v55 = swift_task_alloc();
      v0[18] = v55;
      *v55 = v0;
      v55[1] = sub_1001B3800;
      sub_1001B6A68();

      return sub_1001B4268(v56, v57, v58, v59);
    }

    else
    {
      v48 = swift_task_alloc();
      v0[20] = v48;
      *v48 = v0;
      v48[1] = sub_1001B39C4;
      sub_1001B6A68();

      return sub_1001B3CC4(v49, v50);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B3800()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006028();
  *v3 = v2;
  v4 = *v1;
  sub_100004410();
  *v5 = v4;
  *(v6 + 152) = v0;

  sub_1001B6A34();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001B3918()
{
  sub_1001AFA50();
  (*(v0[15] + 8))(v0[16], v0[14]);
  sub_1001B6A10();

  sub_1001B69F0();

  return v1();
}

uint64_t sub_1001B39C4()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006028();
  *v3 = v2;
  v4 = *v1;
  sub_100004410();
  *v5 = v4;
  *(v6 + 168) = v0;

  sub_1001B6A34();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001B3AC0()
{
  sub_1001AFA50();

  sub_1001B6A10();

  sub_1001B69F0();

  return v0();
}

uint64_t sub_1001B3B5C()
{

  sub_1001B6AA8();

  sub_1000046F8();

  return v0();
}

uint64_t sub_1001B3C08()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  sub_1001B6AA8();

  sub_1000046F8();

  return v1();
}

uint64_t sub_1001B3CC4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for Logger();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_1001B3D94, 0, 0);
}

void sub_1001B3D94()
{
  v40 = v0;
  static GKLog.daemon.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  if (v3)
  {
    v8 = v0[8];
    v7 = v0[9];
    v9 = sub_100005AE4();
    v10 = sub_100005808();
    v39 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100005C3C(v8, v7, &v39);
    _os_log_impl(&_mh_execute_header, v1, v2, "Game %s is not installed, redirecting to games page", v9, 0xCu);
    sub_100005BE0(v10);
    sub_1000043D8();
    sub_1000043D8();
  }

  v11 = *(v6 + 8);
  v11(v4, v5);
  type metadata accessor for URLComponents();
  v12 = swift_allocBox();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  v13 = [objc_opt_self() sharedController];
  if (!v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v13;
  v15 = [v13 pushCredentialForEnvironment:{objc_msgSend(v0[10], "environment")}];

  if (!v15)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v16 = [v15 playerInternal];

  if (v16)
  {
    v18 = v0[8];
    v17 = v0[9];
    sub_1001A7B44(0, &qword_1003B5C08);

    v19 = v16;
    v20 = sub_1001B47C0(v18, v17, v16);
    if (v20)
    {
      v21 = v20;
      v22 = v0[8];
      v23 = v0[9];
      sub_1001A6C04(&qword_1003B5B60);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1002C33A0;
      *(v24 + 56) = &type metadata for String;
      *(v24 + 32) = v22;
      *(v24 + 40) = v23;

      isa = Array._bridgeToObjectiveC()().super.isa;

      v26 = swift_allocObject();
      v26[2] = v22;
      v26[3] = v23;
      v26[4] = v12;
      v0[6] = sub_1001B68D4;
      v0[7] = v26;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_1001BAD60;
      v0[5] = &unk_10036B148;
      v27 = _Block_copy(v0 + 2);

      [v21 getGameMetadataForBundleIDs:isa handler:v27];
      _Block_release(v27);

      goto LABEL_12;
    }
  }

  static GKLog.daemon.getter();

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  v30 = os_log_type_enabled(v28, v29);
  v31 = v0[13];
  v32 = v0[11];
  if (v30)
  {
    v38 = v11;
    v34 = v0[8];
    v33 = v0[9];
    v35 = sub_100005AE4();
    v36 = sub_100005808();
    v39 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_100005C3C(v34, v33, &v39);
    _os_log_impl(&_mh_execute_header, v28, v29, "Cannot construct GameServicePrivate on behalf of local player for %s", v35, 0xCu);
    sub_100005BE0(v36);
    sub_1000043D8();
    sub_1000043D8();

    v38(v31, v32);
  }

  else
  {

    v11(v31, v32);
  }

LABEL_12:

  sub_1001B69F0();

  v37();
}

uint64_t sub_1001B4268(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 88) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return _swift_task_switch(sub_1001B4290, 0, 0);
}

uint64_t sub_1001B4290()
{
  sub_1001AFA50();
  v1 = String._bridgeToObjectiveC()();
  v2 = GKApplicationForegroundRunningForBundleID(v1);

  if (v2)
  {
    v3 = swift_task_alloc();
    *(v0 + 48) = v3;
    *v3 = v0;
    v3[1] = sub_1001B442C;

    return sub_1001B567C();
  }

  else
  {
    v5 = String._bridgeToObjectiveC()();
    GKLaunchApplicationWithIdentifier(v5, 0);

    v6 = *(v0 + 88);
    GameActivityInstance.shortGroupID.getter();
    *(v0 + 56) = v7;
    if (v6 == 1 && (GameActivityInstance.partyCode.getter(), (*(v0 + 64) = v8) != 0))
    {
      v9 = swift_task_alloc();
      *(v0 + 72) = v9;
      *v9 = v0;
      v10 = sub_100004420(v9);

      return sub_1001B58DC(v10, v11, v12, v13, v14, v15);
    }

    else
    {

      sub_1001B69F0();

      return v16();
    }
  }
}

uint64_t sub_1001B442C()
{
  sub_100005528();
  sub_1000057F0();
  v2 = *v1;
  sub_100004410();
  *v3 = v2;

  if (v0)
  {
    sub_1000046F8();

    return v4();
  }

  else
  {
    sub_1001B6A34();

    return _swift_task_switch(v6, v7, v8);
  }
}

uint64_t sub_1001B4544()
{
  sub_1001AFA50();
  v1 = *(v0 + 88);
  GameActivityInstance.shortGroupID.getter();
  *(v0 + 56) = v2;
  if (v1 == 1 && (GameActivityInstance.partyCode.getter(), (*(v0 + 64) = v3) != 0))
  {
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v5 = sub_100004420(v4);

    return sub_1001B58DC(v5, v6, v7, v8, v9, v10);
  }

  else
  {

    sub_1001B69F0();

    return v12();
  }
}

uint64_t sub_1001B4634()
{
  sub_100005528();
  sub_1000057F0();
  v3 = v2;
  sub_100006028();
  *v4 = v3;
  v5 = *v1;
  sub_100004410();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    sub_1001B6A34();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    sub_1001B69F0();

    return v10();
  }
}

uint64_t sub_1001B475C()
{
  sub_100005528();

  sub_1000046F8();

  return v0();
}

id sub_1001B47C0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() serviceForBundleID:v4 localPlayer:a3];

  return v5;
}

id sub_1001B4840(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v144 = a5;
  v145 = a4;
  v141 = a1;
  v142 = a3;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v146 = v6;
  v147 = v7;
  v8 = __chkstk_darwin(v6);
  v143 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v139 = &v129 - v11;
  v12 = __chkstk_darwin(v10);
  v136 = &v129 - v13;
  v14 = __chkstk_darwin(v12);
  v137 = &v129 - v15;
  __chkstk_darwin(v14);
  v138 = &v129 - v16;
  v17 = sub_1001A6C04(&qword_1003B5800);
  __chkstk_darwin(v17 - 8);
  v19 = &v129 - v18;
  v20 = type metadata accessor for URLComponents();
  v140 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v30 = &v129 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v129 - v32;
  __chkstk_darwin(v31);
  v35 = &v129 - v34;
  v36 = swift_projectBox();
  if (a2)
  {
    v37 = v143;
    static GKLog.daemon.getter();
    v38 = v145;

    swift_errorRetain();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v149[0] = swift_slowAlloc();
      *v41 = 136315394;
      *(v41 + 4) = sub_100005C3C(v142, v38, v149);
      *(v41 + 12) = 2080;
      v148 = a2;
      swift_errorRetain();
      sub_1001A6C04(&qword_1003B5C18);
      v42 = String.init<A>(describing:)();
      v44 = sub_100005C3C(v42, v43, v149);

      *(v41 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v39, v40, "Cannot get game metadata for %s: %s", v41, 0x16u);
      swift_arrayDestroy();
    }

    return (*(v147 + 8))(v37, v146);
  }

  v143 = v27;
  v132 = v36;
  v133 = v22;
  v134 = v20;
  v130 = v30;
  v129 = v33;
  v131 = v35;
  v46 = v145;
  v135 = v24;
  v144 = v23;
  v47 = v141;
  if (sub_1001E6E2C(v141))
  {
    sub_1001D13A0(0, (v47 & 0xC000000000000001) == 0, v47);
    if ((v47 & 0xC000000000000001) != 0)
    {
      v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v48 = *(v47 + 4);
    }

    v49 = v48;
    v50 = v143;
    v51 = [v48 adamID];
    v52 = objc_opt_self();
    result = [v52 defaultWorkspace];
    if (result)
    {
      v53 = result;
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = sub_1001B68F8(v54, v55, v53);

      if (v56)
      {
LABEL_13:
        v141 = v49;
        sub_1001A6C04(&qword_1003B5B98);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_1002C3290;
        *(v61 + 32) = 1701667175;
        *(v61 + 40) = 0xE400000000000000;
        v143 = v51;
        v62 = [v51 description];
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v64;

        *(v61 + 48) = v63;
        *(v61 + 56) = v65;
        v149[0] = v61;
        sub_1001A6C04(&unk_1003B6BD0);
        sub_1001AC7E4(&qword_1003B5B00, &unk_1003B6BD0);
        v66 = BidirectionalCollection<>.joined(separator:)();
        v68 = v67;

        v149[0] = 47;
        v149[1] = 0xE100000000000000;
        v69._countAndFlagsBits = v66;
        v69._object = v68;
        String.append(_:)(v69);

        v70 = v132;
        swift_beginAccess();

        URLComponents.path.setter();
        swift_endAccess();
        swift_beginAccess();
        v71 = v140;
        v72 = v133;
        v73 = v134;
        (v140)[2](v133, v70, v134);
        URLComponents.url.getter();
        (v71[1])(v72, v73);
        v74 = v144;
        if (sub_1001A969C(v19, 1, v144) == 1)
        {

          sub_1001A974C(v19, &qword_1003B5800);
          v75 = v137;
          static GKLog.general.getter();

          v76 = Logger.logObject.getter();
          v77 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            v148 = v79;
            *v78 = 136315138;
            *(v78 + 4) = sub_100005C3C(v142, v46, &v148);
            _os_log_impl(&_mh_execute_header, v76, v77, "Cannot construct game page URL for %s", v78, 0xCu);
            sub_100005BE0(v79);

            v80 = v143;
          }

          else
          {

            v80 = v141;
          }

          return (*(v147 + 8))(v75, v146);
        }

        v140 = v52;
        v86 = v46;
        v87 = v135;
        v88 = v131;
        (*(v135 + 32))(v131, v19, v74);
        v89 = v138;
        static GKLog.general.getter();
        v90 = v129;
        (*(v87 + 16))(v129, v88, v74);

        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          *v93 = 136315394;
          *(v93 + 4) = sub_100005C3C(v142, v86, &v148);
          *(v93 + 12) = 2080;
          sub_1001B69A8(&qword_1003B5C10, &type metadata accessor for URL);
          v94 = dispatch thunk of CustomStringConvertible.description.getter();
          v95 = v90;
          v97 = v96;
          v98 = *(v87 + 8);
          v98(v95, v74);
          v99 = sub_100005C3C(v94, v97, &v148);

          *(v93 + 14) = v99;
          _os_log_impl(&_mh_execute_header, v91, v92, "Game not installed to handle activity in: %s. Trying to open URL: %s", v93, 0x16u);
          swift_arrayDestroy();
          v88 = v131;

          (*(v147 + 8))(v138, v146);
        }

        else
        {

          v98 = *(v87 + 8);
          v98(v90, v74);
          (*(v147 + 8))(v89, v146);
        }

        v118 = v141;
        v119 = v143;
        result = [v140 defaultWorkspace];
        if (result)
        {
          v120 = result;

          URL._bridgeToObjectiveC()(v121);
          v123 = v122;
          [v120 openURL:v122];

          return (v98)(v88, v74);
        }

        goto LABEL_34;
      }

      result = [v52 defaultWorkspace];
      if (result)
      {
        v57 = result;
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = sub_1001B68F8(v58, v59, v57);

        if ((v60 & 1) == 0)
        {
          v100 = [v49 storeURL];
          v101 = v130;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v102 = v136;
          static GKLog.general.getter();
          v103 = v135;
          v104 = v144;
          (*(v135 + 16))(v50, v101, v144);
          v105 = Logger.logObject.getter();
          v106 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v105, v106))
          {
            v107 = swift_slowAlloc();
            v140 = v52;
            v108 = v107;
            v109 = swift_slowAlloc();
            v143 = v51;
            v110 = v109;
            v149[0] = v109;
            *v108 = 136315138;
            sub_1001B69A8(&qword_1003B5C10, &type metadata accessor for URL);
            v111 = dispatch thunk of CustomStringConvertible.description.getter();
            v112 = v50;
            v114 = v113;
            v115 = v104;
            v116 = *(v103 + 8);
            v116(v112, v115);
            v117 = sub_100005C3C(v111, v114, v149);

            *(v108 + 4) = v117;
            _os_log_impl(&_mh_execute_header, v105, v106, "Game not installed to handle activity. Trying to open URL: %s", v108, 0xCu);
            sub_100005BE0(v110);
            v51 = v143;

            v52 = v140;
          }

          else
          {

            v124 = v104;
            v116 = *(v103 + 8);
            v116(v50, v124);
          }

          (*(v147 + 8))(v102, v146);
          result = [v52 defaultWorkspace];
          v125 = v130;
          if (result)
          {
            v126 = result;
            URL._bridgeToObjectiveC()(&v150);
            v128 = v127;
            [v126 openURL:v127];

            return (v116)(v125, v144);
          }

          goto LABEL_35;
        }

        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    return result;
  }

  v81 = v139;
  static GKLog.daemon.getter();

  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v149[0] = v85;
    *v84 = 136315138;
    *(v84 + 4) = sub_100005C3C(v142, v46, v149);
    _os_log_impl(&_mh_execute_header, v82, v83, "Cannot find game metadata for %s", v84, 0xCu);
    sub_100005BE0(v85);
  }

  return (*(v147 + 8))(v81, v146);
}

uint64_t sub_1001B567C()
{
  sub_100005528();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = type metadata accessor for Logger();
  v0[5] = v4;
  sub_1001B6A00(v4);
  v0[6] = v5;
  v0[7] = swift_task_alloc();
  sub_1001B6A34();

  return _swift_task_switch(v6, v7, v8);
}

id sub_1001B5730()
{
  objc_opt_self();
  v1 = sub_1001B6ACC();
  v4 = sub_1001B6824(v1, v2, v3);
  if (v4)
  {
    v5 = v4;
    v8 = static GameActivityInstanceCoder.encodedData(_:)();
    static GKLog.general.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Deliver game activity joining URL directly via proxy.", v12, 2u);
      sub_1000043D8();
    }

    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    (*(v14 + 8))(v13, v15);
    [v5 deliverGameActivityAsInternal:v8];

    sub_1001B69F0();
  }

  else
  {
    result = [objc_opt_self() gkInternalErrorWithCode:105];
    if (!result)
    {
      __break(1u);
      return result;
    }

    swift_willThrow();

    sub_1000046F8();
  }

  return v7();
}

uint64_t sub_1001B58DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[23] = a6;
  v7[24] = v6;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v7[18] = a1;
  v8 = type metadata accessor for Date();
  v7[25] = v8;
  v7[26] = *(v8 - 8);
  v7[27] = swift_task_alloc();
  sub_1001A6C04(&qword_1003B5BF8);
  v7[28] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v7[29] = v9;
  v7[30] = *(v9 - 8);
  v7[31] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v7[32] = v10;
  v7[33] = *(v10 - 8);
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();

  return _swift_task_switch(sub_1001B5AA4, 0, 0);
}

uint64_t sub_1001B5AA4()
{
  v48 = v0;
  static GKLog.daemon.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  v3 = os_log_type_enabled(v1, v2);
  isa = v0[35].super.isa;
  v6 = v0[32].super.isa;
  v5 = v0[33].super.isa;
  if (v3)
  {
    v7 = v0[22].super.isa;
    v45 = v0[23].super.isa;
    v9 = v0[20].super.isa;
    v8 = v0[21].super.isa;
    v46 = v0[35].super.isa;
    v10 = swift_slowAlloc();
    v47[0] = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100005C3C(v9, v8, v47);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100005C3C(v7, v45, v47);
    _os_log_impl(&_mh_execute_header, v1, v2, "Putting multiplayer group for %s with party code %s", v10, 0x16u);
    swift_arrayDestroy();
    sub_1000043D8();
    sub_1000043D8();

    v11 = *(v5 + 1);
    (v11)(v46, v6);
  }

  else
  {

    v11 = *(v5 + 1);
    (v11)(isa, v6);
  }

  v0[36].super.isa = v11;
  objc_opt_self();
  v12 = sub_1001B6ACC();
  v15 = sub_1001B6824(v12, v13, v14);
  v0[37].super.isa = v15;
  if (v15)
  {
    v16 = v15;
    sub_1001A7B44(0, &qword_1003B5C00);
    v17 = v16;
    v18 = sub_1001B64C4(0, v16, 0);
    v0[38].super.isa = v18;
    if (!v18)
    {
      goto LABEL_14;
    }

    v19 = v18;
    v20 = [objc_opt_self() sharedController];
    if (!v20)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v21 = v20;
    v22 = [(NSArray *)v20 pushCredentialForEnvironment:[(objc_class *)v0[24].super.isa environment]];

    if (!v22)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v23 = [v22 playerInternal];
    v0[39].super.isa = v23;

    if (!v23)
    {

LABEL_14:
      v20 = [objc_opt_self() gkInternalErrorWithCode:400];
      if (v20)
      {
        swift_willThrow();

        goto LABEL_16;
      }

      goto LABEL_28;
    }

    v25 = v0[28].super.isa;
    v24 = v0[29].super.isa;
    static UUID.generateUUIDFromPartyCodeAndShortID(partyCode:shortID:)();
    if (sub_1001A969C(v25, 1, v24) == 1)
    {
      v26 = v0[28].super.isa;

      sub_1001A974C(v26, &qword_1003B5BF8);
      goto LABEL_14;
    }

    v30 = v0[26].super.isa;
    v29 = v0[27].super.isa;
    v31 = v0[25].super.isa;
    (*(v0[30].super.isa + 4))(v0[31].super.isa, v0[28].super.isa, v0[29].super.isa);
    UUID.uuidString.getter();
    v32 = String._bridgeToObjectiveC()();
    v0[40].super.isa = v32;

    sub_1001A6C04(&qword_1003B5B98);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1002C33A0;
    v34 = [(objc_class *)v23 playerID];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    *(v33 + 32) = v35;
    *(v33 + 40) = v37;
    v38.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v0[41].super.isa = v38.super.isa;

    Date.init()();
    Date.timeIntervalSince1970.getter();
    v40 = v39;
    v20 = (*(v30 + 1))(v29, v31);
    v41 = v40 * 1000.0;
    if (COERCE__INT64(fabs(v40 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v41 > -9.22337204e18)
    {
      if (v41 < 9.22337204e18)
      {
        v42 = v41;
        v43 = String._bridgeToObjectiveC()();
        v0[42].super.isa = v43;
        v0[2].super.isa = v0;
        v0[3].super.isa = sub_1001B60B8;
        v44 = swift_continuation_init();
        v0[17].super.isa = sub_1001A6C04(&unk_1003B6BE0);
        v0[10].super.isa = _NSConcreteStackBlock;
        v0[11].super.isa = 1107296256;
        v0[12].super.isa = sub_100222794;
        v0[13].super.isa = &unk_10036B0F8;
        v0[14].super.isa = v44;
        [(objc_class *)v19 putMultiPlayerGroup:v32 participants:v38.super.isa playedAt:v42 bundleID:v43 numberOfAutomatched:0 isSharedLink:1 completionHandler:&v0[10]];
        v20 = v0 + 2;

        return _swift_continuation_await(v20);
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v20 = [objc_opt_self() gkInternalErrorWithCode:105];
  if (!v20)
  {
LABEL_31:
    __break(1u);
    return _swift_continuation_await(v20);
  }

  swift_willThrow();
LABEL_16:

  sub_1000046F8();

  return v27();
}

uint64_t sub_1001B60B8()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006028();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 344) = *(v3 + 48);
  sub_1001B6A34();

  return _swift_task_switch(v4, v5, v6);
}

void sub_1001B61B8()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 320);

  static GKLog.general.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 304);
  v6 = *(v0 + 312);
  v8 = *(v0 + 288);
  v9 = *(v0 + 272);
  v23 = *(v0 + 296);
  v10 = *(v0 + 248);
  v24 = *(v0 + 256);
  v12 = *(v0 + 232);
  v11 = *(v0 + 240);
  if (v5)
  {
    v21 = *(v0 + 288);
    v22 = *(v0 + 232);
    v14 = *(v0 + 160);
    v13 = *(v0 + 168);
    v20 = *(v0 + 272);
    v15 = sub_100005AE4();
    v19 = v10;
    v16 = sub_100005808();
    v25 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100005C3C(v14, v13, &v25);
    _os_log_impl(&_mh_execute_header, v3, v4, "Updated multiplayer group with short group ID: %s", v15, 0xCu);
    sub_100005BE0(v16);
    sub_1000043D8();
    sub_1000043D8();

    v21(v20, v24);
    (*(v11 + 8))(v19, v22);
  }

  else
  {

    v8(v9, v24);
    (*(v11 + 8))(v10, v12);
  }

  sub_1001B69F0();
  sub_1001B6A68();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1001B63C8()
{
  v1 = v0[42];
  v2 = v0[41];
  v11 = v0[40];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[37];
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[29];
  swift_willThrow();

  (*(v7 + 8))(v6, v8);

  sub_1000046F8();

  return v9();
}

id sub_1001B64C4(void *a1, void *a2, void *a3)
{
  v6 = [swift_getObjCClassFromMetadata() serviceWithTransport:a1 forClient:a2 credential:a3];

  return v6;
}

uint64_t GameServicesError.errorUserInfo.getter()
{
  v1 = type metadata accessor for GameServicesError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1001A6C04(&qword_1003B5BE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C3290;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v6;
  v7 = GameServicesError.errorDescription.getter();
  *(inited + 72) = &type metadata for String;
  if (!v8)
  {
    (*(v2 + 16))(v4, v0, v1);
    v7 = String.init<A>(describing:)();
  }

  *(inited + 48) = v7;
  *(inited + 56) = v8;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x8000000100309C60;
  v9 = GameServicesError.errorKey.getter();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v9;
  *(inited + 104) = v10;
  return Dictionary.init(dictionaryLiteral:)();
}

id sub_1001B6824(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 clientForBundleID:v4];

  return v5;
}

id sub_1001B6874(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 applicationIsInstalled:v4];

  return v5;
}

uint64_t sub_1001B68E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1001B68F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [a3 applicationIsInstalled:v4];

  return v5;
}

unint64_t sub_1001B6954()
{
  result = qword_1003B5C20;
  if (!qword_1003B5C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B5C20);
  }

  return result;
}

uint64_t sub_1001B69A8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001B6A10()
{
}

uint64_t sub_1001B6A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return StringProtocol.components<A>(separatedBy:)(va, v5, v5, v4, v4);
}

uint64_t sub_1001B6A84()
{

  return StringProtocol.contains<A>(_:)();
}

uint64_t sub_1001B6AA8()
{
}

uint64_t sub_1001B6AD8(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for Logger();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for NWError();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v5 = type metadata accessor for NWBrowser.State();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_1001B6C80, 0, 0);
}

uint64_t sub_1001B6C80()
{
  v59 = v0;
  v1 = *(v0[7] + 32);
  v0[21] = v1;
  if (!v1)
  {
LABEL_26:
    sub_1001B8384();

    sub_1000046F8();

    return v55();
  }

  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  (*(v3 + 16))(v2, v0[6], v4);
  v5 = (*(v3 + 88))(v2, v4);
  if (v5 != enum case for NWBrowser.State.failed(_:))
  {
    if (v5 == enum case for NWBrowser.State.ready(_:))
    {

      v25 = static os_log_type_t.info.getter();
      static GKLog.match.getter();
      v26 = Logger.logObject.getter();
      v27 = os_log_type_enabled(v26, v25);
      v28 = v0[11];
      v29 = v0[8];
      v30 = v0[9];
      if (!v27)
      {
LABEL_15:

        (*(v30 + 8))(v28, v29);
        goto LABEL_26;
      }

      v31 = sub_100005AE4();
      v32 = sub_100005808();
      v57 = v32;
      *v31 = 136315138;
      v33 = 0x20726573776F7242;
      v34 = 0xEE002E7964616572;
    }

    else
    {
      if (v5 != enum case for NWBrowser.State.cancelled(_:))
      {
        (*(v0[19] + 8))(v0[20], v0[18]);
        goto LABEL_26;
      }

      v25 = static os_log_type_t.info.getter();
      static GKLog.match.getter();
      v26 = Logger.logObject.getter();
      v45 = os_log_type_enabled(v26, v25);
      v30 = v0[9];
      v28 = v0[10];
      v29 = v0[8];
      if (!v45)
      {
        goto LABEL_15;
      }

      v31 = sub_100005AE4();
      v32 = sub_100005808();
      v57 = v32;
      *v31 = 136315138;
      v33 = 0xD000000000000011;
      v34 = 0x8000000100309D30;
    }

    *(v31 + 4) = sub_100005C3C(v33, v34, &v57);
    _os_log_impl(&_mh_execute_header, v26, v25, "Nearby - %s", v31, 0xCu);
    sub_100005BE0(v32);
    sub_1000043D8();
    sub_1000043D8();
    goto LABEL_15;
  }

  v6 = v0[20];
  v7 = v0[17];
  v9 = v0[15];
  v8 = v0[16];
  v10 = v0[14];
  (*(v0[19] + 96))(v6, v0[18]);
  (*(v9 + 32))(v7, v6, v10);
  *v8 = -65569;
  (*(v9 + 104))(v8, enum case for NWError.dns(_:), v10);

  LOBYTE(v6) = static NWError.== infix(_:_:)();
  v11 = *(v9 + 8);
  v0[22] = v11;
  v0[23] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v10);
  v12 = static os_log_type_t.info.getter();
  if (v6)
  {
    v57 = 0;
    v58 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);
    v0[4] = 0;
    v0[5] = 0xE000000000000000;
    v13._object = 0x8000000100309D50;
    v13._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v13);
    _print_unlocked<A, B>(_:_:)();
    v14._countAndFlagsBits = 0x726174736572202CLL;
    v14._object = 0xEC000000676E6974;
    String.append(_:)(v14);
    v16 = v0[4];
    v15 = v0[5];
    static GKLog.match.getter();
    v17 = Logger.logObject.getter();
    v18 = os_log_type_enabled(v17, v12);
    v19 = v0[13];
    v21 = v0[8];
    v20 = v0[9];
    if (v18)
    {
      v56 = v0[13];
      v22 = sub_100005AE4();
      v23 = sub_100005808();
      v57 = v23;
      *v22 = 136315138;
      v24 = sub_100005C3C(v16, v15, &v57);

      *(v22 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v12, "Nearby - %s", v22, 0xCu);
      sub_100005BE0(v23);
      sub_1000043D8();
      sub_1000043D8();

      (*(v20 + 8))(v56, v21);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
    }

    v46 = v0[7];
    NWBrowser.cancel()();
    v47 = v46;
    sub_1001B757C();
    goto LABEL_25;
  }

  v57 = 0;
  v58 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v35._object = 0x8000000100309D50;
  v35._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v35);
  _print_unlocked<A, B>(_:_:)();
  v36._countAndFlagsBits = 0x6970706F7473202CLL;
  v36._object = 0xEA0000000000676ELL;
  String.append(_:)(v36);
  v38 = v0[2];
  v37 = v0[3];
  static GKLog.match.getter();
  v21 = Logger.logObject.getter();
  v39 = os_log_type_enabled(v21, v12);
  v40 = v0[12];
  v1 = v0[8];
  v41 = v0[9];
  if (v39)
  {
    v42 = sub_100005AE4();
    v43 = sub_100005808();
    v57 = v43;
    *v42 = 136315138;
    v44 = sub_100005C3C(v38, v37, &v57);

    *(v42 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v21, v12, "Nearby - %s", v42, 0xCu);
    sub_100005BE0(v43);
    sub_1000043D8();
    sub_1000043D8();
  }

  else
  {
  }

  (*(v41 + 8))(v40, v1);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[24] = Strong;
  if (!Strong)
  {
    v47 = v0[21];
    NWBrowser.cancel()();
LABEL_25:
    sub_1001B83A4();
    (v21)(v47, v1);
    goto LABEL_26;
  }

  v49 = v0[17];
  v50 = v0[14];
  v51 = v0[15];
  sub_1001B8304();
  v0[25] = swift_allocError();
  (*(v51 + 16))(v52, v49, v50);
  v53 = swift_task_alloc();
  v0[26] = v53;
  *v53 = v0;
  v53[1] = sub_1001B73A8;

  return sub_1001F18BC();
}

uint64_t sub_1001B73A8()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1001B74CC, 0, 0);
}

uint64_t sub_1001B74CC()
{
  v3 = *(v1 + 168);
  NWBrowser.cancel()();
  sub_1001B83A4();
  v2(v3, v0);
  sub_1001B8384();

  sub_1000046F8();

  return v4();
}

void sub_1001B757C()
{
  v1 = v0;
  v2 = type metadata accessor for NWBrowser.Descriptor();
  sub_1000043C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000043B4();
  v8 = (v7 - v6);
  v9 = type metadata accessor for Logger();
  sub_1000043C4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000043B4();
  v15 = v14 - v13;
  v16 = static os_log_type_t.info.getter();
  static GKLog.match.getter();
  v17 = Logger.logObject.getter();
  if (os_log_type_enabled(v17, v16))
  {
    v23 = v2;
    v18 = sub_100005AE4();
    v22 = v4;
    v19 = sub_100005808();
    v24 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_100005C3C(0xD000000000000011, 0x8000000100309D10, &v24);
    _os_log_impl(&_mh_execute_header, v17, v16, "Nearby - %s", v18, 0xCu);
    sub_100005BE0(v19);
    v4 = v22;
    sub_1000043D8();
    v2 = v23;
    sub_1000043D8();
  }

  (*(v11 + 8))(v15, v9);
  type metadata accessor for NWParameters();
  swift_allocObject();
  NWParameters.init()();
  NWParameters.includePeerToPeer.setter();
  *v8 = 0x5F2E64656D61675FLL;
  v8[1] = 0xEB00000000706374;
  v8[2] = 0;
  v8[3] = 0;
  (*(v4 + 104))(v8, enum case for NWBrowser.Descriptor.bonjourWithTXTRecord(_:), v2);
  type metadata accessor for NWBrowser();
  swift_allocObject();

  v20 = NWBrowser.init(for:using:)();
  swift_allocObject();
  swift_weakInit();

  sub_100007984(sub_1001B8154);
  NWBrowser.stateUpdateHandler.setter();

  swift_allocObject();
  swift_weakInit();

  sub_100007984(sub_1001B815C);
  NWBrowser.browseResultsChangedHandler.setter();

  *(v1 + 32) = v20;

  sub_1000049AC();
  v21 = static OS_dispatch_queue.main.getter();
  NWBrowser.start(queue:)();
}

uint64_t sub_1001B7918(uint64_t a1)
{
  v2 = type metadata accessor for NWBrowser.State();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = sub_1001A6C04(&qword_1003B60F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = type metadata accessor for TaskPriority();
    sub_1001A9674(v7, 1, 1, v10);
    (*(v3 + 16))(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
    v11 = (*(v3 + 80) + 40) & ~*(v3 + 80);
    v12 = swift_allocObject();
    *(v12 + 2) = 0;
    *(v12 + 3) = 0;
    *(v12 + 4) = v9;
    (*(v3 + 32))(&v12[v11], &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    sub_1001D1C0C();
  }

  return result;
}

uint64_t sub_1001B7AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1001AF328;

  return sub_1001B6AD8(a5);
}

uint64_t sub_1001B7B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A6C04(&qword_1003B60F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = type metadata accessor for TaskPriority();
    sub_1001A9674(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    v10[5] = a1;
    v10[6] = a2;

    sub_1001D1E74();
  }

  return result;
}

uint64_t sub_1001B7CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return _swift_task_switch(sub_1001B7CE0, 0, 0);
}

uint64_t sub_1001B7CE0()
{
  sub_100005528();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_1001B7DC8;

    return sub_1001F0084();
  }

  else
  {
    **(v0 + 16) = 1;
    sub_1000046F8();

    return v4();
  }
}

uint64_t sub_1001B7DC8()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1001B7ED0, 0, 0);
}

uint64_t sub_1001B7ED0()
{
  **(v0 + 16) = *(v0 + 48) == 0;
  sub_1000046F8();
  return v1();
}

uint64_t sub_1001B7F04()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  sub_1000043C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000043B4();
  v8 = v7 - v6;
  v9 = static os_log_type_t.info.getter();
  static GKLog.match.getter();
  v10 = Logger.logObject.getter();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = sub_100005AE4();
    v12 = sub_100005808();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100005C3C(0xD000000000000015, 0x8000000100309CF0, &v16);
    _os_log_impl(&_mh_execute_header, v10, v9, "Nearby - %s", v11, 0xCu);
    sub_100005BE0(v12);
    sub_1000043D8();
    sub_1000043D8();
  }

  (*(v4 + 8))(v8, v2);
  if (*(v1 + 32))
  {

    v13 = sub_1001B8378();
    sub_100007984(v13);
    sub_1001B8378();
    NWBrowser.stateUpdateHandler.setter();

    if (*(v1 + 32))
    {

      v14 = sub_1001B8378();
      sub_100007984(v14);
      sub_1001B8378();
      NWBrowser.browseResultsChangedHandler.setter();

      if (*(v1 + 32))
      {

        NWBrowser.cancel()();
      }
    }
  }

  *(v1 + 32) = 0;
}

uint64_t sub_1001B80F0()
{
  sub_1001AF9D0(v0 + 16);

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_1001B8164()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001AF9F8;
  v5 = sub_1001B8360();

  return sub_1001B7CBC(v5, v6, v7, v8, v2, v3);
}

uint64_t sub_1001B821C()
{
  type metadata accessor for NWBrowser.State();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001AF328;
  v2 = sub_1001B8360();

  return sub_1001B7AF4(v2, v3, v4, v5, v6);
}

unint64_t sub_1001B8304()
{
  result = qword_1003B5CE8;
  if (!qword_1003B5CE8)
  {
    type metadata accessor for NWError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B5CE8);
  }

  return result;
}

uint64_t sub_1001B8384()
{
}

uint64_t sub_1001B83A4()
{
}

void OverlayServiceUtils.showLeaderboardScoreBanner(id:score:name:date:)()
{
  sub_10000469C();
  v36._countAndFlagsBits = v1;
  v36._object = v2;
  v37 = v3;
  v38 = v4;
  type metadata accessor for Logger();
  sub_1000043C4();
  v34 = v6;
  v35 = v5;
  __chkstk_darwin(v5);
  sub_1000043B4();
  v33 = v8 - v7;
  v9 = type metadata accessor for InGameBannerData.BannerType();
  sub_1000043C4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000043B4();
  v15 = (v14 - v13);
  type metadata accessor for InGameBannerData();
  sub_1000043C4();
  v39 = v17;
  v40 = v16;
  __chkstk_darwin(v16);
  sub_1000043B4();
  sub_1001BA7C8();
  if (qword_1003B54C8 != -1)
  {
    swift_once();
  }

  v18 = qword_1003B5CF0;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v20 = [v18 stringFromDate:isa];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  type metadata accessor for GCFLocalizedStrings();
  static GCFLocalizedStrings.LEADERBOARD_SCORE_SUBMITTED_BANNER_TITLE.getter();
  sub_1001A6C04(&qword_1003B5CF8);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1002C33A0;
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = sub_1001B8828();
  *(v24 + 32) = v21;
  *(v24 + 40) = v23;
  String.init(format:_:)();

  v25._countAndFlagsBits = 0x20A280E220;
  v25._object = 0xA500000000000000;
  String.append(_:)(v25);
  String.append(_:)(v36);
  *v15 = v37;
  v15[1] = v38;
  (*(v11 + 104))(v15, enum case for InGameBannerData.BannerType.scoreSubmittedOnLeaderboard(_:), v9);

  InGameBannerData.init(type:title:body:clipData:imageSymbolName:)();
  v26 = static InGameBannerData.encode(bannerData:)();
  if (v27 >> 60 == 15)
  {
    static GKLog.general.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "leadeboardScoreSubmittedEvent: InGameBannerData could not be encoded", v30, 2u);
    }

    (*(v34 + 8))(v33, v35);
  }

  else
  {
    v31 = v26;
    v32 = v27;
    sub_100006034(v26, v27);
    sub_1001B9874(v31, v32);
  }

  (*(v39 + 8))(v0, v40);
  sub_1000057D8();
}

void sub_1001B87C4()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  sub_1001AD978(0x73733A6D6D3A4848, 0xEC0000005353532ELL, v0);
  qword_1003B5CF0 = v0;
}

unint64_t sub_1001B8828()
{
  result = qword_1003B5D00;
  if (!qword_1003B5D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B5D00);
  }

  return result;
}

void static OverlayServiceUtils.showDashboard(game:deepLink:launchContext:)()
{
  sub_10000469C();
  v2 = v1;
  v30 = type metadata accessor for GameOverlayUIConfig.OverlayStyle();
  sub_1000043C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000043B4();
  v8 = v7 - v6;
  type metadata accessor for GameOverlayUIConfig.ServiceKind();
  sub_1000043C4();
  v28 = v10;
  v29 = v9;
  __chkstk_darwin(v9);
  sub_1000043B4();
  sub_1001BA7C8();

  sub_1001A6C04(&qword_1003B5D10);
  if (sub_1001BA814())
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1001B99D4(v31, v11, v13, isUniquelyReferenced_nonNull_native);
    swift_unknownObjectRelease();
  }

  sub_1001A6C04(&qword_1003B5D18);
  if (sub_1001BA814())
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
    swift_unknownObjectRetain();
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001B99D4(v31, v15, v17, v18);
    swift_unknownObjectRelease();
  }

  if (v2)
  {
    v19 = v2;
    v20 = [v19 bundleIdentifier];
    if (!v20)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = String._bridgeToObjectiveC()();
    }

    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001B99D4(v20, 0x646E7542656D6167, 0xEC0000004449656CLL, v21);
    v22 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v19];
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001B99D4(v22, 0x47746E6572727563, 0xEB00000000656D61, v23);
    v24 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(v19, "isArcadeGame")}];
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001B99D4(v24, 0x6564616372417369, 0xEC000000656D6147, v25);
  }

  (*(v28 + 104))(v0, enum case for GameOverlayUIConfig.ServiceKind.dashboard(_:), v29);
  v26 = objc_allocWithZone(type metadata accessor for DashboardClientProxy());
  v27 = DashboardClientProxy.init(serviceKind:)();
  (*(v4 + 104))(v8, enum case for GameOverlayUIConfig.OverlayStyle.fullScreen(_:), v30);
  GameOverlayUIConfig.OverlayStyle.rawValue.getter();
  (*(v4 + 8))(v8, v30);
  dispatch thunk of DashboardClientProxy.showDashboard(initialState:sceneIdentifier:usingLocalEndPoint:canDismissWithGesture:)();

  sub_1000057D8();
}

void static OverlayServiceUtils.closeDashboard()()
{
  type metadata accessor for GameOverlayUIConfig.ServiceKind();
  sub_1000043C4();
  __chkstk_darwin(v0);
  sub_1000043B4();
  (*(v3 + 104))(v2 - v1, enum case for GameOverlayUIConfig.ServiceKind.dashboard(_:));
  v4 = objc_allocWithZone(type metadata accessor for DashboardClientProxy());
  v5 = DashboardClientProxy.init(serviceKind:)();
  dispatch thunk of DashboardClientProxy.closeDashboard(usingLocalEndPoint:)();
}

Swift::Void __swiftcall OverlayServiceUtils.emitMultiplayerEvent(message:)(Swift::String message)
{
  sub_10000469C();
  type metadata accessor for Logger();
  sub_1000043C4();
  v31 = v3;
  v32 = v2;
  __chkstk_darwin(v2);
  sub_1000043B4();
  sub_1001BA7C8();
  v4 = type metadata accessor for InGameBannerData.BannerType();
  sub_1000043C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000043B4();
  v10 = v9 - v8;
  v11 = type metadata accessor for InGameBannerData();
  sub_1000043C4();
  v33 = v12;
  __chkstk_darwin(v13);
  sub_1000043B4();
  v16 = v15 - v14;
  v17 = objc_opt_self();
  v18 = [v17 shared];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 multiplayerInGameOverlayEnabled];

    if (!v20)
    {
LABEL_11:
      sub_1000057D8();
      return;
    }

    v21 = [v17 shared];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 isInternalBuild];

      if (v23)
      {
        (*(v6 + 104))(v10, enum case for InGameBannerData.BannerType.general(_:), v4);

        InGameBannerData.init(type:title:body:image:clipData:)();
        v24 = static InGameBannerData.encode(bannerData:)();
        if (v25 >> 60 == 15)
        {
          static GKLog.general.getter();
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 0;
            _os_log_impl(&_mh_execute_header, v26, v27, "emitMultiplayerEvent: InGameBannerData could not be encoded", v28, 2u);
          }

          (*(v31 + 8))(v1, v32);
        }

        else
        {
          v29 = v24;
          v30 = v25;
          sub_100006034(v24, v25);
          sub_1001B9874(v29, v30);
        }

        (*(v33 + 8))(v16, v11);
      }

      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall OverlayServiceUtils.showAchievementBanner(id:title:message:)(Swift::String id, Swift::String title, Swift::String message)
{
  sub_10000469C();
  v5 = v4;
  v7 = v6;
  type metadata accessor for Logger();
  sub_1000043C4();
  v30 = v9;
  v31 = v8;
  __chkstk_darwin(v8);
  sub_1000043B4();
  sub_1001BA7C8();
  v10 = type metadata accessor for InGameBannerData.BannerType();
  sub_1000043C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_1000043B4();
  v16 = (v15 - v14);
  v32 = type metadata accessor for InGameBannerData();
  sub_1000043C4();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_1000043B4();
  v22 = v21 - v20;
  *v16 = v7;
  v16[1] = v5;
  (*(v12 + 104))(v16, enum case for InGameBannerData.BannerType.youEarnedAchievement(_:), v10);

  InGameBannerData.init(type:title:body:image:clipData:)();
  v23 = static InGameBannerData.encode(bannerData:)();
  if (v24 >> 60 == 15)
  {
    static GKLog.general.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "achievementEarnedEvent: InGameBannerData could not be encoded", v27, 2u);
    }

    (*(v30 + 8))(v3, v31);
  }

  else
  {
    v28 = v23;
    v29 = v24;
    sub_100006034(v23, v24);
    sub_1001B9874(v28, v29);
  }

  (*(v18 + 8))(v22, v32);
  sub_1000057D8();
}

id OverlayServiceUtils.init()()
{
  ObjectType = swift_getObjectType();
  type metadata accessor for GameOverlayUIConfig.ServiceKind();
  sub_1000043C4();
  __chkstk_darwin(v2);
  sub_1000043B4();
  v5 = OBJC_IVAR___GKOverlayServiceUtils_dashboardClientProxy;
  (*(v6 + 104))(v4 - v3, enum case for GameOverlayUIConfig.ServiceKind.dashboard(_:));
  v7 = objc_allocWithZone(type metadata accessor for DashboardClientProxy());
  *&v0[v5] = DashboardClientProxy.init(serviceKind:)();
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_1001B9828(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1001B9874(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000072CC(a1, a2);
  }

  return a1;
}

uint64_t sub_1001B98D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = sub_1001BA724(a1, a2);
  sub_1001B247C(v9, v10);
  sub_100004460();
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  sub_1001BA7F4();
  if (sub_1001BA764())
  {
    sub_1001B247C(a2, a3);
    sub_1001BA734();
    if (!v13)
    {
      goto LABEL_14;
    }

    v5 = v12;
  }

  if (v4)
  {
    *(*(*v3 + 56) + 8 * v5) = a1;
    sub_1001BA794();
  }

  else
  {
    v16 = sub_1001BA7B0();
    v17(v16);
    sub_1001BA794();
  }
}

uint64_t sub_1001B99D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1001B247C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_1001A6C04(&qword_1003B5D80);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_1001B247C(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    *(*(v20 + 56) + 8 * v16) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_10025380C(v16, a2, a3, a1, v20);
  }
}

uint64_t sub_1001B9B34()
{
  sub_10000469C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1001B247C(v3, v1);
  sub_100004460();
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  sub_1001A6C04(&qword_1003B6390);
  if (sub_1001BA764())
  {
    sub_1001B247C(v4, v2);
    sub_1001BA734();
    if (!v15)
    {
      goto LABEL_14;
    }

    v12 = v14;
  }

  v16 = *v0;
  if (v13)
  {
    v17 = (*(v16 + 56) + 16 * v12);
    *v17 = v8;
    v17[1] = v6;
    sub_1000057D8();
  }

  else
  {
    sub_100253838(v12, v4, v2, v8, v6, v16);
    sub_1000057D8();
  }
}

uint64_t sub_1001B9C4C(uint64_t a1, Swift::UInt a2)
{
  sub_1001B252C(a2);
  sub_100004460();
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v5;
  v9 = v6;
  sub_1001A6C04(&qword_1003B6370);
  if (!sub_1001BA834())
  {
    goto LABEL_5;
  }

  v10 = sub_1001B252C(a2);
  if ((v9 & 1) != (v11 & 1))
  {
LABEL_13:
    type metadata accessor for GKAppMetadataEnvironment(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v8 = v10;
LABEL_5:
  if (v9)
  {
    *(*(*v2 + 56) + 8 * v8) = a1;
    sub_1001BA7E0();
  }

  else
  {
    sub_100006054();
    sub_1001BA7E0();

    return sub_100253884(v14, v15, v16, v17);
  }
}

void sub_1001B9D70()
{
  sub_1001BA7D4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1001B2590(v3, v1 & 1);
  sub_100004460();
  if (v9)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  sub_1001A6C04(&qword_1003B62B0);
  if (sub_1001BA744())
  {
    sub_1001B2590(v4, v2 & 1);
    sub_1001BA734();
    if (!v13)
    {
      goto LABEL_14;
    }

    v10 = v12;
  }

  if (v11)
  {
    *(*(*v0 + 56) + 8 * v10) = v6;
    sub_1001BA7E0();
  }

  else
  {
    sub_100006054();
    sub_1001BA7E0();

    sub_1002538C8(v15, v16, v17, v18, v19);
  }
}

void sub_1001B9E70()
{
  sub_10000469C();
  v2 = v1;
  type metadata accessor for NWEndpoint();
  sub_1000043C4();
  __chkstk_darwin(v3);
  sub_1000043B4();
  v6 = v5 - v4;
  sub_1001B2608();
  sub_100004460();
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v7;
  v11 = v8;
  sub_1001A6C04(&qword_1003B5D70);
  if (!sub_1001BA744())
  {
    goto LABEL_5;
  }

  v12 = sub_1001B2608();
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v12;
LABEL_5:
  v14 = *v0;
  if (v11)
  {
    *(*(v14 + 56) + 8 * v10) = v2;
    sub_1000057D8();
  }

  else
  {
    v16 = sub_100006054();
    v17(v16);
    sub_100253908(v10, v6, v2, v14);
    sub_1000057D8();
  }
}

uint64_t sub_1001B9FE4()
{
  sub_10000469C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_1001BA724(v11, v9);
  sub_1001B269C(v13, v14, v15, v16);
  sub_100004460();
  if (v19)
  {
    __break(1u);
    goto LABEL_13;
  }

  v20 = v17;
  v21 = v18;
  sub_1001A6C04(&qword_1003B6C40);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v2 & 1, v0))
  {
    goto LABEL_5;
  }

  v22 = sub_100006054();
  v24 = sub_1001B269C(v22, v23, v6, v4);
  if ((v21 & 1) != (v25 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v20 = v24;
LABEL_5:
  v26 = *v0;
  if (v21)
  {
    *(*(v26 + 56) + 8 * v20) = v12;
    sub_1000057D8();

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1002539B0(v20, v10, v8, v6, v4, v12, v26);

    sub_1000057D8();
  }
}

void sub_1001BA14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = sub_1001BA724(a1, a2);
  sub_1001B247C(v9, v10);
  sub_100004460();
  if (v11)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_1001BA7F4();
  if (sub_1001BA764())
  {
    sub_1001B247C(a2, a3);
    sub_1001BA734();
    if (!v13)
    {
      goto LABEL_14;
    }

    v5 = v12;
  }

  if (v4)
  {
    *(*(*v3 + 56) + 8 * v5) = a1;
    sub_1001BA794();
  }

  else
  {
    v16 = sub_1001BA7B0();
    v17(v16);
    sub_1001BA794();
  }
}

_OWORD *sub_1001BA248()
{
  sub_1001BA7D4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1001BA724(v5, v3);
  sub_1001B247C(v7, v8);
  sub_100004460();
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  sub_1001A6C04(&qword_1003B5D58);
  if (sub_1001BA744())
  {
    sub_1001B247C(v4, v2);
    sub_1001BA784();
    if (!v15)
    {
      goto LABEL_14;
    }

    v12 = v14;
  }

  v16 = *v0;
  if (v13)
  {
    sub_100005BE0(*(v16 + 56) + 32 * v12);
    sub_1001BA7E0();

    return sub_100005C2C(v17, v18);
  }

  else
  {
    sub_1002539FC(v12, v4, v2, v6, v16);
    sub_1001BA7E0();
  }
}

uint64_t sub_1001BA358()
{
  sub_1001BA7D4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1001BA724(v5, v3);
  sub_1001B247C(v7, v8);
  sub_100004460();
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  sub_1001A6C04(&qword_1003B5D68);
  if (sub_1001BA744())
  {
    sub_1001B247C(v4, v2);
    sub_1001BA734();
    if (!v15)
    {
      goto LABEL_14;
    }

    v12 = v14;
  }

  if (v13)
  {
    sub_1001BA7E0();

    return sub_1001BA6C8(v16, v17);
  }

  else
  {
    sub_100253A40(v12, v4, v2, v6, *v0);
    sub_1001BA7E0();
  }
}

uint64_t sub_1001BA460()
{
  sub_1001BA7D4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1001BA724(v5, v3);
  sub_1001B247C(v7, v8);
  sub_100004460();
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  sub_1001A6C04(&qword_1003B5D50);
  if (sub_1001BA744())
  {
    sub_1001B247C(v4, v2);
    sub_1001BA784();
    if (!v15)
    {
      goto LABEL_14;
    }

    v12 = v14;
  }

  v16 = *v0;
  if (v13)
  {
    *(*(v16 + 56) + 8 * v12) = v6;
    sub_1001BA7E0();
  }

  else
  {
    sub_10025380C(v12, v4, v2, v6, v16);
    sub_1001BA7E0();
  }
}

id sub_1001BA564(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1001B2734();
  sub_100004460();
  if (v8)
  {
    __break(1u);
LABEL_14:
    sub_1001BA684();
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v9 = v6;
  v10 = v7;
  sub_1001A6C04(&qword_1003B5D48);
  if (sub_1001BA834())
  {
    sub_1001B2734();
    sub_1001BA784();
    if (!v12)
    {
      goto LABEL_14;
    }

    v9 = v11;
  }

  v13 = *v3;
  if (v10)
  {
    v14 = (*(v13 + 56) + 16 * v9);
    *v14 = a1;
    v14[1] = a2;
  }

  else
  {
    sub_100253A80(v9, a3, a1, a2, v13);

    return a3;
  }
}

unint64_t sub_1001BA684()
{
  result = qword_1003B5B78;
  if (!qword_1003B5B78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003B5B78);
  }

  return result;
}

BOOL sub_1001BA744()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

BOOL sub_1001BA764()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

uint64_t sub_1001BA7F4()
{

  return sub_1001A6C04(v0);
}

uint64_t sub_1001BA814()
{

  return swift_dynamicCast();
}

BOOL sub_1001BA834()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

id sub_1001BA8C8()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {

    return sub_1001BA994(result);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ScopedIDsUtils.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_1001BA994(void *a1)
{
  v2 = [a1 connectionTypeHeader];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1001BAA1C(uint64_t a1)
{
  v2 = sub_1001D1200();
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  if (v2 == 1 << *(a1 + 32))
  {
    sub_1001B6A34();
  }

  else
  {
    sub_1001D1240(&v5, v2, v3, 0, a1);
  }
}

uint64_t sub_1001BAAD0()
{
  sub_1001D17CC();
  v1(0);
  if (v0)
  {
    sub_100005534();
    v2 = sub_1001D1994();
    v3(v2);
  }

  v4 = sub_1001D17A8();

  return sub_1001A9674(v4, v5, v6, v7);
}

uint64_t sub_1001BAB6C()
{
  sub_1001D17CC();
  sub_1001A6C04(&qword_1003B6088);
  if (v0)
  {
    sub_1001D10FC();
  }

  v1 = sub_1001D17A8();

  return sub_1001A9674(v1, v2, v3, v4);
}

uint64_t sub_1001BAC30()
{
  sub_1001D17CC();
  sub_1001A6C04(v1);
  if (v0)
  {
    sub_100005534();
    v2 = sub_1001D1994();
    v3(v2);
  }

  v4 = sub_1001D17A8();

  return sub_1001A9674(v4, v5, v6, v7);
}

uint64_t sub_1001BACB8()
{
  sub_1001D17CC();
  type metadata accessor for MultiplayerActivityEventFilter.TrackedSession(0);
  if (v0)
  {
    sub_1000056D0();
  }

  v1 = sub_1001D17A8();

  return sub_1001A9674(v1, v2, v3, v4);
}

uint64_t sub_1001BAD74()
{
  sub_1001D1B98();
  sub_1001A6C04(&unk_1003B6170);
  v2 = swift_allocError();
  *v3 = v0;

  return _swift_continuation_throwingResumeWithError(v1, v2);
}

uint64_t sub_1001BADE0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = *(*(a1 + 64) + 40);
  *v4 = a2;
  *(v4 + 8) = a3;
  *(v4 + 16) = a4;
  return swift_continuation_throwingResume();
}

uint64_t sub_1001BAE04(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  *(v3 + 8) = a3;
  return swift_continuation_throwingResume();
}

uint64_t sub_1001BAE28()
{
  sub_1001D1B98();
  type metadata accessor for URL();
  sub_100005780();
  v0 = sub_1001D1B80();
  v1(v0);

  return swift_continuation_throwingResume();
}

uint64_t sub_1001BAEC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001BAF50;

  return sub_1001BB0DC();
}

uint64_t sub_1001BAF50()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 24) = v3;

  v4 = sub_10000448C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001BB038()
{
  sub_1000057FC();
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = [*(v0 + 24) playerID];

    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  sub_1001D1874();

  return v5(v1, v4);
}

uint64_t sub_1001BB0DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001BB168;

  return sub_1001BFD24();
}

uint64_t sub_1001BB168()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 24) = v3;

  v4 = sub_10000448C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001BB250()
{
  sub_100005528();
  result = sub_1001E6E2C(*(v0 + 24));
  v2 = *(v0 + 24);
  if (result)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v3 = *(v2 + 32);
    }
  }

  else
  {

    v3 = 0;
  }

  sub_1001D17DC();

  return v4(v3);
}

uint64_t sub_1001BB308()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1001BB398;

  return sub_1001BAEC4();
}

uint64_t sub_1001BB398()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;

  v5 = sub_10000448C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1001BB480()
{
  sub_1001D1A74();
  sub_1001AFA50();
  if (*(v0 + 40))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = String._bridgeToObjectiveC()();

      v4 = [v2 credentialForPlayerID:v3];

      if (v4)
      {
        sub_1001D1488();
        sub_1001D19F4();

        return v7(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }

    else
    {
    }
  }

  type metadata accessor for GameServicesError();
  sub_100004474();
  sub_100005624(v14, v15);
  sub_1001D160C();
  sub_1001D162C();
  static GameServicesError.illegalState(message:)();
  swift_willThrow();
  sub_1001D1598();
  sub_1001D19F4();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1001BB5F4@<X0>(NSString a1@<X3>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  v17 = a2;
  v18 = a3;
  v4 = type metadata accessor for Locale.Language();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = String._bridgeToObjectiveC()();
  if (a1)
  {
    a1 = String._bridgeToObjectiveC()();
  }

  v9 = objc_opt_self();
  Locale.language.getter();
  Locale.Language.minimalIdentifier.getter();
  (*(v5 + 8))(v7, v4);
  v10 = String._bridgeToObjectiveC()();

  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 cacheDatabaseURLForBundleID:v8 playerID:a1 language:v10 name:v11 fileManager:v17];

  if (v12)
  {
    v13 = v18;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = 0;
  }

  else
  {
    v14 = 1;
    v13 = v18;
  }

  v15 = type metadata accessor for URL();
  return sub_1001A9674(v13, v14, 1, v15);
}

uint64_t sub_1001BB7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1001BB804, 0, 0);
}

uint64_t sub_1001BB804()
{
  sub_1000057FC();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v6 = sub_1001D188C(v5);
  *v6 = v7;
  sub_1001D1798(v6);

  return sub_1001BB308();
}

uint64_t sub_1001BB8A8()
{
  sub_1000057FC();
  sub_1001D14C0();
  v4 = v3;
  sub_1001D14B0();
  *v5 = v4;
  v6 = *v2;
  sub_100004410();
  *v7 = v6;
  v4[8] = v0;

  if (v1)
  {
    v4[11] = v1;
    v8 = sub_1001D14E4();

    return _swift_task_switch(v8, v9, v10);
  }

  else
  {
    swift_task_alloc();
    sub_1001D1644();
    v4[9] = v11;
    *v11 = v12;
    sub_1001D1B4C(v11);
    v15 = v4[2];

    return sub_1001C6078(v15, v0, v13, &unk_1002C4188, v14);
  }
}

uint64_t sub_1001BBA18()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v3 = v2;
  v4 = *v1;
  sub_100004410();
  *v5 = v4;
  *(v6 + 80) = v0;

  sub_1001B6A34();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001BBB10()
{
  sub_100005528();

  sub_1001D1B40();
  v1 = sub_10000448C();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1001BBB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_1001A6C04(&qword_1003B5800);
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_1001BBC14, 0, 0);
}

uint64_t sub_1001BBC14()
{
  sub_100006B50();
  sub_1001AFA50();
  if (sub_1001D1AB8() && (sub_1001D19AC(), type metadata accessor for GKGameKitDirectoryServicePrivateImpl(), v3 = v2, v4 = v0, v5 = sub_1001D15A8(), (v1[9] = v5) != 0))
  {
    v6 = swift_task_alloc();
    v1[10] = v6;
    *v6 = v1;
    v6[1] = sub_1001BBD84;
    sub_1001D1934(v1[6]);
    sub_1001D18C4();

    return sub_1001BC018(v7, v8, v9);
  }

  else
  {
    type metadata accessor for GameServicesError();
    sub_100004474();
    sub_100005624(v12, v13);
    sub_1001D1528();
    sub_1001D1558();
    swift_willThrow();

    sub_1000046F8();
    sub_1001D18C4();

    return v15(v14, v15, v16, v17, v18, v19, v20, v21);
  }
}

uint64_t sub_1001BBD84()
{
  sub_1000057FC();
  sub_1001D1548();
  v4 = v3;
  sub_1001D14B0();
  *v5 = v4;
  v6 = *v2;
  sub_100004410();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  sub_1001B6A34();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1001BBE8C()
{
  sub_1000057FC();
  v1 = v0[8];
  v2 = v0[9];
  sub_1001BAAD0();

  v3 = type metadata accessor for URL();
  if (sub_1001A969C(v1, 1, v3) == 1)
  {
    sub_1001B2DDC(v0[8], &qword_1003B5800);
    v4 = 1;
  }

  else
  {
    (*(*(v3 - 8) + 32))(v0[2], v0[8], v3);
    v4 = 0;
  }

  sub_1001A9674(v0[2], v4, 1, v3);

  sub_1001B69F0();

  return v5();
}

uint64_t sub_1001BBFB4()
{
  sub_100005528();

  sub_1000046F8();

  return v1();
}

uint64_t sub_1001BC018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_1001BC03C, 0, 0);
}

uint64_t sub_1001BC03C()
{
  sub_100006B50();
  sub_1001AFA50();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  sub_1001A6C04(&qword_1003B6040);
  *v5 = v0;
  v5[1] = sub_1001BC144;
  sub_1001B6A34();
  sub_1001D18C4();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1001BC144()
{
  sub_100005528();
  sub_1000057F0();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  v5 = *v1;
  sub_100004410();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {
  }

  sub_1001B6A34();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001BC26C()
{
  sub_100005528();

  sub_1000046F8();

  return v0();
}

uint64_t sub_1001BC2C8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1001BC2E8, 0, 0);
}

uint64_t sub_1001BC2E8()
{
  sub_1000057FC();
  v3 = sub_1001D1A88();
  v4 = sub_1001D165C(v3);
  v5 = sub_1001D1818(v4);
  v5[2] = v2;
  v5[3] = &unk_1002C4140;
  v5[4] = v1;
  v6 = swift_task_alloc();
  v7 = sub_1001D1880(v6);
  *v7 = v8;
  sub_1001D180C(v7);

  return sub_1001BE588(&unk_1002C4150, v0);
}

uint64_t sub_1001BC3B0()
{
  sub_1000057FC();
  sub_1001D1548();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  v5 = *v1;
  sub_100004410();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    sub_1001B6A34();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = sub_1001D1488();

    return v11(v10);
  }
}

uint64_t sub_1001BC4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_1001BC508, 0, 0);
}

uint64_t sub_1001BC508()
{
  sub_100006B50();
  sub_1001AFA50();
  if (swift_unknownObjectWeakLoadStrong() && (v2 = v0[3], v1 = v0[4], sub_1001A7B44(0, &qword_1003B5FB0), v3 = v2, v4 = v1, sub_1001B6ACC(), v5 = sub_1001CA78C(), (v0[7] = v5) != 0))
  {
    v6 = v5;
    v7 = v0[6];
    v8 = swift_task_alloc();
    v9 = sub_1001D1BB0(v8);
    *(v9 + 16) = v6;
    *(v9 + 24) = v7;
    v10 = swift_task_alloc();
    v0[9] = v10;
    sub_1001A6C04(&qword_1003B6028);
    sub_1001D15D8();
    *v10 = v11;
    sub_1001D1800();
    sub_1001D15C8();
    sub_1001D18C4();

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    type metadata accessor for GameServicesError();
    sub_100004474();
    sub_100005624(v21, v22);
    sub_1001D160C();
    sub_1001D162C();
    static GameServicesError.illegalState(message:)();
    swift_willThrow();
    sub_1001D1598();
    sub_1001D18C4();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30);
  }
}