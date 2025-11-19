@interface MIAppIdentity
- (id)resolvePersonaUsingModuleSpecificLogicWithError:(id *)a3;
@end

@implementation MIAppIdentity

- (id)resolvePersonaUsingModuleSpecificLogicWithError:(id *)a3
{
  v4 = [(MIAppIdentity *)self bundleID];
  if ((+[ICLFeatureFlags appReferencesEnabled]& 1) != 0)
  {
    v6 = +[MIAppReferenceManager defaultManager];
    v14 = 0;
    v7 = [v6 personaUniqueStringsForAppWithBundleID:v4 error:&v14];
    v8 = v14;

    if (v7)
    {
      if ([v7 count] == 1)
      {
        v10 = [v7 anyObject];
        if (!a3)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v11 = sub_100010734("[MIAppIdentity(MIDaemonUtilities) resolvePersonaUsingModuleSpecificLogicWithError:]", 44, MIInstallerErrorDomain, 192, 0, 0, @"Can't resolve the persona associated with the bundle %@ from the associated personas in app references: %@", v9, v4);

        v10 = 0;
        v8 = v11;
        if (!a3)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      v10 = 0;
      if (!a3)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v8 = sub_1000106F4("[MIAppIdentity(MIDaemonUtilities) resolvePersonaUsingModuleSpecificLogicWithError:]", 32, MIInstallerErrorDomain, 161, 0, 0, @"%s is not enabled", v5, "[MIAppIdentity(MIDaemonUtilities) resolvePersonaUsingModuleSpecificLogicWithError:]");
    v10 = 0;
    v7 = 0;
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  if (!v10)
  {
    v12 = v8;
    *a3 = v8;
  }

LABEL_13:

  return v10;
}

@end