@interface APAttributionRequest
- (NSDictionary)payloadForRequestBodyABCLog;
- (NSDictionary)payloadForRequestHeaderABCLog;
- (id)requestBody;
- (id)requestHeader;
- (void)addCapData:(id)a3;
- (void)addMetaData:(id)a3;
- (void)loadDeviceInfo;
- (void)loadIDAccountDetails;
@end

@implementation APAttributionRequest

- (void)loadDeviceInfo
{
  v13 = +[NSISO8601DateFormatter apDefaultSharedFormatter];
  v3 = +[NSDate date];
  v4 = [v13 stringFromDate:v3];
  [(APAttributionRequest *)self setTimestamp:v4];

  [(APAttributionRequest *)self setDaemonBundleId:@"com.apple.ap.promotedcontentd"];
  v5 = +[APDeviceInfo current];
  v6 = +[APIDAccountProvider privateUserAccount];
  v7 = [v6 storefront];
  v8 = [v5 userAgentStringForBundleID:@"com.apple.ap.promotedcontentd" storefront:v7];
  [(APAttributionRequest *)self setUserAgent:v8];

  v9 = [v5 systemName];
  [(APAttributionRequest *)self setOsPlatform:v9];

  v10 = [v5 systemVersion];
  [(APAttributionRequest *)self setOsVersion:v10];

  v11 = [v5 buildVersion];
  [(APAttributionRequest *)self setOsBuild:v11];

  v12 = [v5 deviceModel];
  [(APAttributionRequest *)self setDevice:v12];
}

- (void)loadIDAccountDetails
{
  v6 = +[APIDAccountProvider privateUserAccount];
  v3 = [v6 toroID];
  [(APAttributionRequest *)self setToroId:v3];

  v4 = [v6 anonymousDemandID];
  [(APAttributionRequest *)self setAnonymousDemandId:v4];

  v5 = [v6 storefront];
  [(APAttributionRequest *)self setStorefront:v5];
}

- (void)addCapData:(id)a3
{
  v6 = a3;
  -[APAttributionRequest setAttributionDownloadType:](self, "setAttributionDownloadType:", [v6 attributionDownloadType]);
  [v6 searchAdClickTimestamp];
  [(APAttributionRequest *)self setSearchAdClickTimestamp:?];
  -[APAttributionRequest setAttributionDownloadType:](self, "setAttributionDownloadType:", [v6 attributionDownloadType]);
  [v6 downloadClickTimestamp];
  [(APAttributionRequest *)self setDownloadClickTimestamp:?];
  [v6 downloadClickTimestamp];
  if (v4 != 0.0)
  {
    [(APAttributionRequest *)self setAttributionMetadataExistsOnDevice:1];
  }

  v5 = [v6 adMetadata];
  [(APAttributionRequest *)self setAdMetadata:v5];
}

- (void)addMetaData:(id)a3
{
  v15 = a3;
  -[APAttributionRequest setAttributionMetadataExistsOnDevice:](self, "setAttributionMetadataExistsOnDevice:", [v15 isAttributed]);
  v4 = +[NSISO8601DateFormatter apDefaultSharedFormatter];
  v5 = [v15 purchaseDate];
  [(APAttributionRequest *)self setPurchaseTimestamp:v5];

  v6 = [v15 impressionDate];
  v7 = [v4 dateFromString:v6];
  [v7 timeIntervalSince1970];
  v9 = v8;

  if (v9 > 0.0)
  {
    [(APAttributionRequest *)self setIAdImpressionTimestamp:v9];
  }

  v10 = [v15 conversionDate];
  v11 = [v4 dateFromString:v10];
  [v11 timeIntervalSince1970];
  v13 = v12;

  if (v13 > 0.0)
  {
    [(APAttributionRequest *)self setIAdConversionTimestamp:v13];
  }

  v14 = [v15 adamID];
  [(APAttributionRequest *)self setAdamId:v14];
}

- (id)requestHeader
{
  v3 = [(APAttributionRequest *)self timestamp];
  if (!v3)
  {
    goto LABEL_19;
  }

  v4 = v3;
  v5 = [(APAttributionRequest *)self osBuild];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v5;
  v7 = [(APAttributionRequest *)self osPlatform];
  if (!v7)
  {
LABEL_17:

LABEL_18:
LABEL_19:
    v22 = 0;
    goto LABEL_20;
  }

  v8 = v7;
  v9 = [(APAttributionRequest *)self osVersion];
  if (!v9)
  {
LABEL_16:

    goto LABEL_17;
  }

  v10 = v9;
  v11 = [(APAttributionRequest *)self storefront];
  if (!v11)
  {
LABEL_15:

    goto LABEL_16;
  }

  v12 = v11;
  v13 = [(APAttributionRequest *)self daemonBundleId];
  if (!v13)
  {
LABEL_14:

    goto LABEL_15;
  }

  v14 = v13;
  v15 = [(APAttributionRequest *)self userAgent];
  if (!v15)
  {

    goto LABEL_14;
  }

  v16 = v15;
  v17 = [(APAttributionRequest *)self mescalSignature];
  if (v17 || ([(APAttributionRequest *)self fpdiSignature], (v37 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = [(APAttributionRequest *)self mescalSignature];
    if (v18)
    {
      v19 = v18;
      v20 = [(APAttributionRequest *)self fpdiSignature];
      v38 = v20 != 0;

      v21 = v38;
      if (v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v17)
      {

        goto LABEL_29;
      }

      v21 = 0;
    }
  }

  else
  {
    v21 = 1;
  }

LABEL_28:

  if (v21)
  {
    goto LABEL_19;
  }

LABEL_29:
  v39[0] = @"timestamp";
  v24 = [(APAttributionRequest *)self timestamp];
  v40[0] = v24;
  v39[1] = @"osPlatform";
  v25 = [(APAttributionRequest *)self osPlatform];
  v40[1] = v25;
  v39[2] = @"osVersion";
  v26 = [(APAttributionRequest *)self osVersion];
  v40[2] = v26;
  v39[3] = @"osBuild";
  v27 = [(APAttributionRequest *)self osBuild];
  v40[3] = v27;
  v39[4] = @"storefront";
  v28 = [(APAttributionRequest *)self storefront];
  v40[4] = v28;
  v39[5] = @"bundleId";
  v29 = [(APAttributionRequest *)self daemonBundleId];
  v40[5] = v29;
  v39[6] = @"User-Agent";
  v30 = [(APAttributionRequest *)self userAgent];
  v40[6] = v30;
  v31 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:7];
  v32 = [NSMutableDictionary dictionaryWithDictionary:v31];

  v33 = [(APAttributionRequest *)self mescalSignature];

  if (v33)
  {
    v34 = [(APAttributionRequest *)self mescalSignature];
    v35 = @"X-Apple-ActionSignature";
LABEL_33:
    [v32 setObject:v34 forKey:v35];

    goto LABEL_34;
  }

  v36 = [(APAttributionRequest *)self fpdiSignature];

  if (v36)
  {
    v34 = [(APAttributionRequest *)self fpdiSignature];
    v35 = @"X-Apple-ActionSignature2";
    goto LABEL_33;
  }

LABEL_34:
  v22 = [v32 copy];

LABEL_20:

  return v22;
}

- (NSDictionary)payloadForRequestHeaderABCLog
{
  v32[0] = @"timestamp";
  v3 = [(APAttributionRequest *)self timestamp];
  v31 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"ERROR This property is nil";
  }

  v33[0] = v4;
  v32[1] = @"osPlatform";
  v5 = [(APAttributionRequest *)self osPlatform];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"ERROR This property is nil";
  }

  v33[1] = v7;
  v32[2] = @"osVersion";
  v8 = [(APAttributionRequest *)self osVersion];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"ERROR This property is nil";
  }

  v33[2] = v10;
  v32[3] = @"osBuild";
  v11 = [(APAttributionRequest *)self osBuild];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"ERROR This property is nil";
  }

  v33[3] = v13;
  v32[4] = @"storefront";
  v14 = [(APAttributionRequest *)self storefront];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = @"ERROR This property is nil";
  }

  v33[4] = v16;
  v32[5] = @"bundleId";
  v17 = [(APAttributionRequest *)self daemonBundleId];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"ERROR This property is nil";
  }

  v33[5] = v19;
  v32[6] = @"User-Agent";
  v20 = [(APAttributionRequest *)self userAgent];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = @"ERROR This property is nil";
  }

  v33[6] = v22;
  v32[7] = @"X-Apple-ActionSignature";
  v23 = [(APAttributionRequest *)self mescalSignature];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = @"This property is nil";
  }

  v33[7] = v25;
  v32[8] = @"X-Apple-ActionSignature2";
  v26 = [(APAttributionRequest *)self fpdiSignature];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = @"This property is nil";
  }

  v33[8] = v28;
  v29 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:9];

  return v29;
}

- (id)requestBody
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(APAttributionRequest *)self toroId];
  if (!v4)
  {
    goto LABEL_22;
  }

  v5 = v4;
  v6 = [(APAttributionRequest *)self anonymousDemandId];
  if (v6)
  {
    v7 = v6;
    v8 = [(APAttributionRequest *)self bundleId];
    if (v8)
    {
      v9 = v8;
      v10 = [(APAttributionRequest *)self attributionKey];

      if (v10)
      {
        v5 = +[NSISO8601DateFormatter apDefaultSharedFormatter];
        v11 = [(APAttributionRequest *)self toroId];
        v12 = [v11 UUIDString];
        [v3 setObject:v12 forKey:@"toroId"];

        v13 = [(APAttributionRequest *)self anonymousDemandId];
        v14 = [v13 UUIDString];
        [v3 setObject:v14 forKey:@"anonymousDemandId"];

        v15 = [(APAttributionRequest *)self bundleId];
        [v3 setObject:v15 forKey:@"bundleId"];

        v16 = [(APAttributionRequest *)self attributionKey];
        [v3 setObject:v16 forKey:@"attributionKey"];

        v17 = [NSNumber numberWithBool:[(APAttributionRequest *)self attributionMetadataExistsOnDevice]];
        [v3 setObject:v17 forKey:@"attributionMetadataExistsOnDevice"];

        v18 = [NSNumber numberWithInteger:[(APAttributionRequest *)self attributionDownloadType]];
        [v3 setObject:v18 forKey:@"attributionDownloadType"];

        v19 = [NSNumber numberWithBool:[(APAttributionRequest *)self developmentApp]];
        [v3 setObject:v19 forKey:@"developmentApp"];

        v20 = [(APAttributionRequest *)self purchaseTimestamp];

        if (v20)
        {
          v21 = [(APAttributionRequest *)self purchaseTimestamp];
          [v3 setObject:v21 forKey:@"purchaseTimestamp"];
        }

        v22 = [(APAttributionRequest *)self adamId];

        if (v22)
        {
          v23 = [(APAttributionRequest *)self adamId];
          [v3 setObject:v23 forKey:@"adamId"];
        }

        v24 = [(APAttributionRequest *)self adMetadata];

        if (v24)
        {
          v25 = [(APAttributionRequest *)self adMetadata];
          [v3 setObject:v25 forKey:@"adMetadata"];
        }

        [(APAttributionRequest *)self iAdConversionTimestamp];
        if (v26 > 0.0)
        {
          [(APAttributionRequest *)self iAdConversionTimestamp];
          v27 = [NSDate dateWithTimeIntervalSince1970:?];
          v28 = [v5 stringFromDate:v27];
          [v3 setObject:v28 forKey:@"iAdConversionTimestamp"];
        }

        [(APAttributionRequest *)self iAdImpressionTimestamp];
        if (v29 > 0.0)
        {
          [(APAttributionRequest *)self iAdImpressionTimestamp];
          v30 = [NSDate dateWithTimeIntervalSince1970:?];
          v31 = [v5 stringFromDate:v30];
          [v3 setObject:v31 forKey:@"iAdImpressionTimestamp"];
        }

        [(APAttributionRequest *)self searchAdClickTimestamp];
        if (v32 > 0.0)
        {
          [(APAttributionRequest *)self searchAdClickTimestamp];
          v33 = [NSDate dateWithTimeIntervalSince1970:?];
          v34 = [v5 stringFromDate:v33];
          [v3 setObject:v34 forKey:@"searchAdClickTimestamp"];
        }

        [(APAttributionRequest *)self downloadClickTimestamp];
        if (v35 > 0.0)
        {
          [(APAttributionRequest *)self downloadClickTimestamp];
          v36 = [NSDate dateWithTimeIntervalSince1970:?];
          v37 = [v5 stringFromDate:v36];
          [v3 setObject:v37 forKey:@"downloadClickTimestamp"];
        }

        if ([(APAttributionRequest *)self developmentApp])
        {
          [v3 setObject:@"2020-10-17T05:08:49Z" forKey:@"purchaseTimestamp"];
        }

        [v3 setObject:&__kCFBooleanFalse forKey:@"readOnly"];
        v38 = v3;
        goto LABEL_25;
      }

LABEL_22:
      v38 = 0;
      goto LABEL_26;
    }
  }

  v38 = 0;
LABEL_25:

LABEL_26:

  return v38;
}

- (NSDictionary)payloadForRequestBodyABCLog
{
  v17[0] = @"toroId";
  v3 = [(APAttributionRequest *)self toroId];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"ERROR This property is nil";
  }

  v18[0] = v5;
  v17[1] = @"anonymousDemandId";
  v6 = [(APAttributionRequest *)self anonymousDemandId];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"ERROR This property is nil";
  }

  v18[1] = v8;
  v17[2] = @"osPlatform";
  v9 = [(APAttributionRequest *)self bundleId];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"ERROR This property is nil";
  }

  v18[2] = v11;
  v17[3] = @"osVersion";
  v12 = [(APAttributionRequest *)self attributionKey];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"ERROR This property is nil";
  }

  v18[3] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];

  return v15;
}

@end