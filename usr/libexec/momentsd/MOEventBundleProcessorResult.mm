@interface MOEventBundleProcessorResult
- (MOEventBundleProcessorResult)initWithCoder:(id)a3;
- (id)init:(id)a3 sourceAppBundleIds:(id)a4 removedAppBundleIds:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOEventBundleProcessorResult

- (id)init:(id)a3 sourceAppBundleIds:(id)a4 removedAppBundleIds:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MOEventBundleProcessorResult;
  v12 = [(MOEventBundleProcessorResult *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_processedBundles, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
  }

  return p_isa;
}

- (void)encodeWithCoder:(id)a3
{
  processedBundles = self->_processedBundles;
  v5 = a3;
  [v5 encodeObject:processedBundles forKey:@"coderKeyMOEventBundleProcessorResultBundles"];
  [v5 encodeObject:self->_sourceAppBundleIds forKey:@"coderKeyMOEventBundleProcessorResultSourceBundleIDs"];
  [v5 encodeObject:self->_removedAppBundleIds forKey:@"coderKeyMOEventBundleProcessorResultSourceRemovedBundleIDs"];
}

- (MOEventBundleProcessorResult)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MOEventBundleProcessorResult;
  v5 = [(MOEventBundleProcessorResult *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"coderKeyMOEventBundleProcessorResultBundles"];
    processedBundles = v5->_processedBundles;
    v5->_processedBundles = v8;

    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"coderKeyMOEventBundleProcessorResultSourceBundleIDs"];
    sourceAppBundleIds = v5->_sourceAppBundleIds;
    v5->_sourceAppBundleIds = v12;

    v14 = objc_opt_class();
    v15 = [NSSet setWithObjects:v14, objc_opt_class(), 0];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"coderKeyMOEventBundleProcessorResultSourceRemovedBundleIDs"];
    removedAppBundleIds = v5->_removedAppBundleIds;
    v5->_removedAppBundleIds = v16;
  }

  return v5;
}

@end