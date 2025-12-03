@interface SOSAccountTransaction
- (NSString)description;
- (SOSAccountTransaction)initWithAccount:(id)account quiet:(BOOL)quiet;
- (unint64_t)currentTrustBitmask;
- (void)finish;
- (void)requestSyncWith:(id)with;
- (void)requestSyncWithPeers:(id)peers;
- (void)restart;
- (void)start;
- (void)updateSOSCircleCachedStatus;
@end

@implementation SOSAccountTransaction

- (void)requestSyncWithPeers:(id)peers
{
  peersCopy = peers;
  peersToRequestSync = [(SOSAccountTransaction *)self peersToRequestSync];

  if (!peersToRequestSync)
  {
    v6 = +[NSMutableSet set];
    [(SOSAccountTransaction *)self setPeersToRequestSync:v6];
  }

  peersToRequestSync2 = [(SOSAccountTransaction *)self peersToRequestSync];
  [peersToRequestSync2 unionSet:peersCopy];
}

- (void)requestSyncWith:(id)with
{
  withCopy = with;
  peersToRequestSync = [(SOSAccountTransaction *)self peersToRequestSync];

  if (!peersToRequestSync)
  {
    v6 = +[NSMutableSet set];
    [(SOSAccountTransaction *)self setPeersToRequestSync:v6];
  }

  peersToRequestSync2 = [(SOSAccountTransaction *)self peersToRequestSync];
  [peersToRequestSync2 addObject:withCopy];
}

- (void)finish
{
  account = [(SOSAccountTransaction *)self account];
  notifyCircleChangeOnExit = [account notifyCircleChangeOnExit];

  account2 = [(SOSAccountTransaction *)self account];
  sOSMonitorModeSOSIsActive = [account2 SOSMonitorModeSOSIsActive];

  account3 = [(SOSAccountTransaction *)self account];
  v8 = [account3 isInCircle:0];

  if (v8)
  {
    peersToRequestSync = [(SOSAccountTransaction *)self peersToRequestSync];
    v10 = (peersToRequestSync != 0) & sOSMonitorModeSOSIsActive;

    if (v10 == 1)
    {
      peersToRequestSync2 = [(SOSAccountTransaction *)self peersToRequestSync];
      [(SOSAccountTransaction *)self setPeersToRequestSync:0];
      sub_100245684(peersToRequestSync2);
    }

    sub_100214644(self);
    if (sOSMonitorModeSOSIsActive)
    {
      account4 = [(SOSAccountTransaction *)self account];
      sub_1002214EC(account4);
      goto LABEL_17;
    }
  }

  else
  {
    sub_100214644(self);
  }

  account4 = [(SOSAccountTransaction *)self account];
  if ([account4 isListeningForSync])
  {
    trust = [account4 trust];
    v14 = [trust getDataSourceEngine:{objc_msgSend(account4, "factory")}];

    v15 = sub_100006274("initial-sync");
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Cancelling notifications to monitor in-sync", &buf, 2u);
      }

      sub_10014E1E8(v14, 0);
      sub_10014E104(v14, 0);
    }

    else
    {
      if (v16)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No engine to cancel notification from.", &buf, 2u);
      }
    }

    [account4 setIsListeningForSync:0];
  }

LABEL_17:
  account5 = [(SOSAccountTransaction *)self account];
  [account5 peerInfo];

  if (sOSMonitorModeSOSIsActive)
  {
    initialID = [(SOSAccountTransaction *)self initialID];
    v19 = [initialID isEqualToString:SOSPeerInfoGetPeerID()];

    if (v19)
    {
      v20 = SOSViewCopyViewSet();
      [(SOSAccountTransaction *)self setInitialUnsyncedViews:v20];
    }
  }

  account6 = [(SOSAccountTransaction *)self account];
  v22 = sub_100220688(account6);

  if (!sOSMonitorModeSOSIsActive)
  {
    v26 = 0;
    goto LABEL_65;
  }

  initialUnsyncedViews = [(SOSAccountTransaction *)self initialUnsyncedViews];
  if (!initialUnsyncedViews)
  {
    if (!v22)
    {
      goto LABEL_23;
    }

LABEL_26:
    account7 = [(SOSAccountTransaction *)self account];
    initialUnsyncedViews2 = [(SOSAccountTransaction *)self initialUnsyncedViews];
    v29 = account7;
    v26 = sub_100220990(2, initialUnsyncedViews2, v22);
    if (v26)
    {
      v130 = notifyCircleChangeOnExit;
      cf = v22;
      v30 = v29;
      v31 = sub_100006274("initial-sync");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Handling initial sync done.", &buf, 2u);
      }

      v128 = v29;

      v32 = v30;
      v33 = SOSViewCopyViewSet();
      v34 = SOSViewCopyViewSet();
      v35 = sub_10020649C(v32, @"pendingEnableViews");
      if (!v35 || (v36 = v35, v37 = CFGetTypeID(v35), v37 != CFSetGetTypeID()))
      {
        v36 = 0;
      }

      v38 = sub_10020649C(v32, @"pendingDisableViews");
      if (!v38 || (v39 = v38, v40 = CFGetTypeID(v38), v40 != CFSetGetTypeID()))
      {
        v39 = 0;
      }

      if (v34)
      {
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v135 = sub_100220980;
        v136 = &unk_1003477F0;
        v137 = v33;
        CFSetApplyFunction(v34, sub_1002208C8, &buf);
      }

      if (v36)
      {
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v135 = sub_100220980;
        v136 = &unk_1003477F0;
        v137 = v33;
        CFSetApplyFunction(v36, sub_1002208C8, &buf);
      }

      if (v34)
      {
        CFRelease(v34);
      }

      trust2 = [v32 trust];
      v42 = [trust2 updateViewSets:v32 enabled:v33 disabled:v39];

      if (v33)
      {
        CFRelease(v33);
      }

      v22 = cf;
      v29 = v129;
      if (v42)
      {
        sub_100228AD0(v32, @"pendingEnableViews", 0);
        sub_100228AD0(v32, @"pendingDisableViews", 0);
        v43 = sub_100006274("views");
        notifyCircleChangeOnExit = v130;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "updated view sets!", &buf, 2u);
        }

        v44 = v32;
      }

      else
      {
        v45 = sub_100006274("SecError");
        notifyCircleChangeOnExit = v130;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Could not update view sets", &buf, 2u);
        }

        v44 = sub_100006274("initial-sync");
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Account could not add the pending view sets", &buf, 2u);
        }
      }

      v46 = v32;
      waitForInitialSync_blocks = [v46 waitForInitialSync_blocks];
      [v46 setWaitForInitialSync_blocks:0];
      if (waitForInitialSync_blocks)
      {
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v135 = sub_100220B40;
        v136 = &unk_100345B70;
        v137 = v46;
        CFDictionaryApplyFunction(waitForInitialSync_blocks, sub_100220C10, &buf);

        CFRelease(waitForInitialSync_blocks);
      }
    }

    if (sub_100220990(5, initialUnsyncedViews2, v22))
    {
      v48 = sub_100006274("initial-sync");
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Handling Required Backup Sync done", &buf, 2u);
      }

      v26 = 1;
    }

    v49 = sub_100006274("initial-sync");
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      initialUnsyncedViews3 = [(SOSAccountTransaction *)self initialUnsyncedViews];
      shortDescription = [initialUnsyncedViews3 shortDescription];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = shortDescription;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Unsynced was: %@", &buf, 0xCu);
    }

    v52 = sub_100006274("initial-sync");
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription2 = [(__CFSet *)v22 shortDescription];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = shortDescription2;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Unsynced is: %@", &buf, 0xCu);
    }

    goto LABEL_63;
  }

  v24 = initialUnsyncedViews;
  v25 = [initialUnsyncedViews isEqual:v22];

  if ((v25 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  v26 = 0;
LABEL_63:
  account8 = [(SOSAccountTransaction *)self account];
  engine_peer_state_needs_repair = [account8 engine_peer_state_needs_repair];

  if (engine_peer_state_needs_repair)
  {
    account9 = [(SOSAccountTransaction *)self account];
    sub_100210680(account9);

    v26 = 1;
  }

LABEL_65:
  account10 = [(SOSAccountTransaction *)self account];
  circle_rings_retirements_need_attention = [account10 circle_rings_retirements_need_attention];

  if (circle_rings_retirements_need_attention)
  {
    account11 = [(SOSAccountTransaction *)self account];
    [account11 setCircle_rings_retirements_need_attention:0];

    account12 = [(SOSAccountTransaction *)self account];
    [account12 triggerRingUpdate];

    v26 = 1;
  }

  account13 = [(SOSAccountTransaction *)self account];
  need_backup_peers_created_after_backup_key_set = [account13 need_backup_peers_created_after_backup_key_set];

  if (need_backup_peers_created_after_backup_key_set)
  {
    account14 = [(SOSAccountTransaction *)self account];
    [account14 setNeed_backup_peers_created_after_backup_key_set:0];

    v26 = 1;
  }

  account15 = [(SOSAccountTransaction *)self account];
  if ([account15 peerInfo])
  {
    account16 = [(SOSAccountTransaction *)self account];
    [account16 peerInfo];
    v66 = SOSPeerInfoCopyEnabledViews();
  }

  else
  {
    v66 = 0;
  }

  initialViews = [(SOSAccountTransaction *)self initialViews];
  v68 = initialViews;
  if (initialViews)
  {
    v69 = [initialViews isEqual:v66];
  }

  else
  {
    v69 = v66 == 0;
  }

  v70 = v69 ^ 1;

  if (v66)
  {
    CFRelease(v66);
  }

  if (v26 | v70)
  {
    account17 = [(SOSAccountTransaction *)self account];
    sub_10021ED88(account17);
  }

  account18 = [(SOSAccountTransaction *)self account];
  if ([account18 key_interests_need_updating])
  {
    account19 = [(SOSAccountTransaction *)self account];
    consolidateKeyInterest = [account19 consolidateKeyInterest];

    if (consolidateKeyInterest)
    {
      goto LABEL_83;
    }

    account18 = [(SOSAccountTransaction *)self account];
    sub_100236230(account18);
  }

LABEL_83:
  account20 = [(SOSAccountTransaction *)self account];
  [account20 setEngine_peer_state_needs_repair:0];

  account21 = [(SOSAccountTransaction *)self account];
  [account21 flattenToSaveBlock];

  account22 = [(SOSAccountTransaction *)self account];
  v78 = [account22 isInCircle:0];

  if ((sOSMonitorModeSOSIsActive & v78 & notifyCircleChangeOnExit) == 1)
  {
    v79 = self->_account;
    settings = [(SOSAccount *)v79 settings];
    v81 = [settings objectForKey:@"lastKVSCleanup"];

    v82 = +[NSDate date];
    [v82 timeIntervalSinceDate:v81];
    if (v83 >= 259200.0)
    {
      sub_100210B48(v79, 0);
    }
  }

  account23 = [(SOSAccountTransaction *)self account];
  peerInfo = [account23 peerInfo];

  if (peerInfo)
  {
    peerInfo = SOSPeerInfoCopyEnabledViews();
  }

  if (![(SOSAccountTransaction *)self quiet])
  {
    v133[0] = _NSConcreteStackBlock;
    v133[1] = 3221225472;
    v133[2] = sub_10021DAF0;
    v133[3] = &unk_100345938;
    v133[4] = self;
    sub_100085CC8(peerInfo, v133);
  }

  cfa = peerInfo;
  initialKeyParameters = [(SOSAccountTransaction *)self initialKeyParameters];
  account24 = [(SOSAccountTransaction *)self account];
  accountKeyDerivationParameters = [account24 accountKeyDerivationParameters];
  v89 = accountKeyDerivationParameters;
  if (initialKeyParameters)
  {
    v90 = [initialKeyParameters isEqual:accountKeyDerivationParameters];
  }

  else
  {
    v90 = accountKeyDerivationParameters == 0;
  }

  if ([(SOSAccountTransaction *)self initialTrusted]&& !(v90 & 1 | ![(SOSAccountTransaction *)self initialInCircle]| (v78 ^ 1) & 1))
  {
    account25 = [(SOSAccountTransaction *)self account];
    accountKeyIsTrusted = [account25 accountKeyIsTrusted];
  }

  else
  {
    accountKeyIsTrusted = 0;
  }

  if (v78 == [(SOSAccountTransaction *)self initialInCircle])
  {
    if (v78)
    {
      initialViews2 = [(SOSAccountTransaction *)self initialViews];
      if (initialViews2)
      {
        v97 = initialViews2;
        v98 = [initialViews2 isEqual:cfa];

        if (v98)
        {
          goto LABEL_105;
        }
      }

      else if (!cfa)
      {
        goto LABEL_105;
      }

      v93 = v22;
      dword_10039E380 = 0;
      v94 = sub_100006274("secdNotify");
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "Notified clients of kSOSCCViewMembershipChangedNotification for viewchange(only)", &buf, 2u);
      }

      v95 = 1;
      goto LABEL_110;
    }

LABEL_105:
    v93 = v22;
    if (!accountKeyIsTrusted)
    {
      v95 = 0;
      goto LABEL_111;
    }

    dword_10039E380 = 0;
    v94 = sub_100006274("secdNotify");
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "Notified clients of kSOSCCCircleChangedNotification for userKey change", &buf, 2u);
    }

    v95 = 0;
    goto LABEL_109;
  }

  v93 = v22;
  dword_10039E380 = 0;
  v94 = sub_100006274("secdNotify");
  if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "Notified clients of kSOSCCCircleChangedNotification && kSOSCCViewMembershipChangedNotification for circle/view change", &buf, 2u);
  }

  v95 = 1;
LABEL_109:
  notifyCircleChangeOnExit = 1;
LABEL_110:

LABEL_111:
  if (!-[SOSAccountTransaction initialTrusted](self, "initialTrusted") || v90 & 1 | !-[SOSAccountTransaction initialInCircle](self, "initialInCircle") || (-[SOSAccountTransaction account](self, "account"), v99 = objc_claimAutoreleasedReturnValue(), v100 = [v99 accountKeyIsTrusted], v99, (v100 & 1) != 0))
  {
    if ([(SOSAccountTransaction *)self initialTrusted])
    {
      if ((notifyCircleChangeOnExit & 1) == 0)
      {
        goto LABEL_140;
      }

LABEL_127:
      [(SOSAccountTransaction *)self updateSOSCircleCachedStatus];
      account26 = [(SOSAccountTransaction *)self account];
      [account26 sosEvaluateIfNeeded];

      if ((v95 & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_128;
    }
  }

  else
  {
    v101 = sub_100006274("userKeyTrust");
    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "No longer trust user public key - prompting for password.", &buf, 2u);
    }

    notify_post("com.apple.security.publickeynotavailable");
    dword_10039E380 = 0;
    if ([(SOSAccountTransaction *)self initialTrusted])
    {
      goto LABEL_127;
    }

    notifyCircleChangeOnExit = 1;
  }

  account27 = [(SOSAccountTransaction *)self account];
  v103 = [account27 accountKeyIsTrusted] & v78;

  if (v103 == 1)
  {
    v104 = sub_100006274("userKeyTrust");
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "UserKey is once again trusted and we're valid in circle.", &buf, 2u);
    }

    [(SOSAccountTransaction *)self updateSOSCircleCachedStatus];
    account28 = [(SOSAccountTransaction *)self account];
    [account28 sosEvaluateIfNeeded];

    goto LABEL_128;
  }

  if (notifyCircleChangeOnExit)
  {
    goto LABEL_127;
  }

LABEL_140:
  if (v95)
  {
LABEL_128:
    sub_10021DC1C(self->_account);
  }

LABEL_129:
  account29 = [(SOSAccountTransaction *)self account];
  notifyBackupOnExit = [account29 notifyBackupOnExit];

  if (notifyBackupOnExit)
  {
    notify_post("com.apple.security.itembackup");
    account30 = [(SOSAccountTransaction *)self account];
    [account30 setNotifyBackupOnExit:0];
  }

  v110 = dword_10039E380;
  if (dword_10039E380 <= 0)
  {
    account31 = [(SOSAccountTransaction *)self account];
    v112 = sub_100006274("accountLogState");
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "Start", &buf, 2u);
    }

    v113 = sub_100209CB8(account31);
    v114 = sub_100006274("accountLogState");
    if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v113;
      _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "%@", &buf, 0xCu);
    }

    if (v113)
    {
      CFRelease(v113);
    }

    trust3 = [account31 trust];
    if ([trust3 trustedCircle])
    {
      [trust3 trustedCircle];
      [account31 accountKey];
      peerID = [account31 peerID];
      SOSCircleLogState();
    }

    else
    {
      peerID = sub_100006274("accountLogState");
      if (os_log_type_enabled(peerID, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, peerID, OS_LOG_TYPE_DEFAULT, "ACCOUNT: No Circle", &buf, 2u);
      }
    }

    account32 = [(SOSAccountTransaction *)self account];
    trust4 = [account32 trust];
    v119 = [trust4 isInCircleOnly:0];

    if (v119)
    {
      peerInfo2 = [account32 peerInfo];
      v121 = sub_100220920(account32);
      v122 = sub_100220920(account32);
      if (peerInfo2)
      {
        peerInfo2 = SOSPeerInfoCopyEnabledViews();
      }

      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v135 = sub_1002123C4;
      v136 = &unk_100345250;
      LOBYTE(v137) = v121;
      BYTE1(v137) = v122;
      sub_100085CC8(peerInfo2, &buf);
      if (peerInfo2)
      {
        CFRelease(peerInfo2);
      }

      v123 = sub_100220688(account32);
      sub_1002124BC(&stru_100345270, @"null");
      if (v123)
      {
        CFRelease(v123);
      }

      if (qword_10039E118 != -1)
      {
        dispatch_once(&qword_10039E118, &stru_1003420D8);
      }

      if (byte_10039E110 == 1)
      {
        v124 = sub_100006274("accountLogState");
        if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
        {
          sosCompatibilityMode = [account32 sosCompatibilityMode];
          v126 = @"disabled";
          if (sosCompatibilityMode)
          {
            v126 = @"enabled";
          }

          *v138 = 138412290;
          v139 = v126;
          _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "SOS CompatibilityMode: %@", v138, 0xCu);
        }
      }
    }

    v127 = sub_100006274("accountLogState");
    if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
    {
      *v138 = 0;
      _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "Finish", v138, 2u);
    }

    v110 = 200;
  }

  dword_10039E380 = v110 - 1;
  if (cfa)
  {
    CFRelease(cfa);
  }
}

- (void)restart
{
  [(SOSAccountTransaction *)self finish];

  [(SOSAccountTransaction *)self start];
}

- (void)start
{
  [(SOSAccountTransaction *)self updateSOSCircleCachedStatus];
  sub_10021DC1C(self->_account);
  account = [(SOSAccountTransaction *)self account];
  -[SOSAccountTransaction setInitialInCircle:](self, "setInitialInCircle:", [account isInCircle:0]);

  account2 = [(SOSAccountTransaction *)self account];
  -[SOSAccountTransaction setInitialTrusted:](self, "setInitialTrusted:", [account2 accountKeyIsTrusted]);

  [(SOSAccountTransaction *)self setInitialCirclePeerCount:0];
  if ([(SOSAccountTransaction *)self initialInCircle])
  {
    account3 = [(SOSAccountTransaction *)self account];
    trust = [account3 trust];
    [trust trustedCircle];
    [(SOSAccountTransaction *)self setInitialCirclePeerCount:SOSCircleCountPeers()];
  }

  if ([(SOSAccountTransaction *)self initialInCircle])
  {
    account4 = [(SOSAccountTransaction *)self account];
    sub_1002214EC(account4);
  }

  account5 = [(SOSAccountTransaction *)self account];
  v9 = sub_100220688(account5);
  [(SOSAccountTransaction *)self setInitialUnsyncedViews:v9];

  account6 = [(SOSAccountTransaction *)self account];
  accountKeyDerivationParameters = [account6 accountKeyDerivationParameters];
  if (accountKeyDerivationParameters)
  {
    account7 = [(SOSAccountTransaction *)self account];
    accountKeyDerivationParameters2 = [account7 accountKeyDerivationParameters];
    v14 = [NSData dataWithData:accountKeyDerivationParameters2];
    [(SOSAccountTransaction *)self setInitialKeyParameters:v14];
  }

  else
  {
    [(SOSAccountTransaction *)self setInitialKeyParameters:0];
  }

  account8 = [(SOSAccountTransaction *)self account];
  peerInfo = [account8 peerInfo];

  if (peerInfo)
  {
    v17 = SOSPeerInfoCopyEnabledViews();
    [(SOSAccountTransaction *)self setInitialViews:v17];

    account9 = [(SOSAccountTransaction *)self account];
    [account9 ensureOctagonPeerKeys];
  }

  [(SOSAccountTransaction *)self setPeersToRequestSync:0];
  sub_100214644(self);
  account10 = [(SOSAccountTransaction *)self account];
  if ([account10 key_interests_need_updating])
  {
    account11 = [(SOSAccountTransaction *)self account];
    consolidateKeyInterest = [account11 consolidateKeyInterest];

    if (consolidateKeyInterest)
    {
      goto LABEL_14;
    }

    account10 = [(SOSAccountTransaction *)self account];
    sub_100236230(account10);
  }

LABEL_14:
  if (![(SOSAccountTransaction *)self quiet])
  {
    initialViews = [(SOSAccountTransaction *)self initialViews];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10021E29C;
    v23[3] = &unk_100345938;
    v23[4] = self;
    sub_100085CC8(initialViews, v23);
  }
}

- (SOSAccountTransaction)initWithAccount:(id)account quiet:(BOOL)quiet
{
  accountCopy = account;
  v10.receiver = self;
  v10.super_class = SOSAccountTransaction;
  v7 = [(SOSAccountTransaction *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(SOSAccountTransaction *)v7 setAccount:accountCopy];
    v8->_quiet = quiet;
    [(SOSAccountTransaction *)v8 start];
  }

  return v8;
}

- (NSString)description
{
  initialViews = [(SOSAccountTransaction *)self initialViews];
  if (initialViews)
  {
    initialViews2 = [(SOSAccountTransaction *)self initialViews];
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<SOSAccountTransaction*@%p %ld>", self, [initialViews2 count]);
  }

  else
  {
    v5 = [NSString stringWithFormat:@"<SOSAccountTransaction*@%p %ld>", self, 0];
  }

  return v5;
}

- (void)updateSOSCircleCachedStatus
{
  queue = [(SOSAccount *)self->_account queue];
  dispatch_assert_queue_V2(queue);

  if (qword_10039E378 != -1)
  {
    dispatch_once(&qword_10039E378, &stru_1003458A8);
  }

  currentTrustBitmask = [(SOSAccountTransaction *)self currentTrustBitmask];
  v5 = currentTrustBitmask;
  if ((qword_10039E370 & 0x8000000000000000) == 0 || qword_10039E370 != currentTrustBitmask)
  {
    [(SOSAccount *)self->_account setNotifyCircleChangeOnExit:1];
  }

  if ([(SOSAccount *)self->_account notifyCircleChangeOnExit])
  {
    v6 = qword_10039E370;
    qword_10039E370 = v5;
    v7 = sub_100006274("sosnotify");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v9 = qword_10039E370;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "new last circle status is: %d", buf, 8u);
    }

    SOSCachedNotificationOperation();
    if ((v6 & 0x8000000000000000) == 0)
    {
      [(SOSAccount *)self->_account setNotifyViewChangeOnExit:1, _NSConcreteStackBlock, 3221225472, sub_10021E6A8, &unk_100345910, self, v5];
    }
  }
}

- (unint64_t)currentTrustBitmask
{
  queue = [(SOSAccount *)self->_account queue];
  dispatch_assert_queue_V2(queue);

  trust = [(SOSAccount *)self->_account trust];
  v5 = [trust getCircleStatusOnly:0];

  if ([(SOSAccount *)self->_account accountKeyIsTrusted])
  {
    accountPrivateKey = [(SOSAccount *)self->_account accountPrivateKey];
    v7 = 0xE000000000000000;
    if (!accountPrivateKey)
    {
      v7 = 0xC000000000000000;
    }

    v8 = v7 | v5;
  }

  else
  {
    v8 = v5 | 0x8000000000000000;
  }

  trust2 = [(SOSAccount *)self->_account trust];
  v10 = [trust2 isInCircleOnly:0];

  if (v10)
  {
    return v8 | 0x1000000000000000;
  }

  else
  {
    return v8;
  }
}

@end