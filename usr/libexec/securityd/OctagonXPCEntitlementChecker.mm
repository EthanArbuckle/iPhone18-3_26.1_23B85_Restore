@interface OctagonXPCEntitlementChecker
+ (BOOL)conformsToProtocol:(id)protocol;
+ (id)createWithManager:(id)manager entitlementBearer:(id)bearer;
- (OctagonXPCEntitlementChecker)initWithManager:(id)manager entitlementBearer:(id)bearer;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)failFetchAccountSettings:(id)settings reply:(id)reply;
- (void)failFetchAccountWideSettingsWithForceFetch:(BOOL)fetch arguments:(id)arguments reply:(id)reply;
- (void)failFetchEscrowContents:(id)contents reply:(id)reply;
- (void)failFetchTrustedSecureElementIdentities:(id)identities reply:(id)reply;
- (void)failPersistAccountSettings:(id)settings setting:(id)setting reply:(id)reply;
- (void)failRemoveLocalSecureElementIdentityPeerID:(id)d secureElementIdentityPeerID:(id)iD reply:(id)reply;
- (void)failSetAccountSetting:(id)setting setting:(id)a4 reply:(id)reply;
- (void)failSetLocalSecureElementIdentity:(id)identity secureElementIdentity:(id)elementIdentity reply:(id)reply;
- (void)forwardInvocation:(id)invocation;
@end

@implementation OctagonXPCEntitlementChecker

- (void)failPersistAccountSettings:(id)settings setting:(id)setting reply:(id)reply
{
  v6 = kSecEntitlementPrivateOctagonWalrus;
  replyCopy = reply;
  v9 = [NSString stringWithFormat:@"Missing entitlement '%@'", v6];
  v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-34018 description:v9];
  (*(reply + 2))(replyCopy, v8);
}

- (void)failFetchAccountWideSettingsWithForceFetch:(BOOL)fetch arguments:(id)arguments reply:(id)reply
{
  v6 = kSecEntitlementPrivateOctagonWalrus;
  replyCopy = reply;
  v9 = [NSString stringWithFormat:@"Missing entitlement '%@'", v6];
  v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-34018 description:v9];
  (*(reply + 2))(replyCopy, 0, v8);
}

- (void)failFetchAccountSettings:(id)settings reply:(id)reply
{
  v5 = kSecEntitlementPrivateOctagonWalrus;
  replyCopy = reply;
  v8 = [NSString stringWithFormat:@"Missing entitlement '%@'", v5];
  v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-34018 description:v8];
  (*(reply + 2))(replyCopy, 0, v7);
}

- (void)failSetAccountSetting:(id)setting setting:(id)a4 reply:(id)reply
{
  v6 = kSecEntitlementPrivateOctagonWalrus;
  replyCopy = reply;
  v9 = [NSString stringWithFormat:@"Missing entitlement '%@'", v6];
  v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-34018 description:v9];
  (*(reply + 2))(replyCopy, v8);
}

- (void)failFetchTrustedSecureElementIdentities:(id)identities reply:(id)reply
{
  v5 = kSecEntitlementPrivateOctagonSecureElement;
  replyCopy = reply;
  v8 = [NSString stringWithFormat:@"Missing entitlement '%@'", v5];
  v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-34018 description:v8];
  (*(reply + 2))(replyCopy, 0, v7);
}

- (void)failRemoveLocalSecureElementIdentityPeerID:(id)d secureElementIdentityPeerID:(id)iD reply:(id)reply
{
  v6 = kSecEntitlementPrivateOctagonSecureElement;
  replyCopy = reply;
  v9 = [NSString stringWithFormat:@"Missing entitlement '%@'", v6];
  v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-34018 description:v9];
  (*(reply + 2))(replyCopy, v8);
}

- (void)failSetLocalSecureElementIdentity:(id)identity secureElementIdentity:(id)elementIdentity reply:(id)reply
{
  v6 = kSecEntitlementPrivateOctagonSecureElement;
  replyCopy = reply;
  v9 = [NSString stringWithFormat:@"Missing entitlement '%@'", v6];
  v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-34018 description:v9];
  (*(reply + 2))(replyCopy, v8);
}

- (void)failFetchEscrowContents:(id)contents reply:(id)reply
{
  v5 = kSecEntitlementPrivateOctagonEscrow;
  replyCopy = reply;
  v8 = [NSString stringWithFormat:@"Missing entitlement '%@'", v5];
  v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-34018 description:v8];
  (*(reply + 2))(replyCopy, 0, 0, 0, v7);
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  if (sel_isEqual([invocationCopy selector], "fetchEscrowContents:reply:"))
  {
    entitlementBearer = [(OctagonXPCEntitlementChecker *)self entitlementBearer];
    v6 = [entitlementBearer valueForEntitlement:kSecEntitlementPrivateOctagonEscrow];

    if (!v6)
    {
      v20 = sub_100006274("SecError");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        entitlementBearer2 = [(OctagonXPCEntitlementChecker *)self entitlementBearer];
        v35 = 138412546;
        v36 = entitlementBearer2;
        v37 = 2112;
        v38 = kSecEntitlementPrivateOctagonEscrow;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Client %@ does not have entitlement %@, rejecting rpc", &v35, 0x16u);
      }

      v22 = "failFetchEscrowContents:reply:";
      goto LABEL_37;
    }
  }

  if (sel_isEqual([invocationCopy selector], "setLocalSecureElementIdentity:secureElementIdentity:reply:"))
  {
    entitlementBearer3 = [(OctagonXPCEntitlementChecker *)self entitlementBearer];
    v8 = [entitlementBearer3 valueForEntitlement:kSecEntitlementPrivateOctagonSecureElement];

    if (!v8)
    {
      v23 = sub_100006274("SecError");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        entitlementBearer4 = [(OctagonXPCEntitlementChecker *)self entitlementBearer];
        v35 = 138412546;
        v36 = entitlementBearer4;
        v37 = 2112;
        v38 = kSecEntitlementPrivateOctagonSecureElement;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Client %@ does not have entitlement %@, rejecting rpc", &v35, 0x16u);
      }

      v22 = "failSetLocalSecureElementIdentity:secureElementIdentity:reply:";
      goto LABEL_37;
    }
  }

  if (sel_isEqual([invocationCopy selector], "removeLocalSecureElementIdentityPeerID:secureElementIdentityPeerID:reply:"))
  {
    entitlementBearer5 = [(OctagonXPCEntitlementChecker *)self entitlementBearer];
    v10 = [entitlementBearer5 valueForEntitlement:kSecEntitlementPrivateOctagonSecureElement];

    if (!v10)
    {
      v25 = sub_100006274("SecError");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        entitlementBearer6 = [(OctagonXPCEntitlementChecker *)self entitlementBearer];
        v35 = 138412546;
        v36 = entitlementBearer6;
        v37 = 2112;
        v38 = kSecEntitlementPrivateOctagonSecureElement;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Client %@ does not have entitlement %@, rejecting rpc", &v35, 0x16u);
      }

      v22 = "failRemoveLocalSecureElementIdentityPeerID:secureElementIdentityPeerID:reply:";
      goto LABEL_37;
    }
  }

  if (sel_isEqual([invocationCopy selector], "fetchTrustedSecureElementIdentities:reply:"))
  {
    entitlementBearer7 = [(OctagonXPCEntitlementChecker *)self entitlementBearer];
    v12 = [entitlementBearer7 valueForEntitlement:kSecEntitlementPrivateOctagonSecureElement];

    if (!v12)
    {
      v27 = sub_100006274("SecError");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        entitlementBearer8 = [(OctagonXPCEntitlementChecker *)self entitlementBearer];
        v35 = 138412546;
        v36 = entitlementBearer8;
        v37 = 2112;
        v38 = kSecEntitlementPrivateOctagonSecureElement;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Client %@ does not have entitlement %@, rejecting rpc", &v35, 0x16u);
      }

      v22 = "failFetchTrustedSecureElementIdentities:reply:";
      goto LABEL_37;
    }
  }

  if (sel_isEqual([invocationCopy selector], "setAccountSetting:setting:reply:"))
  {
    entitlementBearer9 = [(OctagonXPCEntitlementChecker *)self entitlementBearer];
    v14 = [entitlementBearer9 valueForEntitlement:kSecEntitlementPrivateOctagonWalrus];

    if (!v14)
    {
      v29 = sub_100006274("SecError");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        entitlementBearer10 = [(OctagonXPCEntitlementChecker *)self entitlementBearer];
        v35 = 138412546;
        v36 = entitlementBearer10;
        v37 = 2112;
        v38 = kSecEntitlementPrivateOctagonWalrus;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Client %@ does not have entitlement %@, rejecting rpc", &v35, 0x16u);
      }

      v22 = "failSetAccountSetting:setting:reply:";
      goto LABEL_37;
    }
  }

  if (sel_isEqual([invocationCopy selector], "fetchAccountSettings:reply:"))
  {
    entitlementBearer11 = [(OctagonXPCEntitlementChecker *)self entitlementBearer];
    v16 = [entitlementBearer11 valueForEntitlement:kSecEntitlementPrivateOctagonWalrus];

    if (!v16)
    {
      v31 = sub_100006274("SecError");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        entitlementBearer12 = [(OctagonXPCEntitlementChecker *)self entitlementBearer];
        v35 = 138412546;
        v36 = entitlementBearer12;
        v37 = 2112;
        v38 = kSecEntitlementPrivateOctagonWalrus;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Client %@ does not have entitlement %@, rejecting rpc", &v35, 0x16u);
      }

      v22 = "failFetchAccountSettings:reply:";
      goto LABEL_37;
    }
  }

  if (sel_isEqual([invocationCopy selector], "fetchAccountWideSettingsWithForceFetch:arguments:reply:"))
  {
    entitlementBearer13 = [(OctagonXPCEntitlementChecker *)self entitlementBearer];
    v18 = [entitlementBearer13 valueForEntitlement:kSecEntitlementPrivateOctagonWalrus];

    if (!v18)
    {
      v33 = sub_100006274("SecError");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        entitlementBearer14 = [(OctagonXPCEntitlementChecker *)self entitlementBearer];
        v35 = 138412546;
        v36 = entitlementBearer14;
        v37 = 2112;
        v38 = kSecEntitlementPrivateOctagonWalrus;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Client %@ does not have entitlement %@, rejecting rpc", &v35, 0x16u);
      }

      v22 = "failFetchAccountWideSettingsWithForceFetch:arguments:reply:";
LABEL_37:
      [invocationCopy setSelector:v22];
      [invocationCopy invokeWithTarget:self];
      goto LABEL_38;
    }
  }

  manager = [(OctagonXPCEntitlementChecker *)self manager];
  [invocationCopy invokeWithTarget:manager];

LABEL_38:
}

- (id)methodSignatureForSelector:(SEL)selector
{
  manager = [(OctagonXPCEntitlementChecker *)self manager];
  v5 = [manager methodSignatureForSelector:selector];

  return v5;
}

- (OctagonXPCEntitlementChecker)initWithManager:(id)manager entitlementBearer:(id)bearer
{
  managerCopy = manager;
  bearerCopy = bearer;
  manager = self->_manager;
  self->_manager = managerCopy;
  v9 = managerCopy;

  entitlementBearer = self->_entitlementBearer;
  self->_entitlementBearer = bearerCopy;

  return self;
}

+ (id)createWithManager:(id)manager entitlementBearer:(id)bearer
{
  bearerCopy = bearer;
  managerCopy = manager;
  v7 = [[OctagonXPCEntitlementChecker alloc] initWithManager:managerCopy entitlementBearer:bearerCopy];

  return v7;
}

+ (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v4 = [objc_opt_class() conformsToProtocol:protocolCopy];

  return v4;
}

@end