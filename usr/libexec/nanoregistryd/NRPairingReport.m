@interface NRPairingReport
- (BOOL)isPairingErrorSet;
- (NRPairingReport)init;
- (NRPairingReport)initWithCoder:(id)a3;
- (NSError)detailedError;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)incrementIncorrectPINcount;
- (void)setAbortPairingReason:(id)a3;
- (void)setAggdReportString:(id)a3;
- (void)setOriginalError:(id)a3;
- (void)setPairingError:(id)a3;
- (void)setPairingReportErrorForPairingClient:(id)a3 reason:(id)a4;
- (void)setPairingReportErrorForRemoteError:(unint64_t)a3 withReason:(id)a4;
- (void)setProcessName:(id)a3;
- (void)setSubmitted:(BOOL)a3;
- (void)setSubreasonWithPairingError:(id)a3;
@end

@implementation NRPairingReport

- (NRPairingReport)init
{
  v17.receiver = self;
  v17.super_class = NRPairingReport;
  v2 = [(NRPairingReport *)&v17 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 12) = xmmword_100126440;
    v2[8] = 0;
    v4 = *(v2 + 7);
    *(v2 + 7) = @"pairSuccess";

    v5 = *(v3 + 8);
    *(v3 + 8) = 0;

    v6 = *(v3 + 9);
    *(v3 + 9) = 0;

    v3[9] = 0;
    v7 = *(v3 + 10);
    *(v3 + 10) = 0;

    v8 = *(v3 + 11);
    *(v3 + 11) = 0;

    v9 = *(v3 + 12);
    *(v3 + 12) = 0;

    v10 = *(v3 + 13);
    *(v3 + 13) = 0;

    v11 = *(v3 + 14);
    *(v3 + 14) = 0;

    *(v3 + 16) = -1;
    *(v3 + 28) = 0;
    v3[10] = 1;
    v12 = nr_pairing_reporter_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = nr_pairing_reporter_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Initialized new NRPairingReport", v16, 2u);
      }
    }
  }

  return v3;
}

- (void)setOriginalError:(id)a3
{
  v5 = a3;
  if (![(NRPairingReport *)self isErrorSet])
  {
    objc_storeStrong(&self->_originalError, a3);
    [(NRPairingReport *)self setSubreasonWithPairingError:v5];
    v6 = nr_daemon_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

    if (v7)
    {
      v8 = nr_daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100101998(self);
      }
    }
  }
}

- (NSError)detailedError
{
  originalError = self->_originalError;
  if (originalError)
  {
    v4 = [(NSError *)originalError code];
    v5 = [(NSError *)self->_originalError domain];
LABEL_16:
    v15 = [(NSError *)self->_originalError userInfo];
    if (v15)
    {
      v16 = [(NSError *)self->_originalError userInfo];
      v17 = [v16 mutableCopy];
    }

    else
    {
      v17 = +[NSMutableDictionary dictionary];
    }

    v18 = [NSNumber numberWithUnsignedInt:self->_reason];
    [v17 setObject:v18 forKeyedSubscript:@"reason"];

    v19 = [NSNumber numberWithUnsignedInt:self->_subreason];
    [v17 setObject:v19 forKeyedSubscript:@"subreason"];

    v20 = sub_10009216C(self->_reason);
    [v17 setObject:v20 forKeyedSubscript:@"reasonString"];

    v21 = sub_1000922D4(self->_subreason);
    [v17 setObject:v21 forKeyedSubscript:@"subreasonString"];

    if (v5)
    {
      v22 = v5;
    }

    else
    {
      v22 = @"com.apple.NanoRegistry";
    }

    v23 = [NSError errorWithDomain:v22 code:v4 userInfo:v17];

    goto LABEL_23;
  }

  if (self->_reason || self->_subreason)
  {
    sub_1000916D4();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = v28 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v25 + 1) + 8 * i);
          v12 = [v6 objectForKeyedSubscript:{v11, v25}];
          v13 = [NSNumber numberWithUnsignedInt:self->_subreason];
          v14 = [v13 isEqual:v12];

          if (v14)
          {
            v4 = [v11 integerValue];

            goto LABEL_15;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v4 = 5;
LABEL_15:

    self->_reason = sub_100091E30(self->_subreason);
    v5 = 0;
    goto LABEL_16;
  }

  v23 = 0;
LABEL_23:

  return v23;
}

- (NRPairingReport)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [[(NRPairingReport *)self init] init];
  if (v5)
  {
    v5->_reason = [v4 decodeInt32ForKey:@"reason"];
    v5->_subreason = [v4 decodeInt32ForKey:@"subreason"];
    v5->_incorrectPINcount = [v4 decodeInt32ForKey:@"incorrectPINcount"];
    v5->_pairingType = [v4 decodeInt32ForKey:@"pairingType"];
    v5->_isAutomated = [v4 decodeBoolForKey:@"isAutomated"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"aggdReportString"];
    aggdReportString = v5->_aggdReportString;
    v5->_aggdReportString = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"processName"];
    processName = v5->_processName;
    v5->_processName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"abortPairingReason"];
    abortPairingReason = v5->_abortPairingReason;
    v5->_abortPairingReason = v10;

    v5->_submitted = [v4 decodeBoolForKey:@"submitted"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originalError"];
    originalError = v5->_originalError;
    v5->_originalError = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gizmoBuild"];
    gizmoBuild = v5->_gizmoBuild;
    v5->_gizmoBuild = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gizmoHardware"];
    gizmoHardware = v5->_gizmoHardware;
    v5->_gizmoHardware = v16;

    v5->_gizmoMaxPairingVersion = [v4 decodeInt32ForKey:@"gizmoMaxPairingVersion"];
    v5->_shouldFilePairingReport = [v4 decodeBoolForKey:@"shouldFilePairingReport"];
    v5->_lossOfIDSConnectivity = [v4 decodeInt64ForKey:@"lossOfIDSConnectivity"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  reason = self->_reason;
  v6 = a3;
  [v6 encodeInt32:reason forKey:@"reason"];
  [v6 encodeInt32:self->_subreason forKey:@"subreason"];
  [v6 encodeInt32:self->_incorrectPINcount forKey:@"incorrectPINcount"];
  [v6 encodeInt32:self->_pairingType forKey:@"pairingType"];
  [v6 encodeBool:self->_isAutomated forKey:@"isAutomated"];
  [v6 encodeObject:self->_aggdReportString forKey:@"aggdReportString"];
  [v6 encodeObject:self->_processName forKey:@"processName"];
  [v6 encodeObject:self->_abortPairingReason forKey:@"abortPairingReason"];
  [v6 encodeBool:self->_submitted forKey:@"submitted"];
  v5 = [(NSError *)self->_originalError nr_filteredError];
  [v6 encodeObject:v5 forKey:@"originalError"];

  [v6 encodeObject:self->_gizmoBuild forKey:@"gizmoBuild"];
  [v6 encodeObject:self->_gizmoHardware forKey:@"gizmoHardware"];
  [v6 encodeInt32:self->_gizmoMaxPairingVersion forKey:@"gizmoMaxPairingVersion"];
  [v6 encodeBool:self->_shouldFilePairingReport forKey:@"shouldFilePairingReport"];
  [v6 encodeInt64:self->_lossOfIDSConnectivity forKey:@"lossOfIDSConnectivity"];
}

- (void)setSubreasonWithPairingError:(id)a3
{
  v4 = a3;
  [v4 code];
  v5 = nrGetReportStringForErrorCode();
  [(NRPairingReport *)self setAggdReportString:v5];

  v6 = [v4 code];
  v7 = sub_100091600(v6);

  [(NRPairingReport *)self setSubreason:v7];
}

- (void)setAggdReportString:(id)a3
{
  v7 = a3;
  aggdReportString = self->_aggdReportString;
  p_aggdReportString = &self->_aggdReportString;
  if ([(NSString *)aggdReportString isEqual:@"pairSuccess"])
  {
    objc_storeStrong(p_aggdReportString, a3);
  }
}

- (void)setProcessName:(id)a3
{
  v5 = a3;
  processName = self->_processName;
  p_processName = &self->_processName;
  if (!processName)
  {
    v8 = v5;
    objc_storeStrong(p_processName, a3);
    v5 = v8;
  }
}

- (void)setAbortPairingReason:(id)a3
{
  v5 = a3;
  abortPairingReason = self->_abortPairingReason;
  p_abortPairingReason = &self->_abortPairingReason;
  if (!abortPairingReason)
  {
    v8 = v5;
    objc_storeStrong(p_abortPairingReason, a3);
    v5 = v8;
  }
}

- (void)setSubmitted:(BOOL)a3
{
  if (!self->_submitted)
  {
    self->_submitted = a3;
  }
}

- (void)incrementIncorrectPINcount
{
  ++self->_incorrectPINcount;
  v3 = nr_pairing_reporter_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_pairing_reporter_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(NRPairingReport *)self description];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Incremented incorrect pin count: %{public}@", &v7, 0xCu);
    }
  }
}

- (id)description
{
  v3 = sub_10009216C([(NRPairingReport *)self reason]);
  v4 = sub_1000922D4([(NRPairingReport *)self subreason]);
  v5 = [(NRPairingReport *)self incorrectPINcount];
  v6 = [(NRPairingReport *)self pairingType];
  v7 = qword_1001B38F8;
  if (!qword_1001B38F8)
  {
    v18[0] = &off_100187150;
    v18[1] = &off_100186FE8;
    v19[0] = @"NRPairingReportAttemptTypeMagic";
    v19[1] = @"NRPairingReportAttemptTypePIN";
    v8 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
    v9 = qword_1001B38F8;
    qword_1001B38F8 = v8;

    v7 = qword_1001B38F8;
  }

  v10 = [NSNumber numberWithUnsignedInt:v6];
  v11 = [v7 objectForKeyedSubscript:v10];

  v12 = [(NRPairingReport *)self isAutomated];
  v13 = [(NRPairingReport *)self aggdReportString];
  v14 = [(NRPairingReport *)self processName];
  v15 = [(NRPairingReport *)self abortPairingReason];
  v16 = [NSString stringWithFormat:@"Reason: %@\tSubreason: %@\tIncorrect PIN Count: %d\tPairing Type: %@\tIs Automated: %x\tAGGD ReportString: %@\tProcess Name: %@\tAbort Pairing Reason: %@", v3, v4, v5, v11, v12, v13, v14, v15];

  return v16;
}

- (void)setPairingError:(id)a3
{
  v4 = a3;
  if ([(NRPairingReport *)self isPairingErrorSet])
  {
    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(NRPairingReport *)self pairingError];
        v9 = [v8 nr_safeDescription];
        v13 = 138543618;
        v14 = v9;
        v15 = 2114;
        v16 = self;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not setting pairing error %{public}@ because pairing report has already recorded a failure reason: %{public}@", &v13, 0x16u);
      }
    }
  }

  else if (v4)
  {
    v10 = nr_pairing_reporter_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v12 = nr_pairing_reporter_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100101A20(v4);
      }
    }

    [(NRPairingReport *)self setOriginalError:v4];
    [(NRPairingReport *)self setSubreasonWithPairingError:v4];
  }
}

- (void)setPairingReportErrorForPairingClient:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(NRPairingReport *)self isPairingErrorSet])
  {
    v11 = nr_pairing_reporter_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = nr_pairing_reporter_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v24 = v6;
        v25 = 2114;
        v26 = v7;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Setting pairing report with client: %{public}@\treason: %{public}@", buf, 0x16u);
      }
    }

    v14 = [(NRPairingReport *)v6 lastPathComponent];
    [(NRPairingReport *)self setProcessName:v14];
    [(NRPairingReport *)self setAbortPairingReason:v7];
    v15 = [NSString stringWithFormat:@"%@", v7];
    v16 = [NSString stringWithFormat:@"pairingAborted.%@.%@", v14, v15];
    [(NRPairingReport *)self setAggdReportString:v16];

    v10 = v14;
    v17 = v7;
    v18 = qword_1001B3900;
    if (!qword_1001B3900)
    {
      v18 = &off_100187E60;
      qword_1001B3900 = &off_100187E60;
    }

    v19 = [v18 objectForKey:v10];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [v19 objectForKey:v17];
      if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v21 = [v20 integerValue];
      }

      else
      {
        v21 = 35;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = 35;
        goto LABEL_20;
      }

      v20 = [qword_1001B3900 objectForKey:v10];
      v21 = [v20 integerValue];
    }

LABEL_20:
    [(NRPairingReport *)self setSubreason:v21];
    if ([(NRPairingReport *)self subreason]!= 1)
    {
      [(NRPairingReport *)self subreason];
    }

    v22 = nrGetPairingError();
    [(NRPairingReport *)self setOriginalError:v22];

    goto LABEL_23;
  }

  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not setting pairing report error because pairing report has already recorded a failure reason: %{public}@", buf, 0xCu);
    }

LABEL_23:
  }
}

- (void)setPairingReportErrorForRemoteError:(unint64_t)a3 withReason:(id)a4
{
  v6 = a4;
  if ([(NRPairingReport *)self isPairingErrorSet])
  {
    v7 = nr_daemon_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = nr_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = self;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not setting pairing remote error because pairing report has already recorded a failure reason: %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v10 = nr_pairing_reporter_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = nr_pairing_reporter_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        *&buf[4] = a3;
        *&buf[12] = 2114;
        *&buf[14] = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Setting pairing error with error code: %lu\treason: %{public}@", buf, 0x16u);
      }
    }

    [(NRPairingReport *)self setAbortPairingReason:v6];
    v13 = qword_1001B3908;
    if (!qword_1001B3908)
    {
      v30 = &off_100187360;
      v31 = &off_100187300;
      *buf = @"xpcError";
      *&buf[8] = @"alreadyPairedError";
      v32 = &off_1001875E8;
      v33 = &off_100187600;
      *&buf[16] = @"multiplePairError";
      v67 = @"notInIdleStateError";
      v34 = &off_100187618;
      v35 = &off_100187630;
      v68 = @"unknownDeviceError";
      v69 = @"internalError";
      v36 = &off_100186EF8;
      v37 = &off_1001871E0;
      v70 = @"connectTimeoutError";
      v71 = @"btPairError";
      v38 = &off_100187378;
      v39 = &off_100186F28;
      v72 = @"lostXPCError";
      v73 = @"btTurnedOffError";
      v40 = &off_100187648;
      v41 = &off_100187390;
      v74 = @"pairRequestTimeoutError";
      v75 = @"restartedError";
      v42 = &off_100186F58;
      v43 = &off_100186F70;
      v76 = @"btPairTimeoutError";
      v77 = @"idsConnectTimeoutError";
      v44 = &off_100186FA0;
      v45 = &off_100186FD0;
      v78 = @"ipsTimeoutError";
      v79 = @"idsUnpairRequestError";
      v46 = &off_100187660;
      v47 = &off_100187000;
      v80 = @"xpcPairUnpairRequestError";
      v81 = @"activationError";
      v48 = &off_100187678;
      v49 = &off_100187690;
      v82 = @"daemonEnableError";
      v83 = @"busyPairingOrUnpairing";
      v50 = &off_100187060;
      v51 = &off_1001876A8;
      v84 = @"initialPropertySendFailure";
      v85 = @"bluetoothUnpairTimeout";
      v52 = &off_100187090;
      v53 = &off_1001870A8;
      v86 = @"gizmoStateChangeRequestFailedToSend";
      v87 = @"companionVersionTooOldForGizmo";
      v54 = &off_100187030;
      v55 = &off_1001870D8;
      v88 = @"pairingAborted";
      v89 = @"pairingClientTerminated";
      v56 = &off_100187108;
      v57 = &off_100187210;
      v90 = @"diskFullError";
      v91 = @"badPINError";
      v58 = &off_100187138;
      v59 = &off_100187168;
      v92 = @"abortPairingUserRequested";
      v93 = @"restriction";
      v60 = &off_100187198;
      v61 = &off_1001871B0;
      v94 = @"passcodeEntryTimeout";
      v95 = @"bluetoothDiscoveryTimeout";
      v62 = &off_100187240;
      v63 = &off_100187270;
      v96 = @"idsLocalPairingAPIFailure";
      v97 = @"switchFailedDueToActiveAssertion";
      v64 = &off_1001872A0;
      v65 = &off_1001872D0;
      v98 = @"configureStateRequestedDevicesNotCompatible";
      v99 = @"pairedDeviceNotCompatibleWithQuickSwitch";
      v14 = [NSDictionary dictionaryWithObjects:buf forKeys:&v30 count:36];
      v15 = qword_1001B3908;
      qword_1001B3908 = v14;

      v13 = qword_1001B3908;
    }

    v16 = [NSNumber numberWithInteger:a3];
    v17 = [v13 objectForKeyedSubscript:v16];

    if (!v17)
    {
      v17 = [NSString stringWithFormat:@"missingError%ld", a3];
    }

    v18 = [NSString stringWithFormat:@"remoteUnpair.%@.%@", v17, v6];
    [(NRPairingReport *)self setAggdReportString:v18];

    v19 = v6;
    v20 = qword_1001B3910;
    if (!qword_1001B3910)
    {
      v100[0] = &off_100187060;
      v100[1] = &off_100186FA0;
      v101[0] = &off_100187468;
      v101[1] = &off_100187450;
      v100[2] = &off_100187138;
      v100[3] = &off_100187378;
      v101[2] = &off_100186FE8;
      v101[3] = &off_1001874C8;
      v100[4] = &off_100187390;
      v100[5] = &off_100187360;
      v101[4] = &off_1001874E0;
      v101[5] = &off_1001874C8;
      v101[6] = &off_1001874F8;
      v100[6] = &off_100187108;
      v100[7] = &off_100187030;
      v21 = +[NSNull null];
      v30 = v21;
      v31 = @"ExpiredInBackground";
      *buf = &off_100187510;
      *&buf[8] = &off_1001873F0;
      v32 = @"FailureExpiredInBackground";
      v33 = @"BackgroundAssertionExpired";
      *&buf[16] = &off_1001873F0;
      v67 = &off_1001873F0;
      v34 = @"FailureGizmoVersionWasAhead";
      v35 = @"FailurePairing";
      v68 = &off_100187408;
      v69 = &off_100187510;
      v36 = @"FailureInActivation";
      v37 = @"RemoteFailedActivation";
      v70 = &off_1001874B0;
      v71 = &off_1001874B0;
      v38 = @"FailureInActivationUserActionable";
      v39 = @"FailureMessageFailedToSend";
      v72 = &off_1001874B0;
      v73 = &off_100187498;
      v40 = @"PBAggEventUserTriggeredUnpair";
      v41 = @"UserDismissedSetupBecauseOfTroubleConnecting";
      v74 = &off_100186FE8;
      v75 = &off_100187420;
      v22 = [NSDictionary dictionaryWithObjects:buf forKeys:&v30 count:12];
      v101[7] = v22;
      v23 = [NSDictionary dictionaryWithObjects:v101 forKeys:v100 count:8];

      v24 = qword_1001B3910;
      qword_1001B3910 = v23;

      v20 = qword_1001B3910;
    }

    v25 = [NSNumber numberWithUnsignedInteger:a3];
    v26 = [v20 objectForKey:v25];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v19)
      {
        v27 = [v26 objectForKey:v19];
      }

      else
      {
        v29 = +[NSNull null];
        v27 = [v26 objectForKey:v29];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = [v27 integerValue];
      }

      else
      {
        v28 = 36;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = [v26 integerValue];
      }

      else
      {
        v28 = 200;
      }
    }

    [(NRPairingReport *)self setSubreason:v28];
  }
}

- (BOOL)isPairingErrorSet
{
  if ([(NRPairingReport *)self reason]|| (v3 = [(NRPairingReport *)self subreason]) != 0)
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

@end