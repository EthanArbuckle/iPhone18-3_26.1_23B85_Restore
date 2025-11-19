@interface APTimeSpentReportActivity
- (APTimeSpentReportActivity)initWithLegacyInterface:(id)a3 identifierProvider:(id)a4;
- (BOOL)runActivity:(id)a3;
- (NSMutableArray)promotedContentsReceived;
- (void)cancelActiveWork:(id)a3;
- (void)deferActivity:(id)a3 completionHandler:(id)a4;
- (void)fetchSponsorshipAdsWithActivity:(id)a3;
- (void)fetchSponsorshipAdsWithActivityIfFeatureFlagEnabled:(id)a3;
- (void)makeAggregatedTimeSpentRequests:(id)a3 activity:(id)a4;
- (void)markActivityAsFinished:(id)a3;
- (void)terminateActivity:(id)a3;
@end

@implementation APTimeSpentReportActivity

- (NSMutableArray)promotedContentsReceived
{
  promotedContentsReceived = self->_promotedContentsReceived;
  if (!promotedContentsReceived)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = self->_promotedContentsReceived;
    self->_promotedContentsReceived = v4;

    promotedContentsReceived = self->_promotedContentsReceived;
  }

  v6 = promotedContentsReceived;

  return v6;
}

- (APTimeSpentReportActivity)initWithLegacyInterface:(id)a3 identifierProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = APTimeSpentReportActivity;
  v9 = [(APTimeSpentReportActivity *)&v14 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.ap.promotedcontentd.timespentactivity.queue", v10);
    queue = v9->_queue;
    v9->_queue = v11;

    objc_storeStrong(&v9->_legacyInterface, a3);
    objc_storeStrong(&v9->_identifierProvider, a4);
  }

  return v9;
}

- (BOOL)runActivity:(id)a3
{
  v4 = a3;
  [(APTimeSpentReportActivity *)self setIsCancelled:0];
  [(APTimeSpentReportActivity *)self setDidFinishAggregateTimeSpentActivity:0];
  [(APTimeSpentReportActivity *)self setDidFinishFetchingSponsorshipAdsActivity:0];
  v5 = [(APTimeSpentReportActivity *)self promotedContentsReceived];
  [v5 removeAllObjects];

  v6 = [(APTimeSpentReportActivity *)self legacyInterface];
  v7 = [v6 aggregatedTimeSpentProcessor];
  [(APTimeSpentReportActivity *)self setAggregatedTimeSpentLegacyInterface:v7];

  objc_initWeak(&location, self);
  v8 = [(APTimeSpentReportActivity *)self queue];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1001DE3B0;
  v14 = &unk_100463FC8;
  objc_copyWeak(&v17, &location);
  v9 = v4;
  v15 = v9;
  v16 = self;
  dispatch_async(v8, &v11);

  [(APTimeSpentReportActivity *)self fetchSponsorshipAdsWithActivityIfFeatureFlagEnabled:v9, v11, v12, v13, v14];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return 1;
}

- (void)deferActivity:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = APLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Request Aggregated Time Spent Report activity deferral.", v7, 2u);
  }

  [(APTimeSpentReportActivity *)self cancelActiveWork:v5];
}

- (void)terminateActivity:(id)a3
{
  v4 = APLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Aggregated Time Spent Activity Terminated.", v5, 2u);
  }

  [(APTimeSpentReportActivity *)self cancelActiveWork:0];
}

- (void)makeAggregatedTimeSpentRequests:(id)a3 activity:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(APTimeSpentReportActivity *)self isCancelled])
  {
    if ([v6 count])
    {
      v8 = [v6 lastObject];
      objc_initWeak(&location, self);
      v9 = [(APTimeSpentReportActivity *)self aggregatedTimeSpentLegacyInterface];
      v10 = [v8 clientIdentifier];
      v11 = [v8 aggregatedTimeSpentEntries];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1001DE890;
      v13[3] = &unk_100463FF0;
      objc_copyWeak(&v17, &location);
      v12 = v8;
      v14 = v12;
      v15 = v6;
      v16 = v7;
      [v9 sendAggregatedTimeSpentMetricFor:v10 aggregatedTimeSpentEntries:v11 completionHandler:v13];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    else
    {
      [(APTimeSpentReportActivity *)self setDidFinishAggregateTimeSpentActivity:1];
      [(APTimeSpentReportActivity *)self markActivityAsFinished:v7];
    }
  }
}

- (void)cancelActiveWork:(id)a3
{
  v4 = a3;
  [(APTimeSpentReportActivity *)self setIsCancelled:1];
  v5 = [(APTimeSpentReportActivity *)self aggregatedTimeSpentLegacyInterface];

  if (v5)
  {
    v6 = [(APTimeSpentReportActivity *)self aggregatedTimeSpentLegacyInterface];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001DEAB8;
    v7[3] = &unk_100464018;
    v7[4] = self;
    v8 = v4;
    [v6 cancel:v7];
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 1);
  }
}

- (void)fetchSponsorshipAdsWithActivityIfFeatureFlagEnabled:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001DEC00;
  v6[3] = &unk_100464040;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [_TtC16promotedcontentd26SponsorshipAdFetchActivity isFetchFeatureFlagEnabledWithCompletionHandler:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)fetchSponsorshipAdsWithActivity:(id)a3
{
  v4 = a3;
  if (+[_TtC16promotedcontentd26SponsorshipAdFetchActivity isFetchAllowedForCurrentStorefront]&& ![(APTimeSpentReportActivity *)self isCancelled])
  {
    [(APTimeSpentReportActivity *)self setDidFinishFetchingSponsorshipAdsActivity:0];
    v5 = [(APTimeSpentReportActivity *)self promotedContentsReceived];
    [v5 removeAllObjects];

    v6 = +[APContext contextForSponsorshipAdRequest];
    objc_initWeak(&location, self);
    v7 = [APPCControllerCoordinator alloc];
    v8 = +[_TtC16promotedcontentd26SponsorshipAdFetchActivity appleNewsBundleIdentifier];
    v9 = +[NSUUID UUID];
    identifierProvider = self->_identifierProvider;
    v11 = +[_TtC16promotedcontentd26SponsorshipAdFetchActivity xpcConnection];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1001DEF50;
    v22[3] = &unk_100464068;
    objc_copyWeak(&v23, &location);
    v12 = sub_1003957D4(v7, v8, v9, identifierProvider, v11, v22);
    [(APTimeSpentReportActivity *)self setControllerCoordinator:v12];

    v13 = [(APTimeSpentReportActivity *)self controllerCoordinator];
    v14 = +[_TtC16promotedcontentd26SponsorshipAdFetchActivity defaultRequestTypes];
    v15 = +[_TtC16promotedcontentd26SponsorshipAdFetchActivity appleNewsBundleIdentifier];
    v16 = +[_TtC16promotedcontentd26SponsorshipAdFetchActivity defaultClientInfo];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001DEFBC;
    v18[3] = &unk_100464090;
    objc_copyWeak(&v21, &location);
    v18[4] = self;
    v17 = v6;
    v19 = v17;
    v20 = v4;
    sub_1003959BC(v13, v14, v17, v15, v16, 1, v18);

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  else
  {
    [(APTimeSpentReportActivity *)self setDidFinishFetchingSponsorshipAdsActivity:1];
    [(APTimeSpentReportActivity *)self markActivityAsFinished:v4];
  }
}

- (void)markActivityAsFinished:(id)a3
{
  v5 = a3;
  if ([(APTimeSpentReportActivity *)self didFinishFetchingSponsorshipAdsActivity])
  {
    v4 = [(APTimeSpentReportActivity *)self promotedContentsReceived];
    [v4 removeAllObjects];

    [(APTimeSpentReportActivity *)self setControllerCoordinator:0];
  }

  if ([(APTimeSpentReportActivity *)self didFinishFetchingSponsorshipAdsActivity]&& [(APTimeSpentReportActivity *)self didFinishAggregateTimeSpentActivity])
  {
    [v5 finished];
  }
}

@end