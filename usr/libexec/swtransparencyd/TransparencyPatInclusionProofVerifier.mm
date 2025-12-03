@interface TransparencyPatInclusionProofVerifier
- (TransparencyPatInclusionProofVerifier)initWithKeyBag:(id)bag application:(id)application;
- (unint64_t)verifyPatInclusionProofWithPerAppLogEntry:(id)entry topLevelTreeEntry:(id)treeEntry error:(id *)error;
@end

@implementation TransparencyPatInclusionProofVerifier

- (TransparencyPatInclusionProofVerifier)initWithKeyBag:(id)bag application:(id)application
{
  bagCopy = bag;
  applicationCopy = application;
  v12.receiver = self;
  v12.super_class = TransparencyPatInclusionProofVerifier;
  v9 = [(TransparencyPatInclusionProofVerifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyBag, bag);
    objc_storeStrong(&v10->_application, application);
  }

  return v10;
}

- (unint64_t)verifyPatInclusionProofWithPerAppLogEntry:(id)entry topLevelTreeEntry:(id)treeEntry error:(id *)error
{
  entryCopy = entry;
  treeEntryCopy = treeEntry;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100008D34;
  v18[3] = &unk_100132348;
  v10 = entryCopy;
  v19 = v10;
  v11 = objc_retainBlock(v18);
  application = [(TransparencyPatInclusionProofVerifier *)self application];
  v13 = [TransparencyAnalytics formatEventName:@"VerifyPATInclusionProofEvent" application:application];
  v14 = [TransparencyAnalytics doKTResultWithAnalyticsForEventName:v13 validateType:3 error:error block:v11];

  if (v14 == 1)
  {
    v15 = [v10 slh];
    v16 = [SignedLogHead signedTypeWithObject:v15];

    v14 = [treeEntryCopy verifyTLTEntryForPerApplicationLogHead:v16 error:error];
  }

  return v14;
}

@end