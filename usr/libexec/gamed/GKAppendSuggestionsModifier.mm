@interface GKAppendSuggestionsModifier
- (GKAppendSuggestionsModifier)initWithSettings:(id)settings suggestionsProvider:(id)provider;
- (id)modifySuggestions:(id)suggestions;
@end

@implementation GKAppendSuggestionsModifier

- (GKAppendSuggestionsModifier)initWithSettings:(id)settings suggestionsProvider:(id)provider
{
  settingsCopy = settings;
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = GKAppendSuggestionsModifier;
  v9 = [(GKAppendSuggestionsModifier *)&v13 init];
  if (v9)
  {
    v10 = objc_retainBlock(providerCopy);
    suggestionsProvider = v9->_suggestionsProvider;
    v9->_suggestionsProvider = v10;

    objc_storeStrong(&v9->_settings, settings);
  }

  return v9;
}

- (id)modifySuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v5 = [suggestionsCopy count];
  settings = [(GKAppendSuggestionsModifier *)self settings];
  mininumIDsForContactAssociationIDsOnly = [settings mininumIDsForContactAssociationIDsOnly];

  if (v5 >= mininumIDsForContactAssociationIDsOnly)
  {
    v23 = suggestionsCopy;
  }

  else
  {
    settings2 = [(GKAppendSuggestionsModifier *)self settings];
    suggestionsLimit = [settings2 suggestionsLimit];
    v10 = suggestionsLimit - [suggestionsCopy count];

    suggestionsProvider = [(GKAppendSuggestionsModifier *)self suggestionsProvider];
    v12 = suggestionsProvider[2](suggestionsProvider, v10);

    v13 = [suggestionsCopy _gkDistinctValuesForKeyPath:@"contactID"];
    v14 = [suggestionsCopy mutableCopy];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = v12;
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v25 + 1) + 8 * i);
          contactID = [v20 contactID];
          v22 = [v13 containsObject:contactID];

          if ((v22 & 1) == 0)
          {
            [v14 addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v17);
    }

    v23 = [v14 copy];
  }

  return v23;
}

@end