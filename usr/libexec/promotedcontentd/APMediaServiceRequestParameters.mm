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
  context = [(APMediaServiceRequestParameters *)self context];
  if (!context)
  {
    return context;
  }

  v4 = context;
  requestID = [(APMediaServiceRequestParameters *)self requestID];
  if (!requestID)
  {

    goto LABEL_9;
  }

  v6 = requestID;
  idAccount = [(APMediaServiceRequestParameters *)self idAccount];

  if (!idAccount)
  {
LABEL_9:
    LOBYTE(context) = 0;
    return context;
  }

  LOBYTE(context) = [(APMediaServiceRequestParameters *)self placement]== 7005 || [(APMediaServiceRequestParameters *)self placement]== 7006 || [(APMediaServiceRequestParameters *)self placement]== 7007 || [(APMediaServiceRequestParameters *)self placement]== 7008;
  return context;
}

- (NSString)storeFront
{
  context = [(APMediaServiceRequestParameters *)self context];
  supplementalContext = [context supplementalContext];
  v4 = [supplementalContext objectForKey:@"storeFront"];

  return v4;
}

- (NSString)storeFrontLocale
{
  context = [(APMediaServiceRequestParameters *)self context];
  supplementalContext = [context supplementalContext];
  v4 = [supplementalContext objectForKey:@"storeFrontLocale"];

  return v4;
}

- (NSDictionary)appMetadataFields
{
  context = [(APMediaServiceRequestParameters *)self context];
  supplementalContext = [context supplementalContext];
  v4 = [supplementalContext objectForKey:@"appMetadataFields"];

  return v4;
}

- (NSDate)requestTime
{
  context = [(APMediaServiceRequestParameters *)self context];
  supplementalContext = [context supplementalContext];
  v4 = [supplementalContext objectForKey:@"requestTime"];

  return v4;
}

- (NSString)adamId
{
  context = [(APMediaServiceRequestParameters *)self context];
  supplementalContext = [context supplementalContext];
  v4 = [supplementalContext objectForKey:@"adamId"];

  return v4;
}

@end