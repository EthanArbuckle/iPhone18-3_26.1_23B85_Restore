@interface MIClientConnection
- (BOOL)_validateAppWithBundleID:(id)d isNotInstalledInDomain:(unint64_t)domain error:(id *)error;
- (BOOL)_validateArgsForMethodWithName:(const char *)name bundleIdentifier:(id)identifier data:(id)data optionalOptions:(id)options error:(id *)error;
- (BOOL)_validateInstallRequestForURL:(id)l identity:(id)identity targetingDomain:(unint64_t)domain options:(id)options withError:(id *)error;
- (NSString)clientName;
- (NSXPCConnection)xpcConnection;
- (void)_callBlockAfterDelegateMessagesSend:(const char *)send dispatchBlock:(id)block;
- (void)_doInstallationForURL:(id)l identity:(id)identity domain:(unint64_t)domain options:(id)options operationType:(unint64_t)type completion:(id)completion;
- (void)_finalizeStagedUpdateForIdentifier:(id)identifier completion:(id)completion;
- (void)_installURL:(id)l identity:(id)identity targetingDomain:(unint64_t)domain options:(id)options operationType:(unint64_t)type completion:(id)completion;
- (void)_placeholderInstallForStagedIdentifier:(id)identifier fromURL:(id)l completion:(id)completion;
- (void)_stageURL:(id)l identity:(id)identity domain:(unint64_t)domain options:(id)options completion:(id)completion;
- (void)_triggerRegistrationForContent:(unint64_t)content registrationOptions:(id)options writeLock:(BOOL)lock withCompletion:(id)completion;
- (void)_uninstallIdentities:(id)identities withOptions:(id)options completion:(id)completion;
- (void)acquireReferenceforInstalledAppWithIdentity:(id)identity inDomain:(unint64_t)domain matchingInstallSessionID:(id)d completion:(id)completion;
- (void)addDataSeparatedAppsWithBundleIDs:(id)ds toPersona:(id)persona withCompletion:(id)completion;
- (void)allStagedUpdatesWithCompletion:(id)completion;
- (void)cancelUpdateForStagedIdentifiers:(id)identifiers completion:(id)completion;
- (void)checkCapabilities:(id)capabilities withOptions:(id)options completion:(id)completion;
- (void)clearTestFlags:(unint64_t)flags withCompletion:(id)completion;
- (void)clearUninstalledIdentifiers:(id)identifiers withOptions:(id)options completion:(id)completion;
- (void)cloneSerializedPlaceholderForInstalledAppWithBundeID:(id)d personaUniqueString:(id)string atResultURL:(id)l withCompletion:(id)completion;
- (void)dieForTesting;
- (void)endTestModeWithCompletion:(id)completion;
- (void)enumerateInstalledAppsWithOptions:(id)options completion:(id)completion;
- (void)fetchDiskUsageForIdentifiers:(id)identifiers withOptions:(id)options completion:(id)completion;
- (void)fetchInfoForContainerizedAppWithIdentity:(id)identity inDomain:(unint64_t)domain options:(id)options completion:(id)completion;
- (void)fetchInfoForFrameworkAtURL:(id)l options:(id)options completion:(id)completion;
- (void)finalizeReference:(id)reference completion:(id)completion;
- (void)finalizeStagedInstallForIdentifier:(id)identifier returningResultInfo:(BOOL)info completion:(id)completion;
- (void)getAppMetadataForApp:(id)app completion:(id)completion;
- (void)getPidForTestingWithCompletion:(id)completion;
- (void)getTestModeWithCompletion:(id)completion;
- (void)installParallelPlaceholderForStagedIdentifier:(id)identifier fromURL:(id)l returningResultInfo:(BOOL)info completion:(id)completion;
- (void)installURL:(id)l identity:(id)identity targetingDomain:(unint64_t)domain options:(id)options returningResultInfo:(BOOL)info completion:(id)completion;
- (void)invalidateReference:(id)reference completion:(id)completion;
- (void)linkedBundleIDsForAppIdentity:(id)identity withCompletion:(id)completion;
- (void)listSafeHarborsOfType:(unint64_t)type forPersona:(id)persona withOptions:(id)options completion:(id)completion;
- (void)lookupSystemAppStateWithOptions:(id)options completion:(id)completion;
- (void)lookupUninstalledWithOptions:(id)options completion:(id)completion;
- (void)raiseExceptionWithCompletion:(id)completion;
- (void)reconcileContentsOnKnownOSModules:(id)modules completion:(id)completion;
- (void)referencesForBundleWithIdentifier:(id)identifier inDomain:(unint64_t)domain completion:(id)completion;
- (void)registerContentsForDiskImageAtURL:(id)l completion:(id)completion;
- (void)registerContentsOnOSModuleAtURL:(id)l completion:(id)completion;
- (void)registerPlaceholderForReference:(id)reference completion:(id)completion;
- (void)registerSafeHarborAtPath:(id)path forIdentity:(id)identity ofType:(unint64_t)type withOptions:(id)options completion:(id)completion;
- (void)releaseTerminationAssertion;
- (void)removeDataSeparatedAppsWithBundleIDs:(id)ds fromPersona:(id)persona withCompletion:(id)completion;
- (void)removeSafeHarborForIdentity:(id)identity ofType:(unint64_t)type withOptions:(id)options completion:(id)completion;
- (void)revertForIXWithIdentity:(id)identity withOptions:(id)options completion:(id)completion;
- (void)revertIdentity:(id)identity withOptions:(id)options completion:(id)completion;
- (void)sendDelegateMessagesComplete;
- (void)sendProgressWithDictionary:(id)dictionary;
- (void)setDataSeparatedAppsWithBundleIDs:(id)ds withPersona:(id)persona withCompletion:(id)completion;
- (void)setEligibilityTestOverrides:(id)overrides withCompletion:(id)completion;
- (void)setLaunchWarningForApp:(id)app withUniqueInstallIdentifier:(id)identifier warningData:(id)data completion:(id)completion;
- (void)setSystemAppMigrationComplete:(id)complete;
- (void)setTestFlags:(unint64_t)flags withCompletion:(id)completion;
- (void)setTestModeWithCompletion:(id)completion;
- (void)snapshotWKAppInCompanionAppID:(id)d toURL:(id)l options:(id)options completion:(id)completion;
- (void)stageInstallURL:(id)l identity:(id)identity targetingDomain:(unint64_t)domain withOptions:(id)options completion:(id)completion;
- (void)systemAppMigratorHasCompleted:(id)completed;
- (void)uninstallIdentifiers:(id)identifiers withOptions:(id)options completion:(id)completion;
- (void)uninstallIdentity:(id)identity withOptions:(id)options completion:(id)completion;
- (void)unregisterContentsForDiskImageAtURL:(id)l completion:(id)completion;
- (void)unregisterContentsOnOSModuleAtURL:(id)l completion:(id)completion;
- (void)updatePlaceholderMetadataForApp:(id)app installType:(unint64_t)type failureReason:(unint64_t)reason underlyingError:(id)error failureSource:(unint64_t)source completion:(id)completion;
- (void)updateSinfForIXWithIdentifier:(id)identifier withOptions:(id)options sinfData:(id)data completion:(id)completion;
- (void)updateiTunesMetadataForIXWithIdentifier:(id)identifier metadata:(id)metadata completion:(id)completion;
- (void)waitForSystemAppMigratorToComplete:(id)complete;
@end

@implementation MIClientConnection

- (NSString)clientName
{
  xpcConnection = [(MIClientConnection *)self xpcConnection];
  v3 = xpcConnection;
  if (xpcConnection)
  {
    processIdentifier = [xpcConnection processIdentifier];
    effectiveUserIdentifier = [v3 effectiveUserIdentifier];
    effectiveGroupIdentifier = [v3 effectiveGroupIdentifier];
    v7 = MICopyProcessNameForPid();
    v8 = [NSString stringWithFormat:@"%@ (pid %d (%u/%u))", v7, processIdentifier, effectiveUserIdentifier, effectiveGroupIdentifier];
  }

  else
  {
    v8 = @"Unknown client";
  }

  return v8;
}

- (void)sendProgressWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  xpcConnection = [(MIClientConnection *)self xpcConnection];
  v5 = xpcConnection;
  if (xpcConnection)
  {
    v6 = [xpcConnection remoteObjectProxyWithErrorHandler:&stru_1000910C0];
    [v6 reportProgress:dictionaryCopy];
  }

  else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
  }
}

- (void)sendDelegateMessagesComplete
{
  xpcConnection = [(MIClientConnection *)self xpcConnection];
  v3 = xpcConnection;
  if (xpcConnection)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000118C4;
    v5[3] = &unk_1000910E8;
    v6 = xpcConnection;
    v4 = [v6 remoteObjectProxyWithErrorHandler:v5];
    [v4 delegateMessageDeliveryCompleteWithError:0];
  }
}

- (void)releaseTerminationAssertion
{
  xpcConnection = [(MIClientConnection *)self xpcConnection];
  v3 = xpcConnection;
  if (xpcConnection)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000119F0;
    v5[3] = &unk_1000910E8;
    v6 = xpcConnection;
    v4 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v5];
    [v4 releaseTerminationAssertion];
  }
}

- (void)_callBlockAfterDelegateMessagesSend:(const char *)send dispatchBlock:(id)block
{
  blockCopy = block;
  xpcConnection = [(MIClientConnection *)self xpcConnection];
  if (xpcConnection)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100011B64;
    v8[3] = &unk_100091110;
    v9 = os_transaction_create();
    v10 = blockCopy;
    v7 = v9;
    [xpcConnection addBarrierBlock:v8];
  }

  else
  {
    blockCopy[2](blockCopy);
  }
}

- (BOOL)_validateAppWithBundleID:(id)d isNotInstalledInDomain:(unint64_t)domain error:(id *)error
{
  dCopy = d;
  v8 = +[MIAppReferenceManager defaultManager];
  v9 = [v8 personaUniqueStringsForAppWithBundleID:dCopy domain:domain forUserWithID:sub_100009864() error:0];

  v10 = [v9 count];
  if (v10)
  {
    v11 = MIInstallerErrorDomain;
    v16 = MIStringForInstallationDomain();
    v13 = sub_100010734("[MIClientConnection _validateAppWithBundleID:isNotInstalledInDomain:error:]", 303, v11, 189, 0, 0, @"Found references (%@) for %@ in %@", v12, v9);

    if (error)
    {
      v14 = v13;
      *error = v13;
    }
  }

  else
  {
    v13 = 0;
  }

  return v10 == 0;
}

- (void)_doInstallationForURL:(id)l identity:(id)identity domain:(unint64_t)domain options:(id)options operationType:(unint64_t)type completion:(id)completion
{
  lCopy = l;
  identityCopy = identity;
  optionsCopy = options;
  completionCopy = completion;
  installTypeSummaryString = [optionsCopy installTypeSummaryString];
  lsInstallType = [optionsCopy lsInstallType];
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    path = [lCopy path];
    v17 = MIStringForInstallationDomain();
    [(MIClientConnection *)self clientName];
    v36 = v35 = v17;
    v33 = installTypeSummaryString;
    v34 = lsInstallType;
    v32 = path;
    MOLogWrite();
  }

  v18 = [MIInstaller installerForURL:lCopy identity:identityCopy domain:domain options:optionsCopy operationType:type forClient:self, v32, v33, v34, v35, v36];
  v19 = v18;
  if (!v18)
  {
    path2 = [lCopy path];
    v26 = sub_100010734("[MIClientConnection _doInstallationForURL:identity:domain:options:operationType:completion:]", 327, MIInstallerErrorDomain, 4, 0, &off_10009BD40, @"Failed to create installer for %@", v25, path2);
LABEL_13:

    recordPromise = 0;
    receipt = 0;
    v21 = v26;
    goto LABEL_14;
  }

  v46 = 0;
  v20 = [v18 performInstallationWithError:&v46];
  v21 = v46;
  if (!v20)
  {
    recordPromise = 0;
    receipt = 0;
    goto LABEL_14;
  }

  receipt = [v19 receipt];
  if (!receipt)
  {
    path2 = [lCopy path];
    v26 = sub_100010734("[MIClientConnection _doInstallationForURL:identity:domain:options:operationType:completion:]", 337, MIInstallerErrorDomain, 4, 0, &off_10009BD68, @"Failed to get receipt after installing %@", v27, path2);

    goto LABEL_13;
  }

  recordPromise = [v19 recordPromise];
  if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
  {
    MOLogWrite();
  }

LABEL_14:

  [(MIClientConnection *)self sendDelegateMessagesComplete];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100012148;
  v41[3] = &unk_100091138;
  v28 = completionCopy;
  v45 = v28;
  v29 = receipt;
  v42 = v29;
  v30 = recordPromise;
  v43 = v30;
  v31 = v21;
  v44 = v31;
  [(MIClientConnection *)self _callBlockAfterDelegateMessagesSend:"com.apple.installd.installation-for-url-complete" dispatchBlock:v41];
}

- (void)installURL:(id)l identity:(id)identity targetingDomain:(unint64_t)domain options:(id)options returningResultInfo:(BOOL)info completion:(id)completion
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100012238;
  v15[3] = &unk_100091160;
  completionCopy = completion;
  infoCopy = info;
  v14 = completionCopy;
  [(MIClientConnection *)self _installURL:l identity:identity targetingDomain:domain options:options operationType:0 completion:v15];
}

- (void)_placeholderInstallForStagedIdentifier:(id)identifier fromURL:(id)l completion:(id)completion
{
  identifierCopy = identifier;
  lCopy = l;
  completionCopy = completion;
  v26 = identifierCopy;
  +[MIJournal sharedInstance];
  v23 = v35 = 0;
  v8 = [v23 journalEntryForIdentifier:identifierCopy error:&v35];
  v9 = v35;
  if (v8)
  {
    identity = [v8 identity];
    bundleID = [identity bundleID];

    sub_100054630(bundleID);
    v33 = v9;
    v34 = 0;
    v12 = [v8 installParallelPlaceholderForStagedUpdateFromURL:lCopy withResultingRecord:&v34 error:&v33];
    v13 = v34;
    v14 = v33;

    if (v12)
    {
      if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
      {
        v22 = v12;
        MOLogWrite();
      }
    }

    else
    {
      v17 = sub_100010734("[MIClientConnection _placeholderInstallForStagedIdentifier:fromURL:completion:]", 390, MIInstallerErrorDomain, 4, v14, &off_10009BD90, @"Failed to install parallel placeholder for staged update for identifier: %@", v15, v26);

      v14 = v17;
    }

    v9 = v14;
    selfCopy2 = self;
    sub_100054780(bundleID);
  }

  else
  {

    v12 = 0;
    v13 = 0;
    bundleID = 0;
    selfCopy2 = self;
  }

  [(MIClientConnection *)selfCopy2 sendDelegateMessagesComplete];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100012660;
  v28[3] = &unk_100091138;
  v18 = completionCopy;
  v32 = v18;
  v19 = v12;
  v29 = v19;
  v20 = v13;
  v30 = v20;
  v21 = v9;
  v31 = v21;
  [(MIClientConnection *)selfCopy2 _callBlockAfterDelegateMessagesSend:"com.apple.installd.placeholder-installation-for-staged-update-complete" dispatchBlock:v28];
}

- (void)installParallelPlaceholderForStagedIdentifier:(id)identifier fromURL:(id)l returningResultInfo:(BOOL)info completion:(id)completion
{
  identifierCopy = identifier;
  lCopy = l;
  completionCopy = completion;
  if ((+[ICLFeatureFlags twoStageAppInstallEnabled]& 1) != 0)
  {
    v14 = sub_1000129E4();
    v15 = sub_100012A28(self, @"InstallForInstallCoordination");
    if (v15)
    {
      [(MIClientConnection *)self sendDelegateMessagesComplete];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100012D98;
      v18[3] = &unk_100091110;
      v20 = completionCopy;
      v19 = v15;
      [(MIClientConnection *)self _callBlockAfterDelegateMessagesSend:"com.apple.installd.placeholder-install-for-staged-update-error" dispatchBlock:v18];

      v16 = v20;
    }

    else
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
      {
        clientName = [(MIClientConnection *)self clientName];
        MOLogWrite();
      }

      v16 = sub_100012BD0(0);
      dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_100012CC4;
      v24 = &unk_100091188;
      selfCopy = self;
      v26 = identifierCopy;
      v27 = lCopy;
      v29 = completionCopy;
      infoCopy = info;
      v28 = v14;
      MIRunTransactionalTask();
    }
  }

  else
  {
    v15 = sub_100010734("[MIClientConnection installParallelPlaceholderForStagedIdentifier:fromURL:returningResultInfo:completion:]", 422, MIInstallerErrorDomain, 161, 0, 0, @"%s is not enabled", v13, "[MIClientConnection installParallelPlaceholderForStagedIdentifier:fromURL:returningResultInfo:completion:]");
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, v15);
  }
}

- (void)cancelUpdateForStagedIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  v30 = objc_opt_new();
  v29 = objc_opt_new();
  v32 = objc_opt_new();
  if ((+[ICLFeatureFlags twoStageAppInstallEnabled]& 1) != 0)
  {
    v7 = +[MIJournal sharedInstance];
    v8 = sub_100012A28(self, @"InstallForInstallCoordination");
    if (v8)
    {
      v9 = 0;
      v10 = 0;
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = identifiersCopy;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v12)
      {
        v13 = *v39;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v39 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v38 + 1) + 8 * i);
            v16 = [v7 journalEntryForIdentifier:v15 error:{0, v25, v26}];

            v9 = v16;
            if (v16)
            {
              identity = [v16 identity];
              bundleID = [identity bundleID];

              v10 = bundleID;
              sub_100054630(bundleID);
              [v32 addObject:bundleID];
              v37 = v11;
              LOBYTE(identity) = [v7 purgeJournalEntry:v9 withError:&v37];
              v19 = v37;

              v11 = v19;
              if ((identity & 1) == 0)
              {
                [v29 addObject:v15];
                if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
                {
                  v25 = v9;
                  v26 = v19;
                  MOLogWrite();
                }

                v11 = 0;
              }
            }

            else
            {
              [v30 addObject:v15];
            }
          }

          v12 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v12);
      }

      if ([v30 count] || objc_msgSend(v29, "count"))
      {
        v8 = sub_100010734("[MIClientConnection cancelUpdateForStagedIdentifiers:completion:]", 526, MIInstallerErrorDomain, 4, 0, 0, @"Failed to purge some staged updates. Failed to find: %@ and purge %@ staged identifiers", v20, v30);
      }

      else
      {
        v8 = v11;
      }
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v21 = v32;
    v22 = [v21 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v22)
    {
      v23 = *v34;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v34 != v23)
          {
            objc_enumerationMutation(v21);
          }

          sub_100054780(*(*(&v33 + 1) + 8 * j));
        }

        v22 = [v21 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v22);
    }

    completionCopy[2]();
  }

  else
  {
    v8 = sub_100010734("[MIClientConnection cancelUpdateForStagedIdentifiers:completion:]", 491, MIInstallerErrorDomain, 161, 0, 0, @"%s is not enabled", v6, "[MIClientConnection cancelUpdateForStagedIdentifiers:completion:]");
    (completionCopy[2])(completionCopy, 0, v8);
    v10 = 0;
  }
}

- (void)allStagedUpdatesWithCompletion:(id)completion
{
  completionCopy = completion;
  if ((+[ICLFeatureFlags twoStageAppInstallEnabled]& 1) == 0)
  {
    v6 = sub_100010734("[MIClientConnection allStagedUpdatesWithCompletion:]", 557, MIInstallerErrorDomain, 161, 0, 0, @"%s is not enabled", v5, "[MIClientConnection allStagedUpdatesWithCompletion:]");
    completionCopy[2](completionCopy, 0, v6);
    v7 = 0;
    goto LABEL_5;
  }

  v17 = +[MIJournal sharedInstance];
  v6 = sub_100012A28(self, @"InstallForInstallCoordination");
  if (v6)
  {
    goto LABEL_3;
  }

  v22 = 0;
  v8 = [v17 journaledEntriesCleaningFailuresWithError:&v22];
  v6 = v22;
  if (!v8)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }

LABEL_3:

    v7 = 0;
    completionCopy[2](completionCopy, 0, v6);
    goto LABEL_5;
  }

  v7 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v10)
  {
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
          if ([v14 isStagedUpdate])
          {
            uniqueIdentifier = [v14 uniqueIdentifier];
            [v7 addObject:uniqueIdentifier];
          }
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [v7 copy];
  (completionCopy)[2](completionCopy, v16, 0);

LABEL_5:
}

- (void)registerPlaceholderForReference:(id)reference completion:(id)completion
{
  referenceCopy = reference;
  completionCopy = completion;
  v88 = 0;
  v89 = &v88;
  v90 = 0x3032000000;
  v91 = sub_1000141D4;
  v92 = sub_1000141E4;
  v93 = 0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = sub_1000141D4;
  v86 = sub_1000141E4;
  v87 = 0;
  v64 = referenceCopy;
  identity = [referenceCopy identity];
  if ((+[ICLFeatureFlags appReferencesEnabled]& 1) == 0)
  {
    v38 = sub_100010734("[MIClientConnection registerPlaceholderForReference:completion:]", 625, MIInstallerErrorDomain, 161, 0, 0, @"%s is not enabled", v6, "[MIClientConnection registerPlaceholderForReference:completion:]");
    v39 = v89[5];
    v89[5] = v38;

    v65 = 0;
    v16 = 0;
    v60 = 0;
    v61 = 0;
    v36 = 0;
    v23 = 0;
    v32 = 0;
LABEL_26:
    completionCopy[2](completionCopy, 0, v89[5]);
    goto LABEL_27;
  }

  bundleID = [identity bundleID];
  sub_100054628(bundleID);
  domain = [referenceCopy domain];
  v9 = (v89 + 5);
  obj = v89[5];
  v61 = [MIBundleContainer appBundleContainerForIdentifier:bundleID inDomain:domain withError:&obj];
  v60 = bundleID;
  objc_storeStrong(v9, obj);
  if (!v61)
  {
    v40 = sub_100010734("[MIClientConnection registerPlaceholderForReference:completion:]", 635, MIInstallerErrorDomain, 4, v89[5], 0, @"Failed to find bundle container when registering placeholder for %@", v10, referenceCopy);
LABEL_21:
    v41 = 0;
    v16 = 0;
    v23 = 0;
    v42 = v89[5];
    v89[5] = v40;
LABEL_22:

LABEL_24:
    v32 = 0;
LABEL_25:
    v36 = 0;
    v65 = v41;
    identity2 = [v64 identity];
    bundleID2 = [identity2 bundleID];
    sub_100054780(bundleID2);

    goto LABEL_26;
  }

  v80 = 0;
  bundle = [v61 bundle];
  if (!bundle)
  {
    v40 = sub_100010734("[MIClientConnection registerPlaceholderForReference:completion:]", 642, MIInstallerErrorDomain, 36, 0, 0, @"Failed to find bundle in bundle container %@", v12, v61);
    goto LABEL_21;
  }

  v13 = (v89 + 5);
  v79 = v89[5];
  v14 = bundle;
  v15 = [identity resolvePersonaWithError:&v79];
  objc_storeStrong(v13, v79);
  v16 = v14;
  if (!v15)
  {
    v41 = 0;
    v23 = 0;
    goto LABEL_24;
  }

  v17 = v14;
  personaUniqueString = [identity personaUniqueString];
  v19 = (v89 + 5);
  v78 = v89[5];
  v20 = [MIDataContainer dataContainerForExecutableBundle:v17 forPersona:personaUniqueString createIfNeeded:1 temporary:0 created:&v80 error:&v78];
  objc_storeStrong(v19, v78);

  v59 = personaUniqueString;
  if (!v20)
  {
    v23 = personaUniqueString;
    v45 = sub_100010734("[MIClientConnection registerPlaceholderForReference:completion:]", 652, MIInstallerErrorDomain, 4, v89[5], 0, @"Failed to create data container when registering placeholder for %@", v21, referenceCopy);
    v41 = 0;
    v42 = v89[5];
    v89[5] = v45;
    v16 = v17;
    goto LABEL_22;
  }

  v22 = (v89 + 5);
  v77 = v89[5];
  v23 = personaUniqueString;
  v24 = [v17 appExtensionBundlesWithError:&v77];
  objc_storeStrong(v22, v77);
  v16 = v17;
  if (!v24)
  {
    v51 = sub_100010734("[MIClientConnection registerPlaceholderForReference:completion:]", 658, MIInstallerErrorDomain, 4, v89[5], 0, @"Failed to get app extensions when registering placeholder for %@", v25, referenceCopy);
    v41 = 0;
    v42 = v89[5];
    v89[5] = v51;
    goto LABEL_22;
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v65 = v24;
  v26 = [v65 countByEnumeratingWithState:&v73 objects:v94 count:16];
  if (v26)
  {
    v27 = *v74;
    while (2)
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v74 != v27)
        {
          objc_enumerationMutation(v65);
        }

        v29 = *(*(&v73 + 1) + 8 * i);
        v30 = (v89 + 5);
        v72 = v89[5];
        v31 = [v29 dataContainerCreatingIfNeeded:1 forPersona:v59 makeLive:1 created:0 error:&v72];
        objc_storeStrong(v30, v72);

        if (!v31)
        {
          v46 = v89[5];
          identifier = [v29 identifier];
          v49 = sub_100010734("[MIClientConnection registerPlaceholderForReference:completion:]", 664, MIInstallerErrorDomain, 4, v46, 0, @"Failed to create data container for app extension %@ when registering placeholder for %@", v48, identifier);
          v50 = v89[5];
          v89[5] = v49;

          v42 = v65;
          v41 = v65;
          goto LABEL_22;
        }
      }

      v26 = [v65 countByEnumeratingWithState:&v73 objects:v94 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  v32 = [[MIInstalledInfoGatherer alloc] initWithBundleContainer:v61 forPersona:v59];
  v33 = (v89 + 5);
  v71 = v89[5];
  v57 = [v32 bundleRecordWithError:&v71];
  objc_storeStrong(v33, v71);
  if (!v57)
  {
    v41 = v65;
    goto LABEL_25;
  }

  [v57 setIsPlaceholder:1];
  identity3 = [v64 identity];
  bundleID3 = [identity3 bundleID];
  sub_100054780(bundleID3);

  v35 = sub_10000998C();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000141EC;
  block[3] = &unk_100090CD8;
  v69 = &v82;
  v36 = v57;
  v67 = v36;
  v37 = v64;
  v68 = v37;
  v70 = &v88;
  dispatch_sync(v35, block);

  if (!v83[5])
  {
    v58 = v89[5];
    identity4 = [v37 identity];
    v54 = sub_100010734("[MIClientConnection registerPlaceholderForReference:completion:]", 689, MIInstallerErrorDomain, 4, v58, 0, @"Failed to register installation record for %@", v53, identity4);
    v55 = v89[5];
    v89[5] = v54;

    goto LABEL_26;
  }

  completionCopy[2](completionCopy, v83[5], 0);
LABEL_27:

  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v88, 8);
}

- (BOOL)_validateInstallRequestForURL:(id)l identity:(id)identity targetingDomain:(unint64_t)domain options:(id)options withError:(id *)error
{
  lCopy = l;
  identityCopy = identity;
  optionsCopy = options;
  objc_opt_class();
  v15 = lCopy;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (!v16)
  {
    sub_100010734("[MIClientConnection _validateInstallRequestForURL:identity:targetingDomain:options:withError:]", 740, MIInstallerErrorDomain, 25, 0, &off_10009BDB8, @"URL provided to install was not a URL or was nil", v17, v42);
    v18 = LABEL_16:;
LABEL_17:
    v28 = v18;
    goto LABEL_18;
  }

  v18 = sub_100012A28(self, @"InstallForInstallCoordination");
  if (v18)
  {
    goto LABEL_17;
  }

  if ([optionsCopy allowLocalProvisioned])
  {
    v18 = sub_100012A28(self, @"InstallLocalProvisioned");
    if (v18)
    {
      goto LABEL_17;
    }
  }

  linkedParentBundleID = [optionsCopy linkedParentBundleID];

  if (linkedParentBundleID && (sub_10001473C(self) & 1) == 0)
  {
    v32 = MIInstallerErrorDomain;
    clientName = [(MIClientConnection *)self clientName];
    v28 = sub_100010734("[MIClientConnection _validateInstallRequestForURL:identity:targetingDomain:options:withError:]", 761, v32, 2, 0, &off_10009BDE0, @"Process %@ tried to set an install option %@, but that option may only be passed from callers originating through InstallCoordination SPI.", v34, clientName);

    goto LABEL_18;
  }

  if ((MIIsValidInstallationDomain() & 1) == 0)
  {
    sub_100010734("[MIClientConnection _validateInstallRequestForURL:identity:targetingDomain:options:withError:]", 775, MIInstallerErrorDomain, 25, 0, 0, @"Installation domain provided was not valid: %lu", v20, domain);
    goto LABEL_16;
  }

  bundleIdentifier = [optionsCopy bundleIdentifier];

  if (!bundleIdentifier)
  {
    v35 = MIInstallerErrorDomain;
    path = [v15 path];
    v28 = sub_100010734("[MIClientConnection _validateInstallRequestForURL:identity:targetingDomain:options:withError:]", 780, v35, 25, 0, 0, @"Install options did not specify a bundle identifier for the install of %@", v36, path);
    goto LABEL_25;
  }

  if (!identityCopy)
  {
    v37 = [MIAppIdentity alloc];
    bundleIdentifier2 = [optionsCopy bundleIdentifier];
    identityCopy = [v37 initWithBundleID:bundleIdentifier2];

LABEL_27:
    if (+[ICLFeatureFlags appReferencesEnabled])
    {
      if (domain == 3)
      {
        v39 = 2;
      }

      else
      {
        v39 = 3;
      }

      bundleID = [identityCopy bundleID];
      v44 = 0;
      v41 = [(MIClientConnection *)self _validateAppWithBundleID:bundleID isNotInstalledInDomain:v39 error:&v44];
      v28 = v44;

      if ((v41 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v28 = 0;
    }

    v30 = 1;
    goto LABEL_21;
  }

  bundleID2 = [identityCopy bundleID];
  bundleIdentifier3 = [optionsCopy bundleIdentifier];
  v24 = [bundleID2 isEqualToString:bundleIdentifier3];

  if (v24)
  {
    goto LABEL_27;
  }

  v25 = MIInstallerErrorDomain;
  path = [optionsCopy bundleIdentifier];
  bundleID3 = [identityCopy bundleID];
  v28 = sub_100010734("[MIClientConnection _validateInstallRequestForURL:identity:targetingDomain:options:withError:]", 785, v25, 25, 0, 0, @"Bundle identifier in install options (%@) did not match the one in application identity (%@)", v27, path);

LABEL_25:
LABEL_18:
  if (error)
  {
    v29 = v28;
    v30 = 0;
    *error = v28;
  }

  else
  {
    v30 = 0;
  }

LABEL_21:

  return v30;
}

- (void)_installURL:(id)l identity:(id)identity targetingDomain:(unint64_t)domain options:(id)options operationType:(unint64_t)type completion:(id)completion
{
  lCopy = l;
  identityCopy = identity;
  optionsCopy = options;
  completionCopy = completion;
  v18 = sub_1000129E4();
  v37[0] = 0;
  v19 = [(MIClientConnection *)self _validateInstallRequestForURL:lCopy identity:identityCopy targetingDomain:domain options:optionsCopy withError:v37];
  v20 = v37[0];
  if (v19)
  {
    v21 = sub_100012BD0([optionsCopy isUserInitiated]);
    dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_100014A70;
    v28 = &unk_1000911B0;
    selfCopy = self;
    v30 = lCopy;
    v31 = identityCopy;
    domainCopy = domain;
    v32 = optionsCopy;
    typeCopy = type;
    v34 = completionCopy;
    v33 = v18;
    MIRunTransactionalTask();
  }

  else
  {
    [(MIClientConnection *)self sendDelegateMessagesComplete];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100014ABC;
    v22[3] = &unk_100091110;
    v24 = completionCopy;
    v23 = v20;
    [(MIClientConnection *)self _callBlockAfterDelegateMessagesSend:"com.apple.installd.install-url-error" dispatchBlock:v22];

    v21 = v24;
  }
}

- (void)_stageURL:(id)l identity:(id)identity domain:(unint64_t)domain options:(id)options completion:(id)completion
{
  lCopy = l;
  identityCopy = identity;
  optionsCopy = options;
  completionCopy = completion;
  installTypeSummaryString = [optionsCopy installTypeSummaryString];
  lsInstallType = [optionsCopy lsInstallType];
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    path = [lCopy path];
    v15 = MIStringForInstallationDomain();
    [(MIClientConnection *)self clientName];
    v32 = v31 = v15;
    v29 = installTypeSummaryString;
    v30 = lsInstallType;
    v28 = path;
    MOLogWrite();
  }

  v16 = [MIInstaller installerForURL:lCopy identity:identityCopy domain:domain options:optionsCopy operationType:1 forClient:self, v28, v29, v30, v31, v32];
  v17 = v16;
  if (!v16)
  {
    path2 = [lCopy path];
    v23 = sub_100010734("[MIClientConnection _stageURL:identity:domain:options:completion:]", 906, MIInstallerErrorDomain, 4, 0, &off_10009BE08, @"Failed to create installer for %@", v22, path2);
LABEL_13:

    stagedUpdateMetadata = 0;
    v19 = v23;
    goto LABEL_14;
  }

  v41 = 0;
  v18 = [v16 performInstallationWithError:&v41];
  v19 = v41;
  if (!v18)
  {
    stagedUpdateMetadata = 0;
    goto LABEL_14;
  }

  stagedUpdateMetadata = [v17 stagedUpdateMetadata];
  if (!stagedUpdateMetadata)
  {
    path2 = [lCopy path];
    v23 = sub_100010734("[MIClientConnection _stageURL:identity:domain:options:completion:]", 916, MIInstallerErrorDomain, 4, 0, &off_10009BE30, @"Failed to get receipt after installing %@", v24, path2);

    goto LABEL_13;
  }

  if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
  {
    MOLogWrite();
  }

LABEL_14:

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100014F40;
  v37[3] = &unk_1000911D8;
  v25 = completionCopy;
  v40 = v25;
  v26 = stagedUpdateMetadata;
  v38 = v26;
  v27 = v19;
  v39 = v27;
  [(MIClientConnection *)self _callBlockAfterDelegateMessagesSend:"com.apple.installd.staging-url-complete" dispatchBlock:v37];
}

- (void)stageInstallURL:(id)l identity:(id)identity targetingDomain:(unint64_t)domain withOptions:(id)options completion:(id)completion
{
  lCopy = l;
  identityCopy = identity;
  optionsCopy = options;
  completionCopy = completion;
  v16 = sub_1000129E4();
  if ((+[ICLFeatureFlags twoStageAppInstallEnabled]& 1) != 0)
  {
    v35[0] = 0;
    v18 = [(MIClientConnection *)self _validateInstallRequestForURL:lCopy identity:identityCopy targetingDomain:domain options:optionsCopy withError:v35];
    v19 = v35[0];
    if (v18)
    {
      v20 = sub_100012BD0([optionsCopy isUserInitiated]);
      dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
      v24 = _NSConcreteStackBlock;
      v25 = 3221225472;
      v26 = sub_100015290;
      v27 = &unk_100091200;
      selfCopy = self;
      v29 = lCopy;
      v30 = identityCopy;
      domainCopy = domain;
      v31 = optionsCopy;
      v33 = completionCopy;
      v32 = v16;
      MIRunTransactionalTask();
    }

    else
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000152D8;
      v21[3] = &unk_100091110;
      v23 = completionCopy;
      v22 = v19;
      [(MIClientConnection *)self _callBlockAfterDelegateMessagesSend:"com.apple.installd.staging-url-error" dispatchBlock:v21];

      v20 = v23;
    }
  }

  else
  {
    v19 = sub_100010734("[MIClientConnection stageInstallURL:identity:targetingDomain:withOptions:completion:]", 942, MIInstallerErrorDomain, 161, 0, 0, @"%s is not enabled", v17, "[MIClientConnection stageInstallURL:identity:targetingDomain:withOptions:completion:]");
    (*(completionCopy + 2))(completionCopy, 0, v19);
  }
}

- (void)_finalizeStagedUpdateForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v37 = identifierCopy;
  +[MIJournal sharedInstance];
  v35 = v45[0] = 0;
  v6 = [v35 journalEntryForIdentifier:identifierCopy error:v45];
  v7 = v45[0];
  v8 = v7;
  if (!v6)
  {
    recordPromise = 0;
    v17 = 0;
    receipt = 0;
    v10 = 0;
    v20 = v7;
    goto LABEL_16;
  }

  installOptions = [v6 installOptions];
  v10 = installOptions;
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    installTypeSummaryString = [installOptions installTypeSummaryString];
    lsInstallType = [v10 lsInstallType];
    [v6 installationDomain];
    v13 = MIStringForInstallationDomain();
    [(MIClientConnection *)self clientName];
    v34 = v33 = v13;
    v31 = installTypeSummaryString;
    v32 = lsInstallType;
    v30 = identifierCopy;
    MOLogWrite();
  }

  identity = [v6 identity];
  installationDomain = [v6 installationDomain];
  installOptions2 = [v6 installOptions];
  v17 = [MIInstaller installerForURL:0 identity:identity domain:installationDomain options:installOptions2 operationType:2 forClient:self];

  if (!v17)
  {
    v24 = sub_100010734("[MIClientConnection _finalizeStagedUpdateForIdentifier:completion:]", 1011, MIInstallerErrorDomain, 4, 0, &off_10009BE58, @"Failed to create installer for installing staged update %@", v18, v37);
    v17 = 0;
LABEL_15:

    recordPromise = 0;
    receipt = 0;
    v20 = v24;
    goto LABEL_16;
  }

  v44 = v8;
  v19 = [v17 applyStagedUpdateWithJournalEntry:v6 error:&v44];
  v20 = v44;

  if (!v19)
  {
    recordPromise = 0;
    receipt = 0;
    goto LABEL_16;
  }

  receipt = [v17 receipt];
  if (!receipt)
  {
    v24 = sub_100010734("[MIClientConnection _finalizeStagedUpdateForIdentifier:completion:]", 1021, MIInstallerErrorDomain, 4, 0, &off_10009BE80, @"Failed to get receipt after installing staged update %@", v21, v37);
    v8 = v20;
    goto LABEL_15;
  }

  recordPromise = [v17 recordPromise];
  if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
  {
    MOLogWrite();
  }

LABEL_16:

  v25 = recordPromise;
  [(MIClientConnection *)self sendDelegateMessagesComplete];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100015858;
  v39[3] = &unk_100091138;
  v26 = completionCopy;
  v43 = v26;
  v27 = receipt;
  v40 = v27;
  v28 = v25;
  v41 = v28;
  v29 = v20;
  v42 = v29;
  [(MIClientConnection *)self _callBlockAfterDelegateMessagesSend:"com.apple.installd.installation-for-staged-update-complete" dispatchBlock:v39];
}

- (void)finalizeStagedInstallForIdentifier:(id)identifier returningResultInfo:(BOOL)info completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ((+[ICLFeatureFlags twoStageAppInstallEnabled]& 1) != 0)
  {
    v11 = sub_1000129E4();
    v12 = sub_100012A28(self, @"InstallForInstallCoordination");
    if (v12)
    {
      [(MIClientConnection *)self sendDelegateMessagesComplete];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100015C28;
      v14[3] = &unk_100091110;
      v16 = completionCopy;
      v15 = v12;
      [(MIClientConnection *)self _callBlockAfterDelegateMessagesSend:"com.apple.installd.installation-for-staged-update" dispatchBlock:v14];

      v13 = v16;
    }

    else
    {
      v13 = sub_100012BD0(0);
      dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_100015B5C;
      v20 = &unk_100091228;
      selfCopy = self;
      v22 = identifierCopy;
      v24 = completionCopy;
      infoCopy = info;
      v23 = v11;
      MIRunTransactionalTask();
    }
  }

  else
  {
    v12 = sub_100010734("[MIClientConnection finalizeStagedInstallForIdentifier:returningResultInfo:completion:]", 1050, MIInstallerErrorDomain, 161, 0, 0, @"%s is not enabled", v10, "[MIClientConnection finalizeStagedInstallForIdentifier:returningResultInfo:completion:]");
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, v12);
  }
}

- (void)revertIdentity:(id)identity withOptions:(id)options completion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100015CF4;
  v9[3] = &unk_100091250;
  completionCopy = completion;
  v8 = completionCopy;
  [(MIClientConnection *)self revertForIXWithIdentity:identity withOptions:options completion:v9];
}

- (void)revertForIXWithIdentity:(id)identity withOptions:(id)options completion:(id)completion
{
  identityCopy = identity;
  optionsCopy = options;
  completionCopy = completion;
  bundleID = [identityCopy bundleID];
  v10 = sub_100012A28(self, @"RevertForInstallCoordination");
  if (v10)
  {
    recordPromise = 0;
    v12 = 0;
    receipt = 0;
    goto LABEL_22;
  }

  if (optionsCopy)
  {
    objc_opt_class();
    v14 = optionsCopy;
    v15 = (objc_opt_isKindOfClass() & 1) != 0 ? v14 : 0;

    if (!v15)
    {
      v12 = 0;
      v23 = sub_100010734("[MIClientConnection revertForIXWithIdentity:withOptions:completion:]", 1136, MIInstallerErrorDomain, 25, 0, &off_10009BEA8, @"Options provided was not a dictionary", v16, v28);
      goto LABEL_21;
    }
  }

  objc_opt_class();
  v17 = bundleID;
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (!v18)
  {
    v12 = 0;
    v23 = sub_100010734("[MIClientConnection revertForIXWithIdentity:withOptions:completion:]", 1141, MIInstallerErrorDomain, 25, 0, 0, @"Identifier provided to revert was not a string or was nil", v19, v28);
LABEL_21:
    v10 = v23;
    recordPromise = 0;
    receipt = 0;
    goto LABEL_22;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    clientName = [(MIClientConnection *)self clientName];
    v30 = optionsCopy;
    v28 = v17;
    MOLogWrite();
  }

  v20 = [MIReverter reverterForAppIdentity:identityCopy withOptions:optionsCopy forClient:self, v28, clientName, v30];
  v38 = 0;
  v21 = [v20 performRevertWithError:&v38];
  v22 = v38;
  if (v21)
  {
    receipt = [v20 receipt];
    recordPromise = [v20 recordPromise];
  }

  else
  {
    recordPromise = 0;
    receipt = 0;
  }

  v10 = v22;
  v12 = v20;
LABEL_22:

  [(MIClientConnection *)self sendDelegateMessagesComplete];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100016188;
  v33[3] = &unk_100091138;
  v24 = completionCopy;
  v37 = v24;
  v25 = receipt;
  v34 = v25;
  v26 = recordPromise;
  v35 = v26;
  v27 = v10;
  v36 = v27;
  [(MIClientConnection *)self _callBlockAfterDelegateMessagesSend:"com.apple.installd.revert-complete" dispatchBlock:v33];
}

- (void)uninstallIdentifiers:(id)identifiers withOptions:(id)options completion:(id)completion
{
  identifiersCopy = identifiers;
  optionsCopy = options;
  completionCopy = completion;
  v10 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = identifiersCopy;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [[MIAppIdentity alloc] initWithBundleIdentifier:*(*(&v19 + 1) + 8 * v15) personaUniqueString:@"PersonalPersonaPlaceholderString"];
        [v10 addObject:v16];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = [v10 copy];
  [(MIClientConnection *)self _uninstallIdentities:v17 withOptions:optionsCopy completion:completionCopy];
}

- (void)_uninstallIdentities:(id)identities withOptions:(id)options completion:(id)completion
{
  identitiesCopy = identities;
  optionsCopy = options;
  completionCopy = completion;
  v11 = sub_100012A28(self, @"UninstallForInstallCoordination");
  if (!v11)
  {
    objc_opt_class();
    v14 = identitiesCopy;
    if (objc_opt_isKindOfClass())
    {
      if (v14)
      {
        objc_opt_class();
        v16 = sub_100010AB8(v14);

        if (v16)
        {
          if (!optionsCopy || ((objc_opt_class(), v17 = optionsCopy, (objc_opt_isKindOfClass() & 1) == 0) ? (v18 = 0) : (v18 = v17), v17, v18, v18))
          {
            if ([v14 count] == 1)
            {
              if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
              {
                goto LABEL_25;
              }

              clientName = [(MIClientConnection *)self clientName];
              v33 = [v14 objectAtIndexedSubscript:0];
              v34 = optionsCopy;
              v32 = clientName;
              MOLogWrite();
            }

            else
            {
              if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
              {
                goto LABEL_25;
              }

              clientName = [(MIClientConnection *)self clientName];
              v33 = v14;
              v34 = optionsCopy;
              v32 = clientName;
              MOLogWrite();
            }

LABEL_25:
            v27 = [MIUninstaller uninstallerForIdentities:v14 withOptions:optionsCopy forClient:self, v32, v33, v34];
            v12 = v27;
            if (v27)
            {
              v39 = 0;
              v29 = [v27 performUninstallationWithError:&v39];
              v30 = v39;
              if (v29)
              {
                receipt = [v12 receipt];
                if (!receipt)
                {
                  v11 = sub_100010734("[MIClientConnection _uninstallIdentities:withOptions:completion:]", 1227, MIInstallerErrorDomain, 4, 0, &off_10009BF48, @"Failed to get receipt after uninstalling %@", v31, v14);

                  goto LABEL_3;
                }

                if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
                {
                  MOLogWrite();
                  v11 = v30;
                  goto LABEL_14;
                }
              }

              else
              {
                receipt = 0;
              }

              v11 = v30;
              goto LABEL_14;
            }

            v22 = sub_100010734("[MIClientConnection _uninstallIdentities:withOptions:completion:]", 1217, MIInstallerErrorDomain, 4, 0, &off_10009BF20, @"Failed to create uninstaller for %@", v28, v14);
LABEL_13:
            v11 = v22;
            v12 = 0;
            receipt = 0;
            goto LABEL_14;
          }

          v19 = @"Options provided was not a dictionary";
          v20 = 1205;
          v21 = &off_10009BEF8;
LABEL_12:
          v22 = sub_100010734("[MIClientConnection _uninstallIdentities:withOptions:completion:]", v20, MIInstallerErrorDomain, 25, 0, v21, v19, v15, v32);
          goto LABEL_13;
        }
      }
    }

    else
    {
    }

    v19 = @"Identifers provided was not an array of strings";
    v20 = 1200;
    v21 = &off_10009BED0;
    goto LABEL_12;
  }

  v12 = 0;
LABEL_3:
  receipt = 0;
LABEL_14:

  [(MIClientConnection *)self sendDelegateMessagesComplete];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000168C4;
  v35[3] = &unk_1000911D8;
  v23 = completionCopy;
  v38 = v23;
  v24 = receipt;
  v36 = v24;
  v25 = v11;
  v37 = v25;
  [(MIClientConnection *)self _callBlockAfterDelegateMessagesSend:"com.apple.installd.uninstall-identifiers-complete" dispatchBlock:v35];
}

- (void)uninstallIdentity:(id)identity withOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  identityCopy = identity;
  optionsCopy = options;
  identityCopy2 = identity;
  v11 = [NSArray arrayWithObjects:&identityCopy count:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100016A00;
  v13[3] = &unk_100091278;
  v14 = completionCopy;
  v12 = completionCopy;
  [(MIClientConnection *)self _uninstallIdentities:v11 withOptions:optionsCopy completion:v13];
}

- (void)lookupUninstalledWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v7 = sub_100012A28(self, @"LookupUninstalled");
  if (!v7)
  {
    if (optionsCopy && ((objc_opt_class(), v8 = optionsCopy, (objc_opt_isKindOfClass() & 1) == 0) ? (v9 = 0) : (v9 = v8), v8, v9, !v9))
    {
      v13 = sub_100010734("[MIClientConnection lookupUninstalledWithOptions:completion:]", 1270, MIInstallerErrorDomain, 25, 0, 0, @"Options provided was not a dictionary", v10, clientName);
    }

    else
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
      {
        clientName = [(MIClientConnection *)self clientName];
        v15 = optionsCopy;
        MOLogWrite();
      }

      v11 = [MIUninstalledAppList sharedList:clientName];
      uninstalledDictionary = [v11 uninstalledDictionary];

      if (uninstalledDictionary)
      {
        v7 = 0;
        goto LABEL_19;
      }

      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        MOLogWrite();
      }

      v13 = [NSError errorWithDomain:MIInstallerErrorDomain code:1 userInfo:&off_10009BF70];
    }

    v7 = v13;
  }

  uninstalledDictionary = 0;
LABEL_19:
  completionCopy[2](completionCopy, uninstalledDictionary, v7);
}

- (void)clearUninstalledIdentifiers:(id)identifiers withOptions:(id)options completion:(id)completion
{
  identifiersCopy = identifiers;
  optionsCopy = options;
  completionCopy = completion;
  v10 = sub_100012A28(self, @"ClearUninstalled");
  if (v10)
  {
    goto LABEL_18;
  }

  if (optionsCopy)
  {
    objc_opt_class();
    v11 = optionsCopy;
    v12 = (objc_opt_isKindOfClass() & 1) != 0 ? v11 : 0;

    if (!v12)
    {
      v17 = @"Options provided was not a dictionary";
      v18 = 1307;
      goto LABEL_17;
    }
  }

  objc_opt_class();
  v14 = identifiersCopy;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_15:
    v17 = @"Identifers provided was not an array of strings";
    v18 = 1312;
LABEL_17:
    v10 = sub_100010734("[MIClientConnection clearUninstalledIdentifiers:withOptions:completion:]", v18, MIInstallerErrorDomain, 25, 0, 0, v17, v13, v19);
    goto LABEL_18;
  }

  if (!v14)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  v15 = sub_100010AB8(v14);

  if ((v15 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    [(MIClientConnection *)self clientName];
    v20 = optionsCopy;
    v19 = v21 = v14;
    MOLogWrite();
  }

  v16 = [MIUninstalledAppList sharedList:v19];
  [v16 removeIdentifiers:v14];

  v10 = 0;
LABEL_18:
  completionCopy[2](completionCopy, v10);
}

- (void)lookupSystemAppStateWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v7 = sub_100012A28(self, @"LookupSystemAppState");
  if (!v7)
  {
    if (optionsCopy && ((objc_opt_class(), v8 = optionsCopy, (objc_opt_isKindOfClass() & 1) == 0) ? (v9 = 0) : (v9 = v8), v8, v9, !v9))
    {
      v14 = sub_100010734("[MIClientConnection lookupSystemAppStateWithOptions:completion:]", 1347, MIInstallerErrorDomain, 25, 0, 0, @"Options provided was not a dictionary", v10, clientName);
    }

    else
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
      {
        clientName = [(MIClientConnection *)self clientName];
        v16 = optionsCopy;
        MOLogWrite();
      }

      v11 = [MISystemAppState sharedList:clientName];
      v12 = [optionsCopy objectForKeyedSubscript:@"RestoreBackupAppState"];
      v13 = [v11 systemAppStateDictionaryRestoringBackedUpState:{sub_100010A60(v12, 0)}];

      if (v13)
      {
        v7 = 0;
        goto LABEL_19;
      }

      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        MOLogWrite();
      }

      v14 = [NSError errorWithDomain:MIInstallerErrorDomain code:1 userInfo:&off_10009BF98];
    }

    v7 = v14;
  }

  v13 = 0;
LABEL_19:
  completionCopy[2](completionCopy, v13, v7);
}

- (void)registerContentsForDiskImageAtURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  if (sub_10001473C(self))
  {
    objc_opt_class();
    v7 = lCopy;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v13 = +[MIDiskImageManager sharedInstance];
      [v13 registerContentsOnAttachedEntityAtURL:v7 ofType:1 completion:completionCopy];

      v11 = 0;
    }

    else
    {
      v11 = sub_100010734("[MIClientConnection registerContentsForDiskImageAtURL:completion:]", 1430, MIInstallerErrorDomain, 25, 0, 0, @"Disk image path for registering contents was not a URL.", v12, v14);
      completionCopy[2](completionCopy, v11);
    }
  }

  else
  {
    clientName = [(MIClientConnection *)self clientName];
    v11 = sub_100010734("[MIClientConnection registerContentsForDiskImageAtURL:completion:]", 1424, MIInstallerErrorDomain, 2, 0, &off_10009BFC0, @"Process %@ tried to register disk image, but disk registration can only be done by InstallCoordination.", v10, clientName);

    completionCopy[2](completionCopy, v11);
  }
}

- (void)unregisterContentsForDiskImageAtURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  if (sub_10001473C(self))
  {
    objc_opt_class();
    v7 = lCopy;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v13 = +[MIDiskImageManager sharedInstance];
      [v13 unregisterContentsOnAttachedEntityAtURL:v7 ofType:1 completion:completionCopy];

      v11 = 0;
    }

    else
    {
      v11 = sub_100010734("[MIClientConnection unregisterContentsForDiskImageAtURL:completion:]", 1461, MIInstallerErrorDomain, 25, 0, 0, @"Disk image path for unregistering content was not a URL.", v12, v14);
      completionCopy[2](completionCopy, v11);
    }
  }

  else
  {
    clientName = [(MIClientConnection *)self clientName];
    v11 = sub_100010734("[MIClientConnection unregisterContentsForDiskImageAtURL:completion:]", 1455, MIInstallerErrorDomain, 2, 0, &off_10009BFE8, @"Process %@ tried to unregister disk image, but disk registration can only be done by InstallCoordination.", v10, clientName);

    completionCopy[2](completionCopy, v11);
  }
}

- (void)registerContentsOnOSModuleAtURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  if (sub_10001473C(self))
  {
    objc_opt_class();
    v7 = lCopy;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v13 = +[MIDiskImageManager sharedInstance];
      [v13 registerContentsOnAttachedEntityAtURL:v7 ofType:2 completion:completionCopy];

      v11 = 0;
    }

    else
    {
      v11 = sub_100010734("[MIClientConnection registerContentsOnOSModuleAtURL:completion:]", 1494, MIInstallerErrorDomain, 25, 0, 0, @"OS module path for registering contents was not a URL.", v12, v14);
      completionCopy[2](completionCopy, v11);
    }
  }

  else
  {
    clientName = [(MIClientConnection *)self clientName];
    v11 = sub_100010734("[MIClientConnection registerContentsOnOSModuleAtURL:completion:]", 1488, MIInstallerErrorDomain, 2, 0, &off_10009C010, @"Process %@ tried to register os module, but registration can only be done by InstallCoordination.", v10, clientName);

    completionCopy[2](completionCopy, v11);
  }
}

- (void)unregisterContentsOnOSModuleAtURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  if (sub_10001473C(self))
  {
    objc_opt_class();
    v7 = lCopy;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v13 = +[MIDiskImageManager sharedInstance];
      [v13 unregisterContentsOnAttachedEntityAtURL:v7 ofType:2 completion:completionCopy];

      v11 = 0;
    }

    else
    {
      v11 = sub_100010734("[MIClientConnection unregisterContentsOnOSModuleAtURL:completion:]", 1525, MIInstallerErrorDomain, 25, 0, 0, @"OS module path for unregistering content was not a URL.", v12, v14);
      completionCopy[2](completionCopy, v11);
    }
  }

  else
  {
    clientName = [(MIClientConnection *)self clientName];
    v11 = sub_100010734("[MIClientConnection unregisterContentsOnOSModuleAtURL:completion:]", 1519, MIInstallerErrorDomain, 2, 0, &off_10009C038, @"Process %@ tried to unregister os module, but unregistration can only be done by InstallCoordination.", v10, clientName);

    completionCopy[2](completionCopy, v11);
  }
}

- (void)reconcileContentsOnKnownOSModules:(id)modules completion:(id)completion
{
  modulesCopy = modules;
  completionCopy = completion;
  if (sub_10001473C(self))
  {
    objc_opt_class();
    v7 = modulesCopy;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v13 = +[MIDiskImageManager sharedInstance];
      [v13 reconcileContentsOnKnownOSModules:v7 completion:completionCopy];

      v11 = 0;
    }

    else
    {
      v11 = sub_100010734("[MIClientConnection reconcileContentsOnKnownOSModules:completion:]", 1556, MIInstallerErrorDomain, 25, 0, 0, @"List of known OS modules was not a set.", v12, v14);
      completionCopy[2](completionCopy, v11);
    }
  }

  else
  {
    clientName = [(MIClientConnection *)self clientName];
    v11 = sub_100010734("[MIClientConnection reconcileContentsOnKnownOSModules:completion:]", 1550, MIInstallerErrorDomain, 2, 0, &off_10009C060, @"Process %@ tried to set known os modules, but that operation can only be done by InstallCoordination.", v10, clientName);

    completionCopy[2](completionCopy, v11);
  }
}

- (void)enumerateInstalledAppsWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  if (qword_1000A9628 != -1)
  {
    sub_100057D68();
  }

  v8 = qword_1000A9630;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000182B4;
  block[3] = &unk_100090F50;
  block[4] = self;
  v12 = optionsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = optionsCopy;
  dispatch_async(v8, block);
}

- (void)fetchInfoForFrameworkAtURL:(id)l options:(id)options completion:(id)completion
{
  lCopy = l;
  optionsCopy = options;
  completionCopy = completion;
  v36 = objc_opt_new();
  v37 = objc_opt_new();
  v10 = sub_100012A28(self, @"CopyFrameworkInfoForLaunchServices");
  if (v10)
  {
    v11 = 0;
    v12 = 0;
LABEL_3:
    v13 = 0;
    goto LABEL_26;
  }

  objc_opt_class();
  v14 = lCopy;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (!v15)
  {
    v19 = @"frameworkBundleURL parameter was not a valid URL";
    v20 = 1705;
LABEL_23:
    v13 = 0;
    v10 = sub_100010734("[MIClientConnection fetchInfoForFrameworkAtURL:options:completion:]", v20, MIInstallerErrorDomain, 25, 0, 0, v19, v16, v32);
    v11 = 0;
    v12 = 0;
    goto LABEL_26;
  }

  if (optionsCopy)
  {
    objc_opt_class();
    v17 = optionsCopy;
    v18 = (objc_opt_isKindOfClass() & 1) != 0 ? v17 : 0;

    if (!v18)
    {
      v19 = @"options parameter was not a dictionary";
      v20 = 1710;
      goto LABEL_23;
    }
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    path = [v14 path];
    clientName = [(MIClientConnection *)self clientName];
    v34 = optionsCopy;
    v32 = path;
    MOLogWrite();
  }

  v44 = 0;
  v12 = [MIExecutableBundle bundleForURL:v14 error:&v44, v32, clientName, v34];
  v22 = v44;
  v23 = v22;
  if (!v12)
  {
    v11 = 0;
    v13 = 0;
    v10 = v22;
    goto LABEL_26;
  }

  v24 = +[MIGlobalConfiguration sharedInstance];
  primaryPersonaString = [v24 primaryPersonaString];
  v43 = v23;
  v11 = [MILaunchServicesDatabaseGatherer entryForBundle:v12 inContainer:0 forPersona:primaryPersonaString withError:&v43];
  v10 = v43;

  if (!v11)
  {
    goto LABEL_3;
  }

  identifier = [v12 identifier];
  [v37 setObject:v11 forKeyedSubscript:identifier];

  [v36 addObject:v11];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100018DBC;
  v40[3] = &unk_1000912A0;
  v41 = v37;
  v27 = v36;
  v42 = v27;
  v28 = objc_retainBlock(v40);
  v29 = +[MIGlobalConfiguration sharedInstance];
  primaryPersonaString2 = [v29 primaryPersonaString];
  v39 = v10;
  v31 = [MILaunchServicesDatabaseGatherer enumerateAppExtensionsInBundle:v12 forPersona:primaryPersonaString2 updatingAppExtensionParentID:0 ensureAppExtensionsAreExecutable:0 installProfiles:0 error:&v39 enumerator:v28];
  v35 = v39;

  if (v31)
  {
    v13 = v27;
  }

  else
  {
    v13 = 0;
  }

  v10 = v35;
LABEL_26:
  completionCopy[2](completionCopy, v13, v10);
}

- (void)fetchInfoForContainerizedAppWithIdentity:(id)identity inDomain:(unint64_t)domain options:(id)options completion:(id)completion
{
  identityCopy = identity;
  optionsCopy = options;
  completionCopy = completion;
  bundleID = [identityCopy bundleID];
  v15 = sub_100012A28(self, @"CopyContainerizedAppInfoForLaunchServices");
  if (!v15)
  {
    if (identityCopy)
    {
      if ((MIIsValidInstallationDomain() & 1) == 0)
      {
        v16 = 0;
        v22 = sub_100010734("[MIClientConnection fetchInfoForContainerizedAppWithIdentity:inDomain:options:completion:]", 1780, MIInstallerErrorDomain, 25, 0, 0, @"domain %lu isn't valid", v17, domain);
        goto LABEL_11;
      }

      if (!optionsCopy || ((objc_opt_class(), v18 = optionsCopy, (objc_opt_isKindOfClass() & 1) == 0) ? (v19 = 0) : (v19 = v18), v18, v19, v19))
      {
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
        {
          clientName = [(MIClientConnection *)self clientName];
          MOLogWrite();
        }

        sub_100054630(bundleID);
        v37 = 0;
        v23 = [MIBundleContainer appBundleContainerForIdentifier:bundleID inDomain:domain withError:&v37];
        v24 = v37;
        if (!v23)
        {
          v29 = 0;
          bundle = 0;
LABEL_27:

          v15 = v24;
          sub_100054780(bundleID);
          v16 = v29;
          goto LABEL_28;
        }

        bundle = [v23 bundle];
        if (bundle)
        {
          v36 = v24;
          v27 = [identityCopy resolvePersonaWithError:&v36];
          v28 = v36;

          if (!v27)
          {
            v29 = 0;
            goto LABEL_26;
          }

          personaUniqueString = [identityCopy personaUniqueString];
          v35 = v28;
          v29 = [MILaunchServicesDatabaseGatherer fetchInfoForBundle:bundle forPersona:personaUniqueString inContainer:v23 withError:&v35];
          v30 = v35;
          v31 = v28;
          v28 = v30;

          v24 = personaUniqueString;
        }

        else
        {
          v28 = sub_100010734("[MIClientConnection fetchInfoForContainerizedAppWithIdentity:inDomain:options:completion:]", 1802, MIInstallerErrorDomain, 36, 0, 0, @"Failed to find bundle in bundle container %@ for %@", v25, v23);
          v29 = 0;
          bundle = 0;
        }

LABEL_26:
        v24 = v28;
        goto LABEL_27;
      }

      v20 = @"options parameter was not a dictionary";
      v21 = 1785;
    }

    else
    {
      v20 = @"identity parameter was nil";
      v21 = 1775;
    }

    v16 = 0;
    v22 = sub_100010734("[MIClientConnection fetchInfoForContainerizedAppWithIdentity:inDomain:options:completion:]", v21, MIInstallerErrorDomain, 25, 0, 0, v20, v14, v32);
LABEL_11:
    v15 = v22;
    goto LABEL_28;
  }

  v16 = 0;
LABEL_28:
  completionCopy[2](completionCopy, v16, v15);
}

- (BOOL)_validateArgsForMethodWithName:(const char *)name bundleIdentifier:(id)identifier data:(id)data optionalOptions:(id)options error:(id *)error
{
  identifierCopy = identifier;
  dataCopy = data;
  optionsCopy = options;
  objc_opt_class();
  v14 = identifierCopy;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    objc_opt_class();
    v17 = dataCopy;
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      if (!optionsCopy || ((objc_opt_class(), v20 = optionsCopy, (objc_opt_isKindOfClass() & 1) == 0) ? (v21 = 0) : (v21 = v20), v20, v21, v21))
      {
        v23 = 0;
        goto LABEL_21;
      }

      sub_100010734("[MIClientConnection _validateArgsForMethodWithName:bundleIdentifier:data:optionalOptions:error:]", 1844, MIInstallerErrorDomain, 25, 0, 0, @"Parameter validation failed for: %s, options parameter was not a dictionary", v22, name);
    }

    else
    {
      sub_100010734("[MIClientConnection _validateArgsForMethodWithName:bundleIdentifier:data:optionalOptions:error:]", 1839, MIInstallerErrorDomain, 25, 0, 0, @"Parameter validation failed for: %s, data parameter was not a data object", v19, name);
    }
  }

  else
  {
    sub_100010734("[MIClientConnection _validateArgsForMethodWithName:bundleIdentifier:data:optionalOptions:error:]", 1834, MIInstallerErrorDomain, 25, 0, 0, @"Parameter validation failed for: %s, bundleIdentifier parameter was not a string", v16, name);
  }
  v23 = ;
  if (error && v23)
  {
    v23 = v23;
    *error = v23;
  }

LABEL_21:
  v24 = v23 == 0;

  return v24;
}

- (void)updateSinfForIXWithIdentifier:(id)identifier withOptions:(id)options sinfData:(id)data completion:(id)completion
{
  identifierCopy = identifier;
  optionsCopy = options;
  dataCopy = data;
  completionCopy = completion;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = sub_1000141D4;
  v81 = sub_1000141E4;
  v82 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v11 = sub_100012A28(self, @"UpdateSinfForInstallCoordination");
  v12 = v78[5];
  v78[5] = v11;

  v13 = v78 + 5;
  if (v78[5] || (v72 = 0, v14 = [(MIClientConnection *)self _validateArgsForMethodWithName:"[MIClientConnection updateSinfForIXWithIdentifier:withOptions:sinfData:completion:]" bundleIdentifier:identifierCopy data:dataCopy optionalOptions:optionsCopy error:&v72], objc_storeStrong(v13, v72), !v14))
  {
    v16 = 0;
    v19 = 0;
    rootSinfURL = 0;
    v26 = 0;
    v22 = 0;
    v33 = 0;
    goto LABEL_27;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    [(MIClientConnection *)self clientName];
    v50 = identifierCopy;
    v47 = v54 = optionsCopy;
    MOLogWrite();
  }

  sub_100054630(identifierCopy);
  v15 = v78;
  obj = v78[5];
  v16 = [MIBundleContainer appBundleContainerWithIdentifier:identifierCopy createIfNeeded:0 created:0 error:&obj];
  objc_storeStrong(v15 + 5, obj);
  if (!v16)
  {
    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
    {
      v19 = 0;
      rootSinfURL = 0;
      v26 = 0;
      v22 = 0;
    }

    else
    {
      v19 = 0;
      rootSinfURL = 0;
      v52 = v78[5];
      MOLogWrite();
      v26 = 0;
      v22 = 0;
    }

    goto LABEL_56;
  }

  bundle = [v16 bundle];
  v19 = bundle;
  if (!bundle)
  {
    v36 = sub_100010734("[MIClientConnection updateSinfForIXWithIdentifier:withOptions:sinfData:completion:]", 2054, MIInstallerErrorDomain, 36, 0, 0, @"Failed to get app bundle in bundle container for %@", v18, identifierCopy);
    v19 = 0;
    rootSinfURL = 0;
    v26 = 0;
    v22 = 0;
    path = v78[5];
    v78[5] = v36;
LABEL_55:

    goto LABEL_56;
  }

  rootSinfURL = [bundle rootSinfURL];
  v21 = v78;
  v70 = v78[5];
  v22 = [NSData dataWithContentsOfURL:rootSinfURL options:2 error:&v70];
  objc_storeStrong(v21 + 5, v70);
  if (v22)
  {
    goto LABEL_9;
  }

  domain = [v78[5] domain];
  if (([domain isEqualToString:NSCocoaErrorDomain] & 1) == 0)
  {

LABEL_38:
    v39 = v78[5];
    path = [rootSinfURL path];
    v41 = sub_100010734("[MIClientConnection updateSinfForIXWithIdentifier:withOptions:sinfData:completion:]", 2062, MIInstallerErrorDomain, 4, v39, 0, @"Failed to read SINF from %@", v40, path);
    v42 = v78[5];
    v78[5] = v41;

    v26 = 0;
    v22 = 0;
    goto LABEL_55;
  }

  code = [v78[5] code];

  if (code != 260)
  {
    goto LABEL_38;
  }

LABEL_9:
  v69 = 0;
  v23 = v78;
  v68 = v78[5];
  v24 = [v19 getSinfDataType:&v69 withError:{&v68, v47, v50, v54}];
  objc_storeStrong(v23 + 5, v68);
  if ((v24 & 1) == 0)
  {
    v26 = 0;
LABEL_56:
    v33 = 0;
    sub_100054780(identifierCopy);
    goto LABEL_27;
  }

  v25 = [optionsCopy objectForKeyedSubscript:@"ApplicationSINFDataType"];
  objc_opt_class();
  v26 = sub_1000146E0(v25);

  if (v26 && (v27 = [v26 unsignedIntValue], v27 != v69))
  {
    v44 = v78;
    v67 = v78[5];
    v45 = [v19 setSinfDataType:v27 withError:&v67];
    objc_storeStrong(v44 + 5, v67);
    if ((v45 & 1) == 0)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v53 = v78[5];
        MOLogWrite();
      }

      goto LABEL_56;
    }

    v55 = 1;
  }

  else
  {
    v55 = 0;
  }

  v28 = v78;
  v66 = v78[5];
  v29 = [v19 updateAndValidateSinf:dataCopy error:&v66];
  objc_storeStrong(v28 + 5, v66);
  if (!v29)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v49 = v78[5];
      MOLogWrite();
    }

    if (v55)
    {
      v65 = 0;
      v43 = [v19 setSinfDataType:v69 withError:&v65];
      path = v65;
      if ((v43 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
      {
        MOLogWrite();
      }
    }

    else
    {
      path = 0;
    }

    goto LABEL_55;
  }

  v30 = v78[5];
  v78[5] = 0;

  if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
  {
    v48 = v29;
    MOLogWrite();
  }

  sub_100054780(identifierCopy);
  v31 = sub_10000998C();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019F68;
  block[3] = &unk_100090CD8;
  v63 = &v73;
  v32 = identifierCopy;
  v61 = v32;
  v33 = v29;
  v62 = v33;
  v64 = &v77;
  dispatch_sync(v31, block);

  if ((v74[3] & 1) == 0)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v48 = v32;
      v51 = v78[5];
      MOLogWrite();
    }

    sub_100054630(v32);
    if (v55)
    {
      v59 = 0;
      v34 = [v19 setSinfDataType:v69 withError:&v59];
      path = v59;
      if ((v34 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
      {
        v48 = v69;
        v51 = path;
        MOLogWrite();
      }
    }

    else
    {
      path = 0;
    }

    bundle2 = [v16 bundle];
    [bundle2 bestEffortRollbackSinfData:v22];

    goto LABEL_55;
  }

LABEL_27:
  (completionCopy)[2](completionCopy, v33, v78[5]);

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v77, 8);
}

- (void)updateiTunesMetadataForIXWithIdentifier:(id)identifier metadata:(id)metadata completion:(id)completion
{
  identifierCopy = identifier;
  metadataCopy = metadata;
  completionCopy = completion;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = sub_1000141D4;
  v59 = sub_1000141E4;
  v60 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v10 = sub_100012A28(self, @"UpdateiTunesMetadataForInstallCoordination");
  v11 = v56[5];
  v56[5] = v10;

  if (v56[5])
  {
    goto LABEL_22;
  }

  objc_opt_class();
  v12 = identifierCopy;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    v26 = @"Parameter validation failed: bundleIdentifier parameter was not a string";
    v27 = 2161;
LABEL_21:
    v28 = sub_100010734("[MIClientConnection updateiTunesMetadataForIXWithIdentifier:metadata:completion:]", v27, MIInstallerErrorDomain, 25, 0, 0, v26, v14, clientName);
    v29 = v56[5];
    v56[5] = v28;

LABEL_22:
    v25 = 0;
    v16 = 0;
    iTunesMetadataURL = 0;
    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = @"Parameter validation failed: metadata parameter was not MIStoreMetadata instance";
    v27 = 2166;
    goto LABEL_21;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    clientName = [(MIClientConnection *)self clientName];
    v39 = v12;
    MOLogWrite();
  }

  sub_100054630(v12);
  v15 = v56;
  obj = v56[5];
  v16 = [MIBundleContainer appBundleContainerWithIdentifier:v12 createIfNeeded:0 created:0 error:&obj];
  objc_storeStrong(v15 + 5, obj);
  if (!v16)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v25 = 0;
      v41 = v56[5];
      MOLogWrite();
      iTunesMetadataURL = 0;
      v16 = 0;
LABEL_35:
      sub_100054780(identifierCopy);
      goto LABEL_23;
    }

    iTunesMetadataURL = 0;
    v16 = 0;
LABEL_34:
    v25 = 0;
    goto LABEL_35;
  }

  iTunesMetadataURL = [v16 iTunesMetadataURL];
  v18 = v56;
  v49 = v56[5];
  v19 = [NSData dataWithContentsOfURL:iTunesMetadataURL options:2 error:&v49];
  objc_storeStrong(v18 + 5, v49);
  if (v19)
  {
    goto LABEL_12;
  }

  domain = [v56[5] domain];
  if (([domain isEqualToString:NSCocoaErrorDomain] & 1) == 0)
  {

LABEL_33:
    v32 = v56[5];
    path = [iTunesMetadataURL path];
    v35 = sub_100010734("[MIClientConnection updateiTunesMetadataForIXWithIdentifier:metadata:completion:]", 2185, MIInstallerErrorDomain, 4, v32, 0, @"Failed to read iTunesMetadata from %@", v34, path);
    v36 = v56[5];
    v56[5] = v35;

    goto LABEL_34;
  }

  code = [v56[5] code];

  if (code != 260)
  {
    goto LABEL_33;
  }

LABEL_12:
  v20 = v56;
  v48 = v56[5];
  v21 = [v16 writeiTunesMetadata:metadataCopy error:{&v48, clientName, v39}];
  objc_storeStrong(v20 + 5, v48);
  *(v52 + 24) = v21;
  if (!v21)
  {
    v25 = v19;
    goto LABEL_35;
  }

  v22 = v56[5];
  v56[5] = 0;

  sub_100054780(v12);
  v23 = sub_10000998C();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A780;
  block[3] = &unk_100090CD8;
  v46 = &v51;
  v24 = v12;
  v44 = v24;
  v45 = metadataCopy;
  v47 = &v55;
  dispatch_sync(v23, block);

  if ((v52[3] & 1) == 0)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v38 = v24;
      v40 = v56[5];
      MOLogWrite();
    }

    [v16 bestEffortRollbackiTunesMetadata:v19 error:{0, v38, v40}];
  }

  v25 = v19;
LABEL_23:
  (completionCopy)[2](completionCopy, v56[5]);

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);
}

- (void)fetchDiskUsageForIdentifiers:(id)identifiers withOptions:(id)options completion:(id)completion
{
  identifiersCopy = identifiers;
  optionsCopy = options;
  completionCopy = completion;
  v11 = sub_100012A28(self, @"CopyDiskUsageForLaunchServices");
  if (v11)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  v12 = identifiersCopy;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_9:
    v17 = @"Identifers provided was not an array of strings";
    v18 = 2244;
LABEL_10:
    v11 = sub_100010734("[MIClientConnection fetchDiskUsageForIdentifiers:withOptions:completion:]", v18, MIInstallerErrorDomain, 25, 0, 0, v17, v13, v21);
LABEL_11:
    v19 = 0;
    goto LABEL_12;
  }

  if (!v12)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  v14 = sub_100010AB8(v12);

  if (!v14)
  {
    goto LABEL_9;
  }

  if (optionsCopy)
  {
    objc_opt_class();
    v15 = optionsCopy;
    v16 = (objc_opt_isKindOfClass() & 1) != 0 ? v15 : 0;

    if (!v16)
    {
      v17 = @"Options provided was not a dictionary";
      v18 = 2249;
      goto LABEL_10;
    }
  }

  if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
  {
    clientName = [(MIClientConnection *)self clientName];
    MOLogWrite();
  }

  v20 = [[MIDiskUsageGatherer alloc] initWithIdentifiers:v12 options:optionsCopy];
  v23 = 0;
  v19 = [(MIDiskUsageGatherer *)v20 gatherUsageInfoWithError:&v23];
  v11 = v23;

LABEL_12:
  completionCopy[2](completionCopy, v19, v11);
}

- (void)registerSafeHarborAtPath:(id)path forIdentity:(id)identity ofType:(unint64_t)type withOptions:(id)options completion:(id)completion
{
  pathCopy = path;
  identityCopy = identity;
  optionsCopy = options;
  completionCopy = completion;
  v16 = sub_100012A28(self, @"RegisterSafeHarbor");
  if (!v16)
  {
    objc_opt_class();
    v17 = pathCopy;
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (!v18)
    {
      v16 = sub_100010734("[MIClientConnection registerSafeHarborAtPath:forIdentity:ofType:withOptions:completion:]", 2283, MIInstallerErrorDomain, 25, 0, 0, @"Path parameter was not a string", v19, v33);
      goto LABEL_2;
    }

    v41 = 0;
    v20 = [MIAppIdentity validateAppIdentity:identityCopy withError:&v41];
    v21 = v41;
    v16 = v21;
    if (v20)
    {
      v40 = v21;
      v22 = [identityCopy resolvePersonaWithError:&v40];
      v23 = v40;

      if (!v22)
      {
        v16 = v23;
        goto LABEL_2;
      }

      if (type - 15 <= 0xFFFFFFFFFFFFFFF1)
      {
        v25 = sub_100010734("[MIClientConnection registerSafeHarborAtPath:forIdentity:ofType:withOptions:completion:]", 2296, MIInstallerErrorDomain, 25, 0, 0, @"Container type parameter did not correspond to a defined container content class.", v24, v33);
LABEL_11:
        v16 = v25;

        goto LABEL_2;
      }

      if (optionsCopy)
      {
        objc_opt_class();
        v26 = sub_1000146E0(optionsCopy);

        if (!v26)
        {
          v25 = sub_100010734("[MIClientConnection registerSafeHarborAtPath:forIdentity:ofType:withOptions:completion:]", 2301, MIInstallerErrorDomain, 25, 0, 0, @"Options parameter was not a dictionary", v27, v33);
          goto LABEL_11;
        }
      }

      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
      {
        [(MIClientConnection *)self clientName];
        typeCopy = type;
        v37 = optionsCopy;
        v34 = v17;
        v33 = v35 = identityCopy;
        MOLogWrite();
      }

      v28 = [MISafeHarborManager defaultManager:v33];
      v29 = [NSURL fileURLWithPath:v17];
      bundleID = [identityCopy bundleID];
      personaUniqueString = [identityCopy personaUniqueString];
      v39 = v23;
      v38 = [v28 registerSafeHarborAtURL:v29 withOptions:optionsCopy forIdentifier:bundleID forPersona:personaUniqueString ofType:type error:&v39];
      v32 = v28;
      v16 = v39;

      if ((v38 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
      {
        MOLogWrite();
      }
    }
  }

LABEL_2:
  completionCopy[2](completionCopy, v16);
}

- (void)removeSafeHarborForIdentity:(id)identity ofType:(unint64_t)type withOptions:(id)options completion:(id)completion
{
  identityCopy = identity;
  optionsCopy = options;
  completionCopy = completion;
  v13 = sub_100012A28(self, @"RemoveSafeHarbor");
  if (!v13)
  {
    v33 = 0;
    v14 = [MIAppIdentity validateAppIdentity:identityCopy withError:&v33];
    v15 = v33;
    v13 = v15;
    if (v14)
    {
      v32 = v15;
      v16 = [identityCopy resolvePersonaWithError:&v32];
      v17 = v32;

      if (!v16)
      {
        v13 = v17;
        goto LABEL_20;
      }

      if (type - 15 <= 0xFFFFFFFFFFFFFFF1)
      {
        v19 = sub_100010734("[MIClientConnection removeSafeHarborForIdentity:ofType:withOptions:completion:]", 2346, MIInstallerErrorDomain, 25, 0, 0, @"Container type parameter did not correspond to a defined container content class.", v18, v27);
LABEL_6:
        v13 = v19;

        goto LABEL_20;
      }

      if (optionsCopy)
      {
        objc_opt_class();
        v20 = optionsCopy;
        v21 = (objc_opt_isKindOfClass() & 1) != 0 ? v20 : 0;

        if (!v21)
        {
          v19 = sub_100010734("[MIClientConnection removeSafeHarborForIdentity:ofType:withOptions:completion:]", 2351, MIInstallerErrorDomain, 25, 0, 0, @"Options parameter was not a dictionary", v22, v27);
          goto LABEL_6;
        }
      }

      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
      {
        [(MIClientConnection *)self clientName];
        typeCopy = type;
        v27 = v30 = optionsCopy;
        v28 = identityCopy;
        MOLogWrite();
      }

      v23 = [MISafeHarborManager defaultManager:v27];
      bundleID = [identityCopy bundleID];
      personaUniqueString = [identityCopy personaUniqueString];
      v31 = v17;
      v26 = [v23 removeSafeHarborWithIdentifier:bundleID forPersona:personaUniqueString ofType:type options:optionsCopy error:&v31];
      v13 = v31;

      if ((v26 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
      {
        MOLogWrite();
      }
    }
  }

LABEL_20:
  completionCopy[2](completionCopy, v13);
}

- (void)listSafeHarborsOfType:(unint64_t)type forPersona:(id)persona withOptions:(id)options completion:(id)completion
{
  personaCopy = persona;
  optionsCopy = options;
  completionCopy = completion;
  v14 = sub_100012A28(self, @"CopySafeHarbors");
  if (v14)
  {
    goto LABEL_2;
  }

  if (optionsCopy)
  {
    objc_opt_class();
    v16 = optionsCopy;
    v17 = (objc_opt_isKindOfClass() & 1) != 0 ? v16 : 0;

    if (!v17)
    {
      v18 = @"Options parameter was not a dictionary";
      v19 = 2389;
      goto LABEL_16;
    }
  }

  if (type - 15 <= 0xFFFFFFFFFFFFFFF1)
  {
    v18 = @"Container type parameter did not correspond to a defined container content class.";
    v19 = 2394;
LABEL_16:
    v15 = 0;
    v14 = sub_100010734("[MIClientConnection listSafeHarborsOfType:forPersona:withOptions:completion:]", v19, MIInstallerErrorDomain, 25, 0, 0, v18, v13, v23);
    goto LABEL_17;
  }

  if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
  {
    [(MIClientConnection *)self clientName];
    typeCopy = type;
    v23 = v25 = optionsCopy;
    MOLogWrite();
  }

  v20 = [MISafeHarborManager defaultManager:v23];
  v26 = 0;
  v21 = [v20 safeHarborListForType:type forPersona:personaCopy withError:&v26];
  v22 = v26;

  if (v21)
  {
    v14 = v22;
    v15 = v21;
    goto LABEL_17;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
  }

  v14 = v22;
LABEL_2:
  v15 = 0;
LABEL_17:
  completionCopy[2](completionCopy, v15, v14);
}

- (void)checkCapabilities:(id)capabilities withOptions:(id)options completion:(id)completion
{
  capabilitiesCopy = capabilities;
  optionsCopy = options;
  completionCopy = completion;
  if (optionsCopy)
  {
    objc_opt_class();
    v10 = optionsCopy;
    v11 = (objc_opt_isKindOfClass() & 1) != 0 ? v10 : 0;

    if (!v11)
    {
      v16 = sub_100010734("[MIClientConnection checkCapabilities:withOptions:completion:]", 2433, MIInstallerErrorDomain, 25, 0, 0, @"Options parameter was not a dictionary", v12, v19);
      goto LABEL_19;
    }
  }

  v13 = +[MICapabilitiesManager defaultManager];
  v20 = 0;
  v14 = [v13 checkCapabilities:capabilitiesCopy withOptions:optionsCopy error:&v20];
  v15 = v20;

  if (v14)
  {
    v16 = v15;
LABEL_8:
    v11 = v14;
    goto LABEL_19;
  }

  if (v15)
  {
    domain = [v15 domain];
    if ([domain isEqualToString:MIInstallerErrorDomain])
    {
      v18 = [v15 code] == 66;

      if (v18)
      {
        v21[0] = @"CapabilitiesMatch";
        v21[1] = @"MismatchedCapabilities";
        v22[0] = &__kCFBooleanFalse;
        v22[1] = &off_10009C088;
        v14 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];

        v16 = 0;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
  }

  v16 = [NSError errorWithDomain:MIInstallerErrorDomain code:1 userInfo:&off_10009C0B0];

  v11 = 0;
LABEL_19:
  completionCopy[2](completionCopy, v11, v16);
}

- (void)updatePlaceholderMetadataForApp:(id)app installType:(unint64_t)type failureReason:(unint64_t)reason underlyingError:(id)error failureSource:(unint64_t)source completion:(id)completion
{
  appCopy = app;
  errorCopy = error;
  completionCopy = completion;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_1000141D4;
  v64 = sub_1000141E4;
  v65 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v15 = sub_100012A28(self, @"UpdatePlaceholderMetadata");
  v16 = v61[5];
  v61[5] = v15;

  if (v61[5])
  {
    goto LABEL_2;
  }

  objc_opt_class();
  v23 = appCopy;
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (!v24)
  {
    v34 = sub_100010734("[MIClientConnection updatePlaceholderMetadataForApp:installType:failureReason:underlyingError:failureSource:completion:]", 2481, MIInstallerErrorDomain, 25, 0, 0, @"bundleID parameter was not a string", v25, v36);
    v35 = v61[5];
    v61[5] = v34;

LABEL_2:
    v17 = 0;
    v18 = 0;
    v19 = 0;
LABEL_3:
    v20 = 0;
    goto LABEL_4;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    [(MIClientConnection *)self clientName];
    v41 = errorCopy;
    sourceCopy = source;
    typeCopy = type;
    v36 = v40 = reason;
    v37 = v23;
    MOLogWrite();
  }

  sub_100054630(v23);
  v26 = v61;
  obj = v61[5];
  v20 = 1;
  v19 = [MIBundleContainer appBundleContainerWithIdentifier:v23 createIfNeeded:0 created:0 error:&obj];
  objc_storeStrong(v26 + 5, obj);
  if (!v19)
  {
    v17 = 0;
    goto LABEL_31;
  }

  v27 = v61;
  v54 = v61[5];
  v17 = [v19 bundleMetadataWithError:&v54];
  objc_storeStrong(v27 + 5, v54);
  if (!v17)
  {
LABEL_31:
    v18 = 0;
    goto LABEL_4;
  }

  v18 = [v17 copy];
  [v18 setPlaceholderFailureReason:reason];
  [v18 setPlaceholderFailureUnderlyingError:errorCopy];
  [v18 setPlaceholderFailureUnderlyingErrorSource:source];
  if (type)
  {
    [v18 setInstallType:type];
  }

  v28 = v61;
  v53 = v61[5];
  v29 = [v19 saveBundleMetadata:v18 withError:{&v53, v36, v37, typeCopy, v40, v41, sourceCopy}];
  objc_storeStrong(v28 + 5, v53);
  if (v29)
  {
    sub_100054780(v23);
    v30 = objc_opt_new();
    v31 = [NSNumber numberWithUnsignedInt:sub_100009864()];
    [v30 setTargetUserID:v31];

    v32 = sub_10000998C();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001C034;
    block[3] = &unk_1000912C8;
    v49 = &v56;
    v47 = v23;
    v48 = v30;
    typeCopy2 = type;
    reasonCopy = reason;
    v50 = &v60;
    v33 = v30;
    dispatch_sync(v32, block);

    if ((v57[3] & 1) != 0 || qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
    {
      goto LABEL_3;
    }

    v20 = 0;
    v38 = v61[5];
    MOLogWrite();
  }

LABEL_4:

  if ((v57[3] & 1) == 0)
  {
    v45 = 0;
    v21 = [v19 saveBundleMetadata:v17 withError:&v45];
    v22 = v45;
    if ((v21 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
    {
      MOLogWrite();
    }
  }

  if (v20)
  {
    sub_100054780(appCopy);
  }

  (completionCopy)[2](completionCopy, v61[5]);

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);
}

- (void)getAppMetadataForApp:(id)app completion:(id)completion
{
  appCopy = app;
  completionCopy = completion;
  v8 = sub_100012A28(self, @"GetAppMetadata");
  if (!v8)
  {
    objc_opt_class();
    v10 = appCopy;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v8 = sub_100010734("[MIClientConnection getAppMetadataForApp:completion:]", 2575, MIInstallerErrorDomain, 25, 0, 0, @"bundleID parameter was not a string", v12, clientName);
      v9 = 0;
      goto LABEL_36;
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      clientName = [(MIClientConnection *)self clientName];
      v27 = v10;
      MOLogWrite();
    }

    sub_100054628(v10);
    v32 = 0;
    v13 = [MIBundleContainer appBundleContainerWithIdentifier:v10 createIfNeeded:0 created:0 error:&v32];
    v14 = v32;
    v15 = v14;
    if (!v13)
    {
      v9 = 0;
LABEL_35:

      v8 = v15;
      sub_100054780(appCopy);
      goto LABEL_36;
    }

    v31 = v14;
    v9 = [v13 bundleMetadataWithError:&v31];
    v16 = v31;

    if (!v9 || ([v9 watchKitAppExecutableHash], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
    {
LABEL_34:
      v15 = v16;
      goto LABEL_35;
    }

    sub_100054780(v10);
    sub_100054630(v10);
    bundle = [v13 bundle];
    v30 = v16;
    v19 = [bundle watchKitAppExecutableHashWithError:&v30];
    v20 = v30;

    if (v19)
    {
      [v9 setWatchKitAppExecutableHash:v19];
      v29 = v20;
      v21 = [v13 saveBundleMetadata:v9 withError:&v29];
      v16 = v29;

      if ((v21 & 1) != 0 || qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
      {
        goto LABEL_33;
      }

      bundle2 = [v13 bundle];
      identifier = [bundle2 identifier];
      MOLogWrite();
      goto LABEL_30;
    }

    bundle2 = [v20 domain];
    v23 = MIInstallerErrorDomain;
    if ([bundle2 isEqualToString:MIInstallerErrorDomain] && objc_msgSend(v20, "code") == 85)
    {
      v16 = v20;
LABEL_31:

LABEL_33:
      goto LABEL_34;
    }

    domain = [v20 domain];
    if ([domain isEqualToString:v23])
    {
      code = [v20 code];

      if (code == 139)
      {
        goto LABEL_32;
      }
    }

    else
    {
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      bundle2 = [v13 bundle];
      identifier = [bundle2 identifier];
      v16 = v20;
      MOLogWrite();
LABEL_30:

      goto LABEL_31;
    }

LABEL_32:
    v16 = v20;
    goto LABEL_33;
  }

  v9 = 0;
LABEL_36:
  completionCopy[2](completionCopy, v9, v8);
}

- (void)snapshotWKAppInCompanionAppID:(id)d toURL:(id)l options:(id)options completion:(id)completion
{
  dCopy = d;
  lCopy = l;
  optionsCopy = options;
  completionCopy = completion;
  v14 = sub_100012A28(self, @"SnapshotWKApp");
  if (v14)
  {
    goto LABEL_28;
  }

  objc_opt_class();
  v15 = dCopy;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (!v16)
  {
    v20 = @"bundleID parameter was not a string";
    v21 = 2697;
LABEL_27:
    v14 = sub_100010734("[MIClientConnection snapshotWKAppInCompanionAppID:toURL:options:completion:]", v21, MIInstallerErrorDomain, 25, 0, 0, v20, v17, v33);
LABEL_28:
    resultDict = 0;
    v30 = 0;
    v27 = 0;
    goto LABEL_29;
  }

  objc_opt_class();
  v18 = lCopy;
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (!v19)
  {
    v20 = @"destURL parameter was not a URL";
    v21 = 2702;
    goto LABEL_27;
  }

  if (optionsCopy)
  {
    objc_opt_class();
    v22 = optionsCopy;
    v23 = (objc_opt_isKindOfClass() & 1) != 0 ? v22 : 0;

    if (!v23)
    {
      v20 = @"Options parameter was not a dictionary";
      v21 = 2707;
      goto LABEL_27;
    }
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    clientName = [(MIClientConnection *)self clientName];
    path = [v18 path];
    v36 = optionsCopy;
    v33 = v15;
    v34 = clientName;
    MOLogWrite();
  }

  v25 = [optionsCopy objectForKeyedSubscript:{kMIWatchKitSnapshotOptionMaxWKAppVersion, v33, v34, path, v36}];
  objc_opt_class();
  v26 = v25;
  if (objc_opt_isKindOfClass())
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v28 = [optionsCopy objectForKeyedSubscript:kMIWatchKitSnapshotOptionCreatePlaceholder];
  v29 = sub_100010A60(v28, 0);

  v30 = -[MIWatchKitAppSnapshot initWithBundleID:snapshotTo:onlyV1AppIfPresent:placeholderOnly:]([MIWatchKitAppSnapshot alloc], "initWithBundleID:snapshotTo:onlyV1AppIfPresent:placeholderOnly:", v15, v18, [v27 isEqualToString:@"1.0"], v29);
  v37 = 0;
  LODWORD(v29) = [(MIWatchKitAppSnapshot *)v30 createSnapshotWithError:&v37];
  v31 = v37;
  v14 = v31;
  if (v29)
  {

    resultDict = [(MIWatchKitAppSnapshot *)v30 resultDict];
    v14 = 0;
  }

  else
  {
    resultDict = 0;
  }

LABEL_29:

  completionCopy[2](completionCopy, resultDict, v14);
}

- (void)setSystemAppMigrationComplete:(id)complete
{
  completeCopy = complete;
  v4 = sub_100012A28(self, @"SetSystemAppMigrationComplete");
  if (!v4)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      clientName = [(MIClientConnection *)self clientName];
      MOLogWrite();
    }

    v5 = +[MISystemAppMigrationState defaultManager];
    [v5 setSystemAppMigrationComplete:1];

    v4 = 0;
  }

  completeCopy[2](completeCopy, v4);
}

- (void)waitForSystemAppMigratorToComplete:(id)complete
{
  exc_buf = complete;
  v4 = sub_100012A28(self, @"WaitForSystemAppMigrationToComplete");
  if (v4)
  {
    exc_buf[2](exc_buf, v4);
  }

  else
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      clientName = [(MIClientConnection *)self clientName];
      MOLogWrite();
    }

    v5 = +[MISystemAppMigrationState defaultManager];
    [v5 waitForSystemAppMigrationToComplete:exc_buf];

    v4 = 0;
  }
}

- (void)systemAppMigratorHasCompleted:(id)completed
{
  completedCopy = completed;
  v4 = sub_100012A28(self, @"GetSystemAppMigrationStatus");
  if (v4)
  {
    systemAppMigrationComplete = 0;
  }

  else
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      clientName = [(MIClientConnection *)self clientName];
      MOLogWrite();
    }

    v6 = +[MISystemAppMigrationState defaultManager];
    systemAppMigrationComplete = [v6 systemAppMigrationComplete];

    v4 = 0;
  }

  completedCopy[2](completedCopy, systemAppMigrationComplete, v4);
}

- (void)finalizeReference:(id)reference completion:(id)completion
{
  referenceCopy = reference;
  completionCopy = completion;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_1000141D4;
  v61 = sub_1000141E4;
  v62 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_1000141D4;
  v55 = sub_1000141E4;
  v56 = 0;
  identity = [referenceCopy identity];
  bundleID = [identity bundleID];
  v10 = sub_100012A28(self, @"InstallForInstallCoordination");
  v11 = v58[5];
  v58[5] = v10;

  if (v58[5])
  {
    goto LABEL_2;
  }

  if ((+[ICLFeatureFlags appReferencesEnabled]& 1) == 0)
  {
    v29 = sub_100010734("[MIClientConnection finalizeReference:completion:]", 2846, MIInstallerErrorDomain, 161, 0, 0, @"%s is not enabled", v15, "[MIClientConnection finalizeReference:completion:]");
    bundle = 0;
    v13 = 0;
    v14 = 0;
    v28 = v58[5];
    v58[5] = v29;
LABEL_16:

    goto LABEL_21;
  }

  v16 = v58;
  obj = v58[5];
  v17 = [MIAppReference validateAppReference:referenceCopy withError:&obj];
  objc_storeStrong(v16 + 5, obj);
  if (!v17)
  {
LABEL_2:
    bundle = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_21;
  }

  sub_100054628(bundleID);
  domain = [referenceCopy domain];
  v19 = v58;
  v49 = v58[5];
  v13 = [MIBundleContainer appBundleContainerForIdentifier:bundleID inDomain:domain withError:&v49];
  objc_storeStrong(v19 + 5, v49);
  if (!v13)
  {
    goto LABEL_18;
  }

  bundle = [v13 bundle];
  if (!bundle)
  {
    v30 = sub_100010734("[MIClientConnection finalizeReference:completion:]", 2864, MIInstallerErrorDomain, 36, 0, 0, @"Failed to find bundle in bundle container %@ for %@", v20, v13);
    v31 = v58[5];
    v58[5] = v30;

LABEL_18:
    bundle = 0;
    goto LABEL_19;
  }

  v21 = v58;
  v48 = v58[5];
  v22 = [identity resolvePersonaWithError:&v48];
  objc_storeStrong(v21 + 5, v48);
  if (!v22)
  {
LABEL_19:
    v27 = 0;
    v24 = 0;
    goto LABEL_20;
  }

  location = [identity personaUniqueString];
  v23 = v58;
  v47 = v58[5];
  v24 = [MILaunchServicesDatabaseGatherer fetchInfoForBundle:bundle forPersona:location inContainer:v13 withError:&v47];
  objc_storeStrong(v23 + 5, v47);

  if (v24)
  {
    v25 = +[MIAppReferenceManager defaultManager];
    locationa = v58 + 5;
    v45 = v58[5];
    v46 = 0;
    v34 = [v25 finalizeTemporaryReference:referenceCopy resultingPersonaUniqueStrings:&v46 error:&v45];
    v26 = v25;
    v27 = v46;
    objc_storeStrong(locationa, v45);

    if (v34)
    {
      sub_100054780(bundleID);
      locationb = sub_10000998C();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001D6AC;
      block[3] = &unk_1000912F0;
      v43 = &v51;
      v14 = v24;
      v39 = v14;
      v40 = bundleID;
      v28 = v27;
      v41 = v28;
      v42 = referenceCopy;
      v44 = &v57;
      dispatch_sync(locationb, block);

      if (!v52[5] && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
      {
        v33 = v58[5];
        MOLogWrite();
      }

      goto LABEL_16;
    }
  }

  else
  {
    v27 = 0;
  }

LABEL_20:

  v14 = v24;
  sub_100054780(bundleID);
LABEL_21:
  v32 = v52[5];
  if (v32)
  {
    completionCopy[2](completionCopy, v32, 0);
  }

  else
  {
    (completionCopy)[2](completionCopy, 0, v58[5]);
  }

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v57, 8);
}

- (void)acquireReferenceforInstalledAppWithIdentity:(id)identity inDomain:(unint64_t)domain matchingInstallSessionID:(id)d completion:(id)completion
{
  identityCopy = identity;
  dCopy = d;
  completionCopy = completion;
  v12 = sub_100012A28(self, @"InstallForInstallCoordination");
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
LABEL_19:
    v22 = dCopy;
    goto LABEL_20;
  }

  if ((+[ICLFeatureFlags appReferencesEnabled]& 1) == 0)
  {
    v12 = sub_100010734("[MIClientConnection acquireReferenceforInstalledAppWithIdentity:inDomain:matchingInstallSessionID:completion:]", 2935, MIInstallerErrorDomain, 161, 0, 0, @"%s is not enabled", v16, "[MIClientConnection acquireReferenceforInstalledAppWithIdentity:inDomain:matchingInstallSessionID:completion:]");
    v13 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_19;
  }

  v60 = 0;
  v17 = [MIAppIdentity validateAppIdentity:identityCopy withError:&v60];
  v18 = v60;
  v19 = v18;
  if (!v17)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v12 = v18;
    goto LABEL_19;
  }

  bundleID = [identityCopy bundleID];
  sub_100054628(bundleID);
  v59 = v19;
  v21 = [identityCopy resolvePersonaWithError:&v59];
  v54 = bundleID;
  v12 = v59;

  if (!v21)
  {
    v42 = 0;
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v22 = dCopy;
    goto LABEL_29;
  }

  v22 = dCopy;
  bundleID2 = [identityCopy bundleID];
  if (domain == 3)
  {
    v23 = 2;
  }

  else
  {
    v23 = 3;
  }

  v58 = v12;
  v24 = [(MIClientConnection *)self _validateAppWithBundleID:bundleID2 isNotInstalledInDomain:v23 error:&v58];
  v49 = v58;

  if ((v24 & 1) == 0)
  {
    v42 = 0;
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v12 = v49;
    goto LABEL_29;
  }

  if (domain == 1)
  {
    domainCopy = 2;
  }

  else
  {
    domainCopy = domain;
  }

  v57[1] = v49;
  v47 = domainCopy;
  v26 = [MIBundleContainer appBundleContainerForIdentifier:"appBundleContainerForIdentifier:inDomain:withError:" inDomain:bundleID withError:?];
  v27 = v49;

  if (v26)
  {
    bundle = [v26 bundle];
    v57[0] = v27;
    v29 = [bundle installationIdentitySettingIfNotSet:0 withError:v57];
    v30 = v57[0];

    if (v29)
    {
      v50 = v30;
      [v29 installSessionID];
      v53 = v29;
      v32 = v31 = v26;
      v33 = [v32 isEqualToData:dCopy];
      v35 = v32;
      v26 = v31;
      if ((v33 & 1) == 0)
      {
        v45 = v35;
        v39 = sub_100010734("[MIClientConnection acquireReferenceforInstalledAppWithIdentity:inDomain:matchingInstallSessionID:completion:]", 2978, MIInstallerErrorDomain, 184, 0, 0, @"Installation session IDs did not match for %@", v34, identityCopy);
        v43 = 0;
        v27 = v50;
        v14 = v53;
        v13 = v45;
        goto LABEL_28;
      }

      v36 = v35;
      bundle2 = +[MIAppReferenceManager defaultManager];
      xpcConnection = [(MIClientConnection *)self xpcConnection];
      v56 = v30;
      v48 = [bundle2 addTemporaryReferenceForIdentity:identityCopy inDomain:v47 forUserWithID:objc_msgSend(xpcConnection error:{"effectiveUserIdentifier"), &v56}];
      v38 = xpcConnection;
      v39 = v56;

      v13 = v36;
      v40 = v38;
      v41 = v48;
    }

    else
    {
      v40 = v30;
      bundle2 = [v26 bundle];
      v41 = 0;
      v39 = sub_100010734("[MIClientConnection acquireReferenceforInstalledAppWithIdentity:inDomain:matchingInstallSessionID:completion:]", 2972, MIInstallerErrorDomain, 4, v30, 0, @"Failed to fetch installation identity for %@", v44, bundle2);
      v53 = 0;
      v13 = 0;
    }

    v27 = bundle2;
    v43 = v41;
    v14 = v53;
  }

  else
  {
    v43 = 0;
    v39 = sub_100010734("[MIClientConnection acquireReferenceforInstalledAppWithIdentity:inDomain:matchingInstallSessionID:completion:]", 2965, MIInstallerErrorDomain, 26, v27, 0, @"Could not find installed app with identity %@ in domain %lu", v28, identityCopy);
    v26 = 0;
    v14 = 0;
    v13 = 0;
  }

LABEL_28:

  v12 = v39;
  v42 = v43;
  v15 = v26;
LABEL_29:
  if (v54)
  {
    sub_100054780(v54);
  }

  if (v42)
  {
    completionCopy[2](completionCopy, v42, 0);
    goto LABEL_21;
  }

LABEL_20:
  (completionCopy)[2](completionCopy, 0, v12);
  v42 = 0;
LABEL_21:
}

- (void)invalidateReference:(id)reference completion:(id)completion
{
  referenceCopy = reference;
  completionCopy = completion;
  v8 = sub_100012A28(self, @"InstallForInstallCoordination");
  if (v8)
  {
    goto LABEL_6;
  }

  if ((+[ICLFeatureFlags appReferencesEnabled]& 1) == 0)
  {
    v8 = sub_100010734("[MIClientConnection invalidateReference:completion:]", 3018, MIInstallerErrorDomain, 161, 0, 0, @"%s is not enabled", v9, "[MIClientConnection invalidateReference:completion:]");
LABEL_6:
    v14 = v8;
    completionCopy[2](completionCopy, v8);
    goto LABEL_7;
  }

  identity = [referenceCopy identity];
  v16 = identity;
  v11 = [NSArray arrayWithObjects:&v16 count:1];
  v12 = [MIUninstaller uninstallerForIdentities:v11 withOptions:0 forClient:self];

  v15 = 0;
  LODWORD(v11) = [v12 performUninstallationByRevokingTemporaryReference:referenceCopy error:&v15];
  v13 = v15;
  v14 = v13;
  if (v11)
  {

    v14 = 0;
  }

  else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
  }

  completionCopy[2](completionCopy, v14);

LABEL_7:
}

- (void)referencesForBundleWithIdentifier:(id)identifier inDomain:(unint64_t)domain completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ((+[ICLFeatureFlags appReferencesEnabled]& 1) == 0)
  {
    v12 = sub_100010734("[MIClientConnection referencesForBundleWithIdentifier:inDomain:completion:]", 3039, MIInstallerErrorDomain, 161, 0, 0, @"%s is not enabled", v9, "[MIClientConnection referencesForBundleWithIdentifier:inDomain:completion:]");
    goto LABEL_5;
  }

  v10 = +[MIAppReferenceManager defaultManager];
  v13 = 0;
  v11 = [v10 referencesForIdentifier:identifierCopy inDomain:domain error:&v13];
  v12 = v13;

  if (!v11)
  {
LABEL_5:
    completionCopy[2](completionCopy, 0, v12);
    goto LABEL_6;
  }

  (completionCopy)[2](completionCopy, v11, 0);

LABEL_6:
}

- (void)setDataSeparatedAppsWithBundleIDs:(id)ds withPersona:(id)persona withCompletion:(id)completion
{
  dsCopy = ds;
  personaCopy = persona;
  v30 = dsCopy;
  completionCopy = completion;
  allObjects = [dsCopy allObjects];
  v27 = +[MIUserManagement sharedInstance];
  primaryPersonaUniqueString = [v27 primaryPersonaUniqueString];
  v40 = 0;
  LOBYTE(completion) = sub_10001E5E8(&v40);
  v9 = v40;
  if ((completion & 1) == 0)
  {
    goto LABEL_20;
  }

  if ((sub_10001473C(self) & 1) == 0)
  {
    clientName = [(MIClientConnection *)self clientName];
    v23 = sub_100010734("[MIClientConnection setDataSeparatedAppsWithBundleIDs:withPersona:withCompletion:]", 3110, MIInstallerErrorDomain, 2, 0, &off_10009C0D8, @"Process %@ tried to set persona %@ for data separated apps %@, can only be done by InstallCoordination.", v22, clientName);

    v9 = v23;
    goto LABEL_20;
  }

  if ([primaryPersonaUniqueString isEqualToString:personaCopy])
  {
LABEL_20:

    goto LABEL_21;
  }

  sub_100054630(allObjects);
  allObjects2 = [v30 allObjects];
  v39 = v9;
  v11 = [v27 setBundleIdentifiers:allObjects2 forPersonaUniqueString:personaCopy error:&v39];
  v12 = v39;

  if (v11)
  {
    v13 = +[MILaunchServicesOperationManager instanceForCurrentUser];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v30;
    v14 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v14)
    {
      v15 = *v36;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v35 + 1) + 8 * i);
          v18 = [NSSet setWithObject:personaCopy, v24, v25, v26];
          v34 = v12;
          v19 = [v13 setPersonaUniqueStrings:v18 forAppBundleID:v17 inDomain:2 error:&v34];
          v20 = v34;

          v12 = v20;
          if ((v19 & 1) == 0)
          {
            if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
            {
              v25 = personaCopy;
              v26 = v20;
              v24 = v17;
              MOLogWrite();
            }

            v12 = 0;
          }
        }

        v14 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v14);
    }
  }

  sub_100054780(allObjects);
  v9 = v12;
LABEL_21:
  completionCopy[2](completionCopy, v9);
}

- (void)addDataSeparatedAppsWithBundleIDs:(id)ds toPersona:(id)persona withCompletion:(id)completion
{
  dsCopy = ds;
  personaCopy = persona;
  completionCopy = completion;
  v32 = dsCopy;
  allObjects = [dsCopy allObjects];
  v30 = +[MIUserManagement sharedInstance];
  primaryPersonaUniqueString = [v30 primaryPersonaUniqueString];
  v44 = 0;
  LOBYTE(dsCopy) = sub_10001E5E8(&v44);
  v9 = v44;
  if ((dsCopy & 1) == 0)
  {
    goto LABEL_4;
  }

  v34 = sub_10001473C(self);
  if ((v34 & 1) == 0)
  {
    clientName = [(MIClientConnection *)self clientName];
    v14 = sub_100010734("[MIClientConnection addDataSeparatedAppsWithBundleIDs:toPersona:withCompletion:]", 3172, MIInstallerErrorDomain, 2, 0, &off_10009C100, @"Process %@ tried to set persona %@ for data separated apps %@, can only be done by InstallCoordination.", v13, clientName);

    v10 = 0;
    v29 = 0;
    v9 = v14;
    goto LABEL_6;
  }

  if ([primaryPersonaUniqueString isEqualToString:personaCopy])
  {
LABEL_4:
    v10 = 0;
    v11 = 0;
    v34 = 0;
    goto LABEL_8;
  }

  sub_100054630(allObjects);
  v43 = v9;
  v15 = [v30 bundleIDsAssociatedWithPersonaUniqueString:personaCopy error:&v43];
  v16 = v43;

  v29 = [v15 mutableCopy];
  if (v29)
  {
    [v29 unionSet:v32];
    allObjects2 = [v29 allObjects];
    v42 = v16;
    v18 = [v30 setBundleIdentifiers:allObjects2 forPersonaUniqueString:personaCopy error:&v42];
    v9 = v42;

    if (!v18)
    {
      v10 = 0;
      v34 = 1;
      goto LABEL_7;
    }

    v10 = +[MILaunchServicesOperationManager instanceForCurrentUser];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    clientName = v32;
    v19 = [clientName countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (v19)
    {
      v20 = *v39;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v39 != v20)
          {
            objc_enumerationMutation(clientName);
          }

          v22 = *(*(&v38 + 1) + 8 * i);
          v23 = [NSSet setWithObject:personaCopy, v26, v27, v28];
          v37 = v9;
          v24 = [v10 setPersonaUniqueStrings:v23 forAppBundleID:v22 inDomain:2 error:&v37];
          v25 = v37;

          v9 = v25;
          if ((v24 & 1) == 0)
          {
            if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
            {
              v27 = personaCopy;
              v28 = v25;
              v26 = v22;
              MOLogWrite();
            }

            v9 = 0;
          }
        }

        v19 = [clientName countByEnumeratingWithState:&v38 objects:v45 count:16];
      }

      while (v19);
    }

LABEL_6:

LABEL_7:
    v11 = v29;
    goto LABEL_8;
  }

  v10 = 0;
  v34 = 1;
  v9 = v16;
  v11 = 0;
LABEL_8:

  if (v34)
  {
    sub_100054780(allObjects);
  }

  completionCopy[2](completionCopy, v9);
}

- (void)removeDataSeparatedAppsWithBundleIDs:(id)ds fromPersona:(id)persona withCompletion:(id)completion
{
  dsCopy = ds;
  personaCopy = persona;
  completionCopy = completion;
  v32 = dsCopy;
  allObjects = [dsCopy allObjects];
  v31 = +[MIUserManagement sharedInstance];
  primaryPersonaUniqueString = [v31 primaryPersonaUniqueString];
  v45 = 0;
  LOBYTE(persona) = sub_10001E5E8(&v45);
  v9 = v45;
  if ((persona & 1) == 0)
  {
    goto LABEL_4;
  }

  v34 = sub_10001473C(self);
  if ((v34 & 1) == 0)
  {
    clientName = [(MIClientConnection *)self clientName];
    v14 = sub_100010734("[MIClientConnection removeDataSeparatedAppsWithBundleIDs:fromPersona:withCompletion:]", 3240, MIInstallerErrorDomain, 2, 0, &off_10009C128, @"Process %@ tried to set persona %@ for data separated apps %@, can only be done by InstallCoordination.", v13, clientName);

    v10 = 0;
    v30 = 0;
    v9 = v14;
    v15 = clientName;
    goto LABEL_6;
  }

  if ([primaryPersonaUniqueString isEqualToString:personaCopy])
  {
LABEL_4:
    v10 = 0;
    v11 = 0;
    v34 = 0;
    goto LABEL_8;
  }

  sub_100054630(allObjects);
  v44 = v9;
  v16 = [v31 bundleIDsAssociatedWithPersonaUniqueString:personaCopy error:&v44];
  v17 = v44;

  v30 = [v16 mutableCopy];
  if (v30)
  {
    [v30 minusSet:dsCopy];
    allObjects2 = [v30 allObjects];
    v43 = v17;
    v19 = [v31 setBundleIdentifiers:allObjects2 forPersonaUniqueString:personaCopy error:&v43];
    v9 = v43;

    if (!v19)
    {
      v10 = 0;
      v34 = 1;
      goto LABEL_7;
    }

    v10 = +[MILaunchServicesOperationManager instanceForCurrentUser];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v15 = v32;
    v20 = [v15 countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v20)
    {
      v21 = *v40;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v40 != v21)
          {
            objc_enumerationMutation(v15);
          }

          v23 = *(*(&v39 + 1) + 8 * i);
          v24 = [NSSet setWithObject:primaryPersonaUniqueString, v27, v28, v29];
          v38 = v9;
          v25 = [v10 setPersonaUniqueStrings:v24 forAppBundleID:v23 inDomain:2 error:&v38];
          v26 = v38;

          v9 = v26;
          if ((v25 & 1) == 0)
          {
            if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
            {
              v28 = personaCopy;
              v29 = v26;
              v27 = v23;
              MOLogWrite();
            }

            v9 = 0;
          }
        }

        v20 = [v15 countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v20);
    }

LABEL_6:

LABEL_7:
    v11 = v30;
    goto LABEL_8;
  }

  v10 = 0;
  v34 = 1;
  v9 = v17;
  v11 = 0;
LABEL_8:

  if (v34)
  {
    sub_100054780(allObjects);
  }

  completionCopy[2](completionCopy, v9);
}

- (void)linkedBundleIDsForAppIdentity:(id)identity withCompletion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  if (sub_10001473C(self))
  {
    bundleID = [identityCopy bundleID];
    sub_100054630(bundleID);
    v20 = 0;
    v10 = [identityCopy resolvePersonaWithError:&v20];
    v11 = v20;
    if (v10)
    {
      v12 = [MIContainerLinkManager sharedInstanceForDomain:2];
      v19 = v11;
      v13 = [v12 childrenForParentBundleID:bundleID error:&v19];
      v14 = v19;

      if (v13)
      {
        v11 = v14;
      }

      else
      {
        v17 = sub_100010734("[MIClientConnection linkedBundleIDsForAppIdentity:withCompletion:]", 3313, MIInstallerErrorDomain, 4, v14, 0, @"Failed to query linked children for %@", v15, identityCopy);

        v13 = 0;
        v11 = v17;
      }
    }

    else
    {
      v13 = 0;
    }

    v16 = bundleID;
    sub_100054780(bundleID);
  }

  else
  {
    v16 = 0;
    v11 = sub_100010734("[MIClientConnection linkedBundleIDsForAppIdentity:withCompletion:]", 3299, MIInstallerErrorDomain, 2, 0, &off_10009C150, &stru_100092CF8, v8, v18);
    v13 = 0;
  }

  completionCopy[2](completionCopy, v13, v11);
}

- (void)getPidForTestingWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = getpid();
  (*(completion + 2))(completionCopy, v4);
}

- (void)dieForTesting
{
  v3 = sub_100012A28(self, @"UnitTestRunner");
  if (!v3)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      clientName = [(MIClientConnection *)self clientName];
      MOLogWrite();
    }

    exit(1);
  }
}

- (void)raiseExceptionWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = sub_100012A28(self, @"UnitTestRunner");
  if (!v4)
  {
    v6 = [NSException alloc];
    objc_exception_throw([v6 initWithName:NSGenericException reason:MITestExceptionReasonString userInfo:0]);
  }

  v5 = v4;
  completionCopy[2](completionCopy, v4);
}

- (void)setTestModeWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100012A28(self, @"UnitTestRunner");
  if (!v5)
  {
    v6 = +[MITestManager sharedInstance];
    xpcConnection = [(MIClientConnection *)self xpcConnection];
    v9 = 0;
    v8 = [v6 setIsRunningInTestModeForProcessWithPID:objc_msgSend(xpcConnection withError:{"processIdentifier"), &v9}];
    v5 = v9;

    if (v8)
    {

      v5 = 0;
    }
  }

  completionCopy[2](completionCopy, v5);
}

- (void)endTestModeWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100012A28(self, @"UnitTestRunner");
  if (!v5)
  {
    v6 = +[MITestManager sharedInstance];
    xpcConnection = [(MIClientConnection *)self xpcConnection];
    v9 = 0;
    v8 = [v6 clearIsRunningInTestModeForProcessWithPID:objc_msgSend(xpcConnection withError:{"processIdentifier"), &v9}];
    v5 = v9;

    if (v8)
    {

      v5 = 0;
    }
  }

  completionCopy[2](completionCopy, v5);
}

- (void)getTestModeWithCompletion:(id)completion
{
  completionCopy = completion;
  v9 = 0;
  v5 = sub_100012A28(self, @"UnitTestRunner");
  if (!v5)
  {
    v6 = +[MITestManager sharedInstance];
    v8 = 0;
    v7 = [v6 isRunningInTestMode:&v9 outError:&v8];
    v5 = v8;

    if (v7)
    {

      v5 = 0;
    }
  }

  completionCopy[2](completionCopy, v9, v5);
}

- (void)setTestFlags:(unint64_t)flags withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[MITestManager sharedInstance];
  v8 = sub_100012A28(self, @"UnitTestRunner");
  if (!v8)
  {
    v13 = 0;
    v12 = 0;
    v9 = [v7 isRunningInTestMode:&v13 outError:&v12];
    v8 = v12;
    if (v9)
    {
      if (v13)
      {
        [v7 setTestFlags:flags];
      }

      else
      {
        v11 = sub_100010734("[MIClientConnection setTestFlags:withCompletion:]", 3433, MIInstallerErrorDomain, 4, 0, 0, @"Can't set test flags because installd is not in test mode.", v10, v12);

        v8 = v11;
      }
    }
  }

  completionCopy[2](completionCopy, v8);
}

- (void)clearTestFlags:(unint64_t)flags withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[MITestManager sharedInstance];
  v8 = sub_100012A28(self, @"UnitTestRunner");
  if (!v8)
  {
    v13 = 0;
    v12 = 0;
    v9 = [v7 isRunningInTestMode:&v13 outError:&v12];
    v8 = v12;
    if (v9)
    {
      if (v13)
      {
        [v7 clearTestFlags:flags];
      }

      else
      {
        v11 = sub_100010734("[MIClientConnection clearTestFlags:withCompletion:]", 3462, MIInstallerErrorDomain, 4, 0, 0, @"Can't clear test flags because installd is not in test mode.", v10, v12);

        v8 = v11;
      }
    }
  }

  completionCopy[2](completionCopy, v8);
}

- (void)setEligibilityTestOverrides:(id)overrides withCompletion:(id)completion
{
  overridesCopy = overrides;
  completionCopy = completion;
  v7 = sub_100012A28(self, @"UnitTestRunner");
  if (!v7)
  {
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    if (sub_100010D20(overridesCopy, v8, v9))
    {
      v11 = +[MIEligibilityManager sharedInstance];
      [v11 setTestOverrides:overridesCopy];

      v7 = 0;
    }

    else
    {
      v7 = sub_100010734("[MIClientConnection setEligibilityTestOverrides:withCompletion:]", 3484, MIInstallerErrorDomain, 25, 0, 0, @"Supplied dictionary had non-number keys or values.", v10, v12);
    }
  }

  completionCopy[2](completionCopy, v7);
}

- (void)_triggerRegistrationForContent:(unint64_t)content registrationOptions:(id)options writeLock:(BOOL)lock withCompletion:(id)completion
{
  lockCopy = lock;
  optionsCopy = options;
  completionCopy = completion;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_1000141D4;
  v33 = sub_1000141E4;
  v34 = 0;
  targetUID = [optionsCopy targetUID];
  v12 = +[MITestManager sharedInstance];
  v28 = 0;
  if ([v12 isRunningInTestMode:&v28 outError:0] && v28 == 1)
  {
    if ([v12 testFlagsAreSet:2])
    {
      v14 = sub_100010734("[MIClientConnection _triggerRegistrationForContent:registrationOptions:writeLock:withCompletion:]", 3512, MIInstallerErrorDomain, 4, 0, 0, @"Triggering registration with test mode enabled", v13, v24);
      v15 = v30[5];
      v30[5] = v14;

LABEL_16:
      completionCopy[2](completionCopy, v30[5]);
      goto LABEL_17;
    }

    if ([v12 testFlagsAreSet:16])
    {
      v16 = +[MIDaemonConfiguration sharedInstance];
      testFileSentinelForSyncURL = [v16 testFileSentinelForSyncURL];

      v18 = +[MIFileManager defaultManager];
      [v18 removeItemAtURL:testFileSentinelForSyncURL error:0];
    }
  }

  if (lockCopy)
  {
    sub_100054DB8();
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    MOLogWrite();
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10002000C;
  v26[3] = &unk_100091318;
  v27 = targetUID;
  v26[4] = &v29;
  v19 = [[MIReferenceAwareLSDatabaseGatherer alloc] initWithOptions:content forTargetUID:targetUID enumerator:v26];
  v20 = (v30 + 5);
  obj = v30[5];
  v21 = [(MIReferenceAwareLSDatabaseGatherer *)v19 performGatherWithError:&obj];
  objc_storeStrong(v20, obj);

  if (lockCopy)
  {
    sub_100054DC0(v22, v23);
  }

  if (!v21)
  {
    goto LABEL_16;
  }

  completionCopy[2](completionCopy, 0);
LABEL_17:
  _Block_object_dispose(&v29, 8);
}

- (void)cloneSerializedPlaceholderForInstalledAppWithBundeID:(id)d personaUniqueString:(id)string atResultURL:(id)l withCompletion:(id)completion
{
  dCopy = d;
  stringCopy = string;
  lCopy = l;
  completionCopy = completion;
  v11 = sub_100012A28(self, @"CreateSerializedPlaceholder");
  if (v11)
  {
    v12 = 0;
    serializedPlaceholderURL = 0;
    v14 = 0;
LABEL_38:
    v22 = v12;
    completionCopy[2](completionCopy, v11);
    v25 = v11;
    goto LABEL_39;
  }

  objc_opt_class();
  v15 = dCopy;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (!v16)
  {
    v20 = @"Bundle ID parameter was not a string or was set to nil";
    v21 = 3599;
LABEL_15:
    v12 = 0;
    v11 = sub_100010734("[MIClientConnection cloneSerializedPlaceholderForInstalledAppWithBundeID:personaUniqueString:atResultURL:withCompletion:]", v21, MIInstallerErrorDomain, 25, 0, 0, v20, v17, v34);
    serializedPlaceholderURL = 0;
    v14 = 0;
    goto LABEL_38;
  }

  objc_opt_class();
  v35 = lCopy;
  if (objc_opt_isKindOfClass())
  {
    v18 = v35;
    v19 = v35;
  }

  else
  {
    v19 = 0;
    v18 = v35;
  }

  if (!v19)
  {
    v20 = @"Resultant IPA URL parameter was not a URL or was set to nil";
    v21 = 3604;
    goto LABEL_15;
  }

  if (stringCopy)
  {
    v22 = 0;
  }

  else
  {
    v23 = +[MIGlobalConfiguration sharedInstance];
    primaryPersonaString = [v23 primaryPersonaString];

    v22 = primaryPersonaString;
  }

  sub_100054628(v15);
  v42 = 0;
  v14 = [MIBundleContainer appBundleContainerWithIdentifier:v15 forPersona:stringCopy createIfNeeded:0 created:0 error:&v42];
  v25 = v42;
  if (!v14)
  {
    serializedPlaceholderURL = 0;
    v32 = 0;
    goto LABEL_35;
  }

  serializedPlaceholderURL = [v14 serializedPlaceholderURL];
  if (serializedPlaceholderURL)
  {
    if (([v14 hasSerializedPlaceholder] & 1) == 0)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
      {
        v34 = v15;
        MOLogWrite();
      }

      sub_100054780(v15);
      sub_100054630(v15);
      if (([v14 hasSerializedPlaceholder] & 1) == 0)
      {
        v41 = v25;
        v27 = [MIPlaceholderSerializer materializeForInstalledAppWithBundleContainer:v14 withError:&v41];
        v28 = v41;

        if ((v27 & 1) == 0)
        {
          v33 = sub_100010734("[MIClientConnection cloneSerializedPlaceholderForInstalledAppWithBundeID:personaUniqueString:atResultURL:withCompletion:]", 3635, MIInstallerErrorDomain, 175, v28, 0, @"Failed to create a serialized placeholder for %@/%@", v29, v15);
          v32 = 0;
LABEL_33:
          v25 = v28;
          goto LABEL_34;
        }

        v25 = v28;
      }

      sub_100054780(v15);
      sub_100054628(v15);
    }

    v28 = +[MIHelperServiceClient sharedInstance];
    xpcConnection = [(MIClientConnection *)self xpcConnection];
    v31 = xpcConnection;
    if (xpcConnection)
    {
      [xpcConnection auditToken];
    }

    else
    {
      memset(v40, 0, sizeof(v40));
    }

    v39 = v25;
    v32 = [v28 cloneItemAtURL:serializedPlaceholderURL toURL:v35 onBehalfOf:v40 error:&v39];
    v33 = v39;

    goto LABEL_33;
  }

  v33 = sub_100010734("[MIClientConnection cloneSerializedPlaceholderForInstalledAppWithBundeID:personaUniqueString:atResultURL:withCompletion:]", 3622, MIInstallerErrorDomain, 4, 0, 0, @"Failed to locate serialized placeholder in container for %@", v26, v15);
  v32 = 0;
LABEL_34:

  v25 = v33;
LABEL_35:
  sub_100054780(dCopy);
  if ((v32 & 1) == 0)
  {
    v11 = v25;
    v12 = v22;
    goto LABEL_38;
  }

  completionCopy[2](completionCopy, 0);
LABEL_39:
}

- (void)setLaunchWarningForApp:(id)app withUniqueInstallIdentifier:(id)identifier warningData:(id)data completion:(id)completion
{
  appCopy = app;
  identifierCopy = identifier;
  dataCopy = data;
  completionCopy = completion;
  v15 = sub_100012A28(self, @"SetLaunchWarning");
  if (v15)
  {
    v16 = 0;
    bundleID = 0;
    v18 = 0;
    goto LABEL_9;
  }

  if (!appCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v16 = 0;
    v15 = sub_100010734("[MIClientConnection setLaunchWarningForApp:withUniqueInstallIdentifier:warningData:completion:]", 3690, MIInstallerErrorDomain, 25, 0, 0, @"App identity was nil or the wrong type for request to set launch warning", v14, v36);
    bundleID = 0;
LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  bundleID = [appCopy bundleID];
  objc_opt_class();
  v19 = identifierCopy;
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (!v20)
  {
    v24 = @"Unique install identifier was nil or the wrong type for request to set launch warning for %@";
    v25 = 3697;
LABEL_34:
    v16 = 0;
    v15 = sub_100010734("[MIClientConnection setLaunchWarningForApp:withUniqueInstallIdentifier:warningData:completion:]", v25, MIInstallerErrorDomain, 25, 0, 0, v24, v21, appCopy);
    goto LABEL_8;
  }

  if (!dataCopy)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  objc_opt_class();
  v22 = dataCopy;
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (!v23)
  {
    v24 = @"Warning data was of the wrong type for request to set launch warning for %@";
    v25 = 3702;
    goto LABEL_34;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) > 4)
  {
LABEL_26:
    MOLogWrite();
  }

LABEL_27:
  sub_100054630(bundleID);
  v43 = 0;
  v16 = 1;
  v26 = [MIBundleContainer appBundleContainerWithIdentifier:bundleID createIfNeeded:0 created:0 error:&v43];
  v27 = v43;
  v28 = v27;
  if (v26)
  {
    bundle = [v26 bundle];
    v40 = bundle;
    if (bundle)
    {
      v42 = v28;
      v39 = [bundle installationIdentitySettingIfNotSet:0 withError:&v42];
      v31 = v42;

      if (v39)
      {
        uniqueInstallID = [v39 uniqueInstallID];
        v37 = v31;
        if ([v19 isEqualToData:uniqueInstallID])
        {
          v41 = v31;
          v18 = [v40 setLaunchWarningData:dataCopy withError:&v41];
          v15 = v41;
        }

        else
        {
          v15 = sub_100010734("[MIClientConnection setLaunchWarningForApp:withUniqueInstallIdentifier:warningData:completion:]", 3736, MIInstallerErrorDomain, 200, 0, 0, @"Installed app with identity %@ does not have supplied unique install identifier %@ (found %@)", v33, appCopy);
          v18 = 0;
        }

        v35 = v39;
      }

      else
      {
        v34 = sub_100010734("[MIClientConnection setLaunchWarningForApp:withUniqueInstallIdentifier:warningData:completion:]", 3729, MIInstallerErrorDomain, 200, v31, 0, @"Failed to get installation identity for %@", v32, appCopy);
        v35 = v31;
        v15 = v34;
        v18 = 0;
      }

      v28 = v40;
    }

    else
    {
      v15 = sub_100010734("[MIClientConnection setLaunchWarningForApp:withUniqueInstallIdentifier:warningData:completion:]", 3722, MIInstallerErrorDomain, 4, 0, 0, @"Failed to locate app bundle in container for %@", v30, appCopy);
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
    v15 = v27;
  }

LABEL_9:
  if (v16)
  {
    sub_100054780(bundleID);
  }

  if (v18)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    (completionCopy)[2](completionCopy, v15);
  }
}

- (NSXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);

  return WeakRetained;
}

@end