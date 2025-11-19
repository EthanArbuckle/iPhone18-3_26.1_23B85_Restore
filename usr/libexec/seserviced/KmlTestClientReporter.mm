@interface KmlTestClientReporter
- (BOOL)didReceiveInvitationRequestWithUuid:(id)a3 ownerKeyIdentifier:(id)a4 friendKeyIdentifier:(id)a5 targetType:(int64_t)a6;
- (KmlTestClientReporter)init;
- (void)cleanup;
- (void)didReceiveSharingInvitationWithIdentifier:(id)a3 uuid:(id)a4 metadata:(id)a5 ownerIdsId:(id)a6;
- (void)finishedSharingForKey:(id)a3 result:(id)a4;
- (void)passcodeRetryRequestedFor:(id)a3 retriesLeft:(unint64_t)a4;
- (void)registerCrossPlatformMessageSendHandler:(id)a3;
- (void)registerFriendSideInvitationUnusableHandler:(id)a3;
- (void)registerFriendSidePasscodeRetryRequestHandler:(id)a3;
- (void)registerFriendSideSharingTestCompletion:(id)a3;
- (void)registerFriendSideSharingTestInvitationUUIDHandler:(id)a3;
- (void)registerOwnerSideInvitationRequestHandler:(id)a3;
- (void)registerOwnerSideSharingTestInvitations:(id)a3 callback:(id)a4;
- (void)reportUnusableInvitation:(id)a3 reason:(id)a4;
- (void)requestAuthorizationForSharingInvitationIdentifier:(id)a3;
- (void)sendCrossPlatformSharingMessage:(id)a3 toMailboxIdentifier:(id)a4;
- (void)sharingCompleteForInvitationIdentifier:(id)a3 friendKeyIdentifier:(id)a4 status:(id)a5;
@end

@implementation KmlTestClientReporter

- (KmlTestClientReporter)init
{
  v12.receiver = self;
  v12.super_class = KmlTestClientReporter;
  v2 = [(KmlTestClientReporter *)&v12 init];
  if (v2)
  {
    v3 = +[NSMutableSet set];
    callbackInfoSet = v2->_callbackInfoSet;
    v2->_callbackInfoSet = v3;

    friendCompletionHandler = v2->_friendCompletionHandler;
    v2->_friendCompletionHandler = 0;

    friendInvitationHandler = v2->_friendInvitationHandler;
    v2->_friendInvitationHandler = 0;

    ownerInvitationRequestHandler = v2->_ownerInvitationRequestHandler;
    v2->_ownerInvitationRequestHandler = 0;

    friendInvitationUnusableHandler = v2->_friendInvitationUnusableHandler;
    v2->_friendInvitationUnusableHandler = 0;

    crossPlatformSendMessageHandler = v2->_crossPlatformSendMessageHandler;
    v2->_crossPlatformSendMessageHandler = 0;

    friendPasscodeRetryRequestHandler = v2->_friendPasscodeRetryRequestHandler;
    v2->_friendPasscodeRetryRequestHandler = 0;

    *&v2->_cleanUpCount = 0;
  }

  return v2;
}

- (void)cleanup
{
  [(NSMutableSet *)self->_callbackInfoSet removeAllObjects];
  callbackInfoSet = self->_callbackInfoSet;
  self->_callbackInfoSet = 0;

  *&self->_cleanUpCount = 0;
  friendCompletionHandler = self->_friendCompletionHandler;
  self->_friendCompletionHandler = 0;

  friendInvitationHandler = self->_friendInvitationHandler;
  self->_friendInvitationHandler = 0;

  ownerInvitationRequestHandler = self->_ownerInvitationRequestHandler;
  self->_ownerInvitationRequestHandler = 0;

  friendInvitationUnusableHandler = self->_friendInvitationUnusableHandler;
  self->_friendInvitationUnusableHandler = 0;

  crossPlatformSendMessageHandler = self->_crossPlatformSendMessageHandler;
  self->_crossPlatformSendMessageHandler = 0;

  friendPasscodeRetryRequestHandler = self->_friendPasscodeRetryRequestHandler;
  self->_friendPasscodeRetryRequestHandler = 0;
}

- (void)registerFriendSideSharingTestInvitationUUIDHandler:(id)a3
{
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[KmlTestClientReporter registerFriendSideSharingTestInvitationUUIDHandler:]";
    v10 = 1024;
    v11 = 162;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : ", &v8, 0x12u);
  }

  v6 = objc_retainBlock(v4);
  friendInvitationHandler = self->_friendInvitationHandler;
  self->_friendInvitationHandler = v6;
}

- (void)registerFriendSideSharingTestCompletion:(id)a3
{
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[KmlTestClientReporter registerFriendSideSharingTestCompletion:]";
    v10 = 1024;
    v11 = 168;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : ", &v8, 0x12u);
  }

  v6 = objc_retainBlock(v4);
  friendCompletionHandler = self->_friendCompletionHandler;
  self->_friendCompletionHandler = v6;
}

- (void)registerOwnerSideSharingTestInvitations:(id)a3 callback:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[KmlTestClientReporter registerOwnerSideSharingTestInvitations:callback:]";
    v13 = 1024;
    v14 = 174;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s : %i : ", &v11, 0x12u);
  }

  v9 = objc_alloc_init(KmlTestClientCallbackInfo);
  v10 = [(KmlTestClientCallbackInfo *)v9 invitationSet];
  [v10 addObjectsFromArray:v7];

  [(KmlTestClientCallbackInfo *)v9 setOwnerCompletionHandler:v6];
  [(NSMutableSet *)self->_callbackInfoSet addObject:v9];
  ++self->_totalCallbacks;
}

- (void)registerOwnerSideInvitationRequestHandler:(id)a3
{
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[KmlTestClientReporter registerOwnerSideInvitationRequestHandler:]";
    v10 = 1024;
    v11 = 184;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : ", &v8, 0x12u);
  }

  v6 = objc_retainBlock(v4);
  ownerInvitationRequestHandler = self->_ownerInvitationRequestHandler;
  self->_ownerInvitationRequestHandler = v6;
}

- (void)registerFriendSideInvitationUnusableHandler:(id)a3
{
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[KmlTestClientReporter registerFriendSideInvitationUnusableHandler:]";
    v10 = 1024;
    v11 = 190;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : ", &v8, 0x12u);
  }

  v6 = objc_retainBlock(v4);
  friendInvitationUnusableHandler = self->_friendInvitationUnusableHandler;
  self->_friendInvitationUnusableHandler = v6;
}

- (void)registerFriendSidePasscodeRetryRequestHandler:(id)a3
{
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[KmlTestClientReporter registerFriendSidePasscodeRetryRequestHandler:]";
    v10 = 1024;
    v11 = 196;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : ", &v8, 0x12u);
  }

  v6 = objc_retainBlock(v4);
  friendPasscodeRetryRequestHandler = self->_friendPasscodeRetryRequestHandler;
  self->_friendPasscodeRetryRequestHandler = v6;
}

- (void)registerCrossPlatformMessageSendHandler:(id)a3
{
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[KmlTestClientReporter registerCrossPlatformMessageSendHandler:]";
    v10 = 1024;
    v11 = 202;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : ", &v8, 0x12u);
  }

  v6 = objc_retainBlock(v4);
  crossPlatformSendMessageHandler = self->_crossPlatformSendMessageHandler;
  self->_crossPlatformSendMessageHandler = v6;
}

- (void)didReceiveSharingInvitationWithIdentifier:(id)a3 uuid:(id)a4 metadata:(id)a5 ownerIdsId:(id)a6
{
  friendInvitationHandler = self->_friendInvitationHandler;
  if (friendInvitationHandler)
  {
    v7 = *(friendInvitationHandler + 2);

    v7();
  }

  else
  {
    v8 = KmlLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[KmlTestClientReporter didReceiveSharingInvitationWithIdentifier:uuid:metadata:ownerIdsId:]";
      v11 = 1024;
      v12 = 209;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s : %i : A callback is not registered. Can't report to test client", &v9, 0x12u);
    }
  }
}

- (void)finishedSharingForKey:(id)a3 result:(id)a4
{
  friendCompletionHandler = self->_friendCompletionHandler;
  if (friendCompletionHandler)
  {
    v5 = *(friendCompletionHandler + 2);

    v5();
  }

  else
  {
    v6 = KmlLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[KmlTestClientReporter finishedSharingForKey:result:]";
      v9 = 1024;
      v10 = 219;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %i : A callback is not registered. Can't report to test client", &v7, 0x12u);
    }
  }
}

- (void)reportUnusableInvitation:(id)a3 reason:(id)a4
{
  friendInvitationUnusableHandler = self->_friendInvitationUnusableHandler;
  if (friendInvitationUnusableHandler)
  {
    v5 = *(friendInvitationUnusableHandler + 2);

    v5();
  }

  else
  {
    v6 = KmlLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[KmlTestClientReporter reportUnusableInvitation:reason:]";
      v9 = 1024;
      v10 = 230;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %i : A callback is not registered. Can't report to test client", &v7, 0x12u);
    }
  }
}

- (void)requestAuthorizationForSharingInvitationIdentifier:(id)a3
{
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[KmlTestClientReporter requestAuthorizationForSharingInvitationIdentifier:]";
    v6 = 1024;
    v7 = 239;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : Not implemented", &v4, 0x12u);
  }
}

- (void)sharingCompleteForInvitationIdentifier:(id)a3 friendKeyIdentifier:(id)a4 status:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(NSMutableSet *)self->_callbackInfoSet count])
  {
    v30 = v9;
    v11 = v10;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = self->_callbackInfoSet;
    v13 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v31 objects:v45 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
LABEL_4:
      v16 = 0;
      while (1)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v31 + 1) + 8 * v16);
        v18 = [v17 invitationSet];
        v19 = [v18 containsObject:v8];

        if (v19)
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v31 objects:v45 count:16];
          if (v14)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v20 = v17;

      if (!v20)
      {
        goto LABEL_21;
      }

      v21 = KmlLogger();
      v10 = v11;
      v9 = v30;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 136316162;
        v36 = "[KmlTestClientReporter sharingCompleteForInvitationIdentifier:friendKeyIdentifier:status:]";
        v37 = 1024;
        v38 = 257;
        v39 = 2112;
        v40 = v8;
        v41 = 2112;
        v42 = v30;
        v43 = 2112;
        v44 = v10;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s : %i : Sharing completed for Invitation ID: %@, friend key Id : %@, error: %@", buf, 0x30u);
      }

      if (v30)
      {
        v22 = v30;
      }

      else
      {
        v22 = @"null";
      }

      v23 = [v20 results];
      [v23 setObject:v22 forKeyedSubscript:v8];

      v24 = [v20 invitationSet];
      [v24 removeObject:v8];

      v25 = [v20 invitationSet];
      v26 = [v25 count];

      if (!v26)
      {
        v27 = KmlLogger();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v36 = "[KmlTestClientReporter sharingCompleteForInvitationIdentifier:friendKeyIdentifier:status:]";
          v37 = 1024;
          v38 = 261;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s : %i : Heard from all invitiations. Reporting back", buf, 0x12u);
        }

        v28 = [v20 ownerCompletionHandler];
        v29 = [v20 results];
        (v28)[2](v28, v29);

        [(NSMutableSet *)self->_callbackInfoSet removeObject:v20];
      }
    }

    else
    {
LABEL_10:

      v20 = 0;
LABEL_21:
      v10 = v11;
      v9 = v30;
    }
  }

  else
  {
    v20 = KmlLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v36 = "[KmlTestClientReporter sharingCompleteForInvitationIdentifier:friendKeyIdentifier:status:]";
      v37 = 1024;
      v38 = 245;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s : %i : A callback is not registered. Can't report to test client", buf, 0x12u);
    }
  }
}

- (BOOL)didReceiveInvitationRequestWithUuid:(id)a3 ownerKeyIdentifier:(id)a4 friendKeyIdentifier:(id)a5 targetType:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = KmlLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "[KmlTestClientReporter didReceiveInvitationRequestWithUuid:ownerKeyIdentifier:friendKeyIdentifier:targetType:]";
    v18 = 1024;
    v19 = 270;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s : %i : ", &v16, 0x12u);
  }

  ownerInvitationRequestHandler = self->_ownerInvitationRequestHandler;
  if (ownerInvitationRequestHandler)
  {
    ownerInvitationRequestHandler[2](ownerInvitationRequestHandler, v9, v10, v11);
  }

  else
  {
    v14 = KmlLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = 136315394;
      v17 = "[KmlTestClientReporter didReceiveInvitationRequestWithUuid:ownerKeyIdentifier:friendKeyIdentifier:targetType:]";
      v18 = 1024;
      v19 = 272;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s : %i : A callback is not registered. Can't report to test client", &v16, 0x12u);
    }
  }

  return ownerInvitationRequestHandler != 0;
}

- (void)sendCrossPlatformSharingMessage:(id)a3 toMailboxIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v17 = "[KmlTestClientReporter sendCrossPlatformSharingMessage:toMailboxIdentifier:]";
    v18 = 1024;
    v19 = 282;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s : %i : Message to send: %@", buf, 0x1Cu);
  }

  v15 = 0;
  v9 = [v6 encodeWithError:&v15];
  v10 = v15;
  if (v10)
  {
    v11 = KmlLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v17 = "[KmlTestClientReporter sendCrossPlatformSharingMessage:toMailboxIdentifier:]";
      v18 = 1024;
      v19 = 294;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s : %i : Failed to encode message with - %@", buf, 0x1Cu);
    }

LABEL_13:

    goto LABEL_14;
  }

  crossPlatformSendMessageHandler = self->_crossPlatformSendMessageHandler;
  v13 = KmlLogger();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (!crossPlatformSendMessageHandler)
  {
    if (v14)
    {
      *buf = 136315394;
      v17 = "[KmlTestClientReporter sendCrossPlatformSharingMessage:toMailboxIdentifier:]";
      v18 = 1024;
      v19 = 290;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s : %i : Use Mock Cross platform channel over IDS", buf, 0x12u);
    }

    v11 = sub_10037E00C();
    sub_1003CD554(v11, v9, v7);
    goto LABEL_13;
  }

  if (v14)
  {
    *buf = 136315394;
    v17 = "[KmlTestClientReporter sendCrossPlatformSharingMessage:toMailboxIdentifier:]";
    v18 = 1024;
    v19 = 287;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s : %i : Cross platform send handler available", buf, 0x12u);
  }

  (*(self->_crossPlatformSendMessageHandler + 2))();
LABEL_14:
}

- (void)passcodeRetryRequestedFor:(id)a3 retriesLeft:(unint64_t)a4
{
  friendPasscodeRetryRequestHandler = self->_friendPasscodeRetryRequestHandler;
  if (friendPasscodeRetryRequestHandler)
  {
    v5 = *(friendPasscodeRetryRequestHandler + 2);

    v5();
  }

  else
  {
    v6 = KmlLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[KmlTestClientReporter passcodeRetryRequestedFor:retriesLeft:]";
      v9 = 1024;
      v10 = 301;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %i : A callback is not registered. Can't report to test client", &v7, 0x12u);
    }
  }
}

@end