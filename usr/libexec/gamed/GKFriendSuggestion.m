@interface GKFriendSuggestion
- (GKFriendSuggestion)initWithContactID:(id)a3 handle:(id)a4 prefixedHandle:(id)a5 contactAssociationID:(id)a6;
- (GKFriendSuggestion)initWithSuggestion:(id)a3;
- (id)description;
@end

@implementation GKFriendSuggestion

- (GKFriendSuggestion)initWithSuggestion:(id)a3
{
  v4 = a3;
  v5 = [v4 recipients];
  v6 = [v5 count];

  if (v6 <= 1)
  {
    v8 = [v4 recipients];
    v9 = [v8 firstObject];

    if (v9)
    {
      v10 = [v9 _gkPrefixedURIHandle];
      v11 = [v9 identifier];
      v12 = [v9 handle];
      self = [(GKFriendSuggestion *)self initWithContactID:v11 handle:v12 prefixedHandle:v10 contactAssociationID:0];

      v7 = self;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (GKFriendSuggestion)initWithContactID:(id)a3 handle:(id)a4 prefixedHandle:(id)a5 contactAssociationID:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = GKFriendSuggestion;
  v15 = [(GKFriendSuggestion *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_contactID, a3);
    objc_storeStrong(&v16->_handle, a4);
    objc_storeStrong(&v16->_prefixedHandle, a5);
    objc_storeStrong(&v16->_contactAssociationID, a6);
  }

  return v16;
}

- (id)description
{
  if (os_log_is_debug_enabled(os_log_GKContacts))
  {
    v3 = objc_opt_class();
    v4 = [(GKFriendSuggestion *)self contactID];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = @"nil";
    }

    v7 = [(GKFriendSuggestion *)self prefixedHandle];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = @"nil";
    }

    v10 = [(GKFriendSuggestion *)self contactAssociationID];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
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