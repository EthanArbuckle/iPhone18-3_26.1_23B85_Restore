@interface MCCertificateWrapperProfileHandler
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
@end

@implementation MCCertificateWrapperProfileHandler

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v20.receiver = self;
  v20.super_class = MCCertificateWrapperProfileHandler;
  v7 = [(MCConfigurationProfileHandler *)&v20 installWithInstaller:a3 options:a4 interactionClient:a5 outError:a6];
  if (v7)
  {
    v8 = [(MCProfileHandler *)self profile];
    v9 = [v8 payloads];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [v8 payloads];
      v12 = [v11 objectAtIndex:0];

      v13 = [v12 type];
      v14 = [v13 isEqualToString:kMCCPPKCS12Type];

      if (v14)
      {
        v15 = [v12 copyCertificate];
        if (v15)
        {
          v16 = v15;
          v17 = SecCertificateCopySubjectSummary(v15);
          [v8 setDisplayName:v17];
          v21 = v16;
          v18 = [NSArray arrayWithObjects:&v21 count:1];
          [v8 setSignerCertificates:v18];

          CFRelease(v16);
        }
      }
    }
  }

  return v7;
}

@end