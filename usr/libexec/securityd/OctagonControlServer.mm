@interface OctagonControlServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation OctagonControlServer

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [v4 valueForEntitlement:@"com.apple.private.octagon"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 BOOLValue])
  {
    v6 = sub_100006274("octagon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v14 = 67109376;
      v15 = [v4 processIdentifier];
      v16 = 1024;
      LODWORD(v17) = [v4 effectiveUserIdentifier];
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "received connection from client pid %d (euid %u)", &v14, 0xEu);
    }

    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___OTControlProtocol];
    v8 = +[SecXPCHelper safeErrorClasses];
    [v7 setClasses:v8 forSelector:"appleAccountSignedIn:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"appleAccountSignedOut:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"notifyIDMSTrustLevelChangeForAltDSID:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"rpcEpochWithArguments:configuration:reply:" argumentIndex:1 ofReply:1];
    [v7 setClasses:v8 forSelector:"rpcPrepareIdentityAsApplicantWithArguments:configuration:reply:" argumentIndex:5 ofReply:1];
    [v7 setClasses:v8 forSelector:"rpcVoucherWithArguments:configuration:peerID:permanentInfo:permanentInfoSig:stableInfo:stableInfoSig:maxCapability:reply:" argumentIndex:2 ofReply:1];
    [v7 setClasses:v8 forSelector:"rpcJoinWithArguments:configuration:vouchData:vouchSig:reply:" argumentIndex:0 ofReply:1];
    [v7 setXPCType:&_xpc_type_fd forSelector:"status:xpcFd:reply:" argumentIndex:1 ofReply:0];
    [v7 setClasses:v8 forSelector:"status:xpcFd:reply:" argumentIndex:1 ofReply:1];
    [v7 setClasses:v8 forSelector:"status:xpcFd:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"fetchEgoPeerID:reply:" argumentIndex:1 ofReply:1];
    [v7 setClasses:v8 forSelector:"fetchCliqueStatus:configuration:reply:" argumentIndex:1 ofReply:1];
    [v7 setClasses:v8 forSelector:"fetchTrustStatus:configuration:reply:" argumentIndex:4 ofReply:1];
    [v7 setClasses:v8 forSelector:"startOctagonStateMachine:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"resetAndEstablish:resetReason:idmsTargetContext:idmsCuttlefishPassword:notifyIdMS:accountSettings:isGuitarfish:accountIsW:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"establish:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"leaveClique:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"removeFriendsInClique:peerIDs:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"peerDeviceNamesByPeerID:reply:" argumentIndex:1 ofReply:1];
    [v7 setClasses:v8 forSelector:"fetchAllViableBottles:source:reply:" argumentIndex:2 ofReply:1];
    [v7 setClasses:v8 forSelector:"restoreFromBottle:entropy:bottleID:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"fetchEscrowContents:reply:" argumentIndex:3 ofReply:1];
    [v7 setClasses:v8 forSelector:"createRecoveryKey:recoveryKey:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"joinWithRecoveryKey:recoveryKey:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"healthCheck:skipRateLimitingCheck:repair:danglingPeerCleanup:caesarPeerCleanup:updateIdMS:reply:" argumentIndex:1 ofReply:1];
    [v7 setClasses:v8 forSelector:"simulateReceivePush:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"simulateReceiveTDLChangePush:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"waitForOctagonUpgrade:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"postCDPFollowupResult:success:type:error:reply:" argumentIndex:3 ofReply:0];
    [v7 setClasses:v8 forSelector:"postCDPFollowupResult:success:type:error:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"tapToRadar:description:radar:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"refetchCKKSPolicy:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"setCDPEnabled:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"getCDPStatus:reply:" argumentIndex:1 ofReply:1];
    [v7 setClasses:v8 forSelector:"fetchEscrowRecords:source:reply:" argumentIndex:1 ofReply:1];
    [v7 setClasses:v8 forSelector:"setUserControllableViewsSyncStatus:enabled:reply:" argumentIndex:1 ofReply:1];
    [v7 setClasses:v8 forSelector:"fetchUserControllableViewsSyncStatus:reply:" argumentIndex:1 ofReply:1];
    [v7 setClasses:v8 forSelector:"resetAccountCDPContents:idmsTargetContext:idmsCuttlefishPassword:notifyIdMS:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"setLocalSecureElementIdentity:secureElementIdentity:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"removeLocalSecureElementIdentityPeerID:secureElementIdentityPeerID:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"fetchTrustedSecureElementIdentities:reply:" argumentIndex:1 ofReply:1];
    [v7 setClasses:v8 forSelector:"setAccountSetting:setting:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"fetchAccountSettings:reply:" argumentIndex:1 ofReply:1];
    [v7 setClasses:v8 forSelector:"fetchAccountWideSettingsWithForceFetch:arguments:reply:" argumentIndex:1 ofReply:1];
    [v7 setClasses:v8 forSelector:"waitForPriorityViewKeychainDataRecovery:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"createCustodianRecoveryKey:uuid:reply:" argumentIndex:1 ofReply:1];
    [v7 setClasses:v8 forSelector:"joinWithCustodianRecoveryKey:custodianRecoveryKey:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"preflightJoinWithCustodianRecoveryKey:custodianRecoveryKey:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"removeCustodianRecoveryKey:uuid:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"createInheritanceKey:uuid:reply:" argumentIndex:1 ofReply:1];
    [v7 setClasses:v8 forSelector:"generateInheritanceKey:uuid:reply:" argumentIndex:1 ofReply:1];
    [v7 setClasses:v8 forSelector:"storeInheritanceKey:ik:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"joinWithInheritanceKey:inheritanceKey:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"preflightJoinWithInheritanceKey:inheritanceKey:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"removeInheritanceKey:uuid:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"tlkRecoverabilityForEscrowRecordData:recordData:source:reply:" argumentIndex:1 ofReply:1];
    [v7 setClasses:v8 forSelector:"setMachineIDOverride:machineID:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"isRecoveryKeySet:reply:" argumentIndex:1 ofReply:1];
    [v7 setClasses:v8 forSelector:"recoverWithRecoveryKey:recoveryKey:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"removeRecoveryKey:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"preflightRecoverOctagonUsingRecoveryKey:recoveryKey:reply:" argumentIndex:1 ofReply:1];
    [v7 setClasses:v8 forSelector:"clearCliqueFromAccount:resetReason:isGuitarfish:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"performCKServerUnreadableDataRemoval:isGuitarfish:accountIsW:altDSID:reply:" argumentIndex:0 ofReply:1];
    [v7 setClasses:v8 forSelector:"totalTrustedPeers:reply:" argumentIndex:1 ofReply:1];
    [v7 setClasses:v8 forSelector:"trustedFullPeers:reply:" argumentIndex:1 ofReply:1];
    [v7 setClasses:v8 forSelector:"areRecoveryKeysDistrusted:reply:" argumentIndex:1 ofReply:1];

    [v4 setExportedInterface:v7];
    v9 = +[OTManager manager];
    v10 = [OctagonXPCEntitlementChecker createWithManager:v9 entitlementBearer:v4];
    [v4 setExportedObject:v10];

    [v4 resume];
    v11 = 1;
  }

  else
  {
    v12 = sub_100006274("SecError");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109378;
      v15 = [v4 processIdentifier];
      v16 = 2112;
      v17 = @"com.apple.private.octagon";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "octagon: Client pid: %d doesn't have entitlement: %@", &v14, 0x12u);
    }

    v11 = 0;
  }

  return v11;
}

@end