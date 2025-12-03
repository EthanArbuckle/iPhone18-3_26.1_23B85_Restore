@interface StaticKeyContactsSync
- (StaticKeyContactsStorage)storage;
- (StaticKeyContactsSync)initWithStorage:(id)storage;
- (StaticKeyContactsSyncDelegate)delegate;
- (void)consumeContactsChangeHistory;
- (void)contactStoreDidChange:(id)change;
- (void)dealloc;
- (void)drainContactsSyncing;
- (void)invalidateContactsSyncing;
- (void)onQueueMergeChangesFromContacts;
- (void)startContactsSyncing;
@end

@implementation StaticKeyContactsSync

- (StaticKeyContactsSync)initWithStorage:(id)storage
{
  storageCopy = storage;
  v18.receiver = self;
  v18.super_class = StaticKeyContactsSync;
  v5 = [(StaticKeyContactsSync *)&v18 init];
  v6 = v5;
  if (v5)
  {
    [(StaticKeyContactsSync *)v5 setStorage:storageCopy];
    [(StaticKeyContactsSync *)v6 setStarted:0];
    [(StaticKeyContactsSync *)v6 setTransaction:0];
    v7 = dispatch_queue_create("StaticKeyContactsSync", 0);
    [(StaticKeyContactsSync *)v6 setQueue:v7];

    objc_initWeak(&location, v6);
    v8 = [KTSignalTermHandler alloc];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100209B70;
    v15 = &unk_1003175E0;
    objc_copyWeak(&v16, &location);
    v9 = [(KTSignalTermHandler *)v8 initWithSIGTERMNotification:&v12];
    [(StaticKeyContactsSync *)v6 setSigTerm:v9, v12, v13, v14, v15];

    v10 = v6;
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)dealloc
{
  sigTerm = [(StaticKeyContactsSync *)self sigTerm];
  [sigTerm unregister];

  v4.receiver = self;
  v4.super_class = StaticKeyContactsSync;
  [(StaticKeyContactsSync *)&v4 dealloc];
}

- (void)startContactsSyncing
{
  queue = [(StaticKeyContactsSync *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100209DA0;
  block[3] = &unk_100316FE0;
  block[4] = self;
  dispatch_sync(queue, block);

  if (qword_10039CC38 != -1)
  {
    sub_10025E314();
  }

  v4 = qword_10039CC40;
  if (os_log_type_enabled(qword_10039CC40, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "StaticKeyContactsSync started", v5, 2u);
  }

  [(StaticKeyContactsSync *)self consumeContactsChangeHistory];
}

- (void)contactStoreDidChange:(id)change
{
  changeCopy = change;
  if (qword_10039CC38 != -1)
  {
    sub_10025E350();
  }

  v5 = qword_10039CC40;
  if (os_log_type_enabled(qword_10039CC40, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = changeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "contactStoreDidChange: %@", &v6, 0xCu);
  }

  [(StaticKeyContactsSync *)self consumeContactsChangeHistory];
}

- (void)consumeContactsChangeHistory
{
  delegate = [(StaticKeyContactsSync *)self delegate];
  v10 = 0;
  v4 = [delegate listStaticKey:&v10];
  v5 = v10;

  if (v5)
  {
    if (qword_10039CC38 != -1)
    {
      sub_10025E364();
    }

    v6 = qword_10039CC40;
    if (os_log_type_enabled(qword_10039CC40, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error fetching static key results %@", buf, 0xCu);
    }
  }

  if ([v4 count])
  {
    if (!+[KTSignalTermHandler terminated])
    {
      queue = [(StaticKeyContactsSync *)self queue];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10020A290;
      v9[3] = &unk_100316FE0;
      v9[4] = self;
      dispatch_async(queue, v9);
    }
  }

  else
  {
    if (qword_10039CC38 != -1)
    {
      sub_10025E38C();
    }

    v8 = qword_10039CC40;
    if (os_log_type_enabled(qword_10039CC40, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "consumeContactsChangeHistory ignoring contacts change because we have no KT entries", buf, 2u);
    }
  }
}

- (void)invalidateContactsSyncing
{
  if (qword_10039CC38 != -1)
  {
    sub_10025E3B4();
  }

  v3 = qword_10039CC40;
  if (os_log_type_enabled(qword_10039CC40, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "StaticKeyContactsSync invalidate", v5, 2u);
  }

  [(StaticKeyContactsSync *)self setStorage:0];
  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 removeObserver:self name:CNContactStoreDidChangeNotification object:0];
}

- (void)drainContactsSyncing
{
  queue = [(StaticKeyContactsSync *)self queue];
  dispatch_sync(queue, &stru_10032A2F0);
}

- (void)onQueueMergeChangesFromContacts
{
  if (qword_10039CC38 != -1)
  {
    sub_10025E3C8();
  }

  v3 = qword_10039CC40;
  if (os_log_type_enabled(qword_10039CC40, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "mergeChangesFromContacts started", buf, 2u);
  }

  queue = [(StaticKeyContactsSync *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = objc_alloc_init(CNChangeHistoryFetchRequest);
  storage = [(StaticKeyContactsSync *)self storage];
  fetchContactsSyncToken = [storage fetchContactsSyncToken];
  [v5 setStartingToken:fetchContactsSyncToken];

  [v5 setExcludedTransactionAuthors:&off_10033D8B0];
  v58[0] = CNContactEmailAddressesKey;
  v58[1] = CNContactPhoneNumbersKey;
  v58[2] = CNContactExternalIdentifierKey;
  v8 = [NSArray arrayWithObjects:v58 count:3];
  [v5 setAdditionalContactKeyDescriptors:v8];

  v9 = objc_alloc_init(CNContactStore);
  v53 = 0;
  v10 = [v9 enumeratorForChangeHistoryFetchRequest:v5 error:&v53];
  v11 = v53;
  v12 = v11;
  if (!v10)
  {
    if (qword_10039CC38 != -1)
    {
      sub_10025E51C();
    }

    v39 = qword_10039CC40;
    if (os_log_type_enabled(qword_10039CC40, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v55 = v12;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "CNFetchResult failed: %@", buf, 0xCu);
    }

    goto LABEL_57;
  }

  v51 = v11;
  v52 = v10;
  value = [v10 value];
  nextObject = 0;
  *&v15 = 138412546;
  v49 = v15;
  while (1)
  {
    v16 = nextObject;
    nextObject = [value nextObject];

    if (!nextObject)
    {
      break;
    }

    if (qword_10039CC38 != -1)
    {
      sub_10025E3DC();
    }

    v17 = qword_10039CC40;
    if (os_log_type_enabled(qword_10039CC40, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v55 = nextObject;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "mergeChangesFromContacts: change history enumerator object = %@", buf, 0xCu);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (qword_10039CC38 != -1)
      {
        sub_10025E4A4();
      }

      v18 = qword_10039CC40;
      if (os_log_type_enabled(qword_10039CC40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "mergeChangesFromContacts: change history - drop everything", buf, 2u);
      }

      delegate = [(StaticKeyContactsSync *)self delegate];
      [delegate resetContactsStorage];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = nextObject;
        if (qword_10039CC38 != -1)
        {
          sub_10025E47C();
        }

        v21 = qword_10039CC40;
        if (os_log_type_enabled(qword_10039CC40, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v21;
          contact = [v20 contact];
          *buf = 138412290;
          v55 = contact;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "mergeChangesFromContacts: change history - AddContact event - %@", buf, 0xCu);
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = nextObject;
            v50 = v9;
            if (qword_10039CC38 != -1)
            {
              sub_10025E42C();
            }

            v30 = v5;
            v31 = qword_10039CC40;
            if (os_log_type_enabled(qword_10039CC40, OS_LOG_TYPE_DEFAULT))
            {
              v32 = v31;
              contactIdentifier = [v29 contactIdentifier];
              externalURI = [v29 externalURI];
              *buf = v49;
              v55 = contactIdentifier;
              v56 = 2112;
              v57 = externalURI;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "mergeChangesFromContacts: change history - DeleteContact event - %@[%@]", buf, 0x16u);
            }

            delegate2 = [(StaticKeyContactsSync *)self delegate];
            contactIdentifier2 = [v29 contactIdentifier];
            externalURI2 = [v29 externalURI];
            [delegate2 deleteContact:contactIdentifier2 contactExternalURI:externalURI2];

            v5 = v30;
            v9 = v50;
          }

          else
          {
            if (qword_10039CC38 != -1)
            {
              sub_10025E404();
            }

            v38 = qword_10039CC40;
            if (os_log_type_enabled(qword_10039CC40, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v55 = nextObject;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "mergeChangesFromContacts: change history - ignoring event - %@", buf, 0xCu);
            }
          }

          goto LABEL_29;
        }

        v20 = nextObject;
        if (qword_10039CC38 != -1)
        {
          sub_10025E454();
        }

        v24 = qword_10039CC40;
        if (os_log_type_enabled(qword_10039CC40, OS_LOG_TYPE_DEFAULT))
        {
          v25 = v24;
          contact2 = [v20 contact];
          *buf = 138412290;
          v55 = contact2;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "mergeChangesFromContacts: change history - UpdateContact event - %@", buf, 0xCu);
        }
      }

      delegate3 = [(StaticKeyContactsSync *)self delegate];
      contact3 = [v20 contact];
      [delegate3 updateContact:contact3];
    }

LABEL_29:
    if (+[KTSignalTermHandler terminated])
    {
      if (qword_10039CC38 != -1)
      {
        sub_10025E4CC();
      }

      v48 = qword_10039CC40;
      v12 = v51;
      if (os_log_type_enabled(qword_10039CC40, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v45 = "terminated while syncing, abandon sync";
        v46 = v48;
        v47 = OS_LOG_TYPE_ERROR;
        goto LABEL_55;
      }

      goto LABEL_56;
    }
  }

  currentHistoryToken = [v52 currentHistoryToken];

  if (currentHistoryToken)
  {
    storage2 = [(StaticKeyContactsSync *)self storage];
    currentHistoryToken2 = [v52 currentHistoryToken];
    [storage2 storeContactsSyncToken:currentHistoryToken2];
  }

  storage3 = [(StaticKeyContactsSync *)self storage];
  [storage3 updateLastContactSyncDate];

  if (qword_10039CC38 != -1)
  {
    sub_10025E4F4();
  }

  v12 = v51;
  v44 = qword_10039CC40;
  if (os_log_type_enabled(qword_10039CC40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v45 = "mergeChangesFromContacts: mergeChangesFromContacts done";
    v46 = v44;
    v47 = OS_LOG_TYPE_DEFAULT;
LABEL_55:
    _os_log_impl(&_mh_execute_header, v46, v47, v45, buf, 2u);
  }

LABEL_56:

  v10 = v52;
LABEL_57:
}

- (StaticKeyContactsSyncDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (StaticKeyContactsStorage)storage
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);

  return WeakRetained;
}

@end