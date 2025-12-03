@interface PeerState
- (BOOL)isFailureIgnoredForDate:(id)date;
- (BOOL)isFailureResolvedAndSeenByDate:(id)date;
- (BOOL)setCompletedVerification:(id)verification;
- (BOOL)updateResultWithStaticKey:(id)key staticKeyStore:(id)store forDate:(id)date;
- (id)verificationWithinTTLOfDate:(id)date;
- (id)verifierResultWithStaticKeyStore:(id)store;
- (unint64_t)bestVerificationResultToUIStatusForDate:(id)date;
- (unint64_t)getUIStatusForDate:(id)date;
- (unint64_t)uiStatusWithEnforcement;
@end

@implementation PeerState

- (BOOL)setCompletedVerification:(id)verification
{
  verificationCopy = verification;
  if ([verificationCopy verificationResult] == 1)
  {
    mostRecentSuccess = [(PeerState *)self mostRecentSuccess];
    if (!mostRecentSuccess)
    {
      goto LABEL_4;
    }

    v6 = mostRecentSuccess;
    mostRecentSuccess2 = [(PeerState *)self mostRecentSuccess];
    idsResponseTime = [mostRecentSuccess2 idsResponseTime];
    idsResponseTime2 = [verificationCopy idsResponseTime];
    v10 = [idsResponseTime compare:idsResponseTime2];

    if (v10 == -1)
    {
LABEL_4:
      [(PeerState *)self setMostRecentSuccess:verificationCopy];
LABEL_11:
      v11 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    if ([verificationCopy verificationResult])
    {
      v11 = 0;
      goto LABEL_15;
    }

    failure = [(PeerState *)self failure];
    if (!failure)
    {
      goto LABEL_10;
    }

    v13 = failure;
    failure2 = [(PeerState *)self failure];
    idsResponseTime3 = [failure2 idsResponseTime];
    idsResponseTime4 = [verificationCopy idsResponseTime];
    v17 = [idsResponseTime3 compare:idsResponseTime4];

    if (v17 == -1)
    {
LABEL_10:
      [(PeerState *)self setFailure:verificationCopy];
      [(PeerState *)self setSeenDate:0];
      goto LABEL_11;
    }
  }

  v11 = 0;
LABEL_12:
  mostRecentCompleted = [(PeerState *)self mostRecentCompleted];
  if (!mostRecentCompleted)
  {
    goto LABEL_14;
  }

  v19 = mostRecentCompleted;
  mostRecentCompleted2 = [(PeerState *)self mostRecentCompleted];
  idsResponseTime5 = [mostRecentCompleted2 idsResponseTime];
  idsResponseTime6 = [verificationCopy idsResponseTime];
  v23 = [idsResponseTime5 compare:idsResponseTime6];

  if (v23 == -1)
  {
LABEL_14:
    [(PeerState *)self setMostRecentCompleted:verificationCopy];
    v11 = 1;
  }

LABEL_15:

  return v11;
}

- (unint64_t)uiStatusWithEnforcement
{
  if (!_os_feature_enabled_impl())
  {
    return 6;
  }

  mostRecentVerification = [(PeerState *)self mostRecentVerification];
  serverLoggableDatas = [mostRecentVerification serverLoggableDatas];
  loggableDatas = [serverLoggableDatas loggableDatas];

  if (!loggableDatas)
  {
    mostRecentVerification2 = [(PeerState *)self mostRecentVerification];
    partialFail = [mostRecentVerification2 partialFail];

    if (partialFail)
    {
      if (qword_10038BC10 != -1)
      {
        sub_100247774();
      }

      v8 = qword_10038BC18;
      if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = "Checking most recent verification for enforcement. No loggable datas, but we've stored partial fail.";
LABEL_26:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
      }

      return 16;
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  mostRecentVerification3 = [(PeerState *)self mostRecentVerification];
  serverLoggableDatas2 = [mostRecentVerification3 serverLoggableDatas];
  loggableDatas2 = [serverLoggableDatas2 loggableDatas];

  v14 = [loggableDatas2 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
LABEL_11:
    v17 = 0;
    while (1)
    {
      if (*v21 != v16)
      {
        objc_enumerationMutation(loggableDatas2);
      }

      if ([*(*(&v20 + 1) + 8 * v17) result] == 1)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [loggableDatas2 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v15)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

    mostRecentVerification4 = [(PeerState *)self mostRecentVerification];
    [mostRecentVerification4 setPartialFail:1];

    if (qword_10038BC10 != -1)
    {
      sub_100247724();
    }

    v8 = qword_10038BC18;
    if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Some peer devices failing, setting UI state to KTUIStatusErrorEnforcementSomeDevicesFailingWithoutStaticKey.";
      goto LABEL_26;
    }

    return 16;
  }

LABEL_17:

  if (qword_10038BC10 != -1)
  {
    sub_10024774C();
  }

  v18 = qword_10038BC18;
  if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "All peer devices failing, setting UI state to KTUIStatusErrorEnforcementAllDevicesFailing.", buf, 2u);
  }

  return 14;
}

- (unint64_t)bestVerificationResultToUIStatusForDate:(id)date
{
  dateCopy = date;
  v5 = [(PeerState *)self verificationWithinTTLOfDate:dateCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 getUnsigned:"verificationResult"];
    if (v7 == 3)
    {
      uiStatusWithEnforcement = 8;
      goto LABEL_25;
    }

    if (v7 != 2)
    {
      if (v7)
      {
        uiStatusWithEnforcement = 4;
      }

      else if (_os_feature_enabled_impl())
      {
        uiStatusWithEnforcement = [(PeerState *)self uiStatusWithEnforcement];
      }

      else if ([(PeerState *)self isFailureIgnoredForDate:dateCopy])
      {
        uiStatusWithEnforcement = 8;
      }

      else
      {
        uiStatusWithEnforcement = 6;
      }

      goto LABEL_25;
    }

    if (qword_10038BC10 != -1)
    {
      sub_100247788();
    }

    v12 = qword_10038BC18;
    if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [(PeerState *)self uri];
      verificationId = [v6 verificationId];
      v30 = 138412546;
      v31 = v14;
      v32 = 2114;
      v33 = verificationId;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PeerStateCalculator: %{mash.hash}@ most recent verification %{public}@ pending", &v30, 0x16u);
    }

    creationTime = [v6 creationTime];
    [creationTime timeIntervalSinceDate:dateCopy];
    v18 = v17;
    +[TransparencySettings queryJustMadeTimeout];
    v20 = -v19;

    if (v18 > v20)
    {
      +[TransparencySettings queryJustMadeTimeout];
      v22 = v21;
      creationTime2 = [v6 creationTime];
      [creationTime2 timeIntervalSinceDate:dateCopy];
      v25 = v22 + v24;

      dataStore = [(PeerState *)self dataStore];
      v27 = [(PeerState *)self uri];
      application = [(PeerState *)self application];
      [dataStore recalculateVerifierResultForPeer:v27 application:application after:v25];

      uiStatusWithEnforcement = 3;
      goto LABEL_25;
    }
  }

  else
  {
    if (qword_10038BC10 != -1)
    {
      sub_10024779C();
    }

    v9 = qword_10038BC18;
    if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [(PeerState *)self uri];
      v30 = 138412290;
      v31 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PeerStateCalculator: %{mash.hash}@ no verification within 7 days", &v30, 0xCu);
    }
  }

  if ([(PeerState *)self isFailureIgnoredForDate:dateCopy])
  {
    uiStatusWithEnforcement = 12;
  }

  else
  {
    uiStatusWithEnforcement = 0;
  }

LABEL_25:

  return uiStatusWithEnforcement;
}

- (unint64_t)getUIStatusForDate:(id)date
{
  dateCopy = date;
  if (([(PeerState *)self everCompletedVerification]& 1) != 0)
  {
    if (([(PeerState *)self optedIn]& 1) != 0)
    {
      failure = [(PeerState *)self failure];

      if (!failure)
      {
        goto LABEL_28;
      }

      failure2 = [(PeerState *)self failure];
      verificationResult = [failure2 verificationResult];

      if (verificationResult)
      {
        if (qword_10038BC10 != -1)
        {
          sub_1002477C4();
        }

        v8 = qword_10038BC18;
        if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_ERROR))
        {
          v9 = v8;
          application = [(PeerState *)self application];
          v11 = [(PeerState *)self uri];
          failure3 = [(PeerState *)self failure];
          v32 = 138413058;
          v33 = application;
          v34 = 2112;
          v35 = v11;
          v36 = 2048;
          verificationResult2 = [failure3 verificationResult];
          v38 = 2048;
          v39 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "There is a failed verification saved for peer (%@, %@) with verification result %lld. We only expect this value to be %lu. This may lead to issues later.", &v32, 0x2Au);
        }
      }

      if (_os_feature_enabled_impl())
      {
        mostRecentVerification = [(PeerState *)self mostRecentVerification];
        if (![mostRecentVerification verificationResult])
        {

LABEL_36:
          uiStatusWithEnforcement = [(PeerState *)self uiStatusWithEnforcement];
          goto LABEL_37;
        }

        mostRecentVerification2 = [(PeerState *)self mostRecentVerification];
        verificationResult3 = [mostRecentVerification2 verificationResult];

        if (verificationResult3 == 3)
        {
          goto LABEL_36;
        }

LABEL_28:
        uiStatusWithEnforcement = [(PeerState *)self bestVerificationResultToUIStatusForDate:dateCopy];
LABEL_37:
        v19 = uiStatusWithEnforcement;
        goto LABEL_38;
      }

      if ([(PeerState *)self isFailureResolvedAndSeenByDate:dateCopy])
      {
        if (qword_10038BC10 != -1)
        {
          sub_100247828();
        }

        v21 = qword_10038BC18;
        if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_INFO))
        {
          v22 = v21;
          failure4 = [(PeerState *)self failure];
          v32 = 138412290;
          v33 = failure4;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "getUIStatusForDate failure is resolved and seen (%@)", &v32, 0xCu);
        }

        goto LABEL_28;
      }

      if ([(PeerState *)self isFailureIgnoredForDate:dateCopy])
      {
        if (qword_10038BC10 != -1)
        {
          sub_100247800();
        }

        v25 = qword_10038BC18;
        if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_INFO))
        {
          v26 = v25;
          failure5 = [(PeerState *)self failure];
          v32 = 138412290;
          v33 = failure5;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "getUIStatusForDate failure is ignored (%@)", &v32, 0xCu);
        }

        v19 = 8;
      }

      else
      {
        if (qword_10038BC10 != -1)
        {
          sub_1002477D8();
        }

        v29 = qword_10038BC18;
        if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_INFO))
        {
          v30 = v29;
          failure6 = [(PeerState *)self failure];
          v32 = 138412290;
          v33 = failure6;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "getUIStatusForDate PeerState failure (%@)", &v32, 0xCu);
        }

        v19 = 6;
      }
    }

    else if ([(PeerState *)self everOptedIn])
    {
      if ([(PeerState *)self turnedOffIgnored])
      {
        v19 = 11;
      }

      else
      {
        v19 = 10;
      }
    }

    else
    {
      v19 = 2;
    }
  }

  else
  {
    if (qword_10038BC10 != -1)
    {
      sub_1002477B0();
    }

    v16 = qword_10038BC18;
    if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = [(PeerState *)self uri];
      v19 = 3;
      v20 = KTUIStatusGetString();
      v32 = 138412546;
      v33 = v18;
      v34 = 2114;
      v35 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "PeerStateCalculator: %{mash.hash}@ -> %{public}@ never completed verification", &v32, 0x16u);
    }

    else
    {
      v19 = 3;
    }
  }

LABEL_38:

  return v19;
}

- (id)verificationWithinTTLOfDate:(id)date
{
  dateCopy = date;
  mostRecentSuccess = [(PeerState *)self mostRecentSuccess];

  if (!mostRecentSuccess)
  {
    goto LABEL_3;
  }

  mostRecentSuccess2 = [(PeerState *)self mostRecentSuccess];
  creationTime = [mostRecentSuccess2 creationTime];
  [dateCopy timeIntervalSinceDate:creationTime];
  v9 = v8;

  +[TransparencySettings queryCacheHardTimeout];
  if (v9 < v10)
  {
    mostRecentSuccess3 = [(PeerState *)self mostRecentSuccess];
  }

  else
  {
LABEL_3:
    mostRecentVerification = [(PeerState *)self mostRecentVerification];

    if (!mostRecentVerification)
    {
      goto LABEL_5;
    }

    mostRecentVerification2 = [(PeerState *)self mostRecentVerification];
    creationTime2 = [mostRecentVerification2 creationTime];
    [dateCopy timeIntervalSinceDate:creationTime2];
    v15 = v14;

    +[TransparencySettings queryCacheHardTimeout];
    if (v15 >= v16)
    {
LABEL_5:
      v17 = 0;
      goto LABEL_9;
    }

    mostRecentSuccess3 = [(PeerState *)self mostRecentVerification];
  }

  v17 = mostRecentSuccess3;
LABEL_9:

  return v17;
}

- (BOOL)isFailureResolvedAndSeenByDate:(id)date
{
  dateCopy = date;
  failure = [(PeerState *)self failure];

  if (!failure)
  {
    v12 = 1;
    goto LABEL_36;
  }

  mostRecentVerification = [(PeerState *)self mostRecentVerification];

  if (mostRecentVerification)
  {
    failure2 = [(PeerState *)self failure];
    creationTime = [failure2 creationTime];
    mostRecentVerification2 = [(PeerState *)self mostRecentVerification];
    creationTime2 = [mostRecentVerification2 creationTime];
    v11 = [creationTime compare:creationTime2];

    if (v11 == -1)
    {
      failure3 = [(PeerState *)self failure];
      creationTime3 = [failure3 creationTime];
      kt_toISO_8601_UTCString = [creationTime3 kt_toISO_8601_UTCString];

      if ((+[TransparencyAnalytics hasInternalDiagnostics]& 1) == 0)
      {
        failure4 = [(PeerState *)self failure];
        creationTime4 = [failure4 creationTime];
        kt_fuzzyDate = [creationTime4 kt_fuzzyDate];
        kt_toISO_8601_UTCString2 = [kt_fuzzyDate kt_toISO_8601_UTCString];

        kt_toISO_8601_UTCString = kt_toISO_8601_UTCString2;
      }

      ignoredFailureExpiry = [(PeerState *)self ignoredFailureExpiry];

      if (ignoredFailureExpiry)
      {
        if (qword_10038BC10 != -1)
        {
          sub_100247850();
        }

        v21 = qword_10038BC18;
        if (!os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_28;
        }

        v22 = v21;
        v23 = [(PeerState *)self uri];
        failure5 = [(PeerState *)self failure];
        verificationId = [failure5 verificationId];
        v48 = 138412802;
        v49 = v23;
        v50 = 2114;
        v51 = verificationId;
        v52 = 2114;
        v53 = kt_toISO_8601_UTCString;
        v26 = "PeerStateCalculator: %{mash.hash}@ resolved failure %{public}@ (%{public}@) ignored";
        goto LABEL_13;
      }

      if ([(PeerState *)self optedIn])
      {
        failure6 = [(PeerState *)self failure];
        if ([failure6 optedIn])
        {
        }

        else
        {
          mostRecentVerification3 = [(PeerState *)self mostRecentVerification];
          verificationResult = [mostRecentVerification3 verificationResult];

          if (verificationResult == 1)
          {
            if (qword_10038BC10 != -1)
            {
              sub_100247864();
            }

            v30 = qword_10038BC18;
            if (!os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_28;
            }

            v22 = v30;
            v23 = [(PeerState *)self uri];
            failure5 = [(PeerState *)self failure];
            verificationId = [failure5 verificationId];
            v48 = 138412802;
            v49 = v23;
            v50 = 2114;
            v51 = verificationId;
            v52 = 2114;
            v53 = kt_toISO_8601_UTCString;
            v26 = "PeerStateCaculated: %{mash.hash}@ resolved failure %{public}@ from before opt-in (%{public}@)";
LABEL_13:
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v26, &v48, 0x20u);

LABEL_28:
            v12 = 1;
LABEL_35:

            goto LABEL_36;
          }
        }
      }

      seenDate = [(PeerState *)self seenDate];

      if (seenDate)
      {
        seenDate2 = [(PeerState *)self seenDate];
        [dateCopy timeIntervalSinceDate:seenDate2];
        v34 = v33;

        +[TransparencySettings dismissFailureAfterSeenPeriod];
        if (v34 >= v35)
        {
          goto LABEL_28;
        }

        if (qword_10038BC10 != -1)
        {
          sub_100247878();
        }

        v36 = qword_10038BC18;
        if (!os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_DEFAULT))
        {
LABEL_34:
          v12 = 0;
          goto LABEL_35;
        }

        v37 = v36;
        v38 = [(PeerState *)self uri];
        failure7 = [(PeerState *)self failure];
        verificationId2 = [failure7 verificationId];
        seenDate3 = [(PeerState *)self seenDate];
        kt_toISO_8601_UTCString3 = [seenDate3 kt_toISO_8601_UTCString];
        v48 = 138413058;
        v49 = v38;
        v50 = 2114;
        v51 = verificationId2;
        v52 = 2114;
        v53 = kt_toISO_8601_UTCString;
        v54 = 2112;
        v55 = kt_toISO_8601_UTCString3;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "PeerStateCalculator: %{mash.hash}@ resolved failure %{public}@ (%{public}@) not seen for 1h (%@)", &v48, 0x2Au);
      }

      else
      {
        if (qword_10038BC10 != -1)
        {
          sub_10024788C();
        }

        v43 = qword_10038BC18;
        if (!os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_34;
        }

        v37 = v43;
        v44 = [(PeerState *)self uri];
        failure8 = [(PeerState *)self failure];
        verificationId3 = [failure8 verificationId];
        v48 = 138412802;
        v49 = v44;
        v50 = 2114;
        v51 = verificationId3;
        v52 = 2114;
        v53 = kt_toISO_8601_UTCString;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "PeerStateCalculator: %{mash.hash}@ resolved failure %{public}@ (%{public}@) never seen", &v48, 0x20u);
      }

      goto LABEL_34;
    }
  }

  v12 = 0;
LABEL_36:

  return v12;
}

- (BOOL)isFailureIgnoredForDate:(id)date
{
  dateCopy = date;
  ignoredFailureExpiry = [(PeerState *)self ignoredFailureExpiry];

  if (ignoredFailureExpiry)
  {
    ignoredFailureExpiry2 = [(PeerState *)self ignoredFailureExpiry];
    [ignoredFailureExpiry2 timeIntervalSinceDate:dateCopy];
    v8 = v7;

    if (v8 <= 0.0)
    {
      if (qword_10038BC10 != -1)
      {
        sub_1002478A0();
      }

      v9 = qword_10038BC18;
      if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = [(PeerState *)self uri];
        v14 = 138412290;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PeerStateCalculator: %{mash.hash}@ failure ignore expired", &v14, 0xCu);
      }
    }

    v12 = v8 > 0.0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)updateResultWithStaticKey:(id)key staticKeyStore:(id)store forDate:(id)date
{
  keyCopy = key;
  storeCopy = store;
  dateCopy = date;
  publicID = [keyCopy publicID];

  if (publicID)
  {
    if (storeCopy)
    {
      succeed = [keyCopy succeed];
      staticAccountKeyStatus = [keyCopy staticAccountKeyStatus];
      publicID2 = [keyCopy publicID];
      publicKeyInfo = [publicID2 publicKeyInfo];

      v15 = [keyCopy uri];
      application = [keyCopy application];
      v33 = 0;
      v17 = [KTContext validateStaticKeyForPeer:v15 accountKey:publicKeyInfo application:application staticKeyStore:storeCopy error:&v33];
      v18 = v33;
      [keyCopy setStaticAccountKeyStatus:v17];

      if ([keyCopy staticAccountKeyStatus] && objc_msgSend(keyCopy, "staticAccountKeyStatus") != 1)
      {
        if (qword_10038BC10 != -1)
        {
          sub_1002478B4();
        }

        v19 = qword_10038BC18;
        if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v35 = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "veriferResultForPeer static key failed: %@", buf, 0xCu);
        }

        [keyCopy setSucceed:0];
        failure = [keyCopy failure];

        if (!failure)
        {
          [keyCopy setFailure:v18];
        }
      }

      if ((-[PeerState everOptedIn](self, "everOptedIn") & 1) != 0 || [keyCopy staticAccountKeyStatus] != 2 && objc_msgSend(keyCopy, "staticAccountKeyStatus"))
      {
        if (succeed == 2 && ![keyCopy staticAccountKeyStatus])
        {
          loggableDatas = [keyCopy loggableDatas];
          v32 = 0;
          v27 = [KTContextVerifier verifyLoggableDataSignatures:loggableDatas accountKey:publicKeyInfo error:&v32];
          v28 = v32;

          if ((v27 & 1) == 0)
          {
            [keyCopy setStaticAccountKeyStatus:4];
            failure2 = [keyCopy failure];

            if (!failure2)
            {
              [keyCopy setFailure:v28];
            }
          }
        }

        else
        {
          v21 = 0;
          if ([keyCopy staticAccountKeyStatus] || staticAccountKeyStatus != 4)
          {
            goto LABEL_34;
          }

          [keyCopy setStaticAccountKeyStatus:4];
        }

        v21 = 0;
      }

      else
      {
        v21 = 1;
        [(PeerState *)self setEverOptedIn:1];
        [keyCopy setEverOptedIn:1];
      }

LABEL_34:
      [keyCopy updateWithStaticKeyEnforced:objc_msgSend(keyCopy isFailureIgnoredForDate:{"staticAccountKeyStatus"), -[PeerState isFailureIgnoredForDate:](self, "isFailureIgnoredForDate:", dateCopy)}];

      goto LABEL_35;
    }

    if (qword_10038BC10 != -1)
    {
      sub_1002478DC();
    }

    v25 = qword_10038BC18;
    if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "veriferResultForPeer static key: no static key store", buf, 2u);
    }
  }

  else
  {
    if (qword_10038BC10 != -1)
    {
      sub_1002478F0();
    }

    v22 = qword_10038BC18;
    if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_ERROR))
    {
      v23 = v22;
      v24 = [keyCopy uri];
      *buf = 141558274;
      v35 = 1752392040;
      v36 = 2112;
      v37 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "veriferResultForPeer static key: no public id for %{mask.hash}@", buf, 0x16u);
    }
  }

  v21 = 0;
LABEL_35:

  return v21;
}

- (id)verifierResultWithStaticKeyStore:(id)store
{
  storeCopy = store;
  v5 = [KTVerifierResult alloc];
  v6 = [(PeerState *)self uri];
  application = [(PeerState *)self application];
  v8 = [v5 initWithUri:v6 application:application];

  [v8 setOptedIn:{-[PeerState optedIn](self, "optedIn")}];
  [v8 setEverOptedIn:{-[PeerState everOptedIn](self, "everOptedIn")}];
  mostRecentVerification = [(PeerState *)self mostRecentVerification];
  v10 = mostRecentVerification;
  if (mostRecentVerification)
  {
    [v8 setSucceed:{objc_msgSend(mostRecentVerification, "getUnsigned:", "verificationResult")}];
    accountKey = [v10 accountKey];
    v12 = [KTAccountPublicID ktAccountPublicIDWithPublicKeyInfo:accountKey error:0];
    [v8 setPublicID:v12];

    serverLoggableDatas = [v10 serverLoggableDatas];
    loggableDatas = [serverLoggableDatas loggableDatas];
    [v8 setLoggableDatas:loggableDatas];

    failure = [v10 failure];
    [v8 setFailure:failure];

    [v8 setStaticAccountKeyStatus:{objc_msgSend(v10, "getUnsigned:", "staticKeyStatus")}];
    creationTime = [v10 creationTime];
    +[TransparencySettings defaultQueryCacheTimeout];
    v17 = [creationTime dateByAddingTimeInterval:?];
    [v8 setValidUntil:v17];
  }

  else
  {
    [v8 setSucceed:2];
  }

  v18 = +[NSDate now];
  [v8 setUiStatus:{-[PeerState getUIStatusForDate:](self, "getUIStatusForDate:", v18)}];
  if (qword_10038BC10 != -1)
  {
    sub_100247904();
  }

  v19 = qword_10038BC18;
  if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_INFO))
  {
    v20 = v19;
    [v8 uiStatus];
    v21 = KTUIStatusGetString();
    v24 = 138412290;
    v25 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "verifierResultWithStaticKeyStore setting UI status to %@", &v24, 0xCu);
  }

  if ([(PeerState *)self updateResultWithStaticKey:v8 staticKeyStore:storeCopy forDate:v18])
  {
    v22 = [(PeerState *)self verifierResultWithStaticKeyStore:storeCopy];

    v8 = v22;
  }

  return v8;
}

@end