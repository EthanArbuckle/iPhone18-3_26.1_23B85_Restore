@interface GKTrimSuggestionsModifier
- (GKTrimSuggestionsModifier)initWithSettings:(id)a3;
- (id)trimSuggestions:(id)a3;
@end

@implementation GKTrimSuggestionsModifier

- (GKTrimSuggestionsModifier)initWithSettings:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GKTrimSuggestionsModifier;
  v6 = [(GKTrimSuggestionsModifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, a3);
  }

  return v7;
}

- (id)trimSuggestions:(id)a3
{
  v4 = a3;
  v5 = [(GKTrimSuggestionsModifier *)self settings];
  v6 = [v5 suggestionsLimit];

  v7 = [v4 count];
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = [v4 subarrayWithRange:{0, v8}];

  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[GKTrimSuggestionsModifier trimSuggestions:]";
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s trimmedResults: %@", &v13, 0x16u);
  }

  return v9;
}

@end