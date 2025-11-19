@interface APMediaServiceRequestParameters
- (BOOL)validate;
- (NSDate)requestTime;
- (NSDictionary)appMetadataFields;
- (NSString)adamId;
- (NSString)storeFront;
- (NSString)storeFrontLocale;
@end

@implementation APMediaServiceRequestParameters

- (BOOL)validate
{
  v3 = [(APMediaServiceRequestParameters *)self context];
  if (!v3)
  {
    return v3;
  }

  v4 = v3;
  v5 = [(APMediaServiceRequestParameters *)self requestID];
  if (!v5)
  {

    goto LABEL_9;
  }

  v6 = v5;
  v7 = [(APMediaServiceRequestParameters *)self idAccount];

  if (!v7)
  {
LABEL_9:
    LOBYTE(v3) = 0;
    return v3;
  }

  LOBYTE(v3) = [(APMediaServiceRequestParameters *)self placement]== 7005 || [(APMediaServiceRequestParameters *)self placement]== 7006 || [(APMediaServiceRequestParameters *)self placement]== 7007 || [(APMediaServiceRequestParameters *)self placement]== 7008;
  return v3;
}

- (NSString)storeFront
{
  v2 = [(APMediaServiceRequestParameters *)self context];
  v3 = [v2 supplementalContext];
  v4 = [v3 objectForKey:@"storeFront"];

  return v4;
}

- (NSString)storeFrontLocale
{
  v2 = [(APMediaServiceRequestParameters *)self context];
  v3 = [v2 supplementalContext];
  v4 = [v3 objectForKey:@"storeFrontLocale"];

  return v4;
}

- (NSDictionary)appMetadataFields
{
  v2 = [(APMediaServiceRequestParameters *)self context];
  v3 = [v2 supplementalContext];
  v4 = [v3 objectForKey:@"appMetadataFields"];

  return v4;
}

- (NSDate)requestTime
{
  v2 = [(APMediaServiceRequestParameters *)self context];
  v3 = [v2 supplementalContext];
  v4 = [v3 objectForKey:@"requestTime"];

  return v4;
}

- (NSString)adamId
{
  v2 = [(APMediaServiceRequestParameters *)self context];
  v3 = [v2 supplementalContext];
  v4 = [v3 objectForKey:@"adamId"];

  return v4;
}

@end