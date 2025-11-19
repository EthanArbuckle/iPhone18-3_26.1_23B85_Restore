@interface APMetric
- (BOOL)validateMetricAndSetupIdentifiers:(id)a3;
- (id)_descriptionWithFormat:(id)a3;
- (id)_metric;
- (id)_purpose;
- (id)additives:(id)a3;
- (id)description;
- (id)ecServerDictionaryRepresentation;
- (id)metricRoute;
- (void)updateClientBundleID:(id)a3;
@end

@implementation APMetric

- (id)description
{
  if (!+[APSystemInternal isAppleInternalInstall])
  {
    v6 = [(APMetric *)self _descriptionWithFormat:@"%@ R: %@ M: %@ H: %@ SH: %@ O: %@, CI: %@ CX: %@ BID: %@ P: %@ IP: %@ REL: %@, ORD: %ld ENV: %@"];
    goto LABEL_54;
  }

  v3 = [NSUserDefaults alloc];
  v4 = [v3 initWithSuiteName:APDefaultsBundleID];
  if ([v4 BOOLForKey:kAPAutomationLoggingEnabled])
  {
    v51 = v4;
    if (objc_opt_respondsToSelector())
    {
      v5 = [(APMetric *)self ecServerDictionaryRepresentation];
    }

    else
    {
      v5 = 0;
    }

    v7 = +[NSISO8601DateFormatter apDefaultSharedFormatter];
    v8 = [(APMetric *)self timestamp];
    v9 = [v7 stringFromDate:v8];

    v10 = [(APMetric *)self purpose];
    v11 = [(APMetric *)self metric];
    v12 = [v5 objectForKey:kAPMetricHandle];
    v13 = [(APMetric *)self _optionsArray];
    v58 = [(APMetric *)self contentIdentifier];
    v57 = [(APMetric *)self contextIdentifier];
    v14 = [(APMetric *)self bundleIdentifier];
    v15 = v14;
    v16 = &stru_1004810B8;
    if (v14)
    {
      v16 = v14;
    }

    v55 = v16;

    v17 = [v5 objectForKey:kAPMetricPropertiesKey];
    v18 = v17;
    v50 = v5;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = +[NSDictionary dictionary];
    }

    v56 = v19;

    v20 = [(APMetric *)self internalProperties];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = +[NSDictionary dictionary];
    }

    v54 = v22;

    v23 = [(APMetric *)self relayData];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = +[NSDictionary dictionary];
    }

    v53 = v25;

    v45 = [(APMetric *)self order];
    v26 = [(APMetric *)self environment];
    if (v26)
    {
      v27 = [(APMetric *)self environment];
      v52 = [v27 componentsJoinedByString:{@", "}];
    }

    else
    {
      v52 = &stru_1004810B8;
    }

    v59[0] = @"TS";
    v28 = v9;
    if (!v9)
    {
      v28 = +[NSNull null];
    }

    v44 = v28;
    v60[0] = v28;
    v59[1] = @"R";
    v47 = [NSNumber numberWithInteger:v10];
    v60[1] = v47;
    v59[2] = @"M";
    v46 = [NSNumber numberWithInteger:v11];
    v60[2] = v46;
    v59[3] = @"H";
    v29 = v12;
    if (!v12)
    {
      v29 = +[NSNull null];
    }

    v43 = v29;
    v60[3] = v29;
    v59[4] = @"SH";
    v30 = [(APMetric *)self secondaryHandle];
    v31 = v30;
    if (!v30)
    {
      v30 = +[NSNull null];
    }

    v42 = v30;
    v60[4] = v30;
    v59[5] = @"O";
    v32 = v13;
    if (!v13)
    {
      v32 = +[NSNull null];
    }

    v49 = v9;
    v60[5] = v32;
    v59[6] = @"CI";
    v33 = v58;
    if (!v58)
    {
      v33 = +[NSNull null];
    }

    v48 = v12;
    v60[6] = v33;
    v59[7] = @"CX";
    v34 = v57;
    if (!v57)
    {
      v34 = +[NSNull null];
    }

    v35 = v13;
    v60[7] = v34;
    v60[8] = v55;
    v59[8] = @"BID";
    v59[9] = @"P";
    v36 = v56;
    if (!v56)
    {
      v36 = +[NSNull null];
    }

    v60[9] = v36;
    v59[10] = @"IP";
    v37 = v54;
    if (!v54)
    {
      v37 = +[NSNull null];
    }

    v60[10] = v37;
    v59[11] = @"ORD";
    v38 = [NSNumber numberWithInteger:v45];
    v60[11] = v38;
    v60[12] = v53;
    v59[12] = @"REL";
    v59[13] = @"ENV";
    v60[13] = v52;
    v39 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:14];

    if (!v54)
    {
    }

    v4 = v51;
    if (!v56)
    {
    }

    v40 = v35;
    if (!v57)
    {
    }

    if (!v58)
    {
    }

    if (v35)
    {
      if (v31)
      {
LABEL_48:

        if (!v48)
        {
        }

        if (!v49)
        {
        }

        v6 = [v39 jsonStringWithOptions:1];

        goto LABEL_53;
      }
    }

    else
    {

      if (v31)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_48;
  }

  v6 = [(APMetric *)self _descriptionWithFormat:@"%@ Purpose: %@ Metric: %@ H: %@ SH: %@ Options: %@, CID: %@ CX: %@ BID: %@ P: %@ IP: %@ REL: %@, ORD: %ld ENV: %@"];
LABEL_53:

LABEL_54:

  return v6;
}

- (id)_purpose
{
  v3 = [(APMetric *)self metricRoute];
  v4 = [v3 name];
  v5 = [NSString stringWithFormat:@"%@ (%ld)", v4, [(APMetric *)self purpose]];

  return v5;
}

- (id)metricRoute
{
  v2 = [(APMetric *)self purpose];

  return [APMetricPurposeRegistry metricRouteForPurpose:v2];
}

- (id)_metric
{
  v3 = [(APMetric *)self metricRoute];
  v4 = [(APMetric *)self metric];
  v5 = [v3 stringForMetric:v4];
  v6 = [NSString stringWithFormat:@"%@ (%ld)", v5, v4];

  return v6;
}

- (id)ecServerDictionaryRepresentation
{
  v3 = [NSNumber numberWithInteger:[(APMetric *)self metric]];
  v4 = kAPMetricEvent;
  v5 = [(APMetric *)self handle];
  v6 = kAPMetricHandle;
  v7 = [NSNumber numberWithInteger:[(APMetric *)self order]];
  v8 = kAPMetricOrder;
  v9 = [NSNumber numberWithUnsignedInt:[(APMetric *)self source]];
  v10 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v3, v4, v5, v6, v7, v8, v9, kAPMetricSource, 0];

  v11 = [(APMetric *)self properties];
  v12 = [v11 mutableCopy];

  if (v12)
  {
    v13 = [NSDictionary dictionaryWithDictionary:v12];
    [v10 setObject:v13 forKey:kAPMetricPropertiesKey];
  }

  v14 = [(APMetric *)self relayData];
  if (v14)
  {
    v15 = [NSDictionary dictionaryWithDictionary:v14];
    [v10 setObject:v15 forKey:kAPMetricRelaydata];
  }

  v16 = [(APMetric *)self environment];

  if (v16)
  {
    v17 = [(APMetric *)self environment];
    [v10 setObject:v17 forKey:kAPMetricEnvironment];
  }

  v18 = [(APMetric *)self trace];

  if (v18)
  {
    v19 = [(APMetric *)self trace];
    [v10 setObject:v19 forKey:kAPMetricTrace];
  }

  v20 = [(APMetric *)self branch];
  if (v20)
  {
    v21 = v20;
    v22 = [(APMetric *)self branch];
    v23 = [v22 count];

    if (v23)
    {
      v24 = [(APMetric *)self branch];
      [v10 setObject:v24 forKey:kAPMetricBranch];
    }
  }

  return v10;
}

- (BOOL)validateMetricAndSetupIdentifiers:(id)a3
{
  v4 = [(APMetric *)self purpose];
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v4;
    v6 = [(APMetric *)self metric];
    v7 = [APMetricPurposeRegistry metricRouteForPurpose:v5];
    v8 = [APMetricPurposeRegistry metricRouteForPurpose:v5];
    v9 = [v8 metricIsDefined:v6];

    if ((v9 & 1) == 0)
    {
      v10 = APLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12[0] = 67109376;
        v12[1] = v6;
        v13 = 1024;
        v14 = v5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Metric (%d) for purpose (%d) is not known!", v12, 0xEu);
      }
    }
  }

  return 1;
}

- (void)updateClientBundleID:(id)a3
{
  v9 = a3;
  if ([v9 length])
  {
    [(APMetric *)self addInternalPropertyValue:v9 forKey:kAPMetricBundleIdentifierKey];
  }

  v4 = [v9 dataUsingEncoding:4];
  v5 = [v4 sha256];
  v6 = [v5 asHexString];
  v7 = [(APMetric *)self _clientSourceIDMap];
  v8 = [v7 objectForKeyedSubscript:v6];
  -[APMetric setSource:](self, "setSource:", [v8 unsignedIntValue]);
}

- (id)_descriptionWithFormat:(id)a3
{
  v38 = a3;
  v4 = +[NSISO8601DateFormatter apLocalSharedFormatter];
  v5 = [(APMetric *)self timestamp];
  v40 = v4;
  v41 = [v4 stringFromDate:v5];

  v6 = [(APMetric *)self _purpose];
  v7 = [(APMetric *)self _metric];
  v8 = [(APMetric *)self handle];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"none";
  }

  v39 = v10;

  v46 = [(APMetric *)self _options];
  v11 = [(APMetric *)self contentIdentifier];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"none";
  }

  v45 = v13;

  v14 = [(APMetric *)self contextIdentifier];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = @"none";
  }

  v44 = v16;

  v17 = [(APMetric *)self bundleIdentifier];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"none";
  }

  v43 = v19;

  v42 = [(APMetric *)self _properties];
  v20 = [(APMetric *)self _internalProperties];
  v21 = [(APMetric *)self _relayData];
  v22 = [(APMetric *)self order];
  v23 = [(APMetric *)self environment];
  if (v23)
  {
    [(APMetric *)self environment];
    v25 = v24 = v7;
    v26 = [v25 componentsJoinedByString:{@", "}];

    v7 = v24;
  }

  else
  {
    v26 = @"none";
  }

  v27 = [(APMetric *)self secondaryHandle];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = @"none";
  }

  v30 = v29;

  v47 = 0;
  v37 = [NSString stringWithValidatedFormat:v38 validFormatSpecifiers:@"%@%@%@%@%@%@%@%@%@%@%@%@%ld%@" error:&v47, v41, v6, v7, v39, v30, v46, v45, v44, v43, v42, v20, v21, v22, v26];

  v31 = v47;
  if (v31)
  {
    v32 = v7;
    v33 = v6;
    v34 = APLogForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [v31 localizedDescription];
      *buf = 138543362;
      v49 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Error retrieving description for metric: %{public}@", buf, 0xCu);
    }

    v6 = v33;
    v7 = v32;
  }

  return v37;
}

- (id)additives:(id)a3
{
  v24 = a3;
  v4 = [(APMetric *)self timestamp];
  v22 = +[NSISO8601DateFormatter apUTCSharedFormatter];
  v23 = v4;
  v21 = [v22 stringFromDate:v4];
  v5 = +[APSystemInfo osIdentifier];
  v6 = kAPMetricOS;
  v7 = +[APSystemInfo osVersion];
  v8 = kAPMetricOSVersion;
  v9 = +[APSystemInfo longBuildVersion];
  v10 = kAPMetricOSBuild;
  v11 = +[APDeviceInfo current];
  v12 = [v11 deviceModel];
  v13 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v5, v6, v7, v8, v9, v10, v12, kAPMetricDeviceModel, 0];

  v14 = [(APMetric *)self bundleIdentifier];

  if (v14)
  {
    v15 = [(APMetric *)self bundleIdentifier];
    [v13 setObject:v15 forKey:kAPMetricClientIdentifierKey];
  }

  v16 = [(APMetric *)self handle];

  if (v16)
  {
    v17 = [(APMetric *)self handle];
    [v13 setObject:v17 forKey:kAPMetricIdentifierKey];
  }

  if (v21)
  {
    [v13 setObject:v21 forKey:kAPMetricTimestampKey];
  }

  v18 = [(APMetric *)self internalProperties];
  v19 = [NSDictionary dictionaryWithDictionary:v18];
  [v24 setObject:v19 forKey:kAPMetricInternalPropertiesKey];

  [v24 setObject:v13 forKey:@"additives"];

  return v24;
}

@end