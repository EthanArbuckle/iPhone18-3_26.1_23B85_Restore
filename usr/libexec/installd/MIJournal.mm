@interface MIJournal
+ (id)sharedInstance;
- (BOOL)purgeJournalEntry:(id)a3 withError:(id *)a4;
- (BOOL)writeJournalEntry:(id)a3 withError:(id *)a4;
- (MIJournal)init;
- (NSURL)journalStorageBase;
- (id)_journalStorageURLForUniqueIdentifier:(id)a3;
- (id)journalEntryForIdentifier:(id)a3 error:(id *)a4;
- (id)journaledEntriesCleaningFailuresWithError:(id *)a3;
- (id)journaledEntriesWithError:(id *)a3;
- (void)_enumerateJournaledEntriesContinuingOnFailure:(BOOL)a3 cleanUpFailedEntries:(BOOL)a4 withBlock:(id)a5;
- (void)reconcile;
@end

@implementation MIJournal

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A688;
  block[3] = &unk_100090CF8;
  block[4] = a1;
  if (qword_1000A9660 != -1)
  {
    dispatch_once(&qword_1000A9660, block);
  }

  v2 = qword_1000A9658;

  return v2;
}

- (MIJournal)init
{
  v3.receiver = self;
  v3.super_class = MIJournal;
  return [(MIJournal *)&v3 init];
}

- (NSURL)journalStorageBase
{
  v2 = +[MIDaemonConfiguration sharedInstance];
  v3 = [v2 journalStorageBaseURL];

  return v3;
}

- (id)_journalStorageURLForUniqueIdentifier:(id)a3
{
  v4 = [a3 stringByAppendingPathExtension:@"plist"];
  v5 = [(MIJournal *)self journalStorageBase];
  v6 = [v5 URLByAppendingPathComponent:v4 isDirectory:0];

  return v6;
}

- (BOOL)writeJournalEntry:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [v6 shouldPersist];
  if (+[ICLFeatureFlags twoStageAppInstallEnabled])
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 1;
  }

  else
  {
    if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
    {
      v22 = v6;
      MOLogWrite();
    }

    v25 = 0;
    v10 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v25, v22];
    v13 = v25;
    v14 = v13;
    if (!v10)
    {
      v11 = 0;
      v9 = v13;
      if (a4)
      {
LABEL_18:
        v20 = v9;
        v12 = 0;
        *a4 = v9;
        goto LABEL_21;
      }

LABEL_20:
      v12 = 0;
      goto LABEL_21;
    }

    v15 = [v6 uniqueIdentifier];
    v11 = [(MIJournal *)self _journalStorageURLForUniqueIdentifier:v15];

    v16 = +[MIDaemonConfiguration sharedInstance];
    v17 = [v16 uid];
    v18 = +[MIDaemonConfiguration sharedInstance];
    v24 = v14;
    v12 = 1;
    v19 = [v10 MI_writeAtomicallyToURL:v11 withMode:420 owner:v17 group:objc_msgSend(v18 protectionClass:"gid") withBarrier:4 error:{1, &v24}];
    v9 = v24;

    if ((v19 & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_100058464(v6, v11);
      }

      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v23 = [v11 path];
        MOLogWrite();
      }

      if (a4)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    }
  }

LABEL_21:

  return v12;
}

- (BOOL)purgeJournalEntry:(id)a3 withError:(id *)a4
{
  v6 = a3;
  if (!+[ICLFeatureFlags twoStageAppInstallEnabled])
  {
    v13 = 0;
    v10 = 0;
LABEL_19:
    v15 = 1;
    goto LABEL_20;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    v17 = v6;
    MOLogWrite();
  }

  v21 = 0;
  v7 = [v6 cleanUpJournaledDataOnDiskWithError:{&v21, v17}];
  v8 = v21;
  if ((v7 & 1) == 0)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v18 = v8;
      MOLogWrite();
    }

    v8 = 0;
  }

  v9 = [v6 uniqueIdentifier];
  v10 = [(MIJournal *)self _journalStorageURLForUniqueIdentifier:v9];

  v11 = +[MIFileManager defaultManager];
  v20 = v8;
  v12 = [v11 removeItemAtURL:v10 error:&v20];
  v13 = v20;

  if (v12)
  {
    goto LABEL_19;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_100058518(v6, v10);
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    v19 = [v10 path];
    MOLogWrite();
  }

  if (a4)
  {
    v14 = v13;
    v15 = 0;
    *a4 = v13;
  }

  else
  {
    v15 = 0;
  }

LABEL_20:

  return v15;
}

- (void)_enumerateJournaledEntriesContinuingOnFailure:(BOOL)a3 cleanUpFailedEntries:(BOOL)a4 withBlock:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(MIJournal *)self journalEntryClasses];
  v10 = objc_opt_new();
  v11 = +[MIFileManager defaultManager];
  v12 = [(MIJournal *)self journalStorageBase];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10002AF44;
  v33[3] = &unk_1000914F8;
  v13 = v8;
  v36 = v13;
  v37 = a3;
  v14 = v9;
  v34 = v14;
  v38 = v5;
  v15 = v10;
  v35 = v15;
  v16 = [v11 enumerateURLsForItemsInDirectoryAtURL:v12 ignoreSymlinks:1 withBlock:v33];

  if (v5)
  {
    v27 = v14;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v26 = v15;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v29 + 1) + 8 * i);
          if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
          {
            v25 = [*(*(&v29 + 1) + 8 * i) path];
            MOLogWrite();
          }

          v28 = 0;
          v23 = [v11 removeItemAtURL:v22 error:{&v28, v25}];
          v24 = v28;
          if ((v23 & 1) == 0)
          {
            if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
            {
              v25 = v24;
              MOLogWrite();
            }

            v24 = 0;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v19);
    }

    v14 = v27;
    v15 = v26;
  }
}

- (void)reconcile
{
  if (_os_feature_enabled_impl())
  {

    [(MIJournal *)self _enumerateJournaledEntriesContinuingOnFailure:1 cleanUpFailedEntries:0 withBlock:&stru_100091538];
  }

  else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {

    MOLogWrite();
  }
}

- (id)journalEntryForIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MIJournal *)self _journalStorageURLForUniqueIdentifier:v6];
  v8 = +[MIFileManager defaultManager];
  v9 = [v8 itemExistsAtURL:v7];

  if (v9)
  {
    v27 = 0;
    v11 = [NSData dataWithContentsOfURL:v7 options:3 error:&v27];
    v12 = v27;
    if (v11)
    {
      v13 = [(MIJournal *)self journalEntryClasses];
      v26 = v12;
      v14 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v13 fromData:v11 error:&v26];
      v15 = v26;

      if (v14)
      {
        v16 = v14;
        goto LABEL_11;
      }

      v21 = MIInstallerErrorDomain;
      v22 = [v7 path];
      v24 = sub_100010734("[MIJournal journalEntryForIdentifier:error:]", 276, v21, 218, v15, 0, @"Failed to unarchive journal entry data from %@", v23, v22);

      v15 = v24;
      if (!a4)
      {
        goto LABEL_10;
      }

LABEL_8:
      v20 = v15;
      v16 = 0;
      *a4 = v15;
      goto LABEL_11;
    }

    v17 = MIInstallerErrorDomain;
    v18 = [v7 path];
    v15 = sub_100010734("[MIJournal journalEntryForIdentifier:error:]", 270, v17, 218, v12, 0, @"Failed to read journal entry data from %@", v19, v18);
  }

  else
  {
    v15 = sub_100010734("[MIJournal journalEntryForIdentifier:error:]", 264, MIInstallerErrorDomain, 218, 0, 0, @"Failed to find matching journal entry for %@", v10, v6);
  }

  v11 = 0;
  if (a4)
  {
    goto LABEL_8;
  }

LABEL_10:
  v16 = 0;
LABEL_11:

  return v16;
}

- (id)journaledEntriesCleaningFailuresWithError:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10002B71C;
  v18 = sub_10002B72C;
  v19 = 0;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10002B734;
  v11 = &unk_100091560;
  v5 = objc_opt_new();
  v12 = v5;
  v13 = &v14;
  [(MIJournal *)self _enumerateJournaledEntriesContinuingOnFailure:1 cleanUpFailedEntries:1 withBlock:&v8];
  if (v15[5])
  {
    v6 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = [v5 copy];
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
    *a3 = v15[5];
  }

LABEL_7:

  _Block_object_dispose(&v14, 8);

  return v6;
}

- (id)journaledEntriesWithError:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10002B71C;
  v18 = sub_10002B72C;
  v19 = 0;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10002B904;
  v11 = &unk_100091560;
  v5 = objc_opt_new();
  v12 = v5;
  v13 = &v14;
  [(MIJournal *)self _enumerateJournaledEntriesContinuingOnFailure:0 cleanUpFailedEntries:0 withBlock:&v8];
  if (v15[5])
  {
    v6 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = [v5 copy];
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
    *a3 = v15[5];
  }

LABEL_7:

  _Block_object_dispose(&v14, 8);

  return v6;
}

@end