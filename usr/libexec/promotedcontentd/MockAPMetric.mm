@interface MockAPMetric
- (MockAPMetric)initWithPurpose:(int64_t)purpose metric:(int64_t)metric contentIdentifier:(id)identifier contextIdentifier:(id)contextIdentifier handle:(id)handle secondaryHandle:(id)secondaryHandle branch:(id)branch properties:(id)self0 internalProperties:(id)self1 relayData:(id)self2 environment:(id)self3 order:(int64_t)self4 options:(int64_t)self5;
- (MockAPMetric)initWithPurpose:(int64_t)purpose metric:(int64_t)metric contentIdentifier:(id)identifier contextIdentifier:(id)contextIdentifier handle:(id)handle secondaryHandle:(id)secondaryHandle properties:(id)properties internalProperties:(id)self0 options:(int64_t)self1;
- (NSString)bundleIdentifier;
@end

@implementation MockAPMetric

- (MockAPMetric)initWithPurpose:(int64_t)purpose metric:(int64_t)metric contentIdentifier:(id)identifier contextIdentifier:(id)contextIdentifier handle:(id)handle secondaryHandle:(id)secondaryHandle properties:(id)properties internalProperties:(id)self0 options:(int64_t)self1
{
  handleCopy = handle;
  v17.receiver = self;
  v17.super_class = MockAPMetric;
  v14 = [(MockAPMetric *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_handle, handle);
  }

  return v15;
}

- (MockAPMetric)initWithPurpose:(int64_t)purpose metric:(int64_t)metric contentIdentifier:(id)identifier contextIdentifier:(id)contextIdentifier handle:(id)handle secondaryHandle:(id)secondaryHandle branch:(id)branch properties:(id)self0 internalProperties:(id)self1 relayData:(id)self2 environment:(id)self3 order:(int64_t)self4 options:(int64_t)self5
{
  handleCopy = handle;
  v23.receiver = self;
  v23.super_class = MockAPMetric;
  v20 = [(MockAPMetric *)&v23 init];
  v21 = v20;
  if (v20)
  {
    v20->_purpose = purpose;
    v20->_metric = metric;
    objc_storeStrong(&v20->_handle, handle);
  }

  return v21;
}

- (NSString)bundleIdentifier
{
  internalProperties = [(MockAPMetric *)self internalProperties];
  v3 = [internalProperties objectForKey:kAPMetricBundleIdentifierKey];

  return v3;
}

@end