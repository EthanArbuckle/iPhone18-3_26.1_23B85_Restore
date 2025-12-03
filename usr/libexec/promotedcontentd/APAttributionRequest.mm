@interface APAttributionRequest
- (NSDictionary)payloadForRequestBodyABCLog;
- (NSDictionary)payloadForRequestHeaderABCLog;
- (id)requestBody;
- (id)requestHeader;
- (void)addCapData:(id)data;
- (void)addMetaData:(id)data;
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
  storefront = [v6 storefront];
  v8 = [v5 userAgentStringForBundleID:@"com.apple.ap.promotedcontentd" storefront:storefront];
  [(APAttributionRequest *)self setUserAgent:v8];

  systemName = [v5 systemName];
  [(APAttributionRequest *)self setOsPlatform:systemName];

  systemVersion = [v5 systemVersion];
  [(APAttributionRequest *)self setOsVersion:systemVersion];

  buildVersion = [v5 buildVersion];
  [(APAttributionRequest *)self setOsBuild:buildVersion];

  deviceModel = [v5 deviceModel];
  [(APAttributionRequest *)self setDevice:deviceModel];
}

- (void)loadIDAccountDetails
{
  v6 = +[APIDAccountProvider privateUserAccount];
  toroID = [v6 toroID];
  [(APAttributionRequest *)self setToroId:toroID];

  anonymousDemandID = [v6 anonymousDemandID];
  [(APAttributionRequest *)self setAnonymousDemandId:anonymousDemandID];

  storefront = [v6 storefront];
  [(APAttributionRequest *)self setStorefront:storefront];
}

- (void)addCapData:(id)data
{
  dataCopy = data;
  -[APAttributionRequest setAttributionDownloadType:](self, "setAttributionDownloadType:", [dataCopy attributionDownloadType]);
  [dataCopy searchAdClickTimestamp];
  [(APAttributionRequest *)self setSearchAdClickTimestamp:?];
  -[APAttributionRequest setAttributionDownloadType:](self, "setAttributionDownloadType:", [dataCopy attributionDownloadType]);
  [dataCopy downloadClickTimestamp];
  [(APAttributionRequest *)self setDownloadClickTimestamp:?];
  [dataCopy downloadClickTimestamp];
  if (v4 != 0.0)
  {
    [(APAttributionRequest *)self setAttributionMetadataExistsOnDevice:1];
  }

  adMetadata = [dataCopy adMetadata];
  [(APAttributionRequest *)self setAdMetadata:adMetadata];
}

- (void)addMetaData:(id)data
{
  dataCopy = data;
  -[APAttributionRequest setAttributionMetadataExistsOnDevice:](self, "setAttributionMetadataExistsOnDevice:", [dataCopy isAttributed]);
  v4 = +[NSISO8601DateFormatter apDefaultSharedFormatter];
  purchaseDate = [dataCopy purchaseDate];
  [(APAttributionRequest *)self setPurchaseTimestamp:purchaseDate];

  impressionDate = [dataCopy impressionDate];
  v7 = [v4 dateFromString:impressionDate];
  [v7 timeIntervalSince1970];
  v9 = v8;

  if (v9 > 0.0)
  {
    [(APAttributionRequest *)self setIAdImpressionTimestamp:v9];
  }

  conversionDate = [dataCopy conversionDate];
  v11 = [v4 dateFromString:conversionDate];
  [v11 timeIntervalSince1970];
  v13 = v12;

  if (v13 > 0.0)
  {
    [(APAttributionRequest *)self setIAdConversionTimestamp:v13];
  }

  adamID = [dataCopy adamID];
  [(APAttributionRequest *)self setAdamId:adamID];
}

- (id)requestHeader
{
  timestamp = [(APAttributionRequest *)self timestamp];
  if (!timestamp)
  {
    goto LABEL_19;
  }

  v4 = timestamp;
  osBuild = [(APAttributionRequest *)self osBuild];
  if (!osBuild)
  {
    goto LABEL_18;
  }

  v6 = osBuild;
  osPlatform = [(APAttributionRequest *)self osPlatform];
  if (!osPlatform)
  {
LABEL_17:

LABEL_18:
LABEL_19:
    v22 = 0;
    goto LABEL_20;
  }

  v8 = osPlatform;
  osVersion = [(APAttributionRequest *)self osVersion];
  if (!osVersion)
  {
LABEL_16:

    goto LABEL_17;
  }

  v10 = osVersion;
  storefront = [(APAttributionRequest *)self storefront];
  if (!storefront)
  {
LABEL_15:

    goto LABEL_16;
  }

  v12 = storefront;
  daemonBundleId = [(APAttributionRequest *)self daemonBundleId];
  if (!daemonBundleId)
  {
LABEL_14:

    goto LABEL_15;
  }

  v14 = daemonBundleId;
  userAgent = [(APAttributionRequest *)self userAgent];
  if (!userAgent)
  {

    goto LABEL_14;
  }

  v16 = userAgent;
  mescalSignature = [(APAttributionRequest *)self mescalSignature];
  if (mescalSignature || ([(APAttributionRequest *)self fpdiSignature], (v37 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    mescalSignature2 = [(APAttributionRequest *)self mescalSignature];
    if (mescalSignature2)
    {
      v19 = mescalSignature2;
      fpdiSignature = [(APAttributionRequest *)self fpdiSignature];
      v38 = fpdiSignature != 0;

      v21 = v38;
      if (mescalSignature)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (mescalSignature)
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
  timestamp2 = [(APAttributionRequest *)self timestamp];
  v40[0] = timestamp2;
  v39[1] = @"osPlatform";
  osPlatform2 = [(APAttributionRequest *)self osPlatform];
  v40[1] = osPlatform2;
  v39[2] = @"osVersion";
  osVersion2 = [(APAttributionRequest *)self osVersion];
  v40[2] = osVersion2;
  v39[3] = @"osBuild";
  osBuild2 = [(APAttributionRequest *)self osBuild];
  v40[3] = osBuild2;
  v39[4] = @"storefront";
  storefront2 = [(APAttributionRequest *)self storefront];
  v40[4] = storefront2;
  v39[5] = @"bundleId";
  daemonBundleId2 = [(APAttributionRequest *)self daemonBundleId];
  v40[5] = daemonBundleId2;
  v39[6] = @"User-Agent";
  userAgent2 = [(APAttributionRequest *)self userAgent];
  v40[6] = userAgent2;
  v31 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:7];
  v32 = [NSMutableDictionary dictionaryWithDictionary:v31];

  mescalSignature3 = [(APAttributionRequest *)self mescalSignature];

  if (mescalSignature3)
  {
    mescalSignature4 = [(APAttributionRequest *)self mescalSignature];
    v35 = @"X-Apple-ActionSignature";
LABEL_33:
    [v32 setObject:mescalSignature4 forKey:v35];

    goto LABEL_34;
  }

  fpdiSignature2 = [(APAttributionRequest *)self fpdiSignature];

  if (fpdiSignature2)
  {
    mescalSignature4 = [(APAttributionRequest *)self fpdiSignature];
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
  timestamp = [(APAttributionRequest *)self timestamp];
  v31 = timestamp;
  if (timestamp)
  {
    v4 = timestamp;
  }

  else
  {
    v4 = @"ERROR This property is nil";
  }

  v33[0] = v4;
  v32[1] = @"osPlatform";
  osPlatform = [(APAttributionRequest *)self osPlatform];
  v6 = osPlatform;
  if (osPlatform)
  {
    v7 = osPlatform;
  }

  else
  {
    v7 = @"ERROR This property is nil";
  }

  v33[1] = v7;
  v32[2] = @"osVersion";
  osVersion = [(APAttributionRequest *)self osVersion];
  v9 = osVersion;
  if (osVersion)
  {
    v10 = osVersion;
  }

  else
  {
    v10 = @"ERROR This property is nil";
  }

  v33[2] = v10;
  v32[3] = @"osBuild";
  osBuild = [(APAttributionRequest *)self osBuild];
  v12 = osBuild;
  if (osBuild)
  {
    v13 = osBuild;
  }

  else
  {
    v13 = @"ERROR This property is nil";
  }

  v33[3] = v13;
  v32[4] = @"storefront";
  storefront = [(APAttributionRequest *)self storefront];
  v15 = storefront;
  if (storefront)
  {
    v16 = storefront;
  }

  else
  {
    v16 = @"ERROR This property is nil";
  }

  v33[4] = v16;
  v32[5] = @"bundleId";
  daemonBundleId = [(APAttributionRequest *)self daemonBundleId];
  v18 = daemonBundleId;
  if (daemonBundleId)
  {
    v19 = daemonBundleId;
  }

  else
  {
    v19 = @"ERROR This property is nil";
  }

  v33[5] = v19;
  v32[6] = @"User-Agent";
  userAgent = [(APAttributionRequest *)self userAgent];
  v21 = userAgent;
  if (userAgent)
  {
    v22 = userAgent;
  }

  else
  {
    v22 = @"ERROR This property is nil";
  }

  v33[6] = v22;
  v32[7] = @"X-Apple-ActionSignature";
  mescalSignature = [(APAttributionRequest *)self mescalSignature];
  v24 = mescalSignature;
  if (mescalSignature)
  {
    v25 = mescalSignature;
  }

  else
  {
    v25 = @"This property is nil";
  }

  v33[7] = v25;
  v32[8] = @"X-Apple-ActionSignature2";
  fpdiSignature = [(APAttributionRequest *)self fpdiSignature];
  v27 = fpdiSignature;
  if (fpdiSignature)
  {
    v28 = fpdiSignature;
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
  toroId = [(APAttributionRequest *)self toroId];
  if (!toroId)
  {
    goto LABEL_22;
  }

  v5 = toroId;
  anonymousDemandId = [(APAttributionRequest *)self anonymousDemandId];
  if (anonymousDemandId)
  {
    v7 = anonymousDemandId;
    bundleId = [(APAttributionRequest *)self bundleId];
    if (bundleId)
    {
      v9 = bundleId;
      attributionKey = [(APAttributionRequest *)self attributionKey];

      if (attributionKey)
      {
        v5 = +[NSISO8601DateFormatter apDefaultSharedFormatter];
        toroId2 = [(APAttributionRequest *)self toroId];
        uUIDString = [toroId2 UUIDString];
        [v3 setObject:uUIDString forKey:@"toroId"];

        anonymousDemandId2 = [(APAttributionRequest *)self anonymousDemandId];
        uUIDString2 = [anonymousDemandId2 UUIDString];
        [v3 setObject:uUIDString2 forKey:@"anonymousDemandId"];

        bundleId2 = [(APAttributionRequest *)self bundleId];
        [v3 setObject:bundleId2 forKey:@"bundleId"];

        attributionKey2 = [(APAttributionRequest *)self attributionKey];
        [v3 setObject:attributionKey2 forKey:@"attributionKey"];

        v17 = [NSNumber numberWithBool:[(APAttributionRequest *)self attributionMetadataExistsOnDevice]];
        [v3 setObject:v17 forKey:@"attributionMetadataExistsOnDevice"];

        v18 = [NSNumber numberWithInteger:[(APAttributionRequest *)self attributionDownloadType]];
        [v3 setObject:v18 forKey:@"attributionDownloadType"];

        v19 = [NSNumber numberWithBool:[(APAttributionRequest *)self developmentApp]];
        [v3 setObject:v19 forKey:@"developmentApp"];

        purchaseTimestamp = [(APAttributionRequest *)self purchaseTimestamp];

        if (purchaseTimestamp)
        {
          purchaseTimestamp2 = [(APAttributionRequest *)self purchaseTimestamp];
          [v3 setObject:purchaseTimestamp2 forKey:@"purchaseTimestamp"];
        }

        adamId = [(APAttributionRequest *)self adamId];

        if (adamId)
        {
          adamId2 = [(APAttributionRequest *)self adamId];
          [v3 setObject:adamId2 forKey:@"adamId"];
        }

        adMetadata = [(APAttributionRequest *)self adMetadata];

        if (adMetadata)
        {
          adMetadata2 = [(APAttributionRequest *)self adMetadata];
          [v3 setObject:adMetadata2 forKey:@"adMetadata"];
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
  toroId = [(APAttributionRequest *)self toroId];
  v4 = toroId;
  if (toroId)
  {
    v5 = toroId;
  }

  else
  {
    v5 = @"ERROR This property is nil";
  }

  v18[0] = v5;
  v17[1] = @"anonymousDemandId";
  anonymousDemandId = [(APAttributionRequest *)self anonymousDemandId];
  v7 = anonymousDemandId;
  if (anonymousDemandId)
  {
    v8 = anonymousDemandId;
  }

  else
  {
    v8 = @"ERROR This property is nil";
  }

  v18[1] = v8;
  v17[2] = @"osPlatform";
  bundleId = [(APAttributionRequest *)self bundleId];
  v10 = bundleId;
  if (bundleId)
  {
    v11 = bundleId;
  }

  else
  {
    v11 = @"ERROR This property is nil";
  }

  v18[2] = v11;
  v17[3] = @"osVersion";
  attributionKey = [(APAttributionRequest *)self attributionKey];
  v13 = attributionKey;
  if (attributionKey)
  {
    v14 = attributionKey;
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