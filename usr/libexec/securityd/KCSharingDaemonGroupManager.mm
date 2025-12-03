@interface KCSharingDaemonGroupManager
+ (KCSharingDaemonGroupManager)sharedInstance;
- (KCSharingDaemonGroupManager)initWithSyncController:(id)controller messagingdConnection:(id)connection;
- (KCSharingXPCListenerDelegate)xpcListenerDelegate;
- (id)fetchLocalShareForGroupID:(id)d;
- (id)translateSyncErrorForGroupRequest:(id)request zoneID:(id)d;
- (void)acceptGroupInvite:(id)invite completion:(id)completion;
- (void)acceptGroupInvite:(id)invite startTime:(unint64_t)time completion:(id)completion;
- (void)acceptInviteForGroupID:(id)d completion:(id)completion;
- (void)checkAvailabilityForHandles:(id)handles completion:(id)completion;
- (void)declineGroupInvite:(id)invite startTime:(unint64_t)time completion:(id)completion;
- (void)declineInviteForGroupID:(id)d completion:(id)completion;
- (void)fetchAndUpdateParticipantsForGroup:(id)group share:(id)share isCreateOperation:(BOOL)operation startTime:(unint64_t)time completion:(id)completion;
- (void)fetchCKShareMetadataForGroupInvites:(id)invites completion:(id)completion;
- (void)fetchReceivedPendingGroupsExcludingGroupIDs:(id)ds completion:(id)completion;
- (void)fetchShareParticipantsForParticipants:(id)participants completion:(id)completion;
- (void)getGroupByGroupID:(id)d completion:(id)completion;
- (void)handleGroupCreateRequest:(id)request completion:(id)completion;
- (void)handleGroupDeleteRequest:(id)request completion:(id)completion;
- (void)handleGroupFetchRequest:(id)request completion:(id)completion;
- (void)handleGroupLeaveRequest:(id)request completion:(id)completion;
- (void)handleGroupUpdateRequest:(id)request completion:(id)completion;
- (void)sendGroupsUpdatedNotifications;
@end

@implementation KCSharingDaemonGroupManager

- (KCSharingXPCListenerDelegate)xpcListenerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcListenerDelegate);

  return WeakRetained;
}

- (void)fetchShareParticipantsForParticipants:(id)participants completion:(id)completion
{
  participantsCopy = participants;
  completionCopy = completion;
  v43 = participantsCopy;
  if (completionCopy)
  {
    v42 = completionCopy;
    if (participantsCopy && [participantsCopy count])
    {
      v45 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [participantsCopy count]);
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v8 = participantsCopy;
      v9 = [v8 countByEnumeratingWithState:&v62 objects:v72 count:16];
      if (v9)
      {
        v10 = *v63;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v63 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v62 + 1) + 8 * i);
            handle = [v12 handle];
            v14 = handle == 0;

            if (v14)
            {
              loggingIdentifier = self->_loggingIdentifier;
              handle2 = KCSharingLogObject();
              if (os_log_type_enabled(handle2, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf) = 138477827;
                *(&buf + 4) = v12;
                _os_log_error_impl(&_mh_execute_header, handle2, OS_LOG_TYPE_ERROR, "Skipping participant without handle. This is a bug! %{private}@", &buf, 0xCu);
              }
            }

            else
            {
              handle2 = [v12 handle];
              [v45 setObject:v12 forKeyedSubscript:handle2];
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v62 objects:v72 count:16];
        }

        while (v9);
      }

      v44 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v17 = v8;
      v18 = [v17 countByEnumeratingWithState:&v58 objects:v71 count:16];
      if (v18)
      {
        v19 = *v59;
        do
        {
          for (j = 0; j != v18; j = j + 1)
          {
            if (*v59 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v58 + 1) + 8 * j);
            if (([v21 isCurrentUser] & 1) == 0)
            {
              handle3 = [v21 handle];
              if (objc_opt_respondsToSelector())
              {
                _appearsToBeEmail = [handle3 _appearsToBeEmail];

                if (_appearsToBeEmail)
                {
                  v24 = [CKUserIdentityLookupInfo alloc];
                  handle4 = [v21 handle];
                  v26 = [v24 initWithEmailAddress:handle4];
                  [v44 addObject:v26];

LABEL_35:
                  continue;
                }
              }

              else
              {
                v27 = KCSharingLogObject();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(buf) = 0;
                  _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "IMFoundation not linked correctly. Returning NO from KCSharingHandleIsEmail", &buf, 2u);
                }
              }

              handle5 = [v21 handle];
              if (objc_opt_respondsToSelector())
              {
                _appearsToBePhoneNumber = [handle5 _appearsToBePhoneNumber];

                if (_appearsToBePhoneNumber)
                {
                  v30 = [CKUserIdentityLookupInfo alloc];
                  handle4 = [v21 handle];
                  v31 = [v30 initWithPhoneNumber:handle4];
                  [v44 addObject:v31];

                  goto LABEL_35;
                }
              }

              else
              {
                v32 = KCSharingLogObject();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(buf) = 0;
                  _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "IMFoundation not linked correctly. Returning NO from KCSharingHandleIsPhoneNumber", &buf, 2u);
                }
              }

              v33 = self->_loggingIdentifier;
              handle4 = KCSharingLogObject();
              if (os_log_type_enabled(handle4, OS_LOG_TYPE_ERROR))
              {
                handle6 = [v21 handle];
                LODWORD(buf) = 138477827;
                *(&buf + 4) = handle6;
                _os_log_error_impl(&_mh_execute_header, handle4, OS_LOG_TYPE_ERROR, "Participant handle %{private}@ appears to be neither an email or phone number, not looking it up in CloudKit", &buf, 0xCu);
              }

              goto LABEL_35;
            }
          }

          v18 = [v17 countByEnumeratingWithState:&v58 objects:v71 count:16];
        }

        while (v18);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v67 = 0x3032000000;
      v68 = sub_10004EAB8;
      v69 = sub_10004EAC8;
      v70 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v17 count]);
      if (sub_10001078C())
      {
        objc_initWeak(&location, self);
        syncController = [(KCSharingDaemonGroupManager *)self syncController];
        cloudCoreUtilities = [syncController cloudCoreUtilities];
        v52[0] = _NSConcreteStackBlock;
        v52[1] = 3221225472;
        v52[2] = sub_10004EAD0;
        v52[3] = &unk_1003349E8;
        objc_copyWeak(&v56, &location);
        v54 = v42;
        v53 = v45;
        p_buf = &buf;
        [cloudCoreUtilities fetchShareParticipantsFor:v44 completionHandler:v52];

        objc_destroyWeak(&v56);
        objc_destroyWeak(&location);
      }

      else
      {
        syncController2 = [(KCSharingDaemonGroupManager *)self syncController];
        container = [syncController2 container];

        v41 = [[CKFetchShareParticipantsOperation alloc] initWithUserIdentityLookupInfos:v44];
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_10004EFAC;
        v49[3] = &unk_100334A10;
        v49[4] = self;
        v50 = v45;
        v51 = &buf;
        [v41 setPerShareParticipantCompletionBlock:v49];
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_10004F240;
        v46[3] = &unk_100335FD8;
        v46[4] = self;
        v47 = v42;
        v48 = &buf;
        [v41 setFetchShareParticipantsCompletionBlock:v46];
        [container addOperation:v41];
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v37 = self->_loggingIdentifier;
      v38 = KCSharingLogObject();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "No or empty participant list for which to fetch share participants", &buf, 2u);
      }

      v45 = +[NSDictionary dictionary];
      (*(v42 + 2))(v42, v45, 0);
    }

    completionCopy = v42;
  }
}

- (id)fetchLocalShareForGroupID:(id)d
{
  dCopy = d;
  syncController = [(KCSharingDaemonGroupManager *)self syncController];
  store = [syncController store];
  v12 = 0;
  v7 = [store fetchCKShareFromMirrorForGroupID:dCopy error:&v12];
  v8 = v12;

  if (!v7 || v8)
  {
    loggingIdentifier = self->_loggingIdentifier;
    v10 = KCSharingLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v14 = dCopy;
      v15 = 2114;
      v16 = v8;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to find local share for groupID %{public}@ (%{public}@)", buf, 0x16u);
    }
  }

  return v7;
}

- (void)checkAvailabilityForHandles:(id)handles completion:(id)completion
{
  completionCopy = completion;
  v7 = [NSSet setWithArray:handles];
  allObjects = [v7 allObjects];

  v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [allObjects count]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = allObjects;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [[KCSharingParticipant alloc] initWithHandle:*(*(&v22 + 1) + 8 * v14) permissionLevel:0];
        [v9 addObject:v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10004F68C;
  v18[3] = &unk_1003349C0;
  selfCopy = self;
  v21 = completionCopy;
  v19 = v10;
  v16 = v10;
  v17 = completionCopy;
  [(KCSharingDaemonGroupManager *)self fetchShareParticipantsForParticipants:v9 completion:v18];
}

- (void)declineGroupInvite:(id)invite startTime:(unint64_t)time completion:(id)completion
{
  inviteCopy = invite;
  completionCopy = completion;
  loggingIdentifier = self->_loggingIdentifier;
  v11 = KCSharingLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    groupID = [inviteCopy groupID];
    *buf = 138543619;
    v22 = groupID;
    v23 = 2113;
    v24 = inviteCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Declining invite for group: %{public}@, %{private}@", buf, 0x16u);
  }

  v20 = inviteCopy;
  v13 = [NSArray arrayWithObjects:&v20 count:1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10004FAC8;
  v16[3] = &unk_1003348D0;
  v16[4] = self;
  v17 = inviteCopy;
  v18 = completionCopy;
  timeCopy = time;
  v14 = completionCopy;
  v15 = inviteCopy;
  [(KCSharingDaemonGroupManager *)self fetchCKShareMetadataForGroupInvites:v13 completion:v16];
}

- (void)declineInviteForGroupID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = mach_absolute_time();
    loggingIdentifier = self->_loggingIdentifier;
    v10 = KCSharingLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Declining group invite for %{public}@", buf, 0xCu);
    }

    messagingdConnection = [(KCSharingDaemonGroupManager *)self messagingdConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100050E0C;
    v12[3] = &unk_100334808;
    v12[4] = self;
    v14 = completionCopy;
    v15 = v8;
    v13 = dCopy;
    [messagingdConnection fetchReceivedInviteWithGroupID:v13 completion:v12];
  }
}

- (void)acceptGroupInvite:(id)invite startTime:(unint64_t)time completion:(id)completion
{
  inviteCopy = invite;
  completionCopy = completion;
  loggingIdentifier = self->_loggingIdentifier;
  v11 = KCSharingLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    groupID = [inviteCopy groupID];
    *buf = 138543619;
    v22 = groupID;
    v23 = 2113;
    v24 = inviteCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Accepting invite for %{public}@: %{private}@", buf, 0x16u);
  }

  v20 = inviteCopy;
  v13 = [NSArray arrayWithObjects:&v20 count:1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100051230;
  v16[3] = &unk_1003348D0;
  v16[4] = self;
  v17 = inviteCopy;
  v18 = completionCopy;
  timeCopy = time;
  v14 = completionCopy;
  v15 = inviteCopy;
  [(KCSharingDaemonGroupManager *)self fetchCKShareMetadataForGroupInvites:v13 completion:v16];
}

- (void)acceptGroupInvite:(id)invite completion:(id)completion
{
  completionCopy = completion;
  inviteCopy = invite;
  [(KCSharingDaemonGroupManager *)self acceptGroupInvite:inviteCopy startTime:mach_absolute_time() completion:completionCopy];
}

- (void)acceptInviteForGroupID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = mach_absolute_time();
    loggingIdentifier = self->_loggingIdentifier;
    v10 = KCSharingLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Accepting group invite for %{public}@", buf, 0xCu);
    }

    messagingdConnection = [(KCSharingDaemonGroupManager *)self messagingdConnection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000527B4;
    v12[3] = &unk_100334808;
    v12[4] = self;
    v14 = completionCopy;
    v15 = v8;
    v13 = dCopy;
    [messagingdConnection fetchReceivedInviteWithGroupID:v13 completion:v12];
  }
}

- (id)translateSyncErrorForGroupRequest:(id)request zoneID:(id)d
{
  requestCopy = request;
  dCopy = d;
  if (!requestCopy)
  {
    goto LABEL_19;
  }

  domain = [requestCopy domain];
  if (domain != @"KCSharingErrorDomain")
  {

LABEL_19:
    v22 = requestCopy;
    goto LABEL_20;
  }

  code = [requestCopy code];

  if (code != 14)
  {
    goto LABEL_19;
  }

  userInfo = [requestCopy userInfo];
  v11 = [userInfo objectForKeyedSubscript:NSMultipleUnderlyingErrorsKey];

  if (!v11 || ![v11 count])
  {
    v22 = requestCopy;
    goto LABEL_32;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = v12;
  v14 = *v30;
  v27 = v11;
  while (2)
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v30 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v29 + 1) + 8 * i);
      if ((CKErrorIsCode() & 1) == 0)
      {
        v22 = requestCopy;
LABEL_31:

        v11 = v27;
        goto LABEL_32;
      }

      userInfo2 = [v16 userInfo];
      v18 = [userInfo2 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
      v19 = [v18 objectForKeyedSubscript:dCopy];

      if (v19)
      {
        if (CKErrorIsCode())
        {
          loggingIdentifier = self->_loggingIdentifier;
          v25 = KCSharingLogObject();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v34 = dCopy;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Sync error translation: seems we were offline for zoneID=%{public}@, returning translated error", buf, 0xCu);
          }

          v26 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:36 userInfo:0];
        }

        else
        {
          v26 = requestCopy;
        }

        v22 = v26;

        goto LABEL_31;
      }
    }

    v13 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    v11 = v27;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_16:

  v20 = self->_loggingIdentifier;
  v21 = KCSharingLogObject();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v34 = dCopy;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Sync error translation: zoneID=%{public}@ did not error, returning nil", buf, 0xCu);
  }

  v22 = 0;
LABEL_32:

LABEL_20:

  return v22;
}

- (void)handleGroupDeleteRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = mach_absolute_time();
    loggingIdentifier = self->_loggingIdentifier;
    v10 = KCSharingLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      groupID = [requestCopy groupID];
      *buf = 138543362;
      v41 = groupID;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Group delete request for %{public}@", buf, 0xCu);
    }

    groupID2 = [requestCopy groupID];
    v13 = [(KCSharingDaemonGroupManager *)self fetchLocalShareForGroupID:groupID2];

    if (!v13)
    {
      v24 = self->_loggingIdentifier;
      v25 = KCSharingLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        groupID3 = [requestCopy groupID];
        *buf = 138543362;
        v41 = groupID3;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to fetch local share for %{public}@", buf, 0xCu);
      }

      v20 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:9 userInfo:0];
      completionCopy[2](completionCopy, v20);
      sub_10005019C(@"delete", 0, v8, v20);
      goto LABEL_19;
    }

    owner = [v13 owner];
    currentUserParticipant = [v13 currentUserParticipant];
    v16 = [owner isEqual:currentUserParticipant];

    if (v16)
    {
      syncController = [(KCSharingDaemonGroupManager *)self syncController];
      v44 = v13;
      v18 = [NSArray arrayWithObjects:&v44 count:1];
      v39 = 0;
      v19 = [syncController stageOutgoingShares:0 deletionsForShares:v18 error:&v39];
      v20 = v39;

      if (v19)
      {
        v21 = sub_1000314F8(v13);
        syncController2 = [(KCSharingDaemonGroupManager *)self syncController];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_1000531A4;
        v33[3] = &unk_1003347E0;
        v33[4] = self;
        v34 = v13;
        v35 = v21;
        v36 = requestCopy;
        v37 = completionCopy;
        v38 = v8;
        participants = v21;
        [syncController2 saveStagedOutgoingChangesWithCompletion:v33];

LABEL_18:
LABEL_19:

        goto LABEL_20;
      }

      v28 = self->_loggingIdentifier;
      v29 = KCSharingLogObject();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        groupID4 = [requestCopy groupID];
        *buf = 138543618;
        v41 = groupID4;
        v42 = 2114;
        v43 = v20;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to stage outgoing changes for group delete request for %{public}@: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v26 = self->_loggingIdentifier;
      v27 = KCSharingLogObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        groupID5 = [requestCopy groupID];
        *buf = 138543362;
        v41 = groupID5;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Rejected group delete request for non-owned group: %{public}@", buf, 0xCu);
      }

      v20 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:15 userInfo:0];
    }

    completionCopy[2](completionCopy, v20);
    participants = [v13 participants];
    sub_10005019C(@"delete", [participants count], v8, v20);
    goto LABEL_18;
  }

LABEL_20:
}

- (void)handleGroupLeaveRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = mach_absolute_time();
    loggingIdentifier = self->_loggingIdentifier;
    v10 = KCSharingLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      groupID = [requestCopy groupID];
      *buf = 138543362;
      v39 = groupID;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Group leave request for %{public}@", buf, 0xCu);
    }

    groupID2 = [requestCopy groupID];
    v13 = [(KCSharingDaemonGroupManager *)self fetchLocalShareForGroupID:groupID2];

    if (!v13)
    {
      v20 = self->_loggingIdentifier;
      v21 = KCSharingLogObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        groupID3 = [requestCopy groupID];
        *buf = 138543362;
        v39 = groupID3;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to fetch local share for %{public}@", buf, 0xCu);
      }

      v19 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:9 userInfo:0];
      completionCopy[2](completionCopy, v19);
      sub_10005019C(@"leave", 0, v8, v19);
      goto LABEL_18;
    }

    owner = [v13 owner];
    currentUserParticipant = [v13 currentUserParticipant];
    v16 = [owner isEqual:currentUserParticipant];

    if (v16)
    {
      v17 = self->_loggingIdentifier;
      v18 = KCSharingLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        groupID4 = [requestCopy groupID];
        *buf = 138543362;
        v39 = groupID4;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Rejected group leave request for owned group: %{public}@", buf, 0xCu);
      }

      v19 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:15 userInfo:0];
    }

    else
    {
      syncController = [(KCSharingDaemonGroupManager *)self syncController];
      v42 = v13;
      v23 = [NSArray arrayWithObjects:&v42 count:1];
      v37 = 0;
      v24 = [syncController stageOutgoingShares:0 deletionsForShares:v23 error:&v37];
      v19 = v37;

      if (v24)
      {
        syncController2 = [(KCSharingDaemonGroupManager *)self syncController];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100053A64;
        v32[3] = &unk_1003347B8;
        v32[4] = self;
        v33 = v13;
        v34 = requestCopy;
        v35 = completionCopy;
        v36 = v8;
        [syncController2 saveStagedOutgoingChangesWithCompletion:v32];

LABEL_18:
        goto LABEL_19;
      }

      v26 = self->_loggingIdentifier;
      v27 = KCSharingLogObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        groupID5 = [requestCopy groupID];
        *buf = 138543618;
        v39 = groupID5;
        v40 = 2114;
        v41 = v19;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to stage outgoing changes for group leave request for %{public}@: %{public}@", buf, 0x16u);
      }
    }

    completionCopy[2](completionCopy, v19);
    participants = [v13 participants];
    sub_10005019C(@"leave", [participants count], v8, v19);

    goto LABEL_18;
  }

LABEL_19:
}

- (void)fetchAndUpdateParticipantsForGroup:(id)group share:(id)share isCreateOperation:(BOOL)operation startTime:(unint64_t)time completion:(id)completion
{
  groupCopy = group;
  shareCopy = share;
  completionCopy = completion;
  loggingIdentifier = self->_loggingIdentifier;
  v16 = KCSharingLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    groupID = [groupCopy groupID];
    *buf = 138543875;
    v29 = groupID;
    v30 = 2113;
    v31 = groupCopy;
    v32 = 2113;
    v33 = shareCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Fetching and updating participants for %{public}@, %{private}@\n%{private}@", buf, 0x20u);
  }

  participants = [groupCopy participants];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100053DBC;
  v22[3] = &unk_100334790;
  v22[4] = self;
  v23 = groupCopy;
  operationCopy = operation;
  v24 = shareCopy;
  v25 = completionCopy;
  timeCopy = time;
  v19 = shareCopy;
  v20 = completionCopy;
  v21 = groupCopy;
  [(KCSharingDaemonGroupManager *)self fetchShareParticipantsForParticipants:participants completion:v22];
}

- (void)handleGroupUpdateRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    requestCopy = request;
    v8 = mach_absolute_time();
    group = [requestCopy group];

    loggingIdentifier = self->_loggingIdentifier;
    v11 = KCSharingLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      groupID = [group groupID];
      v28 = 138543362;
      v29 = groupID;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Group update request for %{public}@", &v28, 0xCu);
    }

    groupID2 = [group groupID];
    v14 = [(KCSharingDaemonGroupManager *)self fetchLocalShareForGroupID:groupID2];

    if (v14)
    {
      owner = [v14 owner];
      currentUserParticipant = [v14 currentUserParticipant];
      v17 = [owner isEqual:currentUserParticipant];

      if (v17)
      {
        sub_100031204(v14, group);
        [(KCSharingDaemonGroupManager *)self fetchAndUpdateParticipantsForGroup:group share:v14 isCreateOperation:0 startTime:v8 completion:completionCopy];
      }

      else
      {
        v22 = self->_loggingIdentifier;
        v23 = KCSharingLogObject();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          groupID3 = [group groupID];
          v28 = 138543619;
          v29 = groupID3;
          v30 = 2113;
          v31 = v14;
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Rejected group update request for non-owned group: %{public}@, %{private}@", &v28, 0x16u);
        }

        v24 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:15 userInfo:0];
        completionCopy[2](completionCopy, 0, v24);
        participants = [group participants];
        sub_10005019C(@"update", [participants count], v8, v24);
      }
    }

    else
    {
      v18 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:9 userInfo:0];
      v19 = self->_loggingIdentifier;
      v20 = KCSharingLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        groupID4 = [group groupID];
        v28 = 138543362;
        v29 = groupID4;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to fetch local share for %{public}@", &v28, 0xCu);
      }

      completionCopy[2](completionCopy, 0, v18);
      participants2 = [group participants];
      sub_10005019C(@"update", [participants2 count], v8, v18);
    }
  }
}

- (void)handleGroupCreateRequest:(id)request completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    requestCopy = request;
    v8 = mach_absolute_time();
    group = [requestCopy group];

    loggingIdentifier = self->_loggingIdentifier;
    v11 = KCSharingLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      groupID = [group groupID];
      *buf = 138543362;
      v20 = groupID;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Group create request for %{public}@", buf, 0xCu);
    }

    v13 = group;
    v14 = [CKRecordZoneID alloc];
    groupID2 = [v13 groupID];
    v16 = [NSString stringWithFormat:@"%@%@", @"group-", groupID2];
    v17 = [v14 initWithZoneName:v16 ownerName:CKCurrentUserDefaultName];

    v18 = [[CKShare alloc] initWithRecordZoneID:v17];
    [v18 setParticipantSelfRemovalBehavior:3];
    sub_100031204(v18, v13);

    [(KCSharingDaemonGroupManager *)self fetchAndUpdateParticipantsForGroup:v13 share:v18 isCreateOperation:1 startTime:v8 completion:completionCopy];
  }
}

- (void)fetchCKShareMetadataForGroupInvites:(id)invites completion:(id)completion
{
  invitesCopy = invites;
  completionCopy = completion;
  v30 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [invitesCopy count]);
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [invitesCopy count]);
  v7 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [invitesCopy count]);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = invitesCopy;
  v8 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v8)
  {
    v9 = *v47;
    do
    {
      v10 = 0;
      do
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v46 + 1) + 8 * v10);
        v12 = [CKDeviceToDeviceShareInvitationToken alloc];
        inviteToken = [v11 inviteToken];
        shareURL = [v11 shareURL];
        v15 = [v12 initWithSharingInvitationData:inviteToken shareURL:shareURL];

        shareURL2 = [v11 shareURL];
        [v30 setObject:v15 forKeyedSubscript:shareURL2];

        shareURL3 = [v11 shareURL];
        [v6 addObject:shareURL3];

        groupID = [v11 groupID];
        shareURL4 = [v11 shareURL];
        [v7 setObject:groupID forKeyedSubscript:shareURL4];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v8);
  }

  v20 = objc_alloc_init(NSMutableArray);
  if (sub_10001078C())
  {
    objc_initWeak(&location, self);
    syncController = [(KCSharingDaemonGroupManager *)self syncController];
    cloudCoreUtilities = [syncController cloudCoreUtilities];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100055B60;
    v39[3] = &unk_100334718;
    objc_copyWeak(&v44, &location);
    v43 = completionCopy;
    v40 = v7;
    v41 = obj;
    v42 = v20;
    [cloudCoreUtilities fetchCKShareMetadatas:v6 invitationTokensByShareURL:v30 completionHandler:v39];

    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);
  }

  else
  {
    syncController2 = [(KCSharingDaemonGroupManager *)self syncController];
    container = [syncController2 container];

    v25 = [[CKFetchShareMetadataOperation alloc] initWithShareURLs:v6 invitationTokensByShareURL:v30];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000561FC;
    v35[3] = &unk_100334740;
    v36 = v7;
    selfCopy = self;
    v26 = v20;
    v38 = v26;
    [v25 setPerShareMetadataBlock:v35];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100056428;
    v31[3] = &unk_100334880;
    v31[4] = self;
    v32 = obj;
    v34 = completionCopy;
    v33 = v26;
    [v25 setFetchShareMetadataCompletionBlock:v31];
    [container addOperation:v25];
  }
}

- (void)fetchReceivedPendingGroupsExcludingGroupIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  messagingdConnection = [(KCSharingDaemonGroupManager *)self messagingdConnection];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100056968;
  v11[3] = &unk_1003346F0;
  v12 = dsCopy;
  v13 = completionCopy;
  v11[4] = self;
  v9 = dsCopy;
  v10 = completionCopy;
  [messagingdConnection fetchReceivedInvitesWithCompletion:v11];
}

- (void)handleGroupFetchRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    syncController = [(KCSharingDaemonGroupManager *)self syncController];
    store = [syncController store];
    v29 = 0;
    v8 = [store fetchAllSharingGroupsInMirrorWithError:&v29];
    v9 = v29;
    v10 = [v8 mutableCopy];

    if (!v10 || v9)
    {
      loggingIdentifier = self->_loggingIdentifier;
      v20 = KCSharingLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v32 = v9;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to fetch groups from mirror: %{public}@", buf, 0xCu);
      }

      if (v9)
      {
        completionCopy[2](completionCopy, 0, v9);
      }

      else
      {
        v21 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:20 userInfo:0];
        completionCopy[2](completionCopy, 0, v21);
      }
    }

    else
    {
      v11 = +[NSMutableArray array];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v26;
        do
        {
          v16 = 0;
          do
          {
            if (*v26 != v15)
            {
              objc_enumerationMutation(v12);
            }

            groupID = [*(*(&v25 + 1) + 8 * v16) groupID];
            [v11 addObject:groupID];

            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v14);
      }

      if ([v12 count])
      {
        syncController2 = [(KCSharingDaemonGroupManager *)self syncController];
        [syncController2 setFeatureInUse];
      }

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10005715C;
      v22[3] = &unk_1003346F0;
      v22[4] = self;
      v23 = v12;
      v24 = completionCopy;
      [(KCSharingDaemonGroupManager *)self fetchReceivedPendingGroupsExcludingGroupIDs:v11 completion:v22];
    }
  }
}

- (void)getGroupByGroupID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = [(KCSharingDaemonGroupManager *)self fetchLocalShareForGroupID:dCopy];
  v9 = v8;
  if (v8)
  {
    v10 = sub_1000314F8(v8);
    loggingIdentifier = self->_loggingIdentifier;
    v12 = KCSharingLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      v14 = dCopy;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Got group for groupID %{public}@: %@", &v13, 0x16u);
    }

    completionCopy[2](completionCopy, v10, 0);
  }

  else
  {
    completionCopy[2](completionCopy, 0, 0);
  }
}

- (void)sendGroupsUpdatedNotifications
{
  xpcListenerDelegate = [(KCSharingDaemonGroupManager *)self xpcListenerDelegate];
  [xpcListenerDelegate groupsUpdated];

  loggingIdentifier = self->_loggingIdentifier;
  v5 = KCSharingLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = @"com.apple.security.kcsharing.groupsupdated";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "posting notification %@", &v6, 0xCu);
  }

  notify_post([@"com.apple.security.kcsharing.groupsupdated" UTF8String]);
}

- (KCSharingDaemonGroupManager)initWithSyncController:(id)controller messagingdConnection:(id)connection
{
  controllerCopy = controller;
  connectionCopy = connection;
  v15.receiver = self;
  v15.super_class = KCSharingDaemonGroupManager;
  v9 = [(KCSharingDaemonGroupManager *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_syncController, controller);
    objc_storeStrong(&v10->_messagingdConnection, connection);
    store = [controllerCopy store];
    getLoggingIdentifer = [store getLoggingIdentifer];
    loggingIdentifier = v10->_loggingIdentifier;
    v10->_loggingIdentifier = getLoggingIdentifer;
  }

  return v10;
}

+ (KCSharingDaemonGroupManager)sharedInstance
{
  if (qword_10039DBB0 != -1)
  {
    dispatch_once(&qword_10039DBB0, &stru_1003346C8);
  }

  v3 = qword_10039DBB8;

  return v3;
}

@end