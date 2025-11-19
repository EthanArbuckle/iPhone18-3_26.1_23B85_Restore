@interface GKFriendSuggesterSettings
+ (id)allBagKeys;
- (GKFriendSuggesterSettings)initWithBagValues:(id)a3;
- (id)description;
@end

@implementation GKFriendSuggesterSettings

- (GKFriendSuggesterSettings)initWithBagValues:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = GKFriendSuggesterSettings;
  v5 = [(GKFriendSuggesterSettings *)&v7 init];
  if (v5)
  {
    v5->_mininumIDsForServiceRequest = [v4 unsignedIntegerValueFromKey:@"gk-friend-rerank-minimum" defaultValue:2];
    v5->_mininumIDsForContactAssociationIDsOnly = [v4 unsignedIntegerValueFromKey:@"gk-friend-rerank-caidonly-minimum" defaultValue:30];
    v5->_suggestionsLimit = [v4 unsignedIntegerValueFromKey:@"gk-friend-rerank-caidonly-minimum" defaultValue:30];
  }

  return v5;
}

+ (id)allBagKeys
{
  v4[0] = @"gk-friend-rerank-minimum";
  v4[1] = @"gk-friend-rerank-caidonly-minimum";
  v4[2] = @"gk-friend-rerank-overall-limit";
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

- (id)description
{
  if (os_log_is_debug_enabled(os_log_GKContacts))
  {
    v3 = objc_opt_class();
    v4 = [NSNumber numberWithUnsignedInteger:[(GKFriendSuggesterSettings *)self mininumIDsForServiceRequest]];
    v5 = [NSNumber numberWithUnsignedInteger:[(GKFriendSuggesterSettings *)self mininumIDsForContactAssociationIDsOnly]];
    v6 = [NSNumber numberWithUnsignedInteger:[(GKFriendSuggesterSettings *)self suggestionsLimit]];
    v7 = [NSString stringWithFormat:@"%@(%p)(mininumIDsForServiceRequest:%@, mininumIDsForContactAssociationIDsOnly:%@, suggestionsLimit:%@)", v3, self, v4, v5, v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = GKFriendSuggesterSettings;
    v7 = [(GKFriendSuggesterSettings *)&v9 description];
  }

  return v7;
}

@end