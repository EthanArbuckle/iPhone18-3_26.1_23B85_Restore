@interface KCSharingXPCServer
- (KCSharingSyncController)syncController;
- (KCSharingXPCServer)initWithConnection:(id)connection allowedProtocol:(id)protocol groupManager:(id)manager syncController:(id)controller;
- (NSString)description;
- (void)acceptInviteForGroupID:(id)d completion:(id)completion;
- (void)checkAvailabilityForHandles:(id)handles completion:(id)completion;
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
- (void)createGroupWithRequest:(id)request completion:(id)completion;
- (void)declineInviteForGroupID:(id)d completion:(id)completion;
- (void)deleteGroupWithRequest:(id)request completion:(id)completion;
- (void)fetchCurrentUserIdentifierWithReply:(id)reply;
- (void)fetchRemoteChangesWithReply:(id)reply;
- (void)getGroupByGroupID:(id)d completion:(id)completion;
- (void)getGroupsWithRequest:(id)request completion:(id)completion;
- (void)groupInvitationWasCancelled;
- (void)leaveGroupWithRequest:(id)request completion:(id)completion;
- (void)performMaintenanceWithCompletion:(id)completion;
- (void)provisionWithReply:(id)reply;
- (void)receivedGroupInvitation:(id)invitation;
- (void)resyncWithCompletion:(id)completion;
- (void)saveLocalChangesWithReply:(id)reply;
- (void)setChangeTrackingEnabled:(BOOL)enabled reply:(id)reply;
- (void)updateGroupWithRequest:(id)request completion:(id)completion;
- (void)verifyGroupsInSyncAndResyncMissingGroupsWithCompletion:(id)completion;
- (void)verifyGroupsInSyncWithCompletion:(id)completion;
@end

@implementation KCSharingXPCServer

- (KCSharingSyncController)syncController
{
  WeakRetained = objc_loadWeakRetained(&self->_syncController);

  return WeakRetained;
}

- (void)performMaintenanceWithCompletion:(id)completion
{
  completionCopy = completion;
  syncController = [(KCSharingXPCServer *)self syncController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002F248;
  v7[3] = &unk_100337928;
  v8 = completionCopy;
  v6 = completionCopy;
  [syncController performMaintenanceWithCompletion:v7];
}

- (void)verifyGroupsInSyncAndResyncMissingGroupsWithCompletion:(id)completion
{
  completionCopy = completion;
  syncController = [(KCSharingXPCServer *)self syncController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002F354;
  v7[3] = &unk_100337BD8;
  v8 = completionCopy;
  v6 = completionCopy;
  [syncController verifyGroupsInSyncAndResyncMissingGroupsWithCompletion:v7];
}

- (void)verifyGroupsInSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  syncController = [(KCSharingXPCServer *)self syncController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002F468;
  v7[3] = &unk_100337BD8;
  v8 = completionCopy;
  v6 = completionCopy;
  [syncController verifyGroupsInSyncWithCompletion:v7];
}

- (void)resyncWithCompletion:(id)completion
{
  completionCopy = completion;
  syncController = [(KCSharingXPCServer *)self syncController];
  [syncController resyncFromRPC:1 completion:completionCopy];
}

- (void)groupInvitationWasCancelled
{
  v2 = KCSharingLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sender cancelled a pending invite", v4, 2u);
  }

  v3 = +[KCSharingXPCListenerDelegate sharedInstance];
  [v3 groupsUpdated];
}

- (void)receivedGroupInvitation:(id)invitation
{
  invitationCopy = invitation;
  v4 = KCSharingLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    groupID = [invitationCopy groupID];
    v7 = 138412290;
    v8 = groupID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "received group invite for %@", &v7, 0xCu);
  }

  v6 = +[KCSharingXPCListenerDelegate sharedInstance];
  [v6 groupsUpdated];
}

- (void)saveLocalChangesWithReply:(id)reply
{
  replyCopy = reply;
  syncController = [(KCSharingXPCServer *)self syncController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002F7D0;
  v7[3] = &unk_100337928;
  v8 = replyCopy;
  v6 = replyCopy;
  [syncController saveAllOutgoingChangesWithCompletion:v7];
}

- (void)fetchRemoteChangesWithReply:(id)reply
{
  replyCopy = reply;
  syncController = [(KCSharingXPCServer *)self syncController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002F8E0;
  v7[3] = &unk_100337928;
  v8 = replyCopy;
  v6 = replyCopy;
  [syncController fetchRemoteChangesForZoneIDs:0 completion:v7];
}

- (void)setChangeTrackingEnabled:(BOOL)enabled reply:(id)reply
{
  enabledCopy = enabled;
  replyCopy = reply;
  if (enabledCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  atomic_store(v6, dword_10039DDE8);
  v7 = KCSharingLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109120;
    v8[1] = atomic_load_explicit(dword_10039DDE8, memory_order_acquire) < 2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Updated change tracking state=%d", v8, 8u);
  }

  replyCopy[2](replyCopy, 0);
}

- (void)checkAvailabilityForHandles:(id)handles completion:(id)completion
{
  completionCopy = completion;
  handlesCopy = handles;
  groupManager = [(KCSharingXPCServer *)self groupManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002FB04;
  v10[3] = &unk_100344F58;
  v11 = completionCopy;
  v9 = completionCopy;
  [groupManager checkAvailabilityForHandles:handlesCopy completion:v10];
}

- (void)declineInviteForGroupID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  groupManager = [(KCSharingXPCServer *)self groupManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002FC48;
  v10[3] = &unk_100333BD0;
  v11 = completionCopy;
  v9 = completionCopy;
  [groupManager declineInviteForGroupID:dCopy completion:v10];
}

- (void)acceptInviteForGroupID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  groupManager = [(KCSharingXPCServer *)self groupManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002FD8C;
  v10[3] = &unk_100333BD0;
  v11 = completionCopy;
  v9 = completionCopy;
  [groupManager acceptInviteForGroupID:dCopy completion:v10];
}

- (void)deleteGroupWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  groupManager = [(KCSharingXPCServer *)self groupManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002FED0;
  v10[3] = &unk_100337928;
  v11 = completionCopy;
  v9 = completionCopy;
  [groupManager handleGroupDeleteRequest:requestCopy completion:v10];
}

- (void)leaveGroupWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  groupManager = [(KCSharingXPCServer *)self groupManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002FFF8;
  v10[3] = &unk_100337928;
  v11 = completionCopy;
  v9 = completionCopy;
  [groupManager handleGroupLeaveRequest:requestCopy completion:v10];
}

- (void)updateGroupWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  groupManager = [(KCSharingXPCServer *)self groupManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100030120;
  v10[3] = &unk_100333BD0;
  v11 = completionCopy;
  v9 = completionCopy;
  [groupManager handleGroupUpdateRequest:requestCopy completion:v10];
}

- (void)createGroupWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  groupManager = [(KCSharingXPCServer *)self groupManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100030264;
  v10[3] = &unk_100333BD0;
  v11 = completionCopy;
  v9 = completionCopy;
  [groupManager handleGroupCreateRequest:requestCopy completion:v10];
}

- (void)getGroupsWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  groupManager = [(KCSharingXPCServer *)self groupManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000303A8;
  v10[3] = &unk_100337C78;
  v11 = completionCopy;
  v9 = completionCopy;
  [groupManager handleGroupFetchRequest:requestCopy completion:v10];
}

- (void)getGroupByGroupID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  groupManager = [(KCSharingXPCServer *)self groupManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000304EC;
  v10[3] = &unk_100333BD0;
  v11 = completionCopy;
  v9 = completionCopy;
  [groupManager getGroupByGroupID:dCopy completion:v10];
}

- (void)fetchCurrentUserIdentifierWithReply:(id)reply
{
  replyCopy = reply;
  syncController = [(KCSharingXPCServer *)self syncController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100030614;
  v7[3] = &unk_100337D88;
  v8 = replyCopy;
  v6 = replyCopy;
  [syncController fetchCurrentUserIdentifierWithReply:v7];
}

- (void)provisionWithReply:(id)reply
{
  replyCopy = reply;
  syncController = [(KCSharingXPCServer *)self syncController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003073C;
  v7[3] = &unk_100337928;
  v8 = replyCopy;
  v6 = replyCopy;
  [syncController ensureCurrentUserProvisionedWithCompletion:v7];
}

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  connectionCopy = connection;
  invocationCopy = invocation;
  v10 = invocationCopy;
  if (reply || (v11 = [invocationCopy selector], protocol_getMethodDescription(self->_allowedProtocol, v11, 1, 1).name))
  {
    [v10 invoke];
  }

  else
  {
    v12 = KCSharingLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v13 = NSStringFromSelector(v11);
      v14 = NSStringFromProtocol(self->_allowedProtocol);
      v15 = 138543874;
      selfCopy = self;
      v17 = 2114;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "%{public}@ tried to call %{public}@ which isn't part of the allowed protocol %{public}@", &v15, 0x20u);
    }

    [connectionCopy invalidate];
  }
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  allowedProtocol = [(KCSharingXPCServer *)self allowedProtocol];
  v6 = NSStringFromProtocol(allowedProtocol);
  v7 = [NSString stringWithFormat:@"<%@(%@): %@>", v4, v6, self->_connection];

  return v7;
}

- (KCSharingXPCServer)initWithConnection:(id)connection allowedProtocol:(id)protocol groupManager:(id)manager syncController:(id)controller
{
  connectionCopy = connection;
  protocolCopy = protocol;
  managerCopy = manager;
  controllerCopy = controller;
  v25.receiver = self;
  v25.super_class = KCSharingXPCServer;
  v15 = [(KCSharingXPCServer *)&v25 init];
  p_isa = &v15->super.isa;
  if (!v15)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&v15->_connection, connection);
  objc_storeStrong(p_isa + 2, protocol);
  objc_storeStrong(p_isa + 3, manager);
  objc_storeWeak(p_isa + 4, controllerCopy);
  if (protocol_isEqual(protocolCopy, &OBJC_PROTOCOL___KCSharingXPCServerProtocol))
  {
    v17 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___KCSharingXPCServerProtocol];
    v18 = KCSharingSetupServerProtocol();
LABEL_6:
    v19 = v18;
    [connectionCopy setExportedInterface:v18];

    [connectionCopy setExportedObject:p_isa];
    [connectionCopy setDelegate:p_isa];
    v20 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___KCSharingXPCClientProtocol];
    [connectionCopy setRemoteObjectInterface:v20];

LABEL_7:
    v21 = p_isa;
    goto LABEL_8;
  }

  if (protocol_isEqual(protocolCopy, &OBJC_PROTOCOL___KCSharingInvitationNotificationProtocol))
  {
    v17 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___KCSharingInvitationNotificationProtocol];
    v18 = KCSharingSetupInvitationNotificationProtocol();
    goto LABEL_6;
  }

  v23 = KCSharingLogObject();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = NSStringFromProtocol(protocolCopy);
    *buf = 138543362;
    v27 = v24;
    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Rejected unsupported protocol %{public}@", buf, 0xCu);
  }

  v21 = 0;
LABEL_8:

  return v21;
}

@end