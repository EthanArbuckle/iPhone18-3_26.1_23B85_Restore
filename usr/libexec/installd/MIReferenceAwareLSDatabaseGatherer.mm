@interface MIReferenceAwareLSDatabaseGatherer
- (BOOL)performGatherWithError:(id *)error;
- (BOOL)scanExecutableBundle:(id)bundle inContainer:(id)container forPersona:(id)persona withError:(id *)error;
- (void)_generateSerializedPlacholderIfNeededForContainer:(id)container;
@end

@implementation MIReferenceAwareLSDatabaseGatherer

- (void)_generateSerializedPlacholderIfNeededForContainer:(id)container
{
  containerCopy = container;
  if (_os_feature_enabled_impl() && ([containerCopy hasSerializedPlaceholder] & 1) == 0)
  {
    v7 = 0;
    v5 = [MIPlaceholderSerializer materializeForInstalledAppWithBundleContainer:containerCopy withError:&v7];
    v4 = v7;
    if ((v5 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
    {
      identifier = [containerCopy identifier];
      MOLogWrite();
    }
  }

  else
  {
    v4 = 0;
  }
}

- (BOOL)scanExecutableBundle:(id)bundle inContainer:(id)container forPersona:(id)persona withError:(id *)error
{
  bundleCopy = bundle;
  containerCopy = container;
  personaCopy = persona;
  if (+[ICLFeatureFlags appReferencesEnabled])
  {
    if (!-[MIReferenceAwareLSDatabaseGatherer targetUID](self, "targetUID") && [containerCopy containerClass] == 14)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
      {
        identifier = [bundleCopy identifier];
        MOLogWrite();
      }

      v13 = 1;
      goto LABEL_19;
    }

    if (([bundleCopy isRemovableSystemApp] & 1) == 0 && -[MIReferenceAwareLSDatabaseGatherer targetUID](self, "targetUID"))
    {
      if ([containerCopy containerClass] == 14)
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      v15 = +[MIAppReferenceManager defaultManager];
      identifier2 = [bundleCopy identifier];
      v25 = 0;
      v17 = [v15 personaUniqueStringsForAppWithBundleID:identifier2 domain:v14 forUserWithID:-[MIReferenceAwareLSDatabaseGatherer targetUID](self error:{"targetUID"), &v25}];
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
          identifier3 = [bundleCopy identifier];
          [(MIReferenceAwareLSDatabaseGatherer *)self targetUID];
          MOLogWrite();
        }
      }

      else
      {
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          identifier4 = [bundleCopy identifier];
          MOLogWrite();
        }

        if (error)
        {
          v20 = v18;
          *error = v18;
        }
      }

      goto LABEL_19;
    }
  }

LABEL_16:
  if (containerCopy)
  {
    [(MIReferenceAwareLSDatabaseGatherer *)self _generateSerializedPlacholderIfNeededForContainer:containerCopy];
  }

  v24.receiver = self;
  v24.super_class = MIReferenceAwareLSDatabaseGatherer;
  v13 = [(MIReferenceAwareLSDatabaseGatherer *)&v24 scanExecutableBundle:bundleCopy inContainer:containerCopy forPersona:personaCopy withError:error];
LABEL_19:

  return v13;
}

- (BOOL)performGatherWithError:(id *)error
{
  v5 = +[MILaunchServicesOperationManager instanceForCurrentUser];
  [v5 purge];

  v6 = +[MIGlobalConfiguration sharedInstance];
  isSharediPad = [v6 isSharediPad];

  if ((isSharediPad & 1) == 0)
  {
    v8 = +[MILaunchServicesOperationManager instanceForSystemSharedContent];
    [v8 purge];
  }

  v10.receiver = self;
  v10.super_class = MIReferenceAwareLSDatabaseGatherer;
  return [(MIReferenceAwareLSDatabaseGatherer *)&v10 performGatherWithError:error];
}

@end