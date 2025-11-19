@interface SDSuggestionNode
- (BOOL)isIntentsBased;
- (BOOL)loadIcon;
- (SDSuggestionNode)initWithSuggestion:(id)a3;
- (id)description;
- (void)dealloc;
- (void)setIcon:(CGImage *)a3;
@end

@implementation SDSuggestionNode

- (SDSuggestionNode)initWithSuggestion:(id)a3
{
  v5 = a3;
  v32.receiver = self;
  v32.super_class = SDSuggestionNode;
  v6 = [(SDSuggestionNode *)&v32 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suggestion, a3);
    v8 = [v5 transportBundleIdentifier];
    bundleID = v7->_bundleID;
    v7->_bundleID = v8;

    v10 = [v5 displayName];
    displayName = v7->_displayName;
    v7->_displayName = v10;

    v12 = [v5 formattedHandles];
    formattedHandles = v7->_formattedHandles;
    v7->_formattedHandles = v12;

    v14 = [v5 handles];
    actualHandles = v7->_actualHandles;
    v7->_actualHandles = v14;

    v16 = [v5 conversationIdentifier];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
      identifier = v7->_identifier;
      v7->_identifier = v18;
    }

    else
    {
      identifier = +[NSUUID UUID];
      v20 = [identifier UUIDString];
      v21 = [v20 substringWithRange:{24, 12}];
      v22 = [v21 lowercaseString];
      v23 = v7->_identifier;
      v7->_identifier = v22;
    }

    v24 = [v5 reason];
    suggestionReason = v7->_suggestionReason;
    v7->_suggestionReason = v24;

    v26 = [v5 recipients];
    v7->_hasGroupImage = [v26 count] > 1;

    v27 = [v5 contactsIdentifiers];
    contactIDs = v7->_contactIDs;
    v7->_contactIDs = v27;

    v29 = [v5 derivedIntentIdentifier];
    derivedIntentIdentifier = v7->_derivedIntentIdentifier;
    v7->_derivedIntentIdentifier = v29;

    v7->_iconIndex = -1;
  }

  return v7;
}

- (void)dealloc
{
  icon = self->_icon;
  if (icon)
  {
    CFRelease(icon);
  }

  v4.receiver = self;
  v4.super_class = SDSuggestionNode;
  [(SDSuggestionNode *)&v4 dealloc];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SDSuggestionNode;
  v3 = [(SDSuggestionNode *)&v7 description];
  suggestionReason = self->_suggestionReason;
  v5 = [NSString stringWithFormat:@"%@ bundleID:%@, displayName:%@, handles:%@, contactsIDs:%@, identifier:%@, suggestionreason:%@, iconIndex:%ld", v3, self->_bundleID, self->_displayName, self->_formattedHandles, self->_contactIDs, self->_identifier, suggestionReason, self->_iconIndex];

  return v5;
}

- (BOOL)isIntentsBased
{
  v3 = self->_bundleID;
  v4 = v3;
  if (v3 == @"com.apple.MobileSMS")
  {
    v5 = 1;
  }

  else if (v3)
  {
    v5 = [(__CFString *)v3 isEqual:@"com.apple.MobileSMS"];
  }

  else
  {
    v5 = 0;
  }

  v6 = self->_bundleID;
  v7 = v6;
  if (v6 == @"com.apple.mobilemail")
  {
    v8 = 1;
  }

  else if (v6)
  {
    v8 = [(__CFString *)v6 isEqual:@"com.apple.mobilemail"];
  }

  else
  {
    v8 = 0;
  }

  return ((v5 | v8) & 1) == 0;
}

- (void)setIcon:(CGImage *)a3
{
  icon = self->_icon;
  if (icon != a3)
  {
    if (icon)
    {
      CFRelease(icon);
    }

    self->_icon = CFRetain(a3);
  }
}

- (BOOL)loadIcon
{
  if ([(SDSuggestionNode *)self icon])
  {
    return 1;
  }

  v3 = [(SDSuggestionNode *)self iconData];

  if (v3)
  {
    return 1;
  }

  v6 = [(SDSuggestionNode *)self loadIconHandler];
  [(SDSuggestionNode *)self setLoadIconHandler:0];
  if (v6)
  {
    v9 = 0;
    v10 = 0;
    (v6)[2](v6, self, &v10, &v9);
    v7 = v9;
    [(SDSuggestionNode *)self setIcon:v10];
    [(SDSuggestionNode *)self setIconData:v7];
  }

  else
  {
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100271888(self, v7);
    }
  }

  if ([(SDSuggestionNode *)self icon])
  {
    v4 = 1;
  }

  else
  {
    v8 = [(SDSuggestionNode *)self iconData];
    v4 = v8 != 0;
  }

  return v4;
}

@end