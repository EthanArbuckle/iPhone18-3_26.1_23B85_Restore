@interface NRPairingReport
- (BOOL)isPairingErrorSet;
- (NRPairingReport)init;
- (NRPairingReport)initWithCoder:(id)coder;
- (NSError)detailedError;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)incrementIncorrectPINcount;
- (void)setAbortPairingReason:(id)reason;
- (void)setAggdReportString:(id)string;
- (void)setOriginalError:(id)error;
- (void)setPairingError:(id)error;
- (void)setPairingReportErrorForPairingClient:(id)client reason:(id)reason;
- (void)setPairingReportErrorForRemoteError:(unint64_t)error withReason:(id)reason;
- (void)setProcessName:(id)name;
- (void)setSubmitted:(BOOL)submitted;
- (void)setSubreasonWithPairingError:(id)error;
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

- (void)setOriginalError:(id)error
{
  errorCopy = error;
  if (![(NRPairingReport *)self isErrorSet])
  {
    objc_storeStrong(&self->_originalError, error);
    [(NRPairingReport *)self setSubreasonWithPairingError:errorCopy];
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
    code = [(NSError *)originalError code];
    domain = [(NSError *)self->_originalError domain];
LABEL_16:
    userInfo = [(NSError *)self->_originalError userInfo];
    if (userInfo)
    {
      userInfo2 = [(NSError *)self->_originalError userInfo];
      v17 = [userInfo2 mutableCopy];
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

    if (domain)
    {
      v22 = domain;
    }

    else
    {
      v22 = @"com.apple.NanoRegistry";
    }

    v23 = [NSError errorWithDomain:v22 code:code userInfo:v17];

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
            code = [v11 integerValue];

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

    code = 5;
LABEL_15:

    self->_reason = sub_100091E30(self->_subreason);
    domain = 0;
    goto LABEL_16;
  }

  v23 = 0;
LABEL_23:

  return v23;
}

- (NRPairingReport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [[(NRPairingReport *)self init] init];
  if (v5)
  {
    v5->_reason = [coderCopy decodeInt32ForKey:@"reason"];
    v5->_subreason = [coderCopy decodeInt32ForKey:@"subreason"];
    v5->_incorrectPINcount = [coderCopy decodeInt32ForKey:@"incorrectPINcount"];
    v5->_pairingType = [coderCopy decodeInt32ForKey:@"pairingType"];
    v5->_isAutomated = [coderCopy decodeBoolForKey:@"isAutomated"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"aggdReportString"];
    aggdReportString = v5->_aggdReportString;
    v5->_aggdReportString = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"processName"];
    processName = v5->_processName;
    v5->_processName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"abortPairingReason"];
    abortPairingReason = v5->_abortPairingReason;
    v5->_abortPairingReason = v10;

    v5->_submitted = [coderCopy decodeBoolForKey:@"submitted"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originalError"];
    originalError = v5->_originalError;
    v5->_originalError = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gizmoBuild"];
    gizmoBuild = v5->_gizmoBuild;
    v5->_gizmoBuild = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gizmoHardware"];
    gizmoHardware = v5->_gizmoHardware;
    v5->_gizmoHardware = v16;

    v5->_gizmoMaxPairingVersion = [coderCopy decodeInt32ForKey:@"gizmoMaxPairingVersion"];
    v5->_shouldFilePairingReport = [coderCopy decodeBoolForKey:@"shouldFilePairingReport"];
    v5->_lossOfIDSConnectivity = [coderCopy decodeInt64ForKey:@"lossOfIDSConnectivity"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  reason = self->_reason;
  coderCopy = coder;
  [coderCopy encodeInt32:reason forKey:@"reason"];
  [coderCopy encodeInt32:self->_subreason forKey:@"subreason"];
  [coderCopy encodeInt32:self->_incorrectPINcount forKey:@"incorrectPINcount"];
  [coderCopy encodeInt32:self->_pairingType forKey:@"pairingType"];
  [coderCopy encodeBool:self->_isAutomated forKey:@"isAutomated"];
  [coderCopy encodeObject:self->_aggdReportString forKey:@"aggdReportString"];
  [coderCopy encodeObject:self->_processName forKey:@"processName"];
  [coderCopy encodeObject:self->_abortPairingReason forKey:@"abortPairingReason"];
  [coderCopy encodeBool:self->_submitted forKey:@"submitted"];
  nr_filteredError = [(NSError *)self->_originalError nr_filteredError];
  [coderCopy encodeObject:nr_filteredError forKey:@"originalError"];

  [coderCopy encodeObject:self->_gizmoBuild forKey:@"gizmoBuild"];
  [coderCopy encodeObject:self->_gizmoHardware forKey:@"gizmoHardware"];
  [coderCopy encodeInt32:self->_gizmoMaxPairingVersion forKey:@"gizmoMaxPairingVersion"];
  [coderCopy encodeBool:self->_shouldFilePairingReport forKey:@"shouldFilePairingReport"];
  [coderCopy encodeInt64:self->_lossOfIDSConnectivity forKey:@"lossOfIDSConnectivity"];
}

- (void)setSubreasonWithPairingError:(id)error
{
  errorCopy = error;
  [errorCopy code];
  v5 = nrGetReportStringForErrorCode();
  [(NRPairingReport *)self setAggdReportString:v5];

  code = [errorCopy code];
  v7 = sub_100091600(code);

  [(NRPairingReport *)self setSubreason:v7];
}

- (void)setAggdReportString:(id)string
{
  stringCopy = string;
  aggdReportString = self->_aggdReportString;
  p_aggdReportString = &self->_aggdReportString;
  if ([(NSString *)aggdReportString isEqual:@"pairSuccess"])
  {
    objc_storeStrong(p_aggdReportString, string);
  }
}

- (void)setProcessName:(id)name
{
  nameCopy = name;
  processName = self->_processName;
  p_processName = &self->_processName;
  if (!processName)
  {
    v8 = nameCopy;
    objc_storeStrong(p_processName, name);
    nameCopy = v8;
  }
}

- (void)setAbortPairingReason:(id)reason
{
  reasonCopy = reason;
  abortPairingReason = self->_abortPairingReason;
  p_abortPairingReason = &self->_abortPairingReason;
  if (!abortPairingReason)
  {
    v8 = reasonCopy;
    objc_storeStrong(p_abortPairingReason, reason);
    reasonCopy = v8;
  }
}

- (void)setSubmitted:(BOOL)submitted
{
  if (!self->_submitted)
  {
    self->_submitted = submitted;
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
  incorrectPINcount = [(NRPairingReport *)self incorrectPINcount];
  pairingType = [(NRPairingReport *)self pairingType];
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

  v10 = [NSNumber numberWithUnsignedInt:pairingType];
  v11 = [v7 objectForKeyedSubscript:v10];

  isAutomated = [(NRPairingReport *)self isAutomated];
  aggdReportString = [(NRPairingReport *)self aggdReportString];
  processName = [(NRPairingReport *)self processName];
  abortPairingReason = [(NRPairingReport *)self abortPairingReason];
  v16 = [NSString stringWithFormat:@"Reason: %@\tSubreason: %@\tIncorrect PIN Count: %d\tPairing Type: %@\tIs Automated: %x\tAGGD ReportString: %@\tProcess Name: %@\tAbort Pairing Reason: %@", v3, v4, incorrectPINcount, v11, isAutomated, aggdReportString, processName, abortPairingReason];

  return v16;
}

- (void)setPairingError:(id)error
{
  errorCopy = error;
  if ([(NRPairingReport *)self isPairingErrorSet])
  {
    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        pairingError = [(NRPairingReport *)self pairingError];
        nr_safeDescription = [pairingError nr_safeDescription];
        v13 = 138543618;
        v14 = nr_safeDescription;
        v15 = 2114;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not setting pairing error %{public}@ because pairing report has already recorded a failure reason: %{public}@", &v13, 0x16u);
      }
    }
  }

  else if (errorCopy)
  {
    v10 = nr_pairing_reporter_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v12 = nr_pairing_reporter_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100101A20(errorCopy);
      }
    }

    [(NRPairingReport *)self setOriginalError:errorCopy];
    [(NRPairingReport *)self setSubreasonWithPairingError:errorCopy];
  }
}

- (void)setPairingReportErrorForPairingClient:(id)client reason:(id)reason
{
  clientCopy = client;
  reasonCopy = reason;
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
        selfCopy = clientCopy;
        v25 = 2114;
        v26 = reasonCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Setting pairing report with client: %{public}@\treason: %{public}@", buf, 0x16u);
      }
    }

    lastPathComponent = [(NRPairingReport *)clientCopy lastPathComponent];
    [(NRPairingReport *)self setProcessName:lastPathComponent];
    [(NRPairingReport *)self setAbortPairingReason:reasonCopy];
    reasonCopy = [NSString stringWithFormat:@"%@", reasonCopy];
    v16 = [NSString stringWithFormat:@"pairingAborted.%@.%@", lastPathComponent, reasonCopy];
    [(NRPairingReport *)self setAggdReportString:v16];

    v10 = lastPathComponent;
    v17 = reasonCopy;
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
        integerValue = [v20 integerValue];
      }

      else
      {
        integerValue = 35;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        integerValue = 35;
        goto LABEL_20;
      }

      v20 = [qword_1001B3900 objectForKey:v10];
      integerValue = [v20 integerValue];
    }

LABEL_20:
    [(NRPairingReport *)self setSubreason:integerValue];
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
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not setting pairing report error because pairing report has already recorded a failure reason: %{public}@", buf, 0xCu);
    }

LABEL_23:
  }
}

- (void)setPairingReportErrorForRemoteError:(unint64_t)error withReason:(id)reason
{
  reasonCopy = reason;
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
        *&buf[4] = error;
        *&buf[12] = 2114;
        *&buf[14] = reasonCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Setting pairing error with error code: %lu\treason: %{public}@", buf, 0x16u);
      }
    }

    [(NRPairingReport *)self setAbortPairingReason:reasonCopy];
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

    v16 = [NSNumber numberWithInteger:error];
    error = [v13 objectForKeyedSubscript:v16];

    if (!error)
    {
      error = [NSString stringWithFormat:@"missingError%ld", error];
    }

    reasonCopy = [NSString stringWithFormat:@"remoteUnpair.%@.%@", error, reasonCopy];
    [(NRPairingReport *)self setAggdReportString:reasonCopy];

    v19 = reasonCopy;
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

    v25 = [NSNumber numberWithUnsignedInteger:error];
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
        integerValue = [v27 integerValue];
      }

      else
      {
        integerValue = 36;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        integerValue = [v26 integerValue];
      }

      else
      {
        integerValue = 200;
      }
    }

    [(NRPairingReport *)self setSubreason:integerValue];
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