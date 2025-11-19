@interface MockAPMetric
- (MockAPMetric)initWithPurpose:(int64_t)a3 metric:(int64_t)a4 contentIdentifier:(id)a5 contextIdentifier:(id)a6 handle:(id)a7 secondaryHandle:(id)a8 branch:(id)a9 properties:(id)a10 internalProperties:(id)a11 relayData:(id)a12 environment:(id)a13 order:(int64_t)a14 options:(int64_t)a15;
- (MockAPMetric)initWithPurpose:(int64_t)a3 metric:(int64_t)a4 contentIdentifier:(id)a5 contextIdentifier:(id)a6 handle:(id)a7 secondaryHandle:(id)a8 properties:(id)a9 internalProperties:(id)a10 options:(int64_t)a11;
- (NSString)bundleIdentifier;
@end

@implementation MockAPMetric

- (MockAPMetric)initWithPurpose:(int64_t)a3 metric:(int64_t)a4 contentIdentifier:(id)a5 contextIdentifier:(id)a6 handle:(id)a7 secondaryHandle:(id)a8 properties:(id)a9 internalProperties:(id)a10 options:(int64_t)a11
{
  v13 = a7;
  v17.receiver = self;
  v17.super_class = MockAPMetric;
  v14 = [(MockAPMetric *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_handle, a7);
  }

  return v15;
}

- (MockAPMetric)initWithPurpose:(int64_t)a3 metric:(int64_t)a4 contentIdentifier:(id)a5 contextIdentifier:(id)a6 handle:(id)a7 secondaryHandle:(id)a8 branch:(id)a9 properties:(id)a10 internalProperties:(id)a11 relayData:(id)a12 environment:(id)a13 order:(int64_t)a14 options:(int64_t)a15
{
  v19 = a7;
  v23.receiver = self;
  v23.super_class = MockAPMetric;
  v20 = [(MockAPMetric *)&v23 init];
  v21 = v20;
  if (v20)
  {
    v20->_purpose = a3;
    v20->_metric = a4;
    objc_storeStrong(&v20->_handle, a7);
  }

  return v21;
}

- (NSString)bundleIdentifier
{
  v2 = [(MockAPMetric *)self internalProperties];
  v3 = [v2 objectForKey:kAPMetricBundleIdentifierKey];

  return v3;
}

@end