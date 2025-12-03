@interface MCCertificateWrapperProfileHandler
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
@end

@implementation MCCertificateWrapperProfileHandler

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  v20.receiver = self;
  v20.super_class = MCCertificateWrapperProfileHandler;
  v7 = [(MCConfigurationProfileHandler *)&v20 installWithInstaller:installer options:options interactionClient:client outError:error];
  if (v7)
  {
    profile = [(MCProfileHandler *)self profile];
    payloads = [profile payloads];
    v10 = [payloads count];

    if (v10)
    {
      payloads2 = [profile payloads];
      v12 = [payloads2 objectAtIndex:0];

      type = [v12 type];
      v14 = [type isEqualToString:kMCCPPKCS12Type];

      if (v14)
      {
        copyCertificate = [v12 copyCertificate];
        if (copyCertificate)
        {
          v16 = copyCertificate;
          v17 = SecCertificateCopySubjectSummary(copyCertificate);
          [profile setDisplayName:v17];
          v21 = v16;
          v18 = [NSArray arrayWithObjects:&v21 count:1];
          [profile setSignerCertificates:v18];

          CFRelease(v16);
        }
      }
    }
  }

  return v7;
}

@end