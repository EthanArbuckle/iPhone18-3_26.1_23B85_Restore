@interface OTAccountsActualAdapter
- (BOOL)isErrorRetryable:(id)retryable;
- (OTAccountsActualAdapter)init;
- (id)fetchAccountsRetryingWithError:(id *)error;
- (id)findAccountForCurrentThread:(id)thread optionalAltDSID:(id)d cloudkitContainerName:(id)name octagonContextID:(id)iD error:(id *)error;
- (id)inflateAllTPSpecificUsers:(id)users octagonContextID:(id)d;
@end

@implementation OTAccountsActualAdapter

- (id)inflateAllTPSpecificUsers:(id)users octagonContextID:(id)d
{
  usersCopy = users;
  dCopy = d;
  v5 = +[ACAccountStore defaultStore];
  v6 = +[NSMutableArray array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = v5;
  obj = [v5 aa_appleAccounts];
  v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    v10 = AAAccountClassPrimary;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [TPSpecificUser alloc];
        identifier = [v12 identifier];
        aa_altDSID = [v12 aa_altDSID];
        v16 = [v12 aa_isAccountClass:v10];
        personaIdentifier = [v12 personaIdentifier];
        v18 = [(TPSpecificUser *)v13 initWithCloudkitContainerName:usersCopy octagonContextID:dCopy appleAccountID:identifier altDSID:aa_altDSID isPrimaryPersona:v16 personaUniqueString:personaIdentifier];

        [v6 addObject:v18];
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  return v6;
}

- (id)findAccountForCurrentThread:(id)thread optionalAltDSID:(id)d cloudkitContainerName:(id)name octagonContextID:(id)iD error:(id *)error
{
  threadCopy = thread;
  dCopy = d;
  nameCopy = name;
  iDCopy = iD;
  currentThreadIsForPrimaryiCloudAccount = [threadCopy currentThreadIsForPrimaryiCloudAccount];
  currentThreadPersonaUniqueString = [threadCopy currentThreadPersonaUniqueString];
  v18 = sub_100006274("octagon-account");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *v81 = currentThreadPersonaUniqueString;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "persona identifier: %@", buf, 0xCu);
  }

  v19 = [(OTAccountsActualAdapter *)self fetchAccountsRetryingWithError:error];
  v20 = v19;
  if (!v19)
  {
    v23 = sub_100006274("SecError");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "octagon-account: failed to find accounts", buf, 2u);
    }

    v36 = 0;
    goto LABEL_59;
  }

  v71 = currentThreadIsForPrimaryiCloudAccount;
  errorCopy = error;
  v69 = iDCopy;
  v70 = nameCopy;
  v72 = threadCopy;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v19;
  v21 = [v19 countByEnumeratingWithState:&v76 objects:v82 count:16];
  if (!v21)
  {
    v73 = 0;
    v75 = 0;
    v23 = 0;
    goto LABEL_25;
  }

  v22 = v21;
  v73 = 0;
  v75 = 0;
  v23 = 0;
  v24 = *v77;
  v25 = AAAccountClassPrimary;
  do
  {
    for (i = 0; i != v22; i = i + 1)
    {
      if (*v77 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v76 + 1) + 8 * i);
      if (dCopy)
      {
        aa_altDSID = [*(*(&v76 + 1) + 8 * i) aa_altDSID];
        v29 = [dCopy isEqualToString:aa_altDSID];

        if (v29)
        {
          v30 = v27;

          v75 = v30;
        }
      }

      personaIdentifier = [v27 personaIdentifier];
      v32 = [currentThreadPersonaUniqueString isEqualToString:personaIdentifier];

      if (v32)
      {
        v33 = v27;

        v23 = v33;
      }

      personaIdentifier2 = [v27 personaIdentifier];
      if (!personaIdentifier2)
      {
        if (![v27 aa_isAccountClass:v25])
        {
          continue;
        }

        v35 = v27;
        personaIdentifier2 = v73;
        v73 = v35;
      }
    }

    v22 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
  }

  while (v22);
LABEL_25:
  v37 = sub_100006274("octagon-account");
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *v81 = currentThreadPersonaUniqueString;
    *&v81[8] = 2112;
    *&v81[10] = dCopy;
    _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "Search Criteria  - persona: %@ altDSID: %@", buf, 0x16u);
  }

  v38 = sub_100006274("octagon-account");
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    aa_altDSID2 = [v73 aa_altDSID];
    *buf = 67109378;
    *v81 = v71;
    *&v81[4] = 2112;
    *&v81[6] = aa_altDSID2;
    _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "Primary account - persona primary: %{BOOL}d altDSID: %@", buf, 0x12u);
  }

  v39 = sub_100006274("octagon-account");
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    personaIdentifier3 = [v23 personaIdentifier];
    aa_altDSID3 = [v23 aa_altDSID];
    *buf = 138412546;
    *v81 = personaIdentifier3;
    *&v81[8] = 2112;
    *&v81[10] = aa_altDSID3;
    _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "Match by persona - persona: %@ altDSID: %@", buf, 0x16u);
  }

  v40 = sub_100006274("octagon-account");
  threadCopy = v72;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    personaIdentifier4 = [v75 personaIdentifier];
    aa_altDSID4 = [v75 aa_altDSID];
    *buf = 138412546;
    *v81 = personaIdentifier4;
    *&v81[8] = 2112;
    *&v81[10] = aa_altDSID4;
    _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "Match by altDSID - persona: %@ altDSID: %@", buf, 0x16u);
  }

  if (!v71)
  {
    if (dCopy)
    {
      if (!v23)
      {
        goto LABEL_41;
      }

      if (!v75)
      {
        goto LABEL_41;
      }

      personaIdentifier5 = [v75 personaIdentifier];
      personaIdentifier6 = [v23 personaIdentifier];
      v44 = [personaIdentifier5 isEqualToString:personaIdentifier6];

      v41 = v23;
      if ((v44 & 1) == 0)
      {
LABEL_41:
        v45 = sub_100006274("octagon-account");
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v81 = currentThreadPersonaUniqueString;
          *&v81[8] = 2112;
          *&v81[10] = dCopy;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Search Criteria  - persona: %@ altDSID: %@", buf, 0x16u);
        }

        v46 = sub_100006274("octagon-account");
        iDCopy = v69;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          aa_altDSID5 = [v73 aa_altDSID];
          *buf = 67109378;
          *v81 = 0;
          *&v81[4] = 2112;
          *&v81[6] = aa_altDSID5;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Primary account - persona primary: %{BOOL}d altDSID: %@", buf, 0x12u);
        }

        v48 = sub_100006274("octagon-account");
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          personaIdentifier7 = [v23 personaIdentifier];
          aa_altDSID6 = [v23 aa_altDSID];
          *buf = 138412546;
          *v81 = personaIdentifier7;
          *&v81[8] = 2112;
          *&v81[10] = aa_altDSID6;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Match by persona - persona: %@ altDSID: %@", buf, 0x16u);
        }

        v51 = sub_100006274("octagon-account");
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          personaIdentifier8 = [v75 personaIdentifier];
          aa_altDSID7 = [v75 aa_altDSID];
          *buf = 138412546;
          *v81 = personaIdentifier8;
          *&v81[8] = 2112;
          *&v81[10] = aa_altDSID7;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Match by altDSID - persona: %@ altDSID: %@", buf, 0x16u);
        }

        if (errorCopy)
        {
          dCopy = [NSString stringWithFormat:@"AppleAccount mismatch for persona '%@' and altDSID '%@'", currentThreadPersonaUniqueString, dCopy];
          *errorCopy = [NSError errorWithDomain:@"com.apple.security.octagon" code:63 description:dCopy];
        }

        dCopy2 = sub_100006274("octagon-account");
        nameCopy = v70;
        v20 = obj;
        if (os_log_type_enabled(dCopy2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, dCopy2, OS_LOG_TYPE_DEFAULT, "Persona/altDSID mis-match specified for query", buf, 2u);
        }

        v36 = 0;
        goto LABEL_57;
      }

      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (!dCopy)
  {
    v41 = v73;
    if (v73)
    {
      goto LABEL_56;
    }

LABEL_55:
    v41 = v23;
    if (!v23)
    {
      goto LABEL_62;
    }

    goto LABEL_56;
  }

  v41 = v75;
  if (v75)
  {
LABEL_56:
    dCopy2 = v41;
    aa_altDSID8 = [dCopy2 aa_altDSID];
    identifier = [dCopy2 identifier];
    personaIdentifier9 = [dCopy2 personaIdentifier];
    v59 = [TPSpecificUser alloc];
    iDCopy = v69;
    nameCopy = v70;
    v36 = [(TPSpecificUser *)v59 initWithCloudkitContainerName:v70 octagonContextID:v69 appleAccountID:identifier altDSID:aa_altDSID8 isPrimaryPersona:[dCopy2 aa_isAccountClass:AAAccountClassPrimary] personaUniqueString:personaIdentifier9];

    threadCopy = v72;
    v20 = obj;
LABEL_57:

    goto LABEL_58;
  }

LABEL_62:
  v61 = sub_100006274("octagon-account");
  v62 = v61;
  if (currentThreadPersonaUniqueString)
  {
    iDCopy = v69;
    v20 = obj;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v81 = currentThreadPersonaUniqueString;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Unable to find Apple account matching persona %@", buf, 0xCu);
    }
  }

  else
  {
    iDCopy = v69;
    v20 = obj;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "Unable to find Apple account matching primary persona (nil)", buf, 2u);
    }
  }

  if (errorCopy && !*errorCopy)
  {
    dCopy2 = [NSString stringWithFormat:@"No AppleAccount exists matching persona '%@' and altDSID '%@'", currentThreadPersonaUniqueString, dCopy];
    [NSError errorWithDomain:@"com.apple.security.octagon" code:59 description:dCopy2];
    *errorCopy = v36 = 0;
    nameCopy = v70;
    goto LABEL_57;
  }

  v36 = 0;
  nameCopy = v70;
LABEL_58:

LABEL_59:

  return v36;
}

- (id)fetchAccountsRetryingWithError:(id *)error
{
  store = [(OTAccountsActualAdapter *)self store];
  v15 = 0;
  v6 = [store aa_appleAccountsWithError:&v15];
  v7 = v15;

  if (v6)
  {
LABEL_2:
    v8 = v6;
  }

  else
  {
    v10 = 0;
    while (v10 != 5 && [(OTAccountsActualAdapter *)self isErrorRetryable:v7])
    {
      v11 = sub_100006274("octagon-account");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        LODWORD(v17[0]) = v10;
        WORD2(v17[0]) = 2112;
        *(v17 + 6) = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "retrying accountsd XPC, (%d, %@)", buf, 0x12u);
      }

      ++v10;
      store2 = [(OTAccountsActualAdapter *)self store];
      v15 = 0;
      v6 = [store2 aa_appleAccountsWithError:&v15];
      v7 = v15;

      if (v6)
      {
        goto LABEL_2;
      }
    }

    v13 = sub_100006274("SecError");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17[0] = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "octagon-account: Can't talk with accountsd: %@", buf, 0xCu);
    }

    if (error)
    {
      v14 = v7;
      v8 = 0;
      *error = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)isErrorRetryable:(id)retryable
{
  retryableCopy = retryable;
  v4 = retryableCopy;
  if (retryableCopy)
  {
    domain = [retryableCopy domain];
    if ([domain isEqualToString:NSCocoaErrorDomain] && (objc_msgSend(v4, "code") == 4097 || objc_msgSend(v4, "code") == 4099))
    {
      v6 = 1;
    }

    else
    {
      domain2 = [v4 domain];
      if ([domain2 isEqualToString:ACErrorDomain])
      {
        v6 = [v4 code] == 10002;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (OTAccountsActualAdapter)init
{
  v6.receiver = self;
  v6.super_class = OTAccountsActualAdapter;
  v2 = [(OTAccountsActualAdapter *)&v6 init];
  if (v2)
  {
    v3 = +[ACAccountStore defaultStore];
    store = v2->_store;
    v2->_store = v3;
  }

  return v2;
}

@end