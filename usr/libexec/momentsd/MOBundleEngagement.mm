@interface MOBundleEngagement
- (MOBundleEngagement)initWithType:(int)type timestamp:(id)timestamp clientIdentifier:(id)identifier viewContainerName:(id)name viewVisibleTime:(double)time suggestionType:(id)suggestionType viewVisibleSuggestionsCount:(id)count viewTotalSuggestionsCount:(id)self0 typeAppEntry:(int)self1 typeAppEntryStr:(id)self2 timestampAppEntry:(id)self3 startTimeAppEntry:(id)self4 endTimeAppEntry:(id)self5 clientIdentifierAppEntry:(id)self6 totalCharactersAppEntry:(id)self7 addedCharactersAppEntry:(id)self8 engagementSource:(unint64_t)self9;
@end

@implementation MOBundleEngagement

- (MOBundleEngagement)initWithType:(int)type timestamp:(id)timestamp clientIdentifier:(id)identifier viewContainerName:(id)name viewVisibleTime:(double)time suggestionType:(id)suggestionType viewVisibleSuggestionsCount:(id)count viewTotalSuggestionsCount:(id)self0 typeAppEntry:(int)self1 typeAppEntryStr:(id)self2 timestampAppEntry:(id)self3 startTimeAppEntry:(id)self4 endTimeAppEntry:(id)self5 clientIdentifierAppEntry:(id)self6 totalCharactersAppEntry:(id)self7 addedCharactersAppEntry:(id)self8 engagementSource:(unint64_t)self9
{
  timestampCopy = timestamp;
  identifierCopy = identifier;
  nameCopy = name;
  suggestionTypeCopy = suggestionType;
  suggestionTypeCopy2 = suggestionType;
  countCopy = count;
  countCopy2 = count;
  suggestionsCountCopy = suggestionsCount;
  strCopy = str;
  appEntryCopy = appEntry;
  timeAppEntryCopy = timeAppEntry;
  endTimeAppEntryCopy = endTimeAppEntry;
  identifierAppEntryCopy = identifierAppEntry;
  charactersAppEntryCopy = charactersAppEntry;
  addedCharactersAppEntryCopy = addedCharactersAppEntry;
  v45.receiver = self;
  v45.super_class = MOBundleEngagement;
  v31 = [(MOBundleEngagement *)&v45 init];
  v32 = v31;
  if (v31)
  {
    v31->_type = type;
    objc_storeStrong(&v31->_timestamp, timestamp);
    objc_storeStrong(&v32->_clientIdentifier, identifier);
    objc_storeStrong(&v32->_viewContainerName, name);
    v32->_viewVisibleTime = time;
    objc_storeStrong(&v32->_suggestionType, suggestionTypeCopy);
    objc_storeStrong(&v32->_viewVisibleSuggestionsCount, countCopy);
    objc_storeStrong(&v32->_viewTotalSuggestionsCount, suggestionsCount);
    v32->_typeAppEntry = entry;
    objc_storeStrong(&v32->_typeAppEntryStr, str);
    objc_storeStrong(&v32->_timestampAppEntry, appEntry);
    objc_storeStrong(&v32->_startTimeAppEntry, timeAppEntry);
    objc_storeStrong(&v32->_endTimeAppEntry, endTimeAppEntry);
    objc_storeStrong(&v32->_clientIdentifierAppEntry, identifierAppEntry);
    objc_storeStrong(&v32->_totalCharactersAppEntry, charactersAppEntry);
    objc_storeStrong(&v32->_addedCharactersAppEntry, addedCharactersAppEntry);
    v32->_engagementSource = source;
  }

  return v32;
}

@end