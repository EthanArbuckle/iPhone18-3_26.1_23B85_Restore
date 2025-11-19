@interface KCSharingXPCServer
- (KCSharingSyncController)syncController;
- (KCSharingXPCServer)initWithConnection:(id)a3 allowedProtocol:(id)a4 groupManager:(id)a5 syncController:(id)a6;
- (NSString)description;
- (void)acceptInviteForGroupID:(id)a3 completion:(id)a4;
- (void)checkAvailabilityForHandles:(id)a3 completion:(id)a4;
- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5;
- (void)createGroupWithRequest:(id)a3 completion:(id)a4;
- (void)declineInviteForGroupID:(id)a3 completion:(id)a4;
- (void)deleteGroupWithRequest:(id)a3 completion:(id)a4;
- (void)fetchCurrentUserIdentifierWithReply:(id)a3;
- (void)fetchRemoteChangesWithReply:(id)a3;
- (void)getGroupByGroupID:(id)a3 completion:(id)a4;
- (void)getGroupsWithRequest:(id)a3 completion:(id)a4;
- (void)groupInvitationWasCancelled;
- (void)leaveGroupWithRequest:(id)a3 completion:(id)a4;
- (void)performMaintenanceWithCompletion:(id)a3;
- (void)provisionWithReply:(id)a3;
- (void)receivedGroupInvitation:(id)a3;
- (void)resyncWithCompletion:(id)a3;
- (void)saveLocalChangesWithReply:(id)a3;
- (void)setChangeTrackingEnabled:(BOOL)a3 reply:(id)a4;
- (void)updateGroupWithRequest:(id)a3 completion:(id)a4;
- (void)verifyGroupsInSyncAndResyncMissingGroupsWithCompletion:(id)a3;
- (void)verifyGroupsInSyncWithCompletion:(id)a3;
@end

@implementation KCSharingXPCServer

- (KCSharingSyncController)syncController
{
  WeakRetained = objc_loadWeakRetained(&self->_syncController);

  return WeakRetained;
}

- (void)performMaintenanceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingXPCServer *)self syncController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002F248;
  v7[3] = &unk_100337928;
  v8 = v4;
  v6 = v4;
  [v5 performMaintenanceWithCompletion:v7];
}

- (void)verifyGroupsInSyncAndResyncMissingGroupsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingXPCServer *)self syncController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002F354;
  v7[3] = &unk_100337BD8;
  v8 = v4;
  v6 = v4;
  [v5 verifyGroupsInSyncAndResyncMissingGroupsWithCompletion:v7];
}

- (void)verifyGroupsInSyncWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingXPCServer *)self syncController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002F468;
  v7[3] = &unk_100337BD8;
  v8 = v4;
  v6 = v4;
  [v5 verifyGroupsInSyncWithCompletion:v7];
}

- (void)resyncWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingXPCServer *)self syncController];
  [v5 resyncFromRPC:1 completion:v4];
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

- (void)receivedGroupInvitation:(id)a3
{
  v3 = a3;
  v4 = KCSharingLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 groupID];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "received group invite for %@", &v7, 0xCu);
  }

  v6 = +[KCSharingXPCListenerDelegate sharedInstance];
  [v6 groupsUpdated];
}

- (void)saveLocalChangesWithReply:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingXPCServer *)self syncController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002F7D0;
  v7[3] = &unk_100337928;
  v8 = v4;
  v6 = v4;
  [v5 saveAllOutgoingChangesWithCompletion:v7];
}

- (void)fetchRemoteChangesWithReply:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingXPCServer *)self syncController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002F8E0;
  v7[3] = &unk_100337928;
  v8 = v4;
  v6 = v4;
  [v5 fetchRemoteChangesForZoneIDs:0 completion:v7];
}

- (void)setChangeTrackingEnabled:(BOOL)a3 reply:(id)a4
{
  v4 = a3;
  v5 = a4;
  if (v4)
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

  v5[2](v5, 0);
}

- (void)checkAvailabilityForHandles:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(KCSharingXPCServer *)self groupManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002FB04;
  v10[3] = &unk_100344F58;
  v11 = v6;
  v9 = v6;
  [v8 checkAvailabilityForHandles:v7 completion:v10];
}

- (void)declineInviteForGroupID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(KCSharingXPCServer *)self groupManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002FC48;
  v10[3] = &unk_100333BD0;
  v11 = v6;
  v9 = v6;
  [v8 declineInviteForGroupID:v7 completion:v10];
}

- (void)acceptInviteForGroupID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(KCSharingXPCServer *)self groupManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002FD8C;
  v10[3] = &unk_100333BD0;
  v11 = v6;
  v9 = v6;
  [v8 acceptInviteForGroupID:v7 completion:v10];
}

- (void)deleteGroupWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(KCSharingXPCServer *)self groupManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002FED0;
  v10[3] = &unk_100337928;
  v11 = v6;
  v9 = v6;
  [v8 handleGroupDeleteRequest:v7 completion:v10];
}

- (void)leaveGroupWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(KCSharingXPCServer *)self groupManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002FFF8;
  v10[3] = &unk_100337928;
  v11 = v6;
  v9 = v6;
  [v8 handleGroupLeaveRequest:v7 completion:v10];
}

- (void)updateGroupWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(KCSharingXPCServer *)self groupManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100030120;
  v10[3] = &unk_100333BD0;
  v11 = v6;
  v9 = v6;
  [v8 handleGroupUpdateRequest:v7 completion:v10];
}

- (void)createGroupWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(KCSharingXPCServer *)self groupManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100030264;
  v10[3] = &unk_100333BD0;
  v11 = v6;
  v9 = v6;
  [v8 handleGroupCreateRequest:v7 completion:v10];
}

- (void)getGroupsWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(KCSharingXPCServer *)self groupManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000303A8;
  v10[3] = &unk_100337C78;
  v11 = v6;
  v9 = v6;
  [v8 handleGroupFetchRequest:v7 completion:v10];
}

- (void)getGroupByGroupID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(KCSharingXPCServer *)self groupManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000304EC;
  v10[3] = &unk_100333BD0;
  v11 = v6;
  v9 = v6;
  [v8 getGroupByGroupID:v7 completion:v10];
}

- (void)fetchCurrentUserIdentifierWithReply:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingXPCServer *)self syncController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100030614;
  v7[3] = &unk_100337D88;
  v8 = v4;
  v6 = v4;
  [v5 fetchCurrentUserIdentifierWithReply:v7];
}

- (void)provisionWithReply:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingXPCServer *)self syncController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003073C;
  v7[3] = &unk_100337928;
  v8 = v4;
  v6 = v4;
  [v5 ensureCurrentUserProvisionedWithCompletion:v7];
}

- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a5 || (v11 = [v9 selector], protocol_getMethodDescription(self->_allowedProtocol, v11, 1, 1).name))
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
      v16 = self;
      v17 = 2114;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "%{public}@ tried to call %{public}@ which isn't part of the allowed protocol %{public}@", &v15, 0x20u);
    }

    [v8 invalidate];
  }
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(KCSharingXPCServer *)self allowedProtocol];
  v6 = NSStringFromProtocol(v5);
  v7 = [NSString stringWithFormat:@"<%@(%@): %@>", v4, v6, self->_connection];

  return v7;
}

- (KCSharingXPCServer)initWithConnection:(id)a3 allowedProtocol:(id)a4 groupManager:(id)a5 syncController:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v25.receiver = self;
  v25.super_class = KCSharingXPCServer;
  v15 = [(KCSharingXPCServer *)&v25 init];
  p_isa = &v15->super.isa;
  if (!v15)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&v15->_connection, a3);
  objc_storeStrong(p_isa + 2, a4);
  objc_storeStrong(p_isa + 3, a5);
  objc_storeWeak(p_isa + 4, v14);
  if (protocol_isEqual(v12, &OBJC_PROTOCOL___KCSharingXPCServerProtocol))
  {
    v17 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___KCSharingXPCServerProtocol];
    v18 = KCSharingSetupServerProtocol();
LABEL_6:
    v19 = v18;
    [v11 setExportedInterface:v18];

    [v11 setExportedObject:p_isa];
    [v11 setDelegate:p_isa];
    v20 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___KCSharingXPCClientProtocol];
    [v11 setRemoteObjectInterface:v20];

LABEL_7:
    v21 = p_isa;
    goto LABEL_8;
  }

  if (protocol_isEqual(v12, &OBJC_PROTOCOL___KCSharingInvitationNotificationProtocol))
  {
    v17 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___KCSharingInvitationNotificationProtocol];
    v18 = KCSharingSetupInvitationNotificationProtocol();
    goto LABEL_6;
  }

  v23 = KCSharingLogObject();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = NSStringFromProtocol(v12);
    *buf = 138543362;
    v27 = v24;
    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Rejected unsupported protocol %{public}@", buf, 0xCu);
  }

  v21 = 0;
LABEL_8:

  return v21;
}

@end