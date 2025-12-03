@interface MCConfigurationProfileHandler
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (MCConfigurationProfileHandler)initWithProfile:(id)profile;
- (void)didInstallOldGlobalRestrictions:(id)restrictions newGlobalRestrictions:(id)globalRestrictions;
- (void)removeWithInstaller:(id)installer options:(id)options;
- (void)setAsideWithInstaller:(id)installer;
- (void)unsetAside;
@end

@implementation MCConfigurationProfileHandler

- (MCConfigurationProfileHandler)initWithProfile:(id)profile
{
  v11.receiver = self;
  v11.super_class = MCConfigurationProfileHandler;
  v3 = [(MCProfileHandler *)&v11 initWithProfile:profile];
  v4 = v3;
  if (v3)
  {
    profile = [(MCProfileHandler *)v3 profile];
    oTAProfile = [profile OTAProfile];
    v7 = oTAProfile;
    if (oTAProfile)
    {
      createHandler = [oTAProfile createHandler];
      OTAHandler = v4->_OTAHandler;
      v4->_OTAHandler = createHandler;
    }
  }

  return v4;
}

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  installerCopy = installer;
  optionsCopy = options;
  clientCopy = client;
  v17.receiver = self;
  v17.super_class = MCConfigurationProfileHandler;
  v18 = 0;
  [(MCProfileHandler *)&v17 installWithInstaller:installerCopy options:optionsCopy interactionClient:clientCopy outError:&v18];
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
    [(MCProfileServiceProfileHandler *)OTAHandler installWithInstaller:installerCopy options:optionsCopy interactionClient:clientCopy outError:&v16];
    OTAHandler = v16;
  }

  v14 = OTAHandler == 0;
  if (error && OTAHandler)
  {
    OTAHandler = OTAHandler;
    v14 = 0;
    *error = OTAHandler;
  }

LABEL_8:

  return v14;
}

- (void)didInstallOldGlobalRestrictions:(id)restrictions newGlobalRestrictions:(id)globalRestrictions
{
  v8.receiver = self;
  v8.super_class = MCConfigurationProfileHandler;
  globalRestrictionsCopy = globalRestrictions;
  restrictionsCopy = restrictions;
  [(MCProfileHandler *)&v8 didInstallOldGlobalRestrictions:restrictionsCopy newGlobalRestrictions:globalRestrictionsCopy];
  [(MCProfileServiceProfileHandler *)self->_OTAHandler didInstallOldGlobalRestrictions:restrictionsCopy newGlobalRestrictions:globalRestrictionsCopy, v8.receiver, v8.super_class];
}

- (void)setAsideWithInstaller:(id)installer
{
  installerCopy = installer;
  v6.receiver = self;
  v6.super_class = MCConfigurationProfileHandler;
  [(MCProfileHandler *)&v6 setAsideWithInstaller:installerCopy];
  OTAHandler = self->_OTAHandler;
  if (OTAHandler)
  {
    [(MCProfileServiceProfileHandler *)OTAHandler setAsideWithInstaller:installerCopy];
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

- (void)removeWithInstaller:(id)installer options:(id)options
{
  installerCopy = installer;
  optionsCopy = options;
  v9.receiver = self;
  v9.super_class = MCConfigurationProfileHandler;
  [(MCProfileHandler *)&v9 removeWithInstaller:installerCopy options:optionsCopy];
  OTAHandler = self->_OTAHandler;
  if (OTAHandler)
  {
    [(MCProfileServiceProfileHandler *)OTAHandler removeWithInstaller:installerCopy options:optionsCopy];
  }
}

@end