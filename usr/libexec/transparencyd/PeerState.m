@interface PeerState
- (BOOL)isFailureIgnoredForDate:(id)a3;
- (BOOL)isFailureResolvedAndSeenByDate:(id)a3;
- (BOOL)setCompletedVerification:(id)a3;
- (BOOL)updateResultWithStaticKey:(id)a3 staticKeyStore:(id)a4 forDate:(id)a5;
- (id)verificationWithinTTLOfDate:(id)a3;
- (id)verifierResultWithStaticKeyStore:(id)a3;
- (unint64_t)bestVerificationResultToUIStatusForDate:(id)a3;
- (unint64_t)getUIStatusForDate:(id)a3;
- (unint64_t)uiStatusWithEnforcement;
@end

@implementation PeerState

- (BOOL)setCompletedVerification:(id)a3
{
  v4 = a3;
  if ([v4 verificationResult] == 1)
  {
    v5 = [(PeerState *)self mostRecentSuccess];
    if (!v5)
    {
      goto LABEL_4;
    }

    v6 = v5;
    v7 = [(PeerState *)self mostRecentSuccess];
    v8 = [v7 idsResponseTime];
    v9 = [v4 idsResponseTime];
    v10 = [v8 compare:v9];

    if (v10 == -1)
    {
LABEL_4:
      [(PeerState *)self setMostRecentSuccess:v4];
LABEL_11:
      v11 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    if ([v4 verificationResult])
    {
      v11 = 0;
      goto LABEL_15;
    }

    v12 = [(PeerState *)self failure];
    if (!v12)
    {
      goto LABEL_10;
    }

    v13 = v12;
    v14 = [(PeerState *)self failure];
    v15 = [v14 idsResponseTime];
    v16 = [v4 idsResponseTime];
    v17 = [v15 compare:v16];

    if (v17 == -1)
    {
LABEL_10:
      [(PeerState *)self setFailure:v4];
      [(PeerState *)self setSeenDate:0];
      goto LABEL_11;
    }
  }

  v11 = 0;
LABEL_12:
  v18 = [(PeerState *)self mostRecentCompleted];
  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = v18;
  v20 = [(PeerState *)self mostRecentCompleted];
  v21 = [v20 idsResponseTime];
  v22 = [v4 idsResponseTime];
  v23 = [v21 compare:v22];

  if (v23 == -1)
  {
LABEL_14:
    [(PeerState *)self setMostRecentCompleted:v4];
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

  v3 = [(PeerState *)self mostRecentVerification];
  v4 = [v3 serverLoggableDatas];
  v5 = [v4 loggableDatas];

  if (!v5)
  {
    v6 = [(PeerState *)self mostRecentVerification];
    v7 = [v6 partialFail];

    if (v7)
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
  v11 = [(PeerState *)self mostRecentVerification];
  v12 = [v11 serverLoggableDatas];
  v13 = [v12 loggableDatas];

  v14 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
        objc_enumerationMutation(v13);
      }

      if ([*(*(&v20 + 1) + 8 * v17) result] == 1)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v15)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

    v19 = [(PeerState *)self mostRecentVerification];
    [v19 setPartialFail:1];

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

- (unint64_t)bestVerificationResultToUIStatusForDate:(id)a3
{
  v4 = a3;
  v5 = [(PeerState *)self verificationWithinTTLOfDate:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 getUnsigned:"verificationResult"];
    if (v7 == 3)
    {
      v8 = 8;
      goto LABEL_25;
    }

    if (v7 != 2)
    {
      if (v7)
      {
        v8 = 4;
      }

      else if (_os_feature_enabled_impl())
      {
        v8 = [(PeerState *)self uiStatusWithEnforcement];
      }

      else if ([(PeerState *)self isFailureIgnoredForDate:v4])
      {
        v8 = 8;
      }

      else
      {
        v8 = 6;
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
      v15 = [v6 verificationId];
      v30 = 138412546;
      v31 = v14;
      v32 = 2114;
      v33 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PeerStateCalculator: %{mash.hash}@ most recent verification %{public}@ pending", &v30, 0x16u);
    }

    v16 = [v6 creationTime];
    [v16 timeIntervalSinceDate:v4];
    v18 = v17;
    +[TransparencySettings queryJustMadeTimeout];
    v20 = -v19;

    if (v18 > v20)
    {
      +[TransparencySettings queryJustMadeTimeout];
      v22 = v21;
      v23 = [v6 creationTime];
      [v23 timeIntervalSinceDate:v4];
      v25 = v22 + v24;

      v26 = [(PeerState *)self dataStore];
      v27 = [(PeerState *)self uri];
      v28 = [(PeerState *)self application];
      [v26 recalculateVerifierResultForPeer:v27 application:v28 after:v25];

      v8 = 3;
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

  if ([(PeerState *)self isFailureIgnoredForDate:v4])
  {
    v8 = 12;
  }

  else
  {
    v8 = 0;
  }

LABEL_25:

  return v8;
}

- (unint64_t)getUIStatusForDate:(id)a3
{
  v4 = a3;
  if (([(PeerState *)self everCompletedVerification]& 1) != 0)
  {
    if (([(PeerState *)self optedIn]& 1) != 0)
    {
      v5 = [(PeerState *)self failure];

      if (!v5)
      {
        goto LABEL_28;
      }

      v6 = [(PeerState *)self failure];
      v7 = [v6 verificationResult];

      if (v7)
      {
        if (qword_10038BC10 != -1)
        {
          sub_1002477C4();
        }

        v8 = qword_10038BC18;
        if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_ERROR))
        {
          v9 = v8;
          v10 = [(PeerState *)self application];
          v11 = [(PeerState *)self uri];
          v12 = [(PeerState *)self failure];
          v32 = 138413058;
          v33 = v10;
          v34 = 2112;
          v35 = v11;
          v36 = 2048;
          v37 = [v12 verificationResult];
          v38 = 2048;
          v39 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "There is a failed verification saved for peer (%@, %@) with verification result %lld. We only expect this value to be %lu. This may lead to issues later.", &v32, 0x2Au);
        }
      }

      if (_os_feature_enabled_impl())
      {
        v13 = [(PeerState *)self mostRecentVerification];
        if (![v13 verificationResult])
        {

LABEL_36:
          v24 = [(PeerState *)self uiStatusWithEnforcement];
          goto LABEL_37;
        }

        v14 = [(PeerState *)self mostRecentVerification];
        v15 = [v14 verificationResult];

        if (v15 == 3)
        {
          goto LABEL_36;
        }

LABEL_28:
        v24 = [(PeerState *)self bestVerificationResultToUIStatusForDate:v4];
LABEL_37:
        v19 = v24;
        goto LABEL_38;
      }

      if ([(PeerState *)self isFailureResolvedAndSeenByDate:v4])
      {
        if (qword_10038BC10 != -1)
        {
          sub_100247828();
        }

        v21 = qword_10038BC18;
        if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_INFO))
        {
          v22 = v21;
          v23 = [(PeerState *)self failure];
          v32 = 138412290;
          v33 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "getUIStatusForDate failure is resolved and seen (%@)", &v32, 0xCu);
        }

        goto LABEL_28;
      }

      if ([(PeerState *)self isFailureIgnoredForDate:v4])
      {
        if (qword_10038BC10 != -1)
        {
          sub_100247800();
        }

        v25 = qword_10038BC18;
        if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_INFO))
        {
          v26 = v25;
          v27 = [(PeerState *)self failure];
          v32 = 138412290;
          v33 = v27;
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
          v31 = [(PeerState *)self failure];
          v32 = 138412290;
          v33 = v31;
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

- (id)verificationWithinTTLOfDate:(id)a3
{
  v4 = a3;
  v5 = [(PeerState *)self mostRecentSuccess];

  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = [(PeerState *)self mostRecentSuccess];
  v7 = [v6 creationTime];
  [v4 timeIntervalSinceDate:v7];
  v9 = v8;

  +[TransparencySettings queryCacheHardTimeout];
  if (v9 < v10)
  {
    v18 = [(PeerState *)self mostRecentSuccess];
  }

  else
  {
LABEL_3:
    v11 = [(PeerState *)self mostRecentVerification];

    if (!v11)
    {
      goto LABEL_5;
    }

    v12 = [(PeerState *)self mostRecentVerification];
    v13 = [v12 creationTime];
    [v4 timeIntervalSinceDate:v13];
    v15 = v14;

    +[TransparencySettings queryCacheHardTimeout];
    if (v15 >= v16)
    {
LABEL_5:
      v17 = 0;
      goto LABEL_9;
    }

    v18 = [(PeerState *)self mostRecentVerification];
  }

  v17 = v18;
LABEL_9:

  return v17;
}

- (BOOL)isFailureResolvedAndSeenByDate:(id)a3
{
  v4 = a3;
  v5 = [(PeerState *)self failure];

  if (!v5)
  {
    v12 = 1;
    goto LABEL_36;
  }

  v6 = [(PeerState *)self mostRecentVerification];

  if (v6)
  {
    v7 = [(PeerState *)self failure];
    v8 = [v7 creationTime];
    v9 = [(PeerState *)self mostRecentVerification];
    v10 = [v9 creationTime];
    v11 = [v8 compare:v10];

    if (v11 == -1)
    {
      v13 = [(PeerState *)self failure];
      v14 = [v13 creationTime];
      v15 = [v14 kt_toISO_8601_UTCString];

      if ((+[TransparencyAnalytics hasInternalDiagnostics]& 1) == 0)
      {
        v16 = [(PeerState *)self failure];
        v17 = [v16 creationTime];
        v18 = [v17 kt_fuzzyDate];
        v19 = [v18 kt_toISO_8601_UTCString];

        v15 = v19;
      }

      v20 = [(PeerState *)self ignoredFailureExpiry];

      if (v20)
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
        v24 = [(PeerState *)self failure];
        v25 = [v24 verificationId];
        v48 = 138412802;
        v49 = v23;
        v50 = 2114;
        v51 = v25;
        v52 = 2114;
        v53 = v15;
        v26 = "PeerStateCalculator: %{mash.hash}@ resolved failure %{public}@ (%{public}@) ignored";
        goto LABEL_13;
      }

      if ([(PeerState *)self optedIn])
      {
        v27 = [(PeerState *)self failure];
        if ([v27 optedIn])
        {
        }

        else
        {
          v28 = [(PeerState *)self mostRecentVerification];
          v29 = [v28 verificationResult];

          if (v29 == 1)
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
            v24 = [(PeerState *)self failure];
            v25 = [v24 verificationId];
            v48 = 138412802;
            v49 = v23;
            v50 = 2114;
            v51 = v25;
            v52 = 2114;
            v53 = v15;
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

      v31 = [(PeerState *)self seenDate];

      if (v31)
      {
        v32 = [(PeerState *)self seenDate];
        [v4 timeIntervalSinceDate:v32];
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
        v39 = [(PeerState *)self failure];
        v40 = [v39 verificationId];
        v41 = [(PeerState *)self seenDate];
        v42 = [v41 kt_toISO_8601_UTCString];
        v48 = 138413058;
        v49 = v38;
        v50 = 2114;
        v51 = v40;
        v52 = 2114;
        v53 = v15;
        v54 = 2112;
        v55 = v42;
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
        v45 = [(PeerState *)self failure];
        v46 = [v45 verificationId];
        v48 = 138412802;
        v49 = v44;
        v50 = 2114;
        v51 = v46;
        v52 = 2114;
        v53 = v15;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "PeerStateCalculator: %{mash.hash}@ resolved failure %{public}@ (%{public}@) never seen", &v48, 0x20u);
      }

      goto LABEL_34;
    }
  }

  v12 = 0;
LABEL_36:

  return v12;
}

- (BOOL)isFailureIgnoredForDate:(id)a3
{
  v4 = a3;
  v5 = [(PeerState *)self ignoredFailureExpiry];

  if (v5)
  {
    v6 = [(PeerState *)self ignoredFailureExpiry];
    [v6 timeIntervalSinceDate:v4];
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

- (BOOL)updateResultWithStaticKey:(id)a3 staticKeyStore:(id)a4 forDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 publicID];

  if (v11)
  {
    if (v9)
    {
      v12 = [v8 succeed];
      v31 = [v8 staticAccountKeyStatus];
      v13 = [v8 publicID];
      v14 = [v13 publicKeyInfo];

      v15 = [v8 uri];
      v16 = [v8 application];
      v33 = 0;
      v17 = [KTContext validateStaticKeyForPeer:v15 accountKey:v14 application:v16 staticKeyStore:v9 error:&v33];
      v18 = v33;
      [v8 setStaticAccountKeyStatus:v17];

      if ([v8 staticAccountKeyStatus] && objc_msgSend(v8, "staticAccountKeyStatus") != 1)
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

        [v8 setSucceed:0];
        v20 = [v8 failure];

        if (!v20)
        {
          [v8 setFailure:v18];
        }
      }

      if ((-[PeerState everOptedIn](self, "everOptedIn") & 1) != 0 || [v8 staticAccountKeyStatus] != 2 && objc_msgSend(v8, "staticAccountKeyStatus"))
      {
        if (v12 == 2 && ![v8 staticAccountKeyStatus])
        {
          v26 = [v8 loggableDatas];
          v32 = 0;
          v27 = [KTContextVerifier verifyLoggableDataSignatures:v26 accountKey:v14 error:&v32];
          v28 = v32;

          if ((v27 & 1) == 0)
          {
            [v8 setStaticAccountKeyStatus:4];
            v29 = [v8 failure];

            if (!v29)
            {
              [v8 setFailure:v28];
            }
          }
        }

        else
        {
          v21 = 0;
          if ([v8 staticAccountKeyStatus] || v31 != 4)
          {
            goto LABEL_34;
          }

          [v8 setStaticAccountKeyStatus:4];
        }

        v21 = 0;
      }

      else
      {
        v21 = 1;
        [(PeerState *)self setEverOptedIn:1];
        [v8 setEverOptedIn:1];
      }

LABEL_34:
      [v8 updateWithStaticKeyEnforced:objc_msgSend(v8 isFailureIgnoredForDate:{"staticAccountKeyStatus"), -[PeerState isFailureIgnoredForDate:](self, "isFailureIgnoredForDate:", v10)}];

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
      v24 = [v8 uri];
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

- (id)verifierResultWithStaticKeyStore:(id)a3
{
  v4 = a3;
  v5 = [KTVerifierResult alloc];
  v6 = [(PeerState *)self uri];
  v7 = [(PeerState *)self application];
  v8 = [v5 initWithUri:v6 application:v7];

  [v8 setOptedIn:{-[PeerState optedIn](self, "optedIn")}];
  [v8 setEverOptedIn:{-[PeerState everOptedIn](self, "everOptedIn")}];
  v9 = [(PeerState *)self mostRecentVerification];
  v10 = v9;
  if (v9)
  {
    [v8 setSucceed:{objc_msgSend(v9, "getUnsigned:", "verificationResult")}];
    v11 = [v10 accountKey];
    v12 = [KTAccountPublicID ktAccountPublicIDWithPublicKeyInfo:v11 error:0];
    [v8 setPublicID:v12];

    v13 = [v10 serverLoggableDatas];
    v14 = [v13 loggableDatas];
    [v8 setLoggableDatas:v14];

    v15 = [v10 failure];
    [v8 setFailure:v15];

    [v8 setStaticAccountKeyStatus:{objc_msgSend(v10, "getUnsigned:", "staticKeyStatus")}];
    v16 = [v10 creationTime];
    +[TransparencySettings defaultQueryCacheTimeout];
    v17 = [v16 dateByAddingTimeInterval:?];
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

  if ([(PeerState *)self updateResultWithStaticKey:v8 staticKeyStore:v4 forDate:v18])
  {
    v22 = [(PeerState *)self verifierResultWithStaticKeyStore:v4];

    v8 = v22;
  }

  return v8;
}

@end