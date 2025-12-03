@interface MOEventBundleProcessorResult
- (MOEventBundleProcessorResult)initWithCoder:(id)coder;
- (id)init:(id)init sourceAppBundleIds:(id)ids removedAppBundleIds:(id)bundleIds;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOEventBundleProcessorResult

- (id)init:(id)init sourceAppBundleIds:(id)ids removedAppBundleIds:(id)bundleIds
{
  initCopy = init;
  idsCopy = ids;
  bundleIdsCopy = bundleIds;
  v15.receiver = self;
  v15.super_class = MOEventBundleProcessorResult;
  v12 = [(MOEventBundleProcessorResult *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_processedBundles, init);
    objc_storeStrong(p_isa + 2, ids);
    objc_storeStrong(p_isa + 3, bundleIds);
  }

  return p_isa;
}

- (void)encodeWithCoder:(id)coder
{
  processedBundles = self->_processedBundles;
  coderCopy = coder;
  [coderCopy encodeObject:processedBundles forKey:@"coderKeyMOEventBundleProcessorResultBundles"];
  [coderCopy encodeObject:self->_sourceAppBundleIds forKey:@"coderKeyMOEventBundleProcessorResultSourceBundleIDs"];
  [coderCopy encodeObject:self->_removedAppBundleIds forKey:@"coderKeyMOEventBundleProcessorResultSourceRemovedBundleIDs"];
}

- (MOEventBundleProcessorResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = MOEventBundleProcessorResult;
  v5 = [(MOEventBundleProcessorResult *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"coderKeyMOEventBundleProcessorResultBundles"];
    processedBundles = v5->_processedBundles;
    v5->_processedBundles = v8;

    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"coderKeyMOEventBundleProcessorResultSourceBundleIDs"];
    sourceAppBundleIds = v5->_sourceAppBundleIds;
    v5->_sourceAppBundleIds = v12;

    v14 = objc_opt_class();
    v15 = [NSSet setWithObjects:v14, objc_opt_class(), 0];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"coderKeyMOEventBundleProcessorResultSourceRemovedBundleIDs"];
    removedAppBundleIds = v5->_removedAppBundleIds;
    v5->_removedAppBundleIds = v16;
  }

  return v5;
}

@end