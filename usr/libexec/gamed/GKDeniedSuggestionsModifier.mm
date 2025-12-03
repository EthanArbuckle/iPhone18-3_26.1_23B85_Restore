@interface GKDeniedSuggestionsModifier
- (GKDeniedSuggestionsModifier)initWithDeniedContactIDs:(id)ds;
- (id)modifySuggestions:(id)suggestions;
- (id)nonDeniedRecipientsFromInitialRecipients:(id)recipients;
@end

@implementation GKDeniedSuggestionsModifier

- (GKDeniedSuggestionsModifier)initWithDeniedContactIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = GKDeniedSuggestionsModifier;
  v6 = [(GKDeniedSuggestionsModifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deniedContactIDs, ds);
  }

  return v7;
}

- (id)modifySuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  if ([suggestionsCopy count])
  {
    v5 = [(GKDeniedSuggestionsModifier *)self nonDeniedRecipientsFromInitialRecipients:suggestionsCopy];
  }

  else
  {
    v5 = suggestionsCopy;
  }

  v6 = v5;

  return v6;
}

- (id)nonDeniedRecipientsFromInitialRecipients:(id)recipients
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000DEF9C;
  v5[3] = &unk_100365F20;
  v5[4] = self;
  v3 = [recipients _gkFilterWithBlock:v5];

  return v3;
}

@end