@interface APMetric
- (BOOL)validateMetricAndSetupIdentifiers:(id)identifiers;
- (id)_descriptionWithFormat:(id)format;
- (id)_metric;
- (id)_purpose;
- (id)additives:(id)additives;
- (id)description;
- (id)ecServerDictionaryRepresentation;
- (id)metricRoute;
- (void)updateClientBundleID:(id)d;
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
      ecServerDictionaryRepresentation = [(APMetric *)self ecServerDictionaryRepresentation];
    }

    else
    {
      ecServerDictionaryRepresentation = 0;
    }

    v7 = +[NSISO8601DateFormatter apDefaultSharedFormatter];
    timestamp = [(APMetric *)self timestamp];
    v9 = [v7 stringFromDate:timestamp];

    purpose = [(APMetric *)self purpose];
    metric = [(APMetric *)self metric];
    v12 = [ecServerDictionaryRepresentation objectForKey:kAPMetricHandle];
    _optionsArray = [(APMetric *)self _optionsArray];
    contentIdentifier = [(APMetric *)self contentIdentifier];
    contextIdentifier = [(APMetric *)self contextIdentifier];
    bundleIdentifier = [(APMetric *)self bundleIdentifier];
    v15 = bundleIdentifier;
    v16 = &stru_1004810B8;
    if (bundleIdentifier)
    {
      v16 = bundleIdentifier;
    }

    v55 = v16;

    v17 = [ecServerDictionaryRepresentation objectForKey:kAPMetricPropertiesKey];
    v18 = v17;
    v50 = ecServerDictionaryRepresentation;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = +[NSDictionary dictionary];
    }

    v56 = v19;

    internalProperties = [(APMetric *)self internalProperties];
    v21 = internalProperties;
    if (internalProperties)
    {
      v22 = internalProperties;
    }

    else
    {
      v22 = +[NSDictionary dictionary];
    }

    v54 = v22;

    relayData = [(APMetric *)self relayData];
    v24 = relayData;
    if (relayData)
    {
      v25 = relayData;
    }

    else
    {
      v25 = +[NSDictionary dictionary];
    }

    v53 = v25;

    order = [(APMetric *)self order];
    environment = [(APMetric *)self environment];
    if (environment)
    {
      environment2 = [(APMetric *)self environment];
      v52 = [environment2 componentsJoinedByString:{@", "}];
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
    v47 = [NSNumber numberWithInteger:purpose];
    v60[1] = v47;
    v59[2] = @"M";
    v46 = [NSNumber numberWithInteger:metric];
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
    secondaryHandle = [(APMetric *)self secondaryHandle];
    v31 = secondaryHandle;
    if (!secondaryHandle)
    {
      secondaryHandle = +[NSNull null];
    }

    v42 = secondaryHandle;
    v60[4] = secondaryHandle;
    v59[5] = @"O";
    v32 = _optionsArray;
    if (!_optionsArray)
    {
      v32 = +[NSNull null];
    }

    v49 = v9;
    v60[5] = v32;
    v59[6] = @"CI";
    v33 = contentIdentifier;
    if (!contentIdentifier)
    {
      v33 = +[NSNull null];
    }

    v48 = v12;
    v60[6] = v33;
    v59[7] = @"CX";
    v34 = contextIdentifier;
    if (!contextIdentifier)
    {
      v34 = +[NSNull null];
    }

    v35 = _optionsArray;
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
    v38 = [NSNumber numberWithInteger:order];
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
    if (!contextIdentifier)
    {
    }

    if (!contentIdentifier)
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
  metricRoute = [(APMetric *)self metricRoute];
  name = [metricRoute name];
  v5 = [NSString stringWithFormat:@"%@ (%ld)", name, [(APMetric *)self purpose]];

  return v5;
}

- (id)metricRoute
{
  purpose = [(APMetric *)self purpose];

  return [APMetricPurposeRegistry metricRouteForPurpose:purpose];
}

- (id)_metric
{
  metricRoute = [(APMetric *)self metricRoute];
  metric = [(APMetric *)self metric];
  v5 = [metricRoute stringForMetric:metric];
  v6 = [NSString stringWithFormat:@"%@ (%ld)", v5, metric];

  return v6;
}

- (id)ecServerDictionaryRepresentation
{
  v3 = [NSNumber numberWithInteger:[(APMetric *)self metric]];
  v4 = kAPMetricEvent;
  handle = [(APMetric *)self handle];
  v6 = kAPMetricHandle;
  v7 = [NSNumber numberWithInteger:[(APMetric *)self order]];
  v8 = kAPMetricOrder;
  v9 = [NSNumber numberWithUnsignedInt:[(APMetric *)self source]];
  v10 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v3, v4, handle, v6, v7, v8, v9, kAPMetricSource, 0];

  properties = [(APMetric *)self properties];
  v12 = [properties mutableCopy];

  if (v12)
  {
    v13 = [NSDictionary dictionaryWithDictionary:v12];
    [v10 setObject:v13 forKey:kAPMetricPropertiesKey];
  }

  relayData = [(APMetric *)self relayData];
  if (relayData)
  {
    v15 = [NSDictionary dictionaryWithDictionary:relayData];
    [v10 setObject:v15 forKey:kAPMetricRelaydata];
  }

  environment = [(APMetric *)self environment];

  if (environment)
  {
    environment2 = [(APMetric *)self environment];
    [v10 setObject:environment2 forKey:kAPMetricEnvironment];
  }

  trace = [(APMetric *)self trace];

  if (trace)
  {
    trace2 = [(APMetric *)self trace];
    [v10 setObject:trace2 forKey:kAPMetricTrace];
  }

  branch = [(APMetric *)self branch];
  if (branch)
  {
    v21 = branch;
    branch2 = [(APMetric *)self branch];
    v23 = [branch2 count];

    if (v23)
    {
      branch3 = [(APMetric *)self branch];
      [v10 setObject:branch3 forKey:kAPMetricBranch];
    }
  }

  return v10;
}

- (BOOL)validateMetricAndSetupIdentifiers:(id)identifiers
{
  purpose = [(APMetric *)self purpose];
  if ((purpose & 0x8000000000000000) == 0)
  {
    v5 = purpose;
    metric = [(APMetric *)self metric];
    v7 = [APMetricPurposeRegistry metricRouteForPurpose:v5];
    v8 = [APMetricPurposeRegistry metricRouteForPurpose:v5];
    v9 = [v8 metricIsDefined:metric];

    if ((v9 & 1) == 0)
    {
      v10 = APLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12[0] = 67109376;
        v12[1] = metric;
        v13 = 1024;
        v14 = v5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Metric (%d) for purpose (%d) is not known!", v12, 0xEu);
      }
    }
  }

  return 1;
}

- (void)updateClientBundleID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    [(APMetric *)self addInternalPropertyValue:dCopy forKey:kAPMetricBundleIdentifierKey];
  }

  v4 = [dCopy dataUsingEncoding:4];
  sha256 = [v4 sha256];
  asHexString = [sha256 asHexString];
  _clientSourceIDMap = [(APMetric *)self _clientSourceIDMap];
  v8 = [_clientSourceIDMap objectForKeyedSubscript:asHexString];
  -[APMetric setSource:](self, "setSource:", [v8 unsignedIntValue]);
}

- (id)_descriptionWithFormat:(id)format
{
  formatCopy = format;
  v4 = +[NSISO8601DateFormatter apLocalSharedFormatter];
  timestamp = [(APMetric *)self timestamp];
  v40 = v4;
  v41 = [v4 stringFromDate:timestamp];

  _purpose = [(APMetric *)self _purpose];
  _metric = [(APMetric *)self _metric];
  handle = [(APMetric *)self handle];
  v9 = handle;
  if (handle)
  {
    v10 = handle;
  }

  else
  {
    v10 = @"none";
  }

  v39 = v10;

  _options = [(APMetric *)self _options];
  contentIdentifier = [(APMetric *)self contentIdentifier];
  v12 = contentIdentifier;
  if (contentIdentifier)
  {
    v13 = contentIdentifier;
  }

  else
  {
    v13 = @"none";
  }

  v45 = v13;

  contextIdentifier = [(APMetric *)self contextIdentifier];
  v15 = contextIdentifier;
  if (contextIdentifier)
  {
    v16 = contextIdentifier;
  }

  else
  {
    v16 = @"none";
  }

  v44 = v16;

  bundleIdentifier = [(APMetric *)self bundleIdentifier];
  v18 = bundleIdentifier;
  if (bundleIdentifier)
  {
    v19 = bundleIdentifier;
  }

  else
  {
    v19 = @"none";
  }

  v43 = v19;

  _properties = [(APMetric *)self _properties];
  _internalProperties = [(APMetric *)self _internalProperties];
  _relayData = [(APMetric *)self _relayData];
  order = [(APMetric *)self order];
  environment = [(APMetric *)self environment];
  if (environment)
  {
    [(APMetric *)self environment];
    v25 = v24 = _metric;
    v26 = [v25 componentsJoinedByString:{@", "}];

    _metric = v24;
  }

  else
  {
    v26 = @"none";
  }

  secondaryHandle = [(APMetric *)self secondaryHandle];
  v28 = secondaryHandle;
  if (secondaryHandle)
  {
    v29 = secondaryHandle;
  }

  else
  {
    v29 = @"none";
  }

  v30 = v29;

  v47 = 0;
  v37 = [NSString stringWithValidatedFormat:formatCopy validFormatSpecifiers:@"%@%@%@%@%@%@%@%@%@%@%@%@%ld%@" error:&v47, v41, _purpose, _metric, v39, v30, _options, v45, v44, v43, _properties, _internalProperties, _relayData, order, v26];

  v31 = v47;
  if (v31)
  {
    v32 = _metric;
    v33 = _purpose;
    v34 = APLogForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v31 localizedDescription];
      *buf = 138543362;
      v49 = localizedDescription;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Error retrieving description for metric: %{public}@", buf, 0xCu);
    }

    _purpose = v33;
    _metric = v32;
  }

  return v37;
}

- (id)additives:(id)additives
{
  additivesCopy = additives;
  timestamp = [(APMetric *)self timestamp];
  v22 = +[NSISO8601DateFormatter apUTCSharedFormatter];
  v23 = timestamp;
  v21 = [v22 stringFromDate:timestamp];
  v5 = +[APSystemInfo osIdentifier];
  v6 = kAPMetricOS;
  v7 = +[APSystemInfo osVersion];
  v8 = kAPMetricOSVersion;
  v9 = +[APSystemInfo longBuildVersion];
  v10 = kAPMetricOSBuild;
  v11 = +[APDeviceInfo current];
  deviceModel = [v11 deviceModel];
  v13 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v5, v6, v7, v8, v9, v10, deviceModel, kAPMetricDeviceModel, 0];

  bundleIdentifier = [(APMetric *)self bundleIdentifier];

  if (bundleIdentifier)
  {
    bundleIdentifier2 = [(APMetric *)self bundleIdentifier];
    [v13 setObject:bundleIdentifier2 forKey:kAPMetricClientIdentifierKey];
  }

  handle = [(APMetric *)self handle];

  if (handle)
  {
    handle2 = [(APMetric *)self handle];
    [v13 setObject:handle2 forKey:kAPMetricIdentifierKey];
  }

  if (v21)
  {
    [v13 setObject:v21 forKey:kAPMetricTimestampKey];
  }

  internalProperties = [(APMetric *)self internalProperties];
  v19 = [NSDictionary dictionaryWithDictionary:internalProperties];
  [additivesCopy setObject:v19 forKey:kAPMetricInternalPropertiesKey];

  [additivesCopy setObject:v13 forKey:@"additives"];

  return additivesCopy;
}

@end