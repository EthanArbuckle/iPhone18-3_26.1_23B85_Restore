@interface SDSuggestion
+ (id)placeholderSuggestion;
- (SDSuggestion)initWithSuggestion:(id)a3;
- (id)_caseSensitiveBundleIDFromBundleID:(id)a3;
- (id)createPeopleSuggestion;
- (void)_configure;
- (void)_requestSandboxExtensionForDonatedImage:(id)a3;
@end

@implementation SDSuggestion

+ (id)placeholderSuggestion
{
  v2 = objc_alloc_init(a1);
  [v2 setIsPlaceholder:1];
  [v2 setTransportBundleIdentifier:@"SDSuggestionTransportIdentifierPlaceholder"];

  return v2;
}

- (SDSuggestion)initWithSuggestion:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SDSuggestion;
  v6 = [(SDSuggestion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suggestion, a3);
    [(SDSuggestion *)v7 _configure];
  }

  return v7;
}

- (void)_configure
{
  v3 = self;
  v4 = [(SDSuggestion *)self suggestion];
  if (!v4)
  {
    sub_100063538(a2, v3);
  }

  v5 = [v4 groupName];
  v6 = objc_alloc_init(NSMutableArray);
  v7 = +[NSMutableArray array];
  v71 = +[NSMutableArray array];
  v72 = +[NSMutableArray array];
  if ([v5 length])
  {
    v8 = +[NSNull null];
    v9 = [NSPredicate predicateWithFormat:@"SELF != %@", v8];

    v10 = [v4 recipients];
    v11 = [v10 valueForKey:@"handle"];

    v12 = [v11 filteredArrayUsingPredicate:v9];
    v13 = v6;
    v14 = [v12 mutableCopy];

    v15 = v14;
    v16 = v5;
    v17 = [v4 recipients];
    v18 = [v17 valueForKey:@"contact"];

    v19 = [v18 filteredArrayUsingPredicate:v9];
    v20 = [v19 mutableCopy];

    v21 = 0;
    v22 = v15;
    goto LABEL_65;
  }

  v69 = v6;
  v70 = v7;
  v63 = v3;
  v64 = v5;
  v23 = [v4 recipients];
  v24 = [v23 count];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v66 = v4;
  obj = [v4 recipients];
  v75 = [obj countByEnumeratingWithState:&v76 objects:v80 count:16];
  v25 = 0;
  v26 = 0;
  if (!v75)
  {
    v67 = 0;
    goto LABEL_55;
  }

  v73 = 0;
  v27 = 0;
  v67 = 0;
  v74 = *v77;
  if (v24 <= 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = 1000;
  }

  v65 = v28;
  do
  {
    v29 = 0;
    do
    {
      if (*v77 != v74)
      {
        objc_enumerationMutation(obj);
      }

      v30 = *(*(&v76 + 1) + 8 * v29);
      v31 = [v30 displayName];
      v32 = [v30 contact];
      v33 = [v30 handle];
      v34 = v33;
      if (v32)
      {
        [v72 addObject:v32];
      }

      else if (v33)
      {
        v35 = [[CNMutableContact alloc] initWithIdentifier:v33];
        [v72 addObject:v35];
        ++v67;
      }

      v36 = [v32 identifier];
      if (v36)
      {
        [v71 addObject:v36];
      }

      if ([v31 length])
      {
        goto LABEL_23;
      }

      if ([v32 isKeyAvailable:CNContactNicknameKey])
      {
        v37 = [v32 nickname];

        v31 = v37;
      }

      if ([v31 length])
      {
LABEL_23:
        if (!v34)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v44 = [v32 mutableCopy];
        [v44 setMiddleName:&stru_1008EFBD0];
        v45 = [CNContactFormatter stringFromContact:v44 style:v65];

        v31 = v45;
        if (!v34)
        {
          goto LABEL_29;
        }
      }

      if (v31 && ([v66 bundleID], v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "isEqualToString:", @"com.apple.mobilemail"), v38, v39))
      {
        v40 = [NSString stringWithFormat:@"%@ <%@>", v31, v34];
        [v69 addObject:v40];
      }

      else
      {
        [v69 addObject:v34];
      }

      [v70 addObject:v34];
LABEL_29:
      if ((v27 & 1) == 0)
      {
        if (v31)
        {
          if (v26)
          {
            v41 = v26;
          }

          else
          {
            v41 = v25;
          }

          v42 = v41;

          v43 = v31;
          v27 = 1;
          v25 = v42;
        }

        else
        {
          v43 = [v30 handle];
          if (v26)
          {

            v27 = 0;
            v25 = v43;
            goto LABEL_49;
          }

          v27 = 0;
        }

        v26 = v43;
        goto LABEL_49;
      }

      if ((v73 & 1) == 0)
      {
        if (v25 || !v31)
        {
          if (!(v25 | v31))
          {
            v25 = [v30 handle];
          }

          v73 = 0;
          goto LABEL_48;
        }

        v25 = v31;
      }

      v73 = 1;
LABEL_48:
      v27 = 1;
LABEL_49:

      v29 = v29 + 1;
    }

    while (v75 != v29);
    v46 = [obj countByEnumeratingWithState:&v76 objects:v80 count:16];
    v75 = v46;
  }

  while (v46);
LABEL_55:

  v16 = v64;
  if ([v64 length])
  {
    v4 = v66;
    v21 = v67;
    v20 = v72;
    v22 = v69;
  }

  else
  {
    v4 = v66;
    v47 = [v66 recipients];
    v48 = [v47 count];

    v20 = v72;
    v22 = v69;
    if (v48 == 1)
    {
      v49 = v26;
    }

    else
    {
      v50 = [v66 recipients];
      v51 = [v50 count];

      SFLocalizedStringForKey();
      if (v51 == 2)
        v52 = {;
        v49 = [NSString localizedStringWithFormat:v52, v26, v25];
      }

      else
        v52 = {;
        v53 = [v66 recipients];
        v49 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v52, v26, v25, [v53 count] - 2);
      }

      v16 = v52;
    }

    v21 = v67;

    v16 = v49;
  }

  v3 = v63;
  v15 = v70;
LABEL_65:
  [(SDSuggestion *)v3 setDisplayName:v16];
  [(SDSuggestion *)v3 setFormattedHandles:v22];
  [(SDSuggestion *)v3 setHandles:v15];
  [(SDSuggestion *)v3 setContactsIdentifiers:v71];
  [(SDSuggestion *)v3 setContacts:v20];
  [(SDSuggestion *)v3 setTransientContactsCount:v21];
  v54 = [v4 bundleID];
  v55 = [(SDSuggestion *)v3 _caseSensitiveBundleIDFromBundleID:v54];
  [(SDSuggestion *)v3 setTransportBundleIdentifier:v55];

  v56 = [v4 recipients];
  [(SDSuggestion *)v3 setRecipients:v56];

  v57 = [v4 conversationIdentifier];
  [(SDSuggestion *)v3 setConversationIdentifier:v57];

  v58 = [v4 derivedIntentIdentifier];
  [(SDSuggestion *)v3 setDerivedIntentIdentifier:v58];

  v59 = [v4 groupName];
  [(SDSuggestion *)v3 setGroupName:v59];

  v60 = [v4 image];
  [(SDSuggestion *)v3 setImage:v60];

  v61 = [v4 reason];
  if (v61)
  {
    [(SDSuggestion *)v3 setReason:v61];
  }

  else
  {
    v62 = [v4 reasonType];
    [(SDSuggestion *)v3 setReason:v62];
  }
}

- (id)_caseSensitiveBundleIDFromBundleID:(id)a3
{
  v3 = a3;
  v4 = [v3 lowercaseString];
  v5 = [v4 isEqualToString:@"com.apple.mobilesms"];

  if (v5)
  {
    v6 = @"com.apple.MobileSMS";
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (id)createPeopleSuggestion
{
  v3 = [(SDSuggestion *)self conversationIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = +[NSUUID UUID];
    v7 = [v6 UUIDString];
    v8 = [v7 substringWithRange:{24, 12}];
    v5 = [v8 lowercaseString];
  }

  v9 = [(SDSuggestion *)self image];
  v10 = [SFPeopleSuggestion alloc];
  v11 = [(SDSuggestion *)self displayName];
  v12 = [(SDSuggestion *)self transportBundleIdentifier];
  v13 = [(SDSuggestion *)self contacts];
  v14 = [(SDSuggestion *)self formattedHandles];
  LOBYTE(v17) = [(SDSuggestion *)self isPlaceholder];
  v15 = [v10 initWithIdentifier:v5 displayName:v11 transportBundleIdentifier:v12 contacts:v13 formattedHandles:v14 donatedImage:v9 placeholder:v17];

  if (v9)
  {
    [(SDSuggestion *)self _requestSandboxExtensionForDonatedImage:v9];
  }

  return v15;
}

- (void)_requestSandboxExtensionForDonatedImage:(id)a3
{
  v3 = a3;
  v4 = [v3 _imageData];

  if (!v4)
  {
    v5 = [v3 _uri];
    if ([v5 isFileURL])
    {
      [v5 fileSystemRepresentation];
      v6 = sandbox_extension_issue_file();
      if (v6)
      {
        v7 = [NSData dataWithBytesNoCopy:v6 length:strlen(v6) + 1 freeWhenDone:1];
        [v3 _setSandboxExtensionData:v7];
      }

      else
      {
        v7 = share_sheet_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_1000635AC(v5, v7);
        }
      }
    }
  }
}

@end