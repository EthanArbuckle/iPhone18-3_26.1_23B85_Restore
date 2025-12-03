@interface APMediaServiceRequestSettings
+ (id)storageWithDefaultValues:(id)values;
- (BOOL)disablePlacementParamValue;
- (BOOL)ignoreBagKeyCheckValue;
- (BOOL)prettyPrintJsonValue;
- (BOOL)useAMSBagValue;
- (id)_readResponseJsonForPlacement:(unint64_t)placement;
- (id)campaignNamespaceForPlacement:(unint64_t)placement;
- (id)mockResponseResultForPlacement:(unint64_t)placement;
@end

@implementation APMediaServiceRequestSettings

+ (id)storageWithDefaultValues:(id)values
{
  valuesCopy = values;
  v4 = [[APSettingsStorageUserDefaults alloc] initWithDefaultValues:valuesCopy];

  return v4;
}

- (BOOL)prettyPrintJsonValue
{
  prettyPrintJson = [(APMediaServiceRequestSettings *)self prettyPrintJson];
  v3 = prettyPrintJson;
  if (prettyPrintJson)
  {
    bOOLValue = [prettyPrintJson BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)useAMSBagValue
{
  useAMSBag = [(APMediaServiceRequestSettings *)self useAMSBag];
  v3 = useAMSBag;
  if (useAMSBag)
  {
    bOOLValue = [useAMSBag BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)ignoreBagKeyCheckValue
{
  ignoreBagKeyCheck = [(APMediaServiceRequestSettings *)self ignoreBagKeyCheck];
  v3 = ignoreBagKeyCheck;
  if (ignoreBagKeyCheck)
  {
    bOOLValue = [ignoreBagKeyCheck BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)mockResponseResultForPlacement:(unint64_t)placement
{
  v3 = [(APMediaServiceRequestSettings *)self _readResponseJsonForPlacement:placement];
  if (v3)
  {
    v4 = objc_alloc_init(APMockedAMSURLResult);
    v5 = [v3 dataUsingEncoding:4];
    [(APMockedAMSURLResult *)v4 setMockData:v5];

    [(APMockedAMSURLResult *)v4 setMockResponseHeaders:&__NSDictionary0__struct];
    [(APMockedAMSURLResult *)v4 setMockResponseStatusCode:200];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_readResponseJsonForPlacement:(unint64_t)placement
{
  placement = [NSString stringWithFormat:@"APMediaServiceRequestSettings.mockResponseJson_%lu", placement];
  v4 = [NSUserDefaults alloc];
  v5 = [v4 initWithSuiteName:APDefaultsBundleID];
  v6 = [v5 objectForKey:placement];

  return v6;
}

- (id)campaignNamespaceForPlacement:(unint64_t)placement
{
  placement = [NSString stringWithFormat:@"APMediaServiceRequestSettings.campaignNamespace_%lu", placement];
  v4 = [NSUserDefaults alloc];
  v5 = [v4 initWithSuiteName:APDefaultsBundleID];
  v6 = [v5 objectForKey:placement];

  return v6;
}

- (BOOL)disablePlacementParamValue
{
  disablePlacementParam = [(APMediaServiceRequestSettings *)self disablePlacementParam];
  v3 = disablePlacementParam;
  if (disablePlacementParam)
  {
    bOOLValue = [disablePlacementParam BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end