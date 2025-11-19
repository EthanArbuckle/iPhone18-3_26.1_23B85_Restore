@interface OTAccountsActualAdapter
- (BOOL)isErrorRetryable:(id)a3;
- (OTAccountsActualAdapter)init;
- (id)fetchAccountsRetryingWithError:(id *)a3;
- (id)findAccountForCurrentThread:(id)a3 optionalAltDSID:(id)a4 cloudkitContainerName:(id)a5 octagonContextID:(id)a6 error:(id *)a7;
- (id)inflateAllTPSpecificUsers:(id)a3 octagonContextID:(id)a4;
@end

@implementation OTAccountsActualAdapter

- (id)inflateAllTPSpecificUsers:(id)a3 octagonContextID:(id)a4
{
  v23 = a3;
  v22 = a4;
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
        v14 = [v12 identifier];
        v15 = [v12 aa_altDSID];
        v16 = [v12 aa_isAccountClass:v10];
        v17 = [v12 personaIdentifier];
        v18 = [(TPSpecificUser *)v13 initWithCloudkitContainerName:v23 octagonContextID:v22 appleAccountID:v14 altDSID:v15 isPrimaryPersona:v16 personaUniqueString:v17];

        [v6 addObject:v18];
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  return v6;
}

- (id)findAccountForCurrentThread:(id)a3 optionalAltDSID:(id)a4 cloudkitContainerName:(id)a5 octagonContextID:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [v12 currentThreadIsForPrimaryiCloudAccount];
  v17 = [v12 currentThreadPersonaUniqueString];
  v18 = sub_100006274("octagon-account");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *v81 = v17;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "persona identifier: %@", buf, 0xCu);
  }

  v19 = [(OTAccountsActualAdapter *)self fetchAccountsRetryingWithError:a7];
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

  v71 = v16;
  v68 = a7;
  v69 = v15;
  v70 = v14;
  v72 = v12;
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
      if (v13)
      {
        v28 = [*(*(&v76 + 1) + 8 * i) aa_altDSID];
        v29 = [v13 isEqualToString:v28];

        if (v29)
        {
          v30 = v27;

          v75 = v30;
        }
      }

      v31 = [v27 personaIdentifier];
      v32 = [v17 isEqualToString:v31];

      if (v32)
      {
        v33 = v27;

        v23 = v33;
      }

      v34 = [v27 personaIdentifier];
      if (!v34)
      {
        if (![v27 aa_isAccountClass:v25])
        {
          continue;
        }

        v35 = v27;
        v34 = v73;
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
    *v81 = v17;
    *&v81[8] = 2112;
    *&v81[10] = v13;
    _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "Search Criteria  - persona: %@ altDSID: %@", buf, 0x16u);
  }

  v38 = sub_100006274("octagon-account");
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    v63 = [v73 aa_altDSID];
    *buf = 67109378;
    *v81 = v71;
    *&v81[4] = 2112;
    *&v81[6] = v63;
    _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "Primary account - persona primary: %{BOOL}d altDSID: %@", buf, 0x12u);
  }

  v39 = sub_100006274("octagon-account");
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    v64 = [v23 personaIdentifier];
    v65 = [v23 aa_altDSID];
    *buf = 138412546;
    *v81 = v64;
    *&v81[8] = 2112;
    *&v81[10] = v65;
    _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "Match by persona - persona: %@ altDSID: %@", buf, 0x16u);
  }

  v40 = sub_100006274("octagon-account");
  v12 = v72;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    v66 = [v75 personaIdentifier];
    v67 = [v75 aa_altDSID];
    *buf = 138412546;
    *v81 = v66;
    *&v81[8] = 2112;
    *&v81[10] = v67;
    _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "Match by altDSID - persona: %@ altDSID: %@", buf, 0x16u);
  }

  if (!v71)
  {
    if (v13)
    {
      if (!v23)
      {
        goto LABEL_41;
      }

      if (!v75)
      {
        goto LABEL_41;
      }

      v42 = [v75 personaIdentifier];
      v43 = [v23 personaIdentifier];
      v44 = [v42 isEqualToString:v43];

      v41 = v23;
      if ((v44 & 1) == 0)
      {
LABEL_41:
        v45 = sub_100006274("octagon-account");
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v81 = v17;
          *&v81[8] = 2112;
          *&v81[10] = v13;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Search Criteria  - persona: %@ altDSID: %@", buf, 0x16u);
        }

        v46 = sub_100006274("octagon-account");
        v15 = v69;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = [v73 aa_altDSID];
          *buf = 67109378;
          *v81 = 0;
          *&v81[4] = 2112;
          *&v81[6] = v47;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Primary account - persona primary: %{BOOL}d altDSID: %@", buf, 0x12u);
        }

        v48 = sub_100006274("octagon-account");
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = [v23 personaIdentifier];
          v50 = [v23 aa_altDSID];
          *buf = 138412546;
          *v81 = v49;
          *&v81[8] = 2112;
          *&v81[10] = v50;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Match by persona - persona: %@ altDSID: %@", buf, 0x16u);
        }

        v51 = sub_100006274("octagon-account");
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = [v75 personaIdentifier];
          v53 = [v75 aa_altDSID];
          *buf = 138412546;
          *v81 = v52;
          *&v81[8] = 2112;
          *&v81[10] = v53;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Match by altDSID - persona: %@ altDSID: %@", buf, 0x16u);
        }

        if (v68)
        {
          v54 = [NSString stringWithFormat:@"AppleAccount mismatch for persona '%@' and altDSID '%@'", v17, v13];
          *v68 = [NSError errorWithDomain:@"com.apple.security.octagon" code:63 description:v54];
        }

        v55 = sub_100006274("octagon-account");
        v14 = v70;
        v20 = obj;
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Persona/altDSID mis-match specified for query", buf, 2u);
        }

        v36 = 0;
        goto LABEL_57;
      }

      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (!v13)
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
    v55 = v41;
    v56 = [v55 aa_altDSID];
    v57 = [v55 identifier];
    v58 = [v55 personaIdentifier];
    v59 = [TPSpecificUser alloc];
    v15 = v69;
    v14 = v70;
    v36 = [(TPSpecificUser *)v59 initWithCloudkitContainerName:v70 octagonContextID:v69 appleAccountID:v57 altDSID:v56 isPrimaryPersona:[v55 aa_isAccountClass:AAAccountClassPrimary] personaUniqueString:v58];

    v12 = v72;
    v20 = obj;
LABEL_57:

    goto LABEL_58;
  }

LABEL_62:
  v61 = sub_100006274("octagon-account");
  v62 = v61;
  if (v17)
  {
    v15 = v69;
    v20 = obj;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v81 = v17;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Unable to find Apple account matching persona %@", buf, 0xCu);
    }
  }

  else
  {
    v15 = v69;
    v20 = obj;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "Unable to find Apple account matching primary persona (nil)", buf, 2u);
    }
  }

  if (v68 && !*v68)
  {
    v55 = [NSString stringWithFormat:@"No AppleAccount exists matching persona '%@' and altDSID '%@'", v17, v13];
    [NSError errorWithDomain:@"com.apple.security.octagon" code:59 description:v55];
    *v68 = v36 = 0;
    v14 = v70;
    goto LABEL_57;
  }

  v36 = 0;
  v14 = v70;
LABEL_58:

LABEL_59:

  return v36;
}

- (id)fetchAccountsRetryingWithError:(id *)a3
{
  v5 = [(OTAccountsActualAdapter *)self store];
  v15 = 0;
  v6 = [v5 aa_appleAccountsWithError:&v15];
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
      v12 = [(OTAccountsActualAdapter *)self store];
      v15 = 0;
      v6 = [v12 aa_appleAccountsWithError:&v15];
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

    if (a3)
    {
      v14 = v7;
      v8 = 0;
      *a3 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)isErrorRetryable:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:NSCocoaErrorDomain] && (objc_msgSend(v4, "code") == 4097 || objc_msgSend(v4, "code") == 4099))
    {
      v6 = 1;
    }

    else
    {
      v7 = [v4 domain];
      if ([v7 isEqualToString:ACErrorDomain])
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