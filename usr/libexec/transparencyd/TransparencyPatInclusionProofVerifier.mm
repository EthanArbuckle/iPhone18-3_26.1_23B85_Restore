@interface TransparencyPatInclusionProofVerifier
- (TransparencyPatInclusionProofVerifier)initWithKeyBag:(id)a3 application:(id)a4;
- (TransparencyPatInclusionProofVerifier)initWithKeyStore:(id)a3 application:(id)a4;
- (unint64_t)verifyPatInclusionProofWithPerAppLogEntry:(id)a3 topLevelTreeEntry:(id)a4 error:(id *)a5;
@end

@implementation TransparencyPatInclusionProofVerifier

- (TransparencyPatInclusionProofVerifier)initWithKeyBag:(id)a3 application:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TransparencyPatInclusionProofVerifier;
  v9 = [(TransparencyPatInclusionProofVerifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyBag, a3);
    objc_storeStrong(&v10->_application, a4);
  }

  return v10;
}

- (unint64_t)verifyPatInclusionProofWithPerAppLogEntry:(id)a3 topLevelTreeEntry:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001E2564;
  v18[3] = &unk_100328178;
  v10 = v8;
  v19 = v10;
  v11 = objc_retainBlock(v18);
  v12 = [(TransparencyPatInclusionProofVerifier *)self application];
  v13 = [TransparencyAnalytics formatEventName:@"VerifyPATInclusionProofEvent" application:v12];
  v14 = [TransparencyAnalytics doKTResultWithAnalyticsForEventName:v13 validateType:3 error:a5 block:v11];

  if (v14 == 1)
  {
    v15 = [v10 slh];
    v16 = [SignedLogHead signedTypeWithObject:v15];

    v14 = [v9 verifyTLTEntryForPerApplicationLogHead:v16 error:a5];
  }

  return v14;
}

- (TransparencyPatInclusionProofVerifier)initWithKeyStore:(id)a3 application:(id)a4
{
  v6 = a4;
  v7 = [a3 keyBag];
  v8 = [(TransparencyPatInclusionProofVerifier *)self initWithKeyBag:v7 application:v6];

  return v8;
}

@end