@interface GKAppendSuggestionsModifier
- (GKAppendSuggestionsModifier)initWithSettings:(id)a3 suggestionsProvider:(id)a4;
- (id)modifySuggestions:(id)a3;
@end

@implementation GKAppendSuggestionsModifier

- (GKAppendSuggestionsModifier)initWithSettings:(id)a3 suggestionsProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = GKAppendSuggestionsModifier;
  v9 = [(GKAppendSuggestionsModifier *)&v13 init];
  if (v9)
  {
    v10 = objc_retainBlock(v8);
    suggestionsProvider = v9->_suggestionsProvider;
    v9->_suggestionsProvider = v10;

    objc_storeStrong(&v9->_settings, a3);
  }

  return v9;
}

- (id)modifySuggestions:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  v6 = [(GKAppendSuggestionsModifier *)self settings];
  v7 = [v6 mininumIDsForContactAssociationIDsOnly];

  if (v5 >= v7)
  {
    v23 = v4;
  }

  else
  {
    v8 = [(GKAppendSuggestionsModifier *)self settings];
    v9 = [v8 suggestionsLimit];
    v10 = v9 - [v4 count];

    v11 = [(GKAppendSuggestionsModifier *)self suggestionsProvider];
    v12 = v11[2](v11, v10);

    v13 = [v4 _gkDistinctValuesForKeyPath:@"contactID"];
    v14 = [v4 mutableCopy];
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
          v21 = [v20 contactID];
          v22 = [v13 containsObject:v21];

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