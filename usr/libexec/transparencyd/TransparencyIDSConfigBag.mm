@interface TransparencyIDSConfigBag
+ (TransparencyIDSConfigBag)sharedInstance;
- (TransparencyIDSConfigBag)init;
- (id)eligibilityPeerPresentRate;
- (id)eligibilityPresentRate;
- (id)eligibilityReportInterval;
- (id)eligibilitySampleInterval;
- (id)eligibilitySampleNumber;
- (id)kbInfoArticleUrl;
- (int)ktFailureInteger:(id)a3 defaultValue:(int)a4;
@end

@implementation TransparencyIDSConfigBag

+ (TransparencyIDSConfigBag)sharedInstance
{
  if (qword_10039CDD8 != -1)
  {
    sub_10025F958();
  }

  v3 = qword_10039CDE0;

  return v3;
}

- (TransparencyIDSConfigBag)init
{
  v8.receiver = self;
  v8.super_class = TransparencyIDSConfigBag;
  v2 = [(TransparencyIDSConfigBag *)&v8 init];
  if (v2)
  {
    v3 = +[IDSServerBag sharedInstance];
    [(TransparencyIDSConfigBag *)v2 setBag:v3];

    v4 = objc_alloc_init(NSOperationQueue);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (id)kbInfoArticleUrl
{
  v2 = [(TransparencyIDSConfigBag *)self bag];
  v3 = [v2 objectForKey:@"kt-disable-info-url"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)eligibilityReportInterval
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(TransparencyIDSConfigBag *)self bag];
    v4 = [v3 objectForKey:@"ckv-reliability-report-interval"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = _IDSIDProtocolVersionNumber();
      v6 = [v5 stringValue];
      v12 = 0;
      v7 = [TransparencyIDSConfigBagSupport parseConfigInput:v4 forVersion:v6 error:&v12];
      v8 = v12;

      if (v7)
      {
        v9 = v7;
      }

      else
      {
        if (qword_10039CDE8 != -1)
        {
          sub_10025F96C();
        }

        v10 = qword_10039CDF0;
        if (os_log_type_enabled(qword_10039CDF0, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v14 = v8;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error parsing eligibility config bag value %{public}@", buf, 0xCu);
        }

        v9 = &off_10033D068;
      }
    }

    else
    {
      v9 = &off_10033D068;
    }
  }

  else
  {
    v9 = &off_10033D068;
  }

  return v9;
}

- (id)eligibilitySampleInterval
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(TransparencyIDSConfigBag *)self bag];
    v4 = [v3 objectForKey:@"ckv-reliability-sample-interval"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = _IDSIDProtocolVersionNumber();
      v6 = [v5 stringValue];
      v12 = 0;
      v7 = [TransparencyIDSConfigBagSupport parseConfigInput:v4 forVersion:v6 error:&v12];
      v8 = v12;

      if (v7)
      {
        v9 = v7;
      }

      else
      {
        if (qword_10039CDE8 != -1)
        {
          sub_10025F994();
        }

        v10 = qword_10039CDF0;
        if (os_log_type_enabled(qword_10039CDF0, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v14 = v8;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error parsing eligibility config bag value %{public}@", buf, 0xCu);
        }

        v9 = &off_10033D068;
      }
    }

    else
    {
      v9 = &off_10033D068;
    }
  }

  else
  {
    v9 = &off_10033D068;
  }

  return v9;
}

- (id)eligibilityPresentRate
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(TransparencyIDSConfigBag *)self bag];
    v4 = [v3 objectForKey:@"ckv-reliability-present-rate"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = _IDSIDProtocolVersionNumber();
      v6 = [v5 stringValue];
      v12 = 0;
      v7 = [TransparencyIDSConfigBagSupport parseConfigInput:v4 forVersion:v6 error:&v12];
      v8 = v12;

      if (v7)
      {
        v9 = v7;
      }

      else
      {
        if (qword_10039CDE8 != -1)
        {
          sub_10025F9BC();
        }

        v10 = qword_10039CDF0;
        if (os_log_type_enabled(qword_10039CDF0, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v14 = v8;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error parsing eligibility config bag value %{public}@", buf, 0xCu);
        }

        v9 = &off_10033D068;
      }
    }

    else
    {
      v9 = &off_10033D068;
    }
  }

  else
  {
    v9 = &off_10033D068;
  }

  return v9;
}

- (id)eligibilityPeerPresentRate
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(TransparencyIDSConfigBag *)self bag];
    v4 = [v3 objectForKey:@"ckv-reliability-peerverification-present-rate"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = _IDSIDProtocolVersionNumber();
      v6 = [v5 stringValue];
      v12 = 0;
      v7 = [TransparencyIDSConfigBagSupport parseConfigInput:v4 forVersion:v6 error:&v12];
      v8 = v12;

      if (v7)
      {
        v9 = v7;
      }

      else
      {
        if (qword_10039CDE8 != -1)
        {
          sub_10025F9E4();
        }

        v10 = qword_10039CDF0;
        if (os_log_type_enabled(qword_10039CDF0, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v14 = v8;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error parsing eligibility config bag value %{public}@", buf, 0xCu);
        }

        v9 = &off_10033D068;
      }
    }

    else
    {
      v9 = &off_10033D068;
    }
  }

  else
  {
    v9 = &off_10033D068;
  }

  return v9;
}

- (id)eligibilitySampleNumber
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(TransparencyIDSConfigBag *)self bag];
    v4 = [v3 objectForKey:@"ckv-reliability-sample-number"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = _IDSIDProtocolVersionNumber();
      v6 = [v5 stringValue];
      v12 = 0;
      v7 = [TransparencyIDSConfigBagSupport parseConfigInput:v4 forVersion:v6 error:&v12];
      v8 = v12;

      if (v7)
      {
        v9 = v7;
      }

      else
      {
        if (qword_10039CDE8 != -1)
        {
          sub_10025FA0C();
        }

        v10 = qword_10039CDF0;
        if (os_log_type_enabled(qword_10039CDF0, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v14 = v8;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error parsing eligibility config bag value %{public}@", buf, 0xCu);
        }

        v9 = &off_10033D068;
      }
    }

    else
    {
      v9 = &off_10033D068;
    }
  }

  else
  {
    v9 = &off_10033D068;
  }

  return v9;
}

- (int)ktFailureInteger:(id)a3 defaultValue:(int)a4
{
  v6 = a3;
  v7 = [(TransparencyIDSConfigBag *)self bag];
  v8 = [v7 objectForKey:@"kt-enforcement-failure-reporting"];

  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ![v8 BOOLValue])
  {
    a4 = -1;
  }

  else
  {
    v9 = [(TransparencyIDSConfigBag *)self bag];
    v10 = [v9 objectForKey:v6];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 intValue];
      if (v11 < 0)
      {
        a4 = -1;
      }

      else
      {
        a4 = v11;
      }
    }
  }

  return a4;
}

@end