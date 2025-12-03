@interface FMDRequestAccessoryLocations
- (BOOL)canReplace:(id)replace;
- (FMDRequestAccessoryLocations)initWithAccount:(id)account accessoryLocations:(id)locations;
- (id)requestBody;
@end

@implementation FMDRequestAccessoryLocations

- (FMDRequestAccessoryLocations)initWithAccount:(id)account accessoryLocations:(id)locations
{
  locationsCopy = locations;
  v10.receiver = self;
  v10.super_class = FMDRequestAccessoryLocations;
  v7 = [(FMDRequest *)&v10 initWithAccount:account];
  v8 = v7;
  if (v7)
  {
    [(FMDRequestAccessoryLocations *)v7 setAccessoryLocations:locationsCopy];
  }

  return v8;
}

- (id)requestBody
{
  v6.receiver = self;
  v6.super_class = FMDRequestAccessoryLocations;
  requestBody = [(FMDRequest *)&v6 requestBody];
  accessoryLocations = [(FMDRequestAccessoryLocations *)self accessoryLocations];
  [requestBody fm_safeSetObject:accessoryLocations forKey:@"locations"];

  return requestBody;
}

- (BOOL)canReplace:(id)replace
{
  replaceCopy = replace;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end