@interface KTCheckIDSRegistrationOperation
+ (BOOL)checkPCSKTSignature:(id)a3 data:(id)a4 signature:(id)a5;
- (BOOL)hasRecentlyDoneHSA2Upsell;
- (KTCheckIDSRegistrationInterface)idsRegistrationInterface;
- (id)messageForResult:(int64_t)a3;
- (int64_t)getPriorityIDSResult:(id)a3;
- (void)groupStart;
- (void)pokeAndUpdateIDSState:(id)a3 withPublicKey:(id)a4;
- (void)setCheckIDSError:(int64_t)a3;
@end

@implementation KTCheckIDSRegistrationOperation

+ (BOOL)checkPCSKTSignature:(id)a3 data:(id)a4 signature:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = PCSPublicIdentityCreateWithPublicKeyInfo();
  if (v8)
  {
    v9 = v8;
    v10 = PCSValidateSignature();
    CFRelease(v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)hasRecentlyDoneHSA2Upsell
{
  v3 = +[NSDate now];
  v4 = [v3 dateByAddingTimeInterval:-600.0];

  v5 = [(KTCheckIDSRegistrationOperation *)self deps];
  v6 = [v5 idsAccountTracker];
  v7 = [v6 timeOfLastUpsell];
  v8 = [v7 compare:v4] == 1;

  return v8;
}

- (void)pokeAndUpdateIDSState:(id)a3 withPublicKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(KTCheckIDSRegistrationOperation *)self application];
  v9 = [TransparencyApplication idsServiceForIdentifier:v8];

  v10 = [v6 objectForKeyedSubscript:v9];
  if ([v10 count])
  {
    v11 = +[NSMutableSet set];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v13)
    {
      v15 = v13;
      v56 = v10;
      v57 = v9;
      v55 = 0;
      v16 = *v61;
      *&v14 = 67109120;
      v52 = v14;
      v17 = v12;
      v18 = &qword_10039A8D0[742];
      v58 = v17;
      v59 = v11;
      while (1)
      {
        v19 = 0;
        do
        {
          if (*v61 != v16)
          {
            objc_enumerationMutation(v17);
          }

          v20 = *(*(&v60 + 1) + 8 * v19);
          if ([v20 status] == 1 && -[KTCheckIDSRegistrationOperation hasRecentlyDoneHSA2Upsell](self, "hasRecentlyDoneHSA2Upsell"))
          {
            if (qword_10039CA50 != -1)
            {
              sub_10025CD0C();
            }

            v10 = v56;
            v9 = v57;
            v49 = v18[331];
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "IDS returned unregistered states with recent HSA2 upsell", buf, 2u);
            }

            v45 = @"hsa2upsell";
            goto LABEL_77;
          }

          if (-[KTCheckIDSRegistrationOperation waitLonger](self, "waitLonger") && ([v20 status] == 1 || objc_msgSend(v20, "status") == 4 || objc_msgSend(v20, "status") == 2))
          {
            if (qword_10039CA50 != -1)
            {
              sub_10025CCE4();
            }

            v10 = v56;
            v9 = v57;
            v44 = v18[331];
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "IDS returned unregistered states with wait longer", buf, 2u);
            }

            v45 = @"waitLonger";
LABEL_77:
            v50 = [(KTCheckIDSRegistrationOperation *)self idsRegistrationInterface];
            [v50 triggerRegistrationDataNeedsUpdate:v45];

            goto LABEL_78;
          }

          if ([v20 status] == 2 || objc_msgSend(v20, "status") == 4)
          {
            if (qword_10039CA50 != -1)
            {
              sub_10025CCBC();
            }

            v21 = v18[331];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "IDS returned in-process registration", buf, 2u);
            }

            v22 = v11;
            v23 = &off_10033CFD8;
LABEL_20:
            [v22 addObject:v23];
            goto LABEL_21;
          }

          v24 = v18;
          v25 = [v20 ktDataForRegistration];

          if (!v25)
          {
            if (qword_10039CA50 != -1)
            {
              sub_10025CC94();
            }

            v18 = v24;
            v36 = v24[331];
            v11 = v59;
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "IDS returned state with no KT data", buf, 2u);
            }

            v22 = v59;
            v23 = &off_10033CFF0;
            goto LABEL_20;
          }

          v26 = [v20 ktAccountKey];

          if (!v26)
          {
            if (qword_10039CA50 != -1)
            {
              sub_10025CC6C();
            }

            v18 = v24;
            v37 = v24[331];
            v11 = v59;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "IDS returned state with missing account key", buf, 2u);
            }

            v22 = v59;
            v23 = &off_10033D008;
            goto LABEL_20;
          }

          v27 = [v20 ktAccountKey];
          v28 = [v27 isEqual:v7];

          if ((v28 & 1) == 0)
          {
            if (qword_10039CA50 != -1)
            {
              sub_10025CBF4();
            }

            v17 = v58;
            v18 = v24;
            v38 = v24[331];
            v11 = v59;
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "IDS returned state incorrect account key", buf, 2u);
            }

            v22 = v59;
            v23 = &off_10033D020;
            goto LABEL_20;
          }

          v53 = v7;
          v54 = v6;
          v29 = objc_opt_class();
          v30 = [v20 ktAccountKey];
          v31 = [v20 ktDataForRegistration];
          v32 = [v20 deviceSignature];
          LOBYTE(v29) = [v29 checkPCSKTSignature:v30 data:v31 signature:v32];

          if ((v29 & 1) == 0)
          {
            v6 = v54;
            v17 = v58;
            if (qword_10039CA50 != -1)
            {
              sub_10025CC1C();
            }

            v7 = v53;
            v18 = v24;
            v39 = v24[331];
            v11 = v59;
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "IDS returned state with incorrect signature", buf, 2u);
            }

            v22 = v59;
            v23 = &off_10033D038;
            goto LABEL_20;
          }

          v6 = v54;
          v17 = v58;
          if (qword_10039CA50 != -1)
          {
            sub_10025CC44();
          }

          v7 = v53;
          v33 = v24[331];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = v33;
            v35 = [v20 registrationType];
            *buf = v52;
            LODWORD(v66) = v35;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "IDS returned valid registration, type %d", buf, 8u);
          }

          if (_os_feature_enabled_impl())
          {
            v55 = 1;
          }

          else
          {
            v55 |= [v20 registrationType] == 1;
          }

          v18 = v24;
          v11 = v59;
LABEL_21:
          v19 = v19 + 1;
        }

        while (v15 != v19);
        v40 = [v17 countByEnumeratingWithState:&v60 objects:v64 count:16];
        v15 = v40;
        if (!v40)
        {

          v10 = v56;
          v9 = v57;
          if ((v55 & 1) == 0)
          {
            goto LABEL_69;
          }

          v41 = [(KTCheckIDSRegistrationOperation *)self idsRegistrationInterface];
          [v41 notifyIDSRegistrationCorrect];

          [(KTCheckIDSRegistrationOperation *)self setCheckIDSResult:1];
          goto LABEL_80;
        }
      }
    }

LABEL_69:
    if ([v11 count])
    {
      v46 = [(KTCheckIDSRegistrationOperation *)self getPriorityIDSResult:v11];
      [(KTCheckIDSRegistrationOperation *)self setCheckIDSError:v46];
      if ((v46 - 3) <= 2)
      {
        v47 = [(KTCheckIDSRegistrationOperation *)self idsRegistrationInterface];
        v48 = [(KTCheckIDSRegistrationOperation *)self messageForResult:v46];
        [v47 triggerRegistrationDataNeedsUpdate:v48];
      }
    }

    else
    {
LABEL_80:
      if ([(KTCheckIDSRegistrationOperation *)self checkIDSResult]!= 1)
      {
        if (qword_10039CA50 != -1)
        {
          sub_10025CD34();
        }

        v51 = qword_10039CA58;
        if (os_log_type_enabled(qword_10039CA58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "No valid AppleID registration, so we are not in a good state", buf, 2u);
        }

        [(KTCheckIDSRegistrationOperation *)self setCheckIDSError:2];
      }
    }

LABEL_78:
  }

  else
  {
    if (qword_10039CA50 != -1)
    {
      sub_10025CD5C();
    }

    v42 = qword_10039CA58;
    if (os_log_type_enabled(qword_10039CA58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v66 = v9;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "IDS returned no registration states for service %@", buf, 0xCu);
    }

    v43 = [(KTCheckIDSRegistrationOperation *)self idsRegistrationInterface];
    [v43 triggerRegistrationDataNeedsUpdate:@"missing"];

    [(KTCheckIDSRegistrationOperation *)self setCheckIDSError:2];
  }
}

- (id)messageForResult:(int64_t)a3
{
  if ((a3 - 3) > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_1003283A0 + a3 - 3);
  }
}

- (int64_t)getPriorityIDSResult:(id)a3
{
  v3 = a3;
  if ([v3 containsObject:&off_10033D038])
  {
    v4 = 3;
  }

  else if ([v3 containsObject:&off_10033D020])
  {
    v4 = 4;
  }

  else if ([v3 containsObject:&off_10033D008])
  {
    v4 = 5;
  }

  else if ([v3 containsObject:&off_10033CFF0])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)groupStart
{
  v3 = [(KTCheckIDSRegistrationOperation *)self pcsOperation];
  v16 = 0;
  v4 = [v3 getCurrentKTPCSIdentity:off_10038B2A0 error:&v16];
  v5 = v16;

  if (v4)
  {
    [v4 identity];
    v6 = PCSIdentityCopyPublicKeyInfo();
    v7 = objc_alloc_init(NSOperation);
    [(KTCheckIDSRegistrationOperation *)self setFinishedOp:v7];

    v8 = [(KTCheckIDSRegistrationOperation *)self finishedOp];
    [(KTGroupOperation *)self dependOnBeforeGroupFinished:v8];

    objc_initWeak(&location, self);
    v9 = [(KTCheckIDSRegistrationOperation *)self deps];
    v10 = [v9 idsOperations];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001E5060;
    v12[3] = &unk_100328380;
    objc_copyWeak(&v14, &location);
    v11 = v6;
    v13 = v11;
    [v10 getCurrentRegistrationState:0 withCompletion:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    [(KTCheckIDSRegistrationOperation *)self setCheckIDSError:6];
  }
}

- (void)setCheckIDSError:(int64_t)a3
{
  [(KTCheckIDSRegistrationOperation *)self setCheckIDSResult:?];
  v6 = [NSError errorWithDomain:@"KTErrorDomainCheckIDS" code:a3 userInfo:0];
  v5 = [TransparencyError errorWithDomain:kTransparencyErrorServer code:-365 underlyingError:v6 userinfo:0 description:@"CheckIDS failed"];
  [(KTResultOperation *)self setError:v5];
}

- (KTCheckIDSRegistrationInterface)idsRegistrationInterface
{
  WeakRetained = objc_loadWeakRetained((&self->_finishedOp + 6));

  return WeakRetained;
}

@end