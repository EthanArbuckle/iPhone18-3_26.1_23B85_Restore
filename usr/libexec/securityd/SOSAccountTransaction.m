@interface SOSAccountTransaction
- (NSString)description;
- (SOSAccountTransaction)initWithAccount:(id)a3 quiet:(BOOL)a4;
- (unint64_t)currentTrustBitmask;
- (void)finish;
- (void)requestSyncWith:(id)a3;
- (void)requestSyncWithPeers:(id)a3;
- (void)restart;
- (void)start;
- (void)updateSOSCircleCachedStatus;
@end

@implementation SOSAccountTransaction

- (void)requestSyncWithPeers:(id)a3
{
  v4 = a3;
  v5 = [(SOSAccountTransaction *)self peersToRequestSync];

  if (!v5)
  {
    v6 = +[NSMutableSet set];
    [(SOSAccountTransaction *)self setPeersToRequestSync:v6];
  }

  v7 = [(SOSAccountTransaction *)self peersToRequestSync];
  [v7 unionSet:v4];
}

- (void)requestSyncWith:(id)a3
{
  v4 = a3;
  v5 = [(SOSAccountTransaction *)self peersToRequestSync];

  if (!v5)
  {
    v6 = +[NSMutableSet set];
    [(SOSAccountTransaction *)self setPeersToRequestSync:v6];
  }

  v7 = [(SOSAccountTransaction *)self peersToRequestSync];
  [v7 addObject:v4];
}

- (void)finish
{
  v3 = [(SOSAccountTransaction *)self account];
  v4 = [v3 notifyCircleChangeOnExit];

  v5 = [(SOSAccountTransaction *)self account];
  v6 = [v5 SOSMonitorModeSOSIsActive];

  v7 = [(SOSAccountTransaction *)self account];
  v8 = [v7 isInCircle:0];

  if (v8)
  {
    v9 = [(SOSAccountTransaction *)self peersToRequestSync];
    v10 = (v9 != 0) & v6;

    if (v10 == 1)
    {
      v11 = [(SOSAccountTransaction *)self peersToRequestSync];
      [(SOSAccountTransaction *)self setPeersToRequestSync:0];
      sub_100245684(v11);
    }

    sub_100214644(self);
    if (v6)
    {
      v12 = [(SOSAccountTransaction *)self account];
      sub_1002214EC(v12);
      goto LABEL_17;
    }
  }

  else
  {
    sub_100214644(self);
  }

  v12 = [(SOSAccountTransaction *)self account];
  if ([v12 isListeningForSync])
  {
    v13 = [v12 trust];
    v14 = [v13 getDataSourceEngine:{objc_msgSend(v12, "factory")}];

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

    [v12 setIsListeningForSync:0];
  }

LABEL_17:
  v17 = [(SOSAccountTransaction *)self account];
  [v17 peerInfo];

  if (v6)
  {
    v18 = [(SOSAccountTransaction *)self initialID];
    v19 = [v18 isEqualToString:SOSPeerInfoGetPeerID()];

    if (v19)
    {
      v20 = SOSViewCopyViewSet();
      [(SOSAccountTransaction *)self setInitialUnsyncedViews:v20];
    }
  }

  v21 = [(SOSAccountTransaction *)self account];
  v22 = sub_100220688(v21);

  if (!v6)
  {
    v26 = 0;
    goto LABEL_65;
  }

  v23 = [(SOSAccountTransaction *)self initialUnsyncedViews];
  if (!v23)
  {
    if (!v22)
    {
      goto LABEL_23;
    }

LABEL_26:
    v27 = [(SOSAccountTransaction *)self account];
    v28 = [(SOSAccountTransaction *)self initialUnsyncedViews];
    v29 = v27;
    v26 = sub_100220990(2, v28, v22);
    if (v26)
    {
      v130 = v4;
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

      v41 = [v32 trust];
      v42 = [v41 updateViewSets:v32 enabled:v33 disabled:v39];

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
        v4 = v130;
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
        v4 = v130;
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
      v47 = [v46 waitForInitialSync_blocks];
      [v46 setWaitForInitialSync_blocks:0];
      if (v47)
      {
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v135 = sub_100220B40;
        v136 = &unk_100345B70;
        v137 = v46;
        CFDictionaryApplyFunction(v47, sub_100220C10, &buf);

        CFRelease(v47);
      }
    }

    if (sub_100220990(5, v28, v22))
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
      v50 = [(SOSAccountTransaction *)self initialUnsyncedViews];
      v51 = [v50 shortDescription];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v51;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Unsynced was: %@", &buf, 0xCu);
    }

    v52 = sub_100006274("initial-sync");
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = [(__CFSet *)v22 shortDescription];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v53;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Unsynced is: %@", &buf, 0xCu);
    }

    goto LABEL_63;
  }

  v24 = v23;
  v25 = [v23 isEqual:v22];

  if ((v25 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  v26 = 0;
LABEL_63:
  v54 = [(SOSAccountTransaction *)self account];
  v55 = [v54 engine_peer_state_needs_repair];

  if (v55)
  {
    v56 = [(SOSAccountTransaction *)self account];
    sub_100210680(v56);

    v26 = 1;
  }

LABEL_65:
  v57 = [(SOSAccountTransaction *)self account];
  v58 = [v57 circle_rings_retirements_need_attention];

  if (v58)
  {
    v59 = [(SOSAccountTransaction *)self account];
    [v59 setCircle_rings_retirements_need_attention:0];

    v60 = [(SOSAccountTransaction *)self account];
    [v60 triggerRingUpdate];

    v26 = 1;
  }

  v61 = [(SOSAccountTransaction *)self account];
  v62 = [v61 need_backup_peers_created_after_backup_key_set];

  if (v62)
  {
    v63 = [(SOSAccountTransaction *)self account];
    [v63 setNeed_backup_peers_created_after_backup_key_set:0];

    v26 = 1;
  }

  v64 = [(SOSAccountTransaction *)self account];
  if ([v64 peerInfo])
  {
    v65 = [(SOSAccountTransaction *)self account];
    [v65 peerInfo];
    v66 = SOSPeerInfoCopyEnabledViews();
  }

  else
  {
    v66 = 0;
  }

  v67 = [(SOSAccountTransaction *)self initialViews];
  v68 = v67;
  if (v67)
  {
    v69 = [v67 isEqual:v66];
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
    v71 = [(SOSAccountTransaction *)self account];
    sub_10021ED88(v71);
  }

  v72 = [(SOSAccountTransaction *)self account];
  if ([v72 key_interests_need_updating])
  {
    v73 = [(SOSAccountTransaction *)self account];
    v74 = [v73 consolidateKeyInterest];

    if (v74)
    {
      goto LABEL_83;
    }

    v72 = [(SOSAccountTransaction *)self account];
    sub_100236230(v72);
  }

LABEL_83:
  v75 = [(SOSAccountTransaction *)self account];
  [v75 setEngine_peer_state_needs_repair:0];

  v76 = [(SOSAccountTransaction *)self account];
  [v76 flattenToSaveBlock];

  v77 = [(SOSAccountTransaction *)self account];
  v78 = [v77 isInCircle:0];

  if ((v6 & v78 & v4) == 1)
  {
    v79 = self->_account;
    v80 = [(SOSAccount *)v79 settings];
    v81 = [v80 objectForKey:@"lastKVSCleanup"];

    v82 = +[NSDate date];
    [v82 timeIntervalSinceDate:v81];
    if (v83 >= 259200.0)
    {
      sub_100210B48(v79, 0);
    }
  }

  v84 = [(SOSAccountTransaction *)self account];
  v85 = [v84 peerInfo];

  if (v85)
  {
    v85 = SOSPeerInfoCopyEnabledViews();
  }

  if (![(SOSAccountTransaction *)self quiet])
  {
    v133[0] = _NSConcreteStackBlock;
    v133[1] = 3221225472;
    v133[2] = sub_10021DAF0;
    v133[3] = &unk_100345938;
    v133[4] = self;
    sub_100085CC8(v85, v133);
  }

  cfa = v85;
  v86 = [(SOSAccountTransaction *)self initialKeyParameters];
  v87 = [(SOSAccountTransaction *)self account];
  v88 = [v87 accountKeyDerivationParameters];
  v89 = v88;
  if (v86)
  {
    v90 = [v86 isEqual:v88];
  }

  else
  {
    v90 = v88 == 0;
  }

  if ([(SOSAccountTransaction *)self initialTrusted]&& !(v90 & 1 | ![(SOSAccountTransaction *)self initialInCircle]| (v78 ^ 1) & 1))
  {
    v92 = [(SOSAccountTransaction *)self account];
    v91 = [v92 accountKeyIsTrusted];
  }

  else
  {
    v91 = 0;
  }

  if (v78 == [(SOSAccountTransaction *)self initialInCircle])
  {
    if (v78)
    {
      v96 = [(SOSAccountTransaction *)self initialViews];
      if (v96)
      {
        v97 = v96;
        v98 = [v96 isEqual:cfa];

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
    if (!v91)
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
  v4 = 1;
LABEL_110:

LABEL_111:
  if (!-[SOSAccountTransaction initialTrusted](self, "initialTrusted") || v90 & 1 | !-[SOSAccountTransaction initialInCircle](self, "initialInCircle") || (-[SOSAccountTransaction account](self, "account"), v99 = objc_claimAutoreleasedReturnValue(), v100 = [v99 accountKeyIsTrusted], v99, (v100 & 1) != 0))
  {
    if ([(SOSAccountTransaction *)self initialTrusted])
    {
      if ((v4 & 1) == 0)
      {
        goto LABEL_140;
      }

LABEL_127:
      [(SOSAccountTransaction *)self updateSOSCircleCachedStatus];
      v106 = [(SOSAccountTransaction *)self account];
      [v106 sosEvaluateIfNeeded];

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

    v4 = 1;
  }

  v102 = [(SOSAccountTransaction *)self account];
  v103 = [v102 accountKeyIsTrusted] & v78;

  if (v103 == 1)
  {
    v104 = sub_100006274("userKeyTrust");
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "UserKey is once again trusted and we're valid in circle.", &buf, 2u);
    }

    [(SOSAccountTransaction *)self updateSOSCircleCachedStatus];
    v105 = [(SOSAccountTransaction *)self account];
    [v105 sosEvaluateIfNeeded];

    goto LABEL_128;
  }

  if (v4)
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
  v107 = [(SOSAccountTransaction *)self account];
  v108 = [v107 notifyBackupOnExit];

  if (v108)
  {
    notify_post("com.apple.security.itembackup");
    v109 = [(SOSAccountTransaction *)self account];
    [v109 setNotifyBackupOnExit:0];
  }

  v110 = dword_10039E380;
  if (dword_10039E380 <= 0)
  {
    v111 = [(SOSAccountTransaction *)self account];
    v112 = sub_100006274("accountLogState");
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "Start", &buf, 2u);
    }

    v113 = sub_100209CB8(v111);
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

    v115 = [v111 trust];
    if ([v115 trustedCircle])
    {
      [v115 trustedCircle];
      [v111 accountKey];
      v116 = [v111 peerID];
      SOSCircleLogState();
    }

    else
    {
      v116 = sub_100006274("accountLogState");
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "ACCOUNT: No Circle", &buf, 2u);
      }
    }

    v117 = [(SOSAccountTransaction *)self account];
    v118 = [v117 trust];
    v119 = [v118 isInCircleOnly:0];

    if (v119)
    {
      v120 = [v117 peerInfo];
      v121 = sub_100220920(v117);
      v122 = sub_100220920(v117);
      if (v120)
      {
        v120 = SOSPeerInfoCopyEnabledViews();
      }

      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v135 = sub_1002123C4;
      v136 = &unk_100345250;
      LOBYTE(v137) = v121;
      BYTE1(v137) = v122;
      sub_100085CC8(v120, &buf);
      if (v120)
      {
        CFRelease(v120);
      }

      v123 = sub_100220688(v117);
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
          v125 = [v117 sosCompatibilityMode];
          v126 = @"disabled";
          if (v125)
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
  v3 = [(SOSAccountTransaction *)self account];
  -[SOSAccountTransaction setInitialInCircle:](self, "setInitialInCircle:", [v3 isInCircle:0]);

  v4 = [(SOSAccountTransaction *)self account];
  -[SOSAccountTransaction setInitialTrusted:](self, "setInitialTrusted:", [v4 accountKeyIsTrusted]);

  [(SOSAccountTransaction *)self setInitialCirclePeerCount:0];
  if ([(SOSAccountTransaction *)self initialInCircle])
  {
    v5 = [(SOSAccountTransaction *)self account];
    v6 = [v5 trust];
    [v6 trustedCircle];
    [(SOSAccountTransaction *)self setInitialCirclePeerCount:SOSCircleCountPeers()];
  }

  if ([(SOSAccountTransaction *)self initialInCircle])
  {
    v7 = [(SOSAccountTransaction *)self account];
    sub_1002214EC(v7);
  }

  v8 = [(SOSAccountTransaction *)self account];
  v9 = sub_100220688(v8);
  [(SOSAccountTransaction *)self setInitialUnsyncedViews:v9];

  v10 = [(SOSAccountTransaction *)self account];
  v11 = [v10 accountKeyDerivationParameters];
  if (v11)
  {
    v12 = [(SOSAccountTransaction *)self account];
    v13 = [v12 accountKeyDerivationParameters];
    v14 = [NSData dataWithData:v13];
    [(SOSAccountTransaction *)self setInitialKeyParameters:v14];
  }

  else
  {
    [(SOSAccountTransaction *)self setInitialKeyParameters:0];
  }

  v15 = [(SOSAccountTransaction *)self account];
  v16 = [v15 peerInfo];

  if (v16)
  {
    v17 = SOSPeerInfoCopyEnabledViews();
    [(SOSAccountTransaction *)self setInitialViews:v17];

    v18 = [(SOSAccountTransaction *)self account];
    [v18 ensureOctagonPeerKeys];
  }

  [(SOSAccountTransaction *)self setPeersToRequestSync:0];
  sub_100214644(self);
  v19 = [(SOSAccountTransaction *)self account];
  if ([v19 key_interests_need_updating])
  {
    v20 = [(SOSAccountTransaction *)self account];
    v21 = [v20 consolidateKeyInterest];

    if (v21)
    {
      goto LABEL_14;
    }

    v19 = [(SOSAccountTransaction *)self account];
    sub_100236230(v19);
  }

LABEL_14:
  if (![(SOSAccountTransaction *)self quiet])
  {
    v22 = [(SOSAccountTransaction *)self initialViews];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10021E29C;
    v23[3] = &unk_100345938;
    v23[4] = self;
    sub_100085CC8(v22, v23);
  }
}

- (SOSAccountTransaction)initWithAccount:(id)a3 quiet:(BOOL)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = SOSAccountTransaction;
  v7 = [(SOSAccountTransaction *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(SOSAccountTransaction *)v7 setAccount:v6];
    v8->_quiet = a4;
    [(SOSAccountTransaction *)v8 start];
  }

  return v8;
}

- (NSString)description
{
  v3 = [(SOSAccountTransaction *)self initialViews];
  if (v3)
  {
    v4 = [(SOSAccountTransaction *)self initialViews];
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<SOSAccountTransaction*@%p %ld>", self, [v4 count]);
  }

  else
  {
    v5 = [NSString stringWithFormat:@"<SOSAccountTransaction*@%p %ld>", self, 0];
  }

  return v5;
}

- (void)updateSOSCircleCachedStatus
{
  v3 = [(SOSAccount *)self->_account queue];
  dispatch_assert_queue_V2(v3);

  if (qword_10039E378 != -1)
  {
    dispatch_once(&qword_10039E378, &stru_1003458A8);
  }

  v4 = [(SOSAccountTransaction *)self currentTrustBitmask];
  v5 = v4;
  if ((qword_10039E370 & 0x8000000000000000) == 0 || qword_10039E370 != v4)
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
  v3 = [(SOSAccount *)self->_account queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SOSAccount *)self->_account trust];
  v5 = [v4 getCircleStatusOnly:0];

  if ([(SOSAccount *)self->_account accountKeyIsTrusted])
  {
    v6 = [(SOSAccount *)self->_account accountPrivateKey];
    v7 = 0xE000000000000000;
    if (!v6)
    {
      v7 = 0xC000000000000000;
    }

    v8 = v7 | v5;
  }

  else
  {
    v8 = v5 | 0x8000000000000000;
  }

  v9 = [(SOSAccount *)self->_account trust];
  v10 = [v9 isInCircleOnly:0];

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