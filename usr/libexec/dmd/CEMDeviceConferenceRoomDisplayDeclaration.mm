@interface CEMDeviceConferenceRoomDisplayDeclaration
- (id)dmf_installRequestWithContext:(id)context error:(id *)error;
@end

@implementation CEMDeviceConferenceRoomDisplayDeclaration

- (id)dmf_installRequestWithContext:(id)context error:(id *)error
{
  assetProvidersByPayloadIdentifier = [context assetProvidersByPayloadIdentifier];
  v7 = [(CEMDeviceConferenceRoomDisplayDeclaration *)self dmf_installSynthesizedProfileRequestWithAssetProviders:assetProvidersByPayloadIdentifier error:error];

  return v7;
}

@end