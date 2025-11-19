@interface MCDomainsPayloadHandler
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
@end

@implementation MCDomainsPayloadHandler

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v8 = a4;
  v9 = [(MCNewPayloadHandler *)self payload];
  v10 = [v9 restrictions];
  v11 = [MCRestrictionManager intersectedValuesForFeature:MCFeatureCrossSiteTrackingPreventionRelaxedDomains withRestrictionsDictionary:v10];
  v12 = [MCRestrictionManager intersectedValuesForFeature:MCFeatureCrossSiteTrackingPreventionRelaxedApps withRestrictionsDictionary:v10];
  v13 = [v8 objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];

  v14 = [v13 BOOLValue];
  v15 = 0;
  if (v11 | v12 && (v14 & 1) == 0)
  {
    v15 = +[MCInstaller notInstalledByMDMError];
  }

  if (a6 && v15)
  {
    v16 = v15;
    *a6 = v15;
  }

  return v15 == 0;
}

@end