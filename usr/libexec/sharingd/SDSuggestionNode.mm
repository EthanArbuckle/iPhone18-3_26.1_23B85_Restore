@interface SDSuggestionNode
- (BOOL)isIntentsBased;
- (BOOL)loadIcon;
- (SDSuggestionNode)initWithSuggestion:(id)suggestion;
- (id)description;
- (void)dealloc;
- (void)setIcon:(CGImage *)icon;
@end

@implementation SDSuggestionNode

- (SDSuggestionNode)initWithSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v32.receiver = self;
  v32.super_class = SDSuggestionNode;
  v6 = [(SDSuggestionNode *)&v32 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suggestion, suggestion);
    transportBundleIdentifier = [suggestionCopy transportBundleIdentifier];
    bundleID = v7->_bundleID;
    v7->_bundleID = transportBundleIdentifier;

    displayName = [suggestionCopy displayName];
    displayName = v7->_displayName;
    v7->_displayName = displayName;

    formattedHandles = [suggestionCopy formattedHandles];
    formattedHandles = v7->_formattedHandles;
    v7->_formattedHandles = formattedHandles;

    handles = [suggestionCopy handles];
    actualHandles = v7->_actualHandles;
    v7->_actualHandles = handles;

    conversationIdentifier = [suggestionCopy conversationIdentifier];
    v17 = conversationIdentifier;
    if (conversationIdentifier)
    {
      v18 = conversationIdentifier;
      identifier = v7->_identifier;
      v7->_identifier = v18;
    }

    else
    {
      identifier = +[NSUUID UUID];
      uUIDString = [identifier UUIDString];
      v21 = [uUIDString substringWithRange:{24, 12}];
      lowercaseString = [v21 lowercaseString];
      v23 = v7->_identifier;
      v7->_identifier = lowercaseString;
    }

    reason = [suggestionCopy reason];
    suggestionReason = v7->_suggestionReason;
    v7->_suggestionReason = reason;

    recipients = [suggestionCopy recipients];
    v7->_hasGroupImage = [recipients count] > 1;

    contactsIdentifiers = [suggestionCopy contactsIdentifiers];
    contactIDs = v7->_contactIDs;
    v7->_contactIDs = contactsIdentifiers;

    derivedIntentIdentifier = [suggestionCopy derivedIntentIdentifier];
    derivedIntentIdentifier = v7->_derivedIntentIdentifier;
    v7->_derivedIntentIdentifier = derivedIntentIdentifier;

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

- (void)setIcon:(CGImage *)icon
{
  icon = self->_icon;
  if (icon != icon)
  {
    if (icon)
    {
      CFRelease(icon);
    }

    self->_icon = CFRetain(icon);
  }
}

- (BOOL)loadIcon
{
  if ([(SDSuggestionNode *)self icon])
  {
    return 1;
  }

  iconData = [(SDSuggestionNode *)self iconData];

  if (iconData)
  {
    return 1;
  }

  loadIconHandler = [(SDSuggestionNode *)self loadIconHandler];
  [(SDSuggestionNode *)self setLoadIconHandler:0];
  if (loadIconHandler)
  {
    v9 = 0;
    v10 = 0;
    (loadIconHandler)[2](loadIconHandler, self, &v10, &v9);
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
    iconData2 = [(SDSuggestionNode *)self iconData];
    v4 = iconData2 != 0;
  }

  return v4;
}

@end