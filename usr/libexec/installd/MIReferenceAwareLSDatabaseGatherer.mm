@interface MIReferenceAwareLSDatabaseGatherer
- (BOOL)performGatherWithError:(id *)a3;
- (BOOL)scanExecutableBundle:(id)a3 inContainer:(id)a4 forPersona:(id)a5 withError:(id *)a6;
- (void)_generateSerializedPlacholderIfNeededForContainer:(id)a3;
@end

@implementation MIReferenceAwareLSDatabaseGatherer

- (void)_generateSerializedPlacholderIfNeededForContainer:(id)a3
{
  v3 = a3;
  if (_os_feature_enabled_impl() && ([v3 hasSerializedPlaceholder] & 1) == 0)
  {
    v7 = 0;
    v5 = [MIPlaceholderSerializer materializeForInstalledAppWithBundleContainer:v3 withError:&v7];
    v4 = v7;
    if ((v5 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
    {
      v6 = [v3 identifier];
      MOLogWrite();
    }
  }

  else
  {
    v4 = 0;
  }
}

- (BOOL)scanExecutableBundle:(id)a3 inContainer:(id)a4 forPersona:(id)a5 withError:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (+[ICLFeatureFlags appReferencesEnabled])
  {
    if (!-[MIReferenceAwareLSDatabaseGatherer targetUID](self, "targetUID") && [v11 containerClass] == 14)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
      {
        v21 = [v10 identifier];
        MOLogWrite();
      }

      v13 = 1;
      goto LABEL_19;
    }

    if (([v10 isRemovableSystemApp] & 1) == 0 && -[MIReferenceAwareLSDatabaseGatherer targetUID](self, "targetUID"))
    {
      if ([v11 containerClass] == 14)
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      v15 = +[MIAppReferenceManager defaultManager];
      v16 = [v10 identifier];
      v25 = 0;
      v17 = [v15 personaUniqueStringsForAppWithBundleID:v16 domain:v14 forUserWithID:-[MIReferenceAwareLSDatabaseGatherer targetUID](self error:{"targetUID"), &v25}];
      v18 = v25;

      v13 = v17 != 0;
      if (v17)
      {
        if ([v17 count])
        {

          goto LABEL_16;
        }

        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
        {
          v23 = [v10 identifier];
          [(MIReferenceAwareLSDatabaseGatherer *)self targetUID];
          MOLogWrite();
        }
      }

      else
      {
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          v22 = [v10 identifier];
          MOLogWrite();
        }

        if (a6)
        {
          v20 = v18;
          *a6 = v18;
        }
      }

      goto LABEL_19;
    }
  }

LABEL_16:
  if (v11)
  {
    [(MIReferenceAwareLSDatabaseGatherer *)self _generateSerializedPlacholderIfNeededForContainer:v11];
  }

  v24.receiver = self;
  v24.super_class = MIReferenceAwareLSDatabaseGatherer;
  v13 = [(MIReferenceAwareLSDatabaseGatherer *)&v24 scanExecutableBundle:v10 inContainer:v11 forPersona:v12 withError:a6];
LABEL_19:

  return v13;
}

- (BOOL)performGatherWithError:(id *)a3
{
  v5 = +[MILaunchServicesOperationManager instanceForCurrentUser];
  [v5 purge];

  v6 = +[MIGlobalConfiguration sharedInstance];
  v7 = [v6 isSharediPad];

  if ((v7 & 1) == 0)
  {
    v8 = +[MILaunchServicesOperationManager instanceForSystemSharedContent];
    [v8 purge];
  }

  v10.receiver = self;
  v10.super_class = MIReferenceAwareLSDatabaseGatherer;
  return [(MIReferenceAwareLSDatabaseGatherer *)&v10 performGatherWithError:a3];
}

@end