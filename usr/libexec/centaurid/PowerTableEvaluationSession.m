@interface PowerTableEvaluationSession
+ (id)voteSetAsString:(unint64_t)a3;
- (BOOL)setReadiness:(BOOL)a3 forClient:(int64_t)a4 session:(id)a5;
- (BOOL)setVote:(BOOL)a3 forClient:(int64_t)a4 session:(id)a5;
- (PowerTableEvaluationSession)initWithQueue:(id)a3 newAssetVersions:(id)a4 previousAssetVersions:(id)a5 delegate:(id)a6;
- (void)activate;
- (void)cancelTimer;
- (void)handleTimeout;
- (void)log;
- (void)notifyClients;
- (void)performChipLevelValidation;
- (void)sessionDidEnd;
- (void)sessionWillEnd;
- (void)setState:(int64_t)a3;
- (void)startTimer;
@end

@implementation PowerTableEvaluationSession

- (PowerTableEvaluationSession)initWithQueue:(id)a3 newAssetVersions:(id)a4 previousAssetVersions:(id)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = PowerTableEvaluationSession;
  v15 = [(PowerTableEvaluationSession *)&v22 init];
  if (!v15)
  {
    goto LABEL_5;
  }

  if ([v12 count] == 2)
  {
    if ([v13 count] == 2)
    {
      v15->_state = 0;
      objc_storeStrong(&v15->_dispatchQueue, a3);
      v16 = +[NSUUID UUID];
      v17 = [v16 UUIDString];
      identifier = v15->_identifier;
      v15->_identifier = v17;

      objc_storeStrong(&v15->_assetVersionsUnderEvaluation, a4);
      objc_storeStrong(&v15->_previousKnownGoodAssetVersions, a5);
      objc_storeWeak(&v15->_delegate, v14);
LABEL_5:

      return v15;
    }
  }

  else
  {
    sub_100028A14(v15);
  }

  v20 = sub_100028ABC(v15);
  [(PowerTableEvaluationSession *)v20 activate];
  return result;
}

- (void)activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(PowerTableEvaluationSession *)self log];
  v6 = [NSString stringWithFormat:@"com.apple.centaurid.PowerTableEvaluation.%@", self->_identifier];
  v3 = v6;
  [v6 UTF8String];
  v4 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v4;

  self->_acceptingClientReadiness = 1;
  [(PowerTableEvaluationSession *)self setState:1];
}

- (BOOL)setReadiness:(BOOL)a3 forClient:(int64_t)a4 session:(id)a5
{
  v6 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v10 = 1 << a4;
  v11 = sub_100025204();
  v12 = v11;
  if (((1 << a4) & 3) == 0)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v28 = [objc_opt_class() description];
      v29 = NSStringFromSelector(a2);
      *buf = 138543874;
      v36 = v28;
      v37 = 2114;
      v38 = v29;
      v39 = 2048;
      v40 = a4;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: invalid client %ld", buf, 0x20u);
    }

    goto LABEL_23;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [objc_opt_class() description];
    v14 = NSStringFromSelector(a2);
    v15 = sub_1000107CC(a4);
    v16 = v15;
    v17 = "not ready";
    *buf = 138544130;
    v37 = 2114;
    v36 = v13;
    if (v6)
    {
      v17 = "ready";
    }

    v38 = v14;
    v39 = 2112;
    v40 = v15;
    v41 = 2080;
    v42 = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %@ %s", buf, 0x2Au);
  }

  if (([v9 isEqual:self->_identifier] & 1) == 0)
  {
    v27 = sub_100025204();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v30 = [objc_opt_class() description];
      v31 = NSStringFromSelector(a2);
      identifier = self->_identifier;
      *buf = 138544130;
      v36 = v30;
      v37 = 2114;
      v38 = v31;
      v39 = 2114;
      v40 = v9;
      v41 = 2114;
      v42 = identifier;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: session mismatch: received %{public}@, active %{public}@", buf, 0x2Au);
    }

    goto LABEL_23;
  }

  clientReadinessReceived = self->_clientReadinessReceived;
  if ((clientReadinessReceived & v10) != 0)
  {
    sub_100028B64(self, a2);
LABEL_23:
    v25 = 0;
    goto LABEL_15;
  }

  if (!self->_acceptingClientReadiness)
  {
    sub_100028C44(self);
    goto LABEL_14;
  }

  self->_clientReadinessReceived = clientReadinessReceived | v10;
  if (!v6)
  {
    v22 = sub_1000107CC(a4);
    v23 = [NSString stringWithFormat:@"client%@NotReady", v22];
    sessionEndReason = self->_sessionEndReason;
    self->_sessionEndReason = v23;

    self->_acceptingClientReadiness = 0;
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002E98;
    block[3] = &unk_10005C700;
    block[4] = self;
    v21 = block;
    goto LABEL_13;
  }

  v19 = self->_clientReadiness | v10;
  self->_clientReadiness = v19;
  if (v19 == 3)
  {
    self->_acceptingClientReadiness = 0;
    dispatchQueue = self->_dispatchQueue;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100002E8C;
    v34[3] = &unk_10005C700;
    v34[4] = self;
    v21 = v34;
LABEL_13:
    dispatch_async(dispatchQueue, v21);
  }

LABEL_14:
  v25 = 1;
LABEL_15:

  return v25;
}

- (BOOL)setVote:(BOOL)a3 forClient:(int64_t)a4 session:(id)a5
{
  v6 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v10 = 1 << a4;
  v11 = sub_100025204();
  v12 = v11;
  if (((1 << a4) & 3) == 0)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v28 = [objc_opt_class() description];
      v29 = NSStringFromSelector(a2);
      *buf = 138543874;
      v36 = v28;
      v37 = 2114;
      v38 = v29;
      v39 = 2048;
      v40 = a4;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: invalid client %ld", buf, 0x20u);
    }

    goto LABEL_23;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [objc_opt_class() description];
    v14 = NSStringFromSelector(a2);
    v15 = sub_1000107CC(a4);
    v16 = v15;
    v17 = "reject";
    *buf = 138544130;
    v37 = 2114;
    v36 = v13;
    if (v6)
    {
      v17 = "accept";
    }

    v38 = v14;
    v39 = 2112;
    v40 = v15;
    v41 = 2080;
    v42 = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %@ votes to %s", buf, 0x2Au);
  }

  if (([v9 isEqual:self->_identifier] & 1) == 0)
  {
    v27 = sub_100025204();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v30 = [objc_opt_class() description];
      v31 = NSStringFromSelector(a2);
      identifier = self->_identifier;
      *buf = 138544130;
      v36 = v30;
      v37 = 2114;
      v38 = v31;
      v39 = 2114;
      v40 = v9;
      v41 = 2114;
      v42 = identifier;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: session mismatch: received %{public}@, active %{public}@", buf, 0x2Au);
    }

    goto LABEL_23;
  }

  clientVotesReceived = self->_clientVotesReceived;
  if ((clientVotesReceived & v10) != 0)
  {
    sub_100028D28(self, a2);
LABEL_23:
    v25 = 0;
    goto LABEL_15;
  }

  if (!self->_acceptingClientVotes)
  {
    sub_100028E08(self);
    goto LABEL_14;
  }

  self->_clientVotesReceived = clientVotesReceived | v10;
  if (!v6)
  {
    v22 = sub_1000107CC(a4);
    v23 = [NSString stringWithFormat:@"client%@VotedToReject", v22];
    sessionEndReason = self->_sessionEndReason;
    self->_sessionEndReason = v23;

    self->_acceptingClientVotes = 0;
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000032BC;
    block[3] = &unk_10005C700;
    block[4] = self;
    v21 = block;
    goto LABEL_13;
  }

  v19 = self->_clientVotes | v10;
  self->_clientVotes = v19;
  if (v19 == 3)
  {
    self->_acceptingClientVotes = 0;
    dispatchQueue = self->_dispatchQueue;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000032B0;
    v34[3] = &unk_10005C700;
    v34[4] = self;
    v21 = v34;
LABEL_13:
    dispatch_async(dispatchQueue, v21);
  }

LABEL_14:
  v25 = 1;
LABEL_15:

  return v25;
}

- (void)log
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    identifier = self->_identifier;
    v7 = sub_1000107A4(self->_state);
    acceptingClientReadiness = self->_acceptingClientReadiness;
    v8 = [objc_opt_class() voteSetAsString:self->_clientReadinessReceived];
    v9 = [objc_opt_class() voteSetAsString:self->_clientReadiness];
    acceptingClientVotes = self->_acceptingClientVotes;
    v11 = [objc_opt_class() voteSetAsString:self->_clientVotesReceived];
    v12 = [objc_opt_class() voteSetAsString:self->_clientVotes];
    v13 = self->_transaction != 0;
    v14 = self->_timer != 0;
    assetVersionsUnderEvaluation = self->_assetVersionsUnderEvaluation;
    previousKnownGoodAssetVersions = self->_previousKnownGoodAssetVersions;
    *buf = 138546690;
    v20 = v5;
    v21 = 2114;
    v22 = v6;
    v23 = 2114;
    v24 = identifier;
    v25 = 2112;
    v26 = v7;
    v27 = 1024;
    v28 = acceptingClientReadiness;
    v29 = 2114;
    v30 = v8;
    v31 = 2114;
    v32 = v9;
    v33 = 1024;
    v34 = acceptingClientVotes;
    v35 = 2114;
    v36 = v11;
    v37 = 2114;
    v38 = v12;
    v39 = 1024;
    v40 = v13;
    v41 = 1024;
    v42 = v14;
    v43 = 2114;
    v44 = assetVersionsUnderEvaluation;
    v45 = 2114;
    v46 = previousKnownGoodAssetVersions;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: id %{public}@, state %@, accepting readiness %u, readiness received %{public}@, readiness %{public}@, accepting votes %u, votes received %{public}@, votes %{public}@, transaction %u, timer %u, new %{public}@, previous %{public}@", buf, 0x7Eu);
  }
}

- (void)setState:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v6 = sub_100025204();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    identifier = self->_identifier;
    v10 = sub_1000107A4(self->_state);
    v11 = sub_1000107A4(a3);
    v16 = 138544386;
    v17 = v7;
    v18 = 2114;
    v19 = v8;
    v20 = 2114;
    v21 = identifier;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %{public}@: %@ -> %@", &v16, 0x34u);
  }

  [(PowerTableEvaluationSession *)self cancelTimer];
  self->_state = a3;
  if ((a3 - 4) <= 2)
  {
    [(PowerTableEvaluationSession *)self sessionWillEnd];
  }

  [(PowerTableEvaluationSession *)self notifyClients];
  state = self->_state;
  if (state <= 2)
  {
    if (state != 1)
    {
      if (state == 2)
      {
        [(PowerTableEvaluationSession *)self performChipLevelValidation];
      }

      else if (!state)
      {
        v13 = sub_100025204();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_100028EEC();
        }

        v14 = abort_report_np();
        [(PowerTableEvaluationSession *)v14 notifyClients];
      }

      return;
    }

LABEL_12:
    [(PowerTableEvaluationSession *)self startTimer];
    return;
  }

  if ((state - 4) < 3)
  {
    [(PowerTableEvaluationSession *)self sessionDidEnd];
    return;
  }

  if (state == 3)
  {
    goto LABEL_12;
  }
}

- (void)notifyClients
{
  v12[0] = @"Timestamp";
  v3 = +[NSDate now];
  [v3 timeIntervalSinceReferenceDate];
  v4 = [NSNumber numberWithDouble:?];
  state = self->_state;
  identifier = self->_identifier;
  v13[0] = v4;
  v13[1] = identifier;
  v12[1] = @"SessionIdentifier";
  v12[2] = @"SessionState";
  v7 = [NSNumber numberWithInteger:state];
  assetVersionsUnderEvaluation = self->_assetVersionsUnderEvaluation;
  previousKnownGoodAssetVersions = self->_previousKnownGoodAssetVersions;
  v13[2] = v7;
  v13[3] = assetVersionsUnderEvaluation;
  v12[3] = @"NewAssetVersions";
  v12[4] = @"PreviousAssetVersions";
  v13[4] = previousKnownGoodAssetVersions;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:5];

  v11 = +[NSDistributedNotificationCenter defaultCenter];
  [v11 postNotificationName:@"com.apple.centaurid.PowerTableEvaluation" object:0 userInfo:v10];
}

- (void)startTimer
{
  state = self->_state;
  if (state == 1)
  {
    v5 = &CENPowerTableEvaluationReadinessTimeout;
  }

  else
  {
    if (state != 3)
    {
      v21 = sub_100025204();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100029000(self, a2, v21);
      }

      abort_report_np();
      goto LABEL_20;
    }

    v5 = &CENPowerTableEvaluationVotingTimeout;
  }

  v6 = *v5;
  objc_initWeak(&location, self);
  if (self->_timer)
  {
    v7 = sub_100025204();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [objc_opt_class() description];
      v9 = NSStringFromSelector(a2);
      *buf = 138543874;
      v26 = v8;
      v27 = 2114;
      v28 = v9;
      v29 = 2048;
      v30 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: resheduling: %f seconds", buf, 0x20u);
    }

    dispatch_suspend(self->_timer);
    goto LABEL_13;
  }

  v10 = sub_100025204();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(a2);
    *buf = 138543874;
    v26 = v11;
    v27 = 2114;
    v28 = v12;
    v29 = 2048;
    v30 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: creating: %f seconds", buf, 0x20u);
  }

  v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  timer = self->_timer;
  self->_timer = v13;

  v15 = self->_timer;
  if (v15)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100003BF0;
    v22[3] = &unk_10005C750;
    objc_copyWeak(&v23, &location);
    dispatch_source_set_event_handler(v15, v22);
    objc_destroyWeak(&v23);
LABEL_13:
    v16 = self->_timer;
    v17 = dispatch_time(0, (v6 * 1000000000.0));
    dispatch_source_set_timer(v16, v17, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_resume(self->_timer);
    objc_destroyWeak(&location);
    return;
  }

  v18 = sub_100025204();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = [objc_opt_class() description];
    v20 = NSStringFromSelector(a2);
    sub_100028F8C(v19, v20, buf, v18);
  }

  abort_report_np();
LABEL_20:
  __break(1u);
}

- (void)cancelTimer
{
  if (self->_timer)
  {
    v4 = sub_100025204();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [objc_opt_class() description];
      v6 = NSStringFromSelector(a2);
      v8 = 138543618;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: canceling", &v8, 0x16u);
    }

    dispatch_source_cancel(self->_timer);
    timer = self->_timer;
    self->_timer = 0;
  }
}

- (void)handleTimeout
{
  state = self->_state;
  if (state == 3)
  {
    v5 = [objc_opt_class() voteSetAsString:3 - self->_clientVotes];
    v11 = sub_100025204();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v20 = [objc_opt_class() description];
      v21 = NSStringFromSelector(a2);
      v22 = [objc_opt_class() voteSetAsString:self->_clientVotes];
      *buf = 138544130;
      v24 = v20;
      v25 = 2114;
      v26 = v21;
      v27 = 2114;
      v28 = v22;
      v29 = 2114;
      v30 = v5;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: timed out waiting for votes: received %{public}@, missing %{public}@", buf, 0x2Au);
    }

    v12 = [NSString stringWithFormat:@"timedOutWaitingForVotesFromClients%@", v5];
    sessionEndReason = self->_sessionEndReason;
    self->_sessionEndReason = v12;

    self->_acceptingClientVotes = 0;
    v9 = self;
    v10 = 4;
    goto LABEL_9;
  }

  if (state == 1)
  {
    v5 = [objc_opt_class() voteSetAsString:3 - self->_clientReadiness];
    v6 = sub_100025204();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v17 = [objc_opt_class() description];
      v18 = NSStringFromSelector(a2);
      v19 = [objc_opt_class() voteSetAsString:self->_clientReadiness];
      *buf = 138544130;
      v24 = v17;
      v25 = 2114;
      v26 = v18;
      v27 = 2114;
      v28 = v19;
      v29 = 2114;
      v30 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: timed out waiting for readiness: received %{public}@, missing %{public}@", buf, 0x2Au);
    }

    v7 = [NSString stringWithFormat:@"timedOutWaitingForReadinessFromClients%@", v5];
    v8 = self->_sessionEndReason;
    self->_sessionEndReason = v7;

    self->_acceptingClientReadiness = 0;
    v9 = self;
    v10 = 6;
LABEL_9:
    [(PowerTableEvaluationSession *)v9 setState:v10];
    goto LABEL_10;
  }

  v5 = sub_100025204();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [objc_opt_class() description];
    v15 = NSStringFromSelector(a2);
    v16 = sub_1000107A4(self->_state);
    *buf = 138543874;
    v24 = v14;
    v25 = 2114;
    v26 = v15;
    v27 = 2112;
    v28 = v16;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: state %@, ignoring timeout", buf, 0x20u);
  }

LABEL_10:
}

- (void)performChipLevelValidation
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = WeakRetained;
  if (!WeakRetained)
  {
    v9 = sub_100025204();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000290CC();
    }

    v6 = @"noDelegate";
    goto LABEL_9;
  }

  v16 = 0;
  v5 = [WeakRetained performChipLevelValidationForPowerTableEvaluationSession:self reason:&v16];
  v6 = v16;
  if (v5 == 2)
  {
LABEL_9:
    sessionEndReason = self->_sessionEndReason;
    self->_sessionEndReason = @"chipLevelValidationDeferred";

    if (v6)
    {
      v11 = [(NSString *)self->_sessionEndReason stringByAppendingFormat:@":%@", v6];
      v12 = self->_sessionEndReason;
      self->_sessionEndReason = v11;
    }

    v7 = self;
    v8 = 6;
    goto LABEL_15;
  }

  if (v5 == 1)
  {
    v13 = self->_sessionEndReason;
    self->_sessionEndReason = @"chipLevelValidationFailed";

    if (v6)
    {
      v14 = [(NSString *)self->_sessionEndReason stringByAppendingFormat:@":%@", v6];
      v15 = self->_sessionEndReason;
      self->_sessionEndReason = v14;
    }

    v7 = self;
    v8 = 4;
    goto LABEL_15;
  }

  if (!v5)
  {
    self->_acceptingClientVotes = 1;
    v7 = self;
    v8 = 3;
LABEL_15:
    [(PowerTableEvaluationSession *)v7 setState:v8];
  }
}

- (void)sessionWillEnd
{
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v10, 0x16u);
  }

  [(PowerTableEvaluationSession *)self log];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained powerTableEvaluationSessionWillEnd:self state:self->_state reason:self->_sessionEndReason];
  }

  else
  {
    v9 = sub_100025204();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000290CC();
    }
  }
}

- (void)sessionDidEnd
{
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v10, 0x16u);
  }

  [(PowerTableEvaluationSession *)self log];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained powerTableEvaluationSessionDidEnd:self state:self->_state];
  }

  else
  {
    v9 = sub_100025204();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000290CC();
    }
  }
}

+ (id)voteSetAsString:(unint64_t)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableString);
  v5 = 0;
  v6 = 1;
  do
  {
    v7 = v6;
    if (((1 << v5) & v3) != 0)
    {
      if ([v4 length])
      {
        [v4 appendString:{@", "}];
      }

      v8 = sub_1000107CC(v5);
      [v4 appendString:v8];
    }

    v6 = 0;
    v5 = 1;
  }

  while ((v7 & 1) != 0);
  v9 = [NSString stringWithFormat:@"{%@}", v4];

  return v9;
}

@end