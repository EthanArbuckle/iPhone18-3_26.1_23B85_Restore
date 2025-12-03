@interface GKFriendSuggestion
- (GKFriendSuggestion)initWithContactID:(id)d handle:(id)handle prefixedHandle:(id)prefixedHandle contactAssociationID:(id)iD;
- (GKFriendSuggestion)initWithSuggestion:(id)suggestion;
- (id)description;
@end

@implementation GKFriendSuggestion

- (GKFriendSuggestion)initWithSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  recipients = [suggestionCopy recipients];
  v6 = [recipients count];

  if (v6 <= 1)
  {
    recipients2 = [suggestionCopy recipients];
    firstObject = [recipients2 firstObject];

    if (firstObject)
    {
      _gkPrefixedURIHandle = [firstObject _gkPrefixedURIHandle];
      identifier = [firstObject identifier];
      handle = [firstObject handle];
      self = [(GKFriendSuggestion *)self initWithContactID:identifier handle:handle prefixedHandle:_gkPrefixedURIHandle contactAssociationID:0];

      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (GKFriendSuggestion)initWithContactID:(id)d handle:(id)handle prefixedHandle:(id)prefixedHandle contactAssociationID:(id)iD
{
  dCopy = d;
  handleCopy = handle;
  prefixedHandleCopy = prefixedHandle;
  iDCopy = iD;
  v18.receiver = self;
  v18.super_class = GKFriendSuggestion;
  v15 = [(GKFriendSuggestion *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_contactID, d);
    objc_storeStrong(&v16->_handle, handle);
    objc_storeStrong(&v16->_prefixedHandle, prefixedHandle);
    objc_storeStrong(&v16->_contactAssociationID, iD);
  }

  return v16;
}

- (id)description
{
  if (os_log_is_debug_enabled(os_log_GKContacts))
  {
    v3 = objc_opt_class();
    contactID = [(GKFriendSuggestion *)self contactID];
    v5 = contactID;
    if (contactID)
    {
      v6 = contactID;
    }

    else
    {
      v6 = @"nil";
    }

    prefixedHandle = [(GKFriendSuggestion *)self prefixedHandle];
    v8 = prefixedHandle;
    if (prefixedHandle)
    {
      v9 = prefixedHandle;
    }

    else
    {
      v9 = @"nil";
    }

    contactAssociationID = [(GKFriendSuggestion *)self contactAssociationID];
    v11 = contactAssociationID;
    if (contactAssociationID)
    {
      v12 = contactAssociationID;
    }

    else
    {
      v12 = @"nil";
    }

    v13 = [NSString stringWithFormat:@"%@(%p)(contactID:%@, prefixedHandle:%@, CAID:%@)", v3, self, v6, v9, v12];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = GKFriendSuggestion;
    v13 = [(GKFriendSuggestion *)&v15 description];
  }

  return v13;
}

@end