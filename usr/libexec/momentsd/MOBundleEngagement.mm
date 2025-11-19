@interface MOBundleEngagement
- (MOBundleEngagement)initWithType:(int)a3 timestamp:(id)a4 clientIdentifier:(id)a5 viewContainerName:(id)a6 viewVisibleTime:(double)a7 suggestionType:(id)a8 viewVisibleSuggestionsCount:(id)a9 viewTotalSuggestionsCount:(id)a10 typeAppEntry:(int)a11 typeAppEntryStr:(id)a12 timestampAppEntry:(id)a13 startTimeAppEntry:(id)a14 endTimeAppEntry:(id)a15 clientIdentifierAppEntry:(id)a16 totalCharactersAppEntry:(id)a17 addedCharactersAppEntry:(id)a18 engagementSource:(unint64_t)a19;
@end

@implementation MOBundleEngagement

- (MOBundleEngagement)initWithType:(int)a3 timestamp:(id)a4 clientIdentifier:(id)a5 viewContainerName:(id)a6 viewVisibleTime:(double)a7 suggestionType:(id)a8 viewVisibleSuggestionsCount:(id)a9 viewTotalSuggestionsCount:(id)a10 typeAppEntry:(int)a11 typeAppEntryStr:(id)a12 timestampAppEntry:(id)a13 startTimeAppEntry:(id)a14 endTimeAppEntry:(id)a15 clientIdentifierAppEntry:(id)a16 totalCharactersAppEntry:(id)a17 addedCharactersAppEntry:(id)a18 engagementSource:(unint64_t)a19
{
  v44 = a4;
  v41 = a5;
  v39 = a6;
  v36 = a8;
  v24 = a8;
  v37 = a9;
  v25 = a9;
  v43 = a10;
  v42 = a12;
  v40 = a13;
  v26 = a14;
  v27 = a15;
  v28 = a16;
  v29 = a17;
  v30 = a18;
  v45.receiver = self;
  v45.super_class = MOBundleEngagement;
  v31 = [(MOBundleEngagement *)&v45 init];
  v32 = v31;
  if (v31)
  {
    v31->_type = a3;
    objc_storeStrong(&v31->_timestamp, a4);
    objc_storeStrong(&v32->_clientIdentifier, a5);
    objc_storeStrong(&v32->_viewContainerName, a6);
    v32->_viewVisibleTime = a7;
    objc_storeStrong(&v32->_suggestionType, v36);
    objc_storeStrong(&v32->_viewVisibleSuggestionsCount, v37);
    objc_storeStrong(&v32->_viewTotalSuggestionsCount, a10);
    v32->_typeAppEntry = a11;
    objc_storeStrong(&v32->_typeAppEntryStr, a12);
    objc_storeStrong(&v32->_timestampAppEntry, a13);
    objc_storeStrong(&v32->_startTimeAppEntry, a14);
    objc_storeStrong(&v32->_endTimeAppEntry, a15);
    objc_storeStrong(&v32->_clientIdentifierAppEntry, a16);
    objc_storeStrong(&v32->_totalCharactersAppEntry, a17);
    objc_storeStrong(&v32->_addedCharactersAppEntry, a18);
    v32->_engagementSource = a19;
  }

  return v32;
}

@end