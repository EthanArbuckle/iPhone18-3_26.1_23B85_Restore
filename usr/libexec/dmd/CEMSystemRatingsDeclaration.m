@interface CEMSystemRatingsDeclaration
- (id)dmf_installRequestWithContext:(id)a3 error:(id *)a4;
@end

@implementation CEMSystemRatingsDeclaration

- (id)dmf_installRequestWithContext:(id)a3 error:(id *)a4
{
  v14 = @"countryCode";
  v6 = a3;
  v7 = [(CEMSystemRatingsDeclaration *)self payloadRatingRegion];
  v8 = v7;
  v9 = &stru_1000D0428;
  if (v7)
  {
    v9 = v7;
  }

  v15 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

  CFPreferencesSetAppValue(@"SBParentalControlsMCContentRestrictions", v10, @"com.apple.springboard");
  CFPreferencesAppSynchronize(@"com.apple.springboard");
  v11 = [v6 assetProvidersByPayloadIdentifier];

  v12 = [(CEMSystemRatingsDeclaration *)self dmf_installSynthesizedProfileRequestWithAssetProviders:v11 error:a4];

  return v12;
}

@end