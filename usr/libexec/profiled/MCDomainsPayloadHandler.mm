@interface MCDomainsPayloadHandler
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
@end

@implementation MCDomainsPayloadHandler

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  optionsCopy = options;
  payload = [(MCNewPayloadHandler *)self payload];
  restrictions = [payload restrictions];
  v11 = [MCRestrictionManager intersectedValuesForFeature:MCFeatureCrossSiteTrackingPreventionRelaxedDomains withRestrictionsDictionary:restrictions];
  v12 = [MCRestrictionManager intersectedValuesForFeature:MCFeatureCrossSiteTrackingPreventionRelaxedApps withRestrictionsDictionary:restrictions];
  v13 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];

  bOOLValue = [v13 BOOLValue];
  v15 = 0;
  if (v11 | v12 && (bOOLValue & 1) == 0)
  {
    v15 = +[MCInstaller notInstalledByMDMError];
  }

  if (error && v15)
  {
    v16 = v15;
    *error = v15;
  }

  return v15 == 0;
}

@end