@interface RPIdentitySyncSFClientHelper
+ (id)formatPhoneNumber:(id)a3;
+ (void)contactHandlesForShortHashes:(id)a3 completion:(id)a4;
+ (void)myAccountWithCompletion:(id)a3;
@end

@implementation RPIdentitySyncSFClientHelper

+ (void)contactHandlesForShortHashes:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = off_1001D46A8[0];
  v7 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100088F5C;
  v10[3] = &unk_1001ADCD0;
  v11 = objc_alloc_init(v6());
  v12 = v5;
  v8 = v11;
  v9 = v5;
  [v8 contactHandlesForShortHashData:v7 completion:v10];
}

+ (void)myAccountWithCompletion:(id)a3
{
  v3 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008905C;
  v6[3] = &unk_1001ADCF8;
  v7 = objc_alloc_init(off_1001D46B0());
  v8 = v3;
  v4 = v7;
  v5 = v3;
  [v4 myAccountWithCompletion:v6];
}

+ (id)formatPhoneNumber:(id)a3
{
  v3 = a3;
  active = CPPhoneNumberCopyActiveCountryCode();
  v5 = PNCopyBestGuessNormalizedNumberForCountry();

  if (v5)
  {
    [NSString stringWithUTF8String:v5];
    v6 = CFPhoneNumberCreate();
    if (v6)
    {
      v7 = v6;
      String = CFPhoneNumberCreateString();
      if (String)
      {
        v9 = String;
        v10 = [NSCharacterSet characterSetWithCharactersInString:@"+"];
        v11 = [v9 stringByTrimmingCharactersInSet:v10];
      }

      else
      {
        v11 = 0;
      }

      CFRelease(v7);
    }

    else
    {
      v11 = 0;
    }

    free(v5);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end