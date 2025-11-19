@interface MCConfigurationProfileHandler
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (MCConfigurationProfileHandler)initWithProfile:(id)a3;
- (void)didInstallOldGlobalRestrictions:(id)a3 newGlobalRestrictions:(id)a4;
- (void)removeWithInstaller:(id)a3 options:(id)a4;
- (void)setAsideWithInstaller:(id)a3;
- (void)unsetAside;
@end

@implementation MCConfigurationProfileHandler

- (MCConfigurationProfileHandler)initWithProfile:(id)a3
{
  v11.receiver = self;
  v11.super_class = MCConfigurationProfileHandler;
  v3 = [(MCProfileHandler *)&v11 initWithProfile:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(MCProfileHandler *)v3 profile];
    v6 = [v5 OTAProfile];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 createHandler];
      OTAHandler = v4->_OTAHandler;
      v4->_OTAHandler = v8;
    }
  }

  return v4;
}

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = MCConfigurationProfileHandler;
  v18 = 0;
  [(MCProfileHandler *)&v17 installWithInstaller:v10 options:v11 interactionClient:v12 outError:&v18];
  OTAHandler = v18;
  if (!OTAHandler)
  {
    OTAHandler = self->_OTAHandler;
    if (!OTAHandler)
    {
      v14 = 1;
      goto LABEL_8;
    }

    v16 = 0;
    [(MCProfileServiceProfileHandler *)OTAHandler installWithInstaller:v10 options:v11 interactionClient:v12 outError:&v16];
    OTAHandler = v16;
  }

  v14 = OTAHandler == 0;
  if (a6 && OTAHandler)
  {
    OTAHandler = OTAHandler;
    v14 = 0;
    *a6 = OTAHandler;
  }

LABEL_8:

  return v14;
}

- (void)didInstallOldGlobalRestrictions:(id)a3 newGlobalRestrictions:(id)a4
{
  v8.receiver = self;
  v8.super_class = MCConfigurationProfileHandler;
  v6 = a4;
  v7 = a3;
  [(MCProfileHandler *)&v8 didInstallOldGlobalRestrictions:v7 newGlobalRestrictions:v6];
  [(MCProfileServiceProfileHandler *)self->_OTAHandler didInstallOldGlobalRestrictions:v7 newGlobalRestrictions:v6, v8.receiver, v8.super_class];
}

- (void)setAsideWithInstaller:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = MCConfigurationProfileHandler;
  [(MCProfileHandler *)&v6 setAsideWithInstaller:v4];
  OTAHandler = self->_OTAHandler;
  if (OTAHandler)
  {
    [(MCProfileServiceProfileHandler *)OTAHandler setAsideWithInstaller:v4];
  }
}

- (void)unsetAside
{
  v4.receiver = self;
  v4.super_class = MCConfigurationProfileHandler;
  [(MCProfileHandler *)&v4 unsetAside];
  OTAHandler = self->_OTAHandler;
  if (OTAHandler)
  {
    [(MCProfileServiceProfileHandler *)OTAHandler unsetAside];
  }
}

- (void)removeWithInstaller:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9.receiver = self;
  v9.super_class = MCConfigurationProfileHandler;
  [(MCProfileHandler *)&v9 removeWithInstaller:v6 options:v7];
  OTAHandler = self->_OTAHandler;
  if (OTAHandler)
  {
    [(MCProfileServiceProfileHandler *)OTAHandler removeWithInstaller:v6 options:v7];
  }
}

@end