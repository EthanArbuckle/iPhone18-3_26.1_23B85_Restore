@interface FMRequestRegister
- (BOOL)canReplace:(id)a3;
- (BOOL)canRequestBeRetriedNow;
- (FMRequestRegister)initWithProvider:(id)a3 andCause:(id)a4;
- (id)_informationDigestForDeviceInfoDictionary:(id)a3 keysToExclude:(id)a4;
- (id)flattenedArrayFromObject:(id)a3 parentIndices:(id)a4;
- (id)newRequestBody;
- (id)registrationInformationDigestIncludingKeys;
- (id)requestUrl;
- (id)retryCauseExclusions;
- (void)deinitializeRequest;
@end

@implementation FMRequestRegister

- (void)deinitializeRequest
{
  v2.receiver = self;
  v2.super_class = FMRequestRegister;
  [(FMRequest *)&v2 deinitializeRequest];
}

- (FMRequestRegister)initWithProvider:(id)a3 andCause:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = FMRequestRegister;
  v7 = [(FMRequest *)&v14 initWithProvider:a3];
  v8 = v7;
  if (v7)
  {
    [(FMRequestRegister *)v7 setCause:v6];
    v9 = [NSMutableSet setWithObject:v6];
    [(FMRequestRegister *)v8 setRegisteredCauses:v9];

    v10 = [(FMRequestRegister *)v8 newRequestBody];
    [(FMRequestRegister *)v8 setRequestBody:v10];

    if ([v6 isEqualToString:@"wristStateChanged"])
    {
      v11 = +[PreferencesMgr sharedInstance];
      v12 = [v11 wristRegisterRetryCount];
LABEL_6:
      [(FMRequestRegister *)v8 setNonEssentialRetryCount:v12];

      goto LABEL_7;
    }

    if ([v6 isEqualToString:@"networkStateChanged"])
    {
      v11 = +[PreferencesMgr sharedInstance];
      v12 = [v11 networkRegisterRetryCount];
      goto LABEL_6;
    }
  }

LABEL_7:

  return v8;
}

- (id)requestUrl
{
  v2 = [(FMRequest *)self provider];
  v3 = [v2 formattedURLForTemplate:@"${scheme}://${hostname}/fmipservice/${service}/${dsid}/${udid}/register"];

  return v3;
}

- (id)newRequestBody
{
  v12.receiver = self;
  v12.super_class = FMRequestRegister;
  v3 = [(FMRequest *)&v12 requestBody];
  v4 = [(FMRequest *)self provider];
  v5 = [v4 registerDeviceContext];

  v6 = [(FMRequestRegister *)self cause];
  [v5 fm_safelyMapKey:@"cause" toObject:v6];

  v7 = [(FMRequestRegister *)self registeredCauses];
  v8 = [v7 allObjects];
  [v5 fm_safelyMapKey:@"registeredCauses" toObject:v8];

  [v3 setObject:v5 forKeyedSubscript:@"deviceContext"];
  v9 = [(FMRequest *)self provider];
  v10 = [v9 fullDeviceInfo];
  [v3 setObject:v10 forKeyedSubscript:@"deviceInfo"];

  return v3;
}

- (BOOL)canRequestBeRetriedNow
{
  v3 = [(FMRequestRegister *)self nonEssentialRetryCount];
  [(FMRequestRegister *)self setNonEssentialRetryCount:v3 - 1];
  if (v3 < 1)
  {
    return 0;
  }

  v5.receiver = self;
  v5.super_class = FMRequestRegister;
  return [(FMRequest *)&v5 canRequestBeRetriedNow];
}

- (BOOL)canReplace:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_14:
      v10 = [(FMRequest *)self delegate];
      v15 = [v4 delegate];
      v11 = v10 == v15;

      goto LABEL_15;
    }

    v5 = v4;
    v6 = [(FMRequestRegister *)self registeredCauses];
    v7 = [v5 registeredCauses];
    v8 = [v7 allObjects];
    [v6 addObjectsFromArray:v8];

    v9 = [(FMRequestRegister *)self registeredCauses];
    if ([v9 containsObject:@"wristStateChanged"])
    {
    }

    else
    {
      v12 = [(FMRequestRegister *)self registeredCauses];
      v13 = [v12 containsObject:@"networkStateChanged"];

      if (!v13)
      {
LABEL_11:
        v14 = sub_100002830();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Replaced FMRequestRegister with new register.", v17, 2u);
        }

        goto LABEL_14;
      }
    }

    -[FMRequestRegister setNonEssentialRetryCount:](self, "setNonEssentialRetryCount:", [v5 nonEssentialRetryCount]);
    goto LABEL_11;
  }

  v10 = sub_100002830();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Request not FMRequestRegister or FMRequestQueueCheck. Not replacing.", buf, 2u);
  }

  v11 = 0;
LABEL_15:

  return v11;
}

- (id)retryCauseExclusions
{
  v2 = [NSSet alloc];
  v6[0] = @"wristStateChanged";
  v6[1] = @"networkStateChanged";
  v3 = [NSArray arrayWithObjects:v6 count:2];
  v4 = [v2 initWithArray:v3];

  return v4;
}

- (id)registrationInformationDigestIncludingKeys
{
  v3 = [(FMRequestRegister *)self requestBody];
  v4 = [v3 objectForKeyedSubscript:@"deviceInfo"];

  v8[0] = @"lastActiveTime";
  v8[1] = @"processId";
  v8[2] = @"unlockState";
  v8[3] = @"lastOnWristTime";
  v8[4] = @"wristStatus";
  v8[5] = @"connectionStatus";
  v5 = [NSArray arrayWithObjects:v8 count:6];
  v6 = [(FMRequestRegister *)self _informationDigestForDeviceInfoDictionary:v4 keysToExclude:v5];

  return v6;
}

- (id)_informationDigestForDeviceInfoDictionary:(id)a3 keysToExclude:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [v6 mutableCopy];
  [v9 removeObjectsForKeys:v7];
  v10 = [v9 objectForKeyedSubscript:@"otherDevices"];
  v11 = +[NSMutableArray array];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100024F34;
  v38[3] = &unk_10005E3F0;
  v36 = v7;
  v39 = v36;
  v12 = v11;
  v40 = v12;
  [v10 enumerateObjectsUsingBlock:v38];
  [v9 setObject:v12 forKeyedSubscript:@"otherDevices"];
  v13 = [(FMRequestRegister *)self flattenedArrayFromObject:v9 parentIndices:&off_1000631C0];
  v14 = [v13 mutableCopy];

  v32 = self;
  v15 = [(FMRequest *)self provider];
  v16 = [v15 lastForcedRegisterTimePrefKey];

  v17 = [FMPreferencesUtil dateForKey:v16 inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
  [v14 addObject:@"lastForcedTime"];
  if (!v17)
  {
    [v14 addObject:@"null"];
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_13:
    v25 = 0;
    goto LABEL_14;
  }

  v18 = [NSString stringWithFormat:@"%@", v17];
  [v14 addObject:v18];

  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_3:
  v33 = v12;
  v34 = v16;
  v19 = v6;
  v20 = v8;
  v35 = v10;
  v21 = [v14 componentsJoinedByString:{@", "}];
  v22 = [NSRegularExpression regularExpressionWithPattern:@"authToken.* options:" error:1, 0];
  v23 = [v22 stringByReplacingMatchesInString:v21 options:0 range:0 withTemplate:{objc_msgSend(v21, "length"), @"authToken_redacted, "}];
  v24 = sub_100002830();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    sub_100038AA4(v23, v24);
  }

  v37 = 0;
  v25 = [NSJSONSerialization dataWithJSONObject:v14 options:0 error:&v37];
  v26 = v37;
  if (v26)
  {
    v31 = v20;
    v27 = sub_100002830();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100038B1C(v32, v26, v27);
    }

    v28 = sub_10001BAE0();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_100038BCC(v23, v28);
    }

    v20 = v31;
  }

  v16 = v34;
  v10 = v35;
  v8 = v20;
  v6 = v19;
  v12 = v33;
LABEL_14:
  CC_SHA1([v25 bytes], objc_msgSend(v25, "length"), md);
  v29 = [NSData dataWithBytes:md length:20];

  objc_autoreleasePoolPop(v8);

  return v29;
}

- (id)flattenedArrayFromObject:(id)a3 parentIndices:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10002524C;
  v28 = sub_10002525C;
  v9 = &__NSArray0__struct;
  if (v7)
  {
    v9 = v7;
  }

  v29 = v9;
  v10 = +[NSMutableArray array];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v6;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100025264;
    v22[3] = &unk_10005E418;
    v23[3] = v11;
    v23[4] = v12;
    v23[0] = v10;
    v23[1] = self;
    v23[2] = &v24;
    [v13 enumerateKeysAndObjectsUsingBlock:v22];
    v14 = v23;
LABEL_7:
    v16 = *v14;
    v17 = v6;
    goto LABEL_9;
  }

  if (objc_opt_isKindOfClass())
  {
    v15 = v6;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10002539C;
    v20[3] = &unk_10005E440;
    v21[2] = &v24;
    v21[0] = v10;
    v21[1] = self;
    [v15 enumerateObjectsUsingBlock:v20];
    v14 = v21;
    goto LABEL_7;
  }

  v17 = [v25[5] componentsJoinedByString:@"_"];
  v16 = [NSString stringWithFormat:@"%@_%@", v17, v6];
  [v10 addObject:v16];
LABEL_9:

  v18 = [v10 sortedArrayUsingSelector:"compare:"];

  _Block_object_dispose(&v24, 8);

  return v18;
}

@end