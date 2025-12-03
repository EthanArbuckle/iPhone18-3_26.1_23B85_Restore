@interface CEMSystemRatingsDeclaration
- (id)dmf_installRequestWithContext:(id)context error:(id *)error;
@end

@implementation CEMSystemRatingsDeclaration

- (id)dmf_installRequestWithContext:(id)context error:(id *)error
{
  v14 = @"countryCode";
  contextCopy = context;
  payloadRatingRegion = [(CEMSystemRatingsDeclaration *)self payloadRatingRegion];
  v8 = payloadRatingRegion;
  v9 = &stru_1000D0428;
  if (payloadRatingRegion)
  {
    v9 = payloadRatingRegion;
  }

  v15 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

  CFPreferencesSetAppValue(@"SBParentalControlsMCContentRestrictions", v10, @"com.apple.springboard");
  CFPreferencesAppSynchronize(@"com.apple.springboard");
  assetProvidersByPayloadIdentifier = [contextCopy assetProvidersByPayloadIdentifier];

  v12 = [(CEMSystemRatingsDeclaration *)self dmf_installSynthesizedProfileRequestWithAssetProviders:assetProvidersByPayloadIdentifier error:error];

  return v12;
}

@end