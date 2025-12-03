@interface SDSuggestion
+ (id)placeholderSuggestion;
- (SDSuggestion)initWithSuggestion:(id)suggestion;
- (id)_caseSensitiveBundleIDFromBundleID:(id)d;
- (id)createPeopleSuggestion;
- (void)_configure;
- (void)_requestSandboxExtensionForDonatedImage:(id)image;
@end

@implementation SDSuggestion

+ (id)placeholderSuggestion
{
  v2 = objc_alloc_init(self);
  [v2 setIsPlaceholder:1];
  [v2 setTransportBundleIdentifier:@"SDSuggestionTransportIdentifierPlaceholder"];

  return v2;
}

- (SDSuggestion)initWithSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v9.receiver = self;
  v9.super_class = SDSuggestion;
  v6 = [(SDSuggestion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suggestion, suggestion);
    [(SDSuggestion *)v7 _configure];
  }

  return v7;
}

- (void)_configure
{
  selfCopy = self;
  suggestion = [(SDSuggestion *)self suggestion];
  if (!suggestion)
  {
    sub_100063538(a2, selfCopy);
  }

  groupName = [suggestion groupName];
  v6 = objc_alloc_init(NSMutableArray);
  v7 = +[NSMutableArray array];
  v71 = +[NSMutableArray array];
  v72 = +[NSMutableArray array];
  if ([groupName length])
  {
    v8 = +[NSNull null];
    v9 = [NSPredicate predicateWithFormat:@"SELF != %@", v8];

    recipients = [suggestion recipients];
    v11 = [recipients valueForKey:@"handle"];

    v12 = [v11 filteredArrayUsingPredicate:v9];
    v13 = v6;
    v14 = [v12 mutableCopy];

    v15 = v14;
    v16 = groupName;
    recipients2 = [suggestion recipients];
    v18 = [recipients2 valueForKey:@"contact"];

    v19 = [v18 filteredArrayUsingPredicate:v9];
    v20 = [v19 mutableCopy];

    v21 = 0;
    v22 = v15;
    goto LABEL_65;
  }

  v69 = v6;
  v70 = v7;
  v63 = selfCopy;
  v64 = groupName;
  recipients3 = [suggestion recipients];
  v24 = [recipients3 count];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v66 = suggestion;
  obj = [suggestion recipients];
  v75 = [obj countByEnumeratingWithState:&v76 objects:v80 count:16];
  handle3 = 0;
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
      displayName = [v30 displayName];
      contact = [v30 contact];
      handle = [v30 handle];
      v34 = handle;
      if (contact)
      {
        [v72 addObject:contact];
      }

      else if (handle)
      {
        v35 = [[CNMutableContact alloc] initWithIdentifier:handle];
        [v72 addObject:v35];
        ++v67;
      }

      identifier = [contact identifier];
      if (identifier)
      {
        [v71 addObject:identifier];
      }

      if ([displayName length])
      {
        goto LABEL_23;
      }

      if ([contact isKeyAvailable:CNContactNicknameKey])
      {
        nickname = [contact nickname];

        displayName = nickname;
      }

      if ([displayName length])
      {
LABEL_23:
        if (!v34)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v44 = [contact mutableCopy];
        [v44 setMiddleName:&stru_1008EFBD0];
        v45 = [CNContactFormatter stringFromContact:v44 style:v65];

        displayName = v45;
        if (!v34)
        {
          goto LABEL_29;
        }
      }

      if (displayName && ([v66 bundleID], v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "isEqualToString:", @"com.apple.mobilemail"), v38, v39))
      {
        v40 = [NSString stringWithFormat:@"%@ <%@>", displayName, v34];
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
        if (displayName)
        {
          if (v26)
          {
            v41 = v26;
          }

          else
          {
            v41 = handle3;
          }

          v42 = v41;

          handle2 = displayName;
          v27 = 1;
          handle3 = v42;
        }

        else
        {
          handle2 = [v30 handle];
          if (v26)
          {

            v27 = 0;
            handle3 = handle2;
            goto LABEL_49;
          }

          v27 = 0;
        }

        v26 = handle2;
        goto LABEL_49;
      }

      if ((v73 & 1) == 0)
      {
        if (handle3 || !displayName)
        {
          if (!(handle3 | displayName))
          {
            handle3 = [v30 handle];
          }

          v73 = 0;
          goto LABEL_48;
        }

        handle3 = displayName;
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
    suggestion = v66;
    v21 = v67;
    v20 = v72;
    v22 = v69;
  }

  else
  {
    suggestion = v66;
    recipients4 = [v66 recipients];
    v48 = [recipients4 count];

    v20 = v72;
    v22 = v69;
    if (v48 == 1)
    {
      v49 = v26;
    }

    else
    {
      recipients5 = [v66 recipients];
      v51 = [recipients5 count];

      SFLocalizedStringForKey();
      if (v51 == 2)
        v52 = {;
        v49 = [NSString localizedStringWithFormat:v52, v26, handle3];
      }

      else
        v52 = {;
        recipients6 = [v66 recipients];
        v49 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v52, v26, handle3, [recipients6 count] - 2);
      }

      v16 = v52;
    }

    v21 = v67;

    v16 = v49;
  }

  selfCopy = v63;
  v15 = v70;
LABEL_65:
  [(SDSuggestion *)selfCopy setDisplayName:v16];
  [(SDSuggestion *)selfCopy setFormattedHandles:v22];
  [(SDSuggestion *)selfCopy setHandles:v15];
  [(SDSuggestion *)selfCopy setContactsIdentifiers:v71];
  [(SDSuggestion *)selfCopy setContacts:v20];
  [(SDSuggestion *)selfCopy setTransientContactsCount:v21];
  bundleID = [suggestion bundleID];
  v55 = [(SDSuggestion *)selfCopy _caseSensitiveBundleIDFromBundleID:bundleID];
  [(SDSuggestion *)selfCopy setTransportBundleIdentifier:v55];

  recipients7 = [suggestion recipients];
  [(SDSuggestion *)selfCopy setRecipients:recipients7];

  conversationIdentifier = [suggestion conversationIdentifier];
  [(SDSuggestion *)selfCopy setConversationIdentifier:conversationIdentifier];

  derivedIntentIdentifier = [suggestion derivedIntentIdentifier];
  [(SDSuggestion *)selfCopy setDerivedIntentIdentifier:derivedIntentIdentifier];

  groupName2 = [suggestion groupName];
  [(SDSuggestion *)selfCopy setGroupName:groupName2];

  image = [suggestion image];
  [(SDSuggestion *)selfCopy setImage:image];

  reason = [suggestion reason];
  if (reason)
  {
    [(SDSuggestion *)selfCopy setReason:reason];
  }

  else
  {
    reasonType = [suggestion reasonType];
    [(SDSuggestion *)selfCopy setReason:reasonType];
  }
}

- (id)_caseSensitiveBundleIDFromBundleID:(id)d
{
  dCopy = d;
  lowercaseString = [dCopy lowercaseString];
  v5 = [lowercaseString isEqualToString:@"com.apple.mobilesms"];

  if (v5)
  {
    v6 = @"com.apple.MobileSMS";
  }

  else
  {
    v6 = dCopy;
  }

  return v6;
}

- (id)createPeopleSuggestion
{
  conversationIdentifier = [(SDSuggestion *)self conversationIdentifier];
  v4 = conversationIdentifier;
  if (conversationIdentifier)
  {
    lowercaseString = conversationIdentifier;
  }

  else
  {
    v6 = +[NSUUID UUID];
    uUIDString = [v6 UUIDString];
    v8 = [uUIDString substringWithRange:{24, 12}];
    lowercaseString = [v8 lowercaseString];
  }

  image = [(SDSuggestion *)self image];
  v10 = [SFPeopleSuggestion alloc];
  displayName = [(SDSuggestion *)self displayName];
  transportBundleIdentifier = [(SDSuggestion *)self transportBundleIdentifier];
  contacts = [(SDSuggestion *)self contacts];
  formattedHandles = [(SDSuggestion *)self formattedHandles];
  LOBYTE(v17) = [(SDSuggestion *)self isPlaceholder];
  v15 = [v10 initWithIdentifier:lowercaseString displayName:displayName transportBundleIdentifier:transportBundleIdentifier contacts:contacts formattedHandles:formattedHandles donatedImage:image placeholder:v17];

  if (image)
  {
    [(SDSuggestion *)self _requestSandboxExtensionForDonatedImage:image];
  }

  return v15;
}

- (void)_requestSandboxExtensionForDonatedImage:(id)image
{
  imageCopy = image;
  _imageData = [imageCopy _imageData];

  if (!_imageData)
  {
    _uri = [imageCopy _uri];
    if ([_uri isFileURL])
    {
      [_uri fileSystemRepresentation];
      v6 = sandbox_extension_issue_file();
      if (v6)
      {
        v7 = [NSData dataWithBytesNoCopy:v6 length:strlen(v6) + 1 freeWhenDone:1];
        [imageCopy _setSandboxExtensionData:v7];
      }

      else
      {
        v7 = share_sheet_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_1000635AC(_uri, v7);
        }
      }
    }
  }
}

@end