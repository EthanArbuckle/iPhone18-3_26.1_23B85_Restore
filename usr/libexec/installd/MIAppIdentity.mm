@interface MIAppIdentity
- (id)resolvePersonaUsingModuleSpecificLogicWithError:(id *)error;
@end

@implementation MIAppIdentity

- (id)resolvePersonaUsingModuleSpecificLogicWithError:(id *)error
{
  bundleID = [(MIAppIdentity *)self bundleID];
  if ((+[ICLFeatureFlags appReferencesEnabled]& 1) != 0)
  {
    v6 = +[MIAppReferenceManager defaultManager];
    v14 = 0;
    v7 = [v6 personaUniqueStringsForAppWithBundleID:bundleID error:&v14];
    v8 = v14;

    if (v7)
    {
      if ([v7 count] == 1)
      {
        anyObject = [v7 anyObject];
        if (!error)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v11 = sub_100010734("[MIAppIdentity(MIDaemonUtilities) resolvePersonaUsingModuleSpecificLogicWithError:]", 44, MIInstallerErrorDomain, 192, 0, 0, @"Can't resolve the persona associated with the bundle %@ from the associated personas in app references: %@", v9, bundleID);

        anyObject = 0;
        v8 = v11;
        if (!error)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      anyObject = 0;
      if (!error)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v8 = sub_1000106F4("[MIAppIdentity(MIDaemonUtilities) resolvePersonaUsingModuleSpecificLogicWithError:]", 32, MIInstallerErrorDomain, 161, 0, 0, @"%s is not enabled", v5, "[MIAppIdentity(MIDaemonUtilities) resolvePersonaUsingModuleSpecificLogicWithError:]");
    anyObject = 0;
    v7 = 0;
    if (!error)
    {
      goto LABEL_13;
    }
  }

  if (!anyObject)
  {
    v12 = v8;
    *error = v8;
  }

LABEL_13:

  return anyObject;
}

@end