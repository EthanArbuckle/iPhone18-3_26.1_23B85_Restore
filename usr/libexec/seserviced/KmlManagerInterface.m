@interface KmlManagerInterface
+ (id)interface;
@end

@implementation KmlManagerInterface

+ (id)interface
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___KmlManagerProtocol];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v64 = [NSSet setWithObjects:v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0];
  v63 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___KmlOwnerPairingCallbacks];
  [v63 setClasses:v64 forSelector:"handleKeyPairingCompletionResult:keyInformation:trackingRequest:" argumentIndex:1 ofReply:0];
  [v2 setInterface:v63 forSelector:"queueOwnerPairingSession:callback:" argumentIndex:0 ofReply:0];
  v62 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___KmlOwnerPairingProtocol];
  v65 = v2;
  [v2 setInterface:v62 forSelector:"queueOwnerPairingSession:callback:" argumentIndex:0 ofReply:1];
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___KmlSessionCallbacks];
  [v2 setInterface:v10 forSelector:? argumentIndex:? ofReply:?];

  v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___KmlKeySharingProtocol];
  v59 = objc_opt_class();
  v58 = objc_opt_class();
  v57 = objc_opt_class();
  v56 = objc_opt_class();
  v55 = objc_opt_class();
  v53 = objc_opt_class();
  v51 = objc_opt_class();
  v49 = objc_opt_class();
  v47 = objc_opt_class();
  v45 = objc_opt_class();
  v43 = objc_opt_class();
  v41 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = [NSSet setWithObjects:v59, v58, v57, v56, v55, v53, v51, v49, v47, v45, v43, v41, v12, v13, v14, v15, v16, v17, v18, v19, v20, objc_opt_class(), 0];
  [v11 setClasses:v21 forSelector:"sendSharingInviteForKeyIdentifier:toIdsIdentifier:auth:config:completionHandler:" argumentIndex:3 ofReply:0];
  [v11 setClasses:v21 forSelector:"sendSharingInviteForKeyIdentifier:toIdsIdentifier:auth:config:completionHandler:" argumentIndex:0 ofReply:1];
  [v11 setClasses:v21 forSelector:"sendSilentSharingInviteForKeyIdentifier:config:groupIdentifier:completionHandler:" argumentIndex:1 ofReply:0];
  [v11 setClasses:v21 forSelector:"sendSilentSharingInviteForKeyIdentifier:config:groupIdentifier:completionHandler:" argumentIndex:0 ofReply:1];
  [v11 setClasses:v21 forSelector:"acceptSharingInvitationWithIdentifier:passcode:productPlanIdentifier:completionHandler:" argumentIndex:2 ofReply:0];
  [v11 setClasses:v21 forSelector:"acceptSharingInvitationWithIdentifier:passcode:productPlanIdentifier:completionHandler:" argumentIndex:0 ofReply:1];
  [v11 setClasses:v21 forSelector:"requestInviteWithConfig:completionHandler:" argumentIndex:0 ofReply:0];
  [v11 setClasses:v21 forSelector:? argumentIndex:? ofReply:?];
  [v11 setClasses:v21 forSelector:"getPreTrackRequestForInvitationWithIdentifier:completionHandler:" argumentIndex:0 ofReply:1];
  [v11 setClasses:v21 forSelector:? argumentIndex:? ofReply:?];
  [v11 setClasses:v21 forSelector:? argumentIndex:? ofReply:?];
  [v11 setClasses:v21 forSelector:? argumentIndex:? ofReply:?];
  [v11 setClasses:v21 forSelector:"getSecondFactorRequestForConfigs:completionHandler:" argumentIndex:0 ofReply:0];
  [v11 setClasses:v21 forSelector:"getSecondFactorRequestForConfigs:completionHandler:" argumentIndex:0 ofReply:1];
  [v11 setClasses:v21 forSelector:"createSharingInvitationsForKeyIdentifier:friendIdentifier:auth:ourBindingAttestation:config:completionHandler:" argumentIndex:4 ofReply:0];
  [v11 setClasses:v21 forSelector:"createSharingInvitationsForKeyIdentifier:friendIdentifier:auth:ourBindingAttestation:config:completionHandler:" argumentIndex:0 ofReply:1];
  [v11 setClasses:v21 forSelector:"createSilentSharingInvitationWithGroupIdentifier:completionHandler:" argumentIndex:0 ofReply:0];
  [v11 setClasses:v21 forSelector:"createSilentSharingInvitationWithGroupIdentifier:completionHandler:" argumentIndex:0 ofReply:1];
  [v11 setClasses:v21 forSelector:"acceptSharingInvitation:withIdentifier:fromMailboxIdentifier:passcode:productPlanIdentifier:completionHandler:" argumentIndex:0 ofReply:0];
  [v11 setClasses:v21 forSelector:"acceptSharingInvitation:withIdentifier:fromMailboxIdentifier:passcode:productPlanIdentifier:completionHandler:" argumentIndex:4 ofReply:0];
  [v11 setClasses:v21 forSelector:"acceptSharingInvitation:withIdentifier:fromMailboxIdentifier:passcode:productPlanIdentifier:completionHandler:" argumentIndex:0 ofReply:1];
  [v11 setClasses:v21 forSelector:"startShareAcceptanceFlowWithInvitation:fromMailboxIdentifier:completionHandler:" argumentIndex:0 ofReply:0];
  [v11 setClasses:v21 forSelector:"startShareAcceptanceFlowWithInvitation:completionHandler:" argumentIndex:0 ofReply:0];
  [v11 setClasses:v21 forSelector:"handleRecipientMessage:forInvitationIdentifier:completionHandler:" argumentIndex:0 ofReply:0];
  [v11 setClasses:v21 forSelector:"handleRecipientMessage:forInvitationIdentifier:completionHandler:" argumentIndex:0 ofReply:1];
  [v11 setClasses:v21 forSelector:"handleInitiatorMessage:forInvitationIdentifier:completionHandler:" argumentIndex:0 ofReply:0];
  [v11 setClasses:v21 forSelector:"handleInitiatorMessage:forInvitationIdentifier:completionHandler:" argumentIndex:0 ofReply:1];
  [v11 setClasses:v21 forSelector:"retryPasscode:forInvitationIdentifier:completionHandler:" argumentIndex:0 ofReply:1];
  [v11 setClasses:v21 forSelector:"cancelSharingInvitation:completionHandler:" argumentIndex:0 ofReply:1];
  [v11 setClasses:v21 forSelector:"updateSharingAnalyticsWithConfig:completionHandler:" argumentIndex:0 ofReply:0];
  [v65 setInterface:v11 forSelector:"queueSharingSession:callback:" argumentIndex:0 ofReply:1];
  v22 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___KmlSessionCallbacks];
  [v65 setInterface:v22 forSelector:? argumentIndex:? ofReply:?];

  v23 = +[KmlKeyManagementInterface interface];
  v54 = objc_opt_class();
  v52 = objc_opt_class();
  v50 = objc_opt_class();
  v48 = objc_opt_class();
  v46 = objc_opt_class();
  v44 = objc_opt_class();
  v42 = objc_opt_class();
  v40 = objc_opt_class();
  v39 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v31 = [NSSet setWithObjects:v54, v52, v50, v48, v46, v44, v42, v40, v39, v24, v25, v26, v27, v28, v29, v30, objc_opt_class(), 0];
  [v23 setClasses:v31 forSelector:"listSharingInvitationsForKeyIdentifier:callback:" argumentIndex:0 ofReply:1];
  [v23 setClasses:v31 forSelector:"listReceivedSharingInvitationsWithCallback:" argumentIndex:0 ofReply:1];
  [v23 setClasses:v31 forSelector:"cancelInvitationWithIdentifier:reason:callback:" argumentIndex:0 ofReply:1];
  [v23 setClasses:v31 forSelector:"requestBindingAttestationDataForKeyWithIdentifier:callback:" argumentIndex:0 ofReply:1];
  [v23 setClasses:v31 forSelector:"getPreTrackRequestForKeyWithIdentifier:callback:" argumentIndex:0 ofReply:1];
  [v23 setClasses:v31 forSelector:"ppidRequestForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:" argumentIndex:0 ofReply:1];
  [v23 setClasses:v31 forSelector:"setProductPlanIdentifier:forInvitationIdentifier:completion:" argumentIndex:0 ofReply:0];
  [v23 setClasses:v31 forSelector:"getSecondFactorRequestForConfigs:completionHandler:" argumentIndex:0 ofReply:0];
  [v23 setClasses:v31 forSelector:"getSecondFactorRequestForConfigs:completionHandler:" argumentIndex:0 ofReply:1];
  [v23 setClasses:v31 forSelector:"remoteTerminateKeys:nodeGroupIdentifiers:treeGroupIdentifiers:adminKey:callback:" argumentIndex:0 ofReply:1];
  [v23 setClasses:v31 forSelector:"hasUpgradeAvailableForKeyWithIdentifier:versionType:versions:completionHandler:" argumentIndex:2 ofReply:0];
  [v23 setClasses:v31 forSelector:"hasUpgradeAvailableForKeyWithIdentifier:versionType:versions:completionHandler:" argumentIndex:0 ofReply:1];
  [v23 setClasses:v31 forSelector:"updateConfiguration:forKeyWithIdentifier:additionalConfigurationData:completionHandler:" argumentIndex:2 ofReply:0];
  [v65 setInterface:v23 forSelector:"queueManagementSession:callback:" argumentIndex:0 ofReply:1];
  v61 = objc_opt_class();
  v60 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v37 = [NSSet setWithObjects:v61, v60, v32, v33, v34, v35, v36, objc_opt_class(), 0];
  [v65 setClasses:v37 forSelector:"registerFriendSideSharingTestCompletion:" argumentIndex:0 ofReply:1];

  return v65;
}

@end