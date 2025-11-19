@interface SHSheetRemoteConnectionContext
- (SHSheetRemoteConnectionContext)initWithDictionary:(id)a3;
- (SHSheetRemoteConnectionContext)initWithSessionIdentifier:(id)a3;
- (id)createContextDictionary;
@end

@implementation SHSheetRemoteConnectionContext

- (SHSheetRemoteConnectionContext)initWithSessionIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SHSheetRemoteConnectionContext;
  v5 = [(SHSheetRemoteConnectionContext *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;
  }

  return v5;
}

- (SHSheetRemoteConnectionContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector("sessionIdentifier");
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [(SHSheetRemoteConnectionContext *)self initWithSessionIdentifier:v6];

  if (v7)
  {
    v8 = NSStringFromSelector("discoveryContext");
    v9 = [v4 objectForKeyedSubscript:v8];
    discoveryContext = v7->_discoveryContext;
    v7->_discoveryContext = v9;

    v11 = NSStringFromSelector("assetIdentifiers");
    v12 = [v4 objectForKeyedSubscript:v11];
    assetIdentifiers = v7->_assetIdentifiers;
    v7->_assetIdentifiers = v12;

    v14 = NSStringFromSelector("urlsBeingShared");
    v15 = [v4 objectForKeyedSubscript:v14];
    urlsBeingShared = v7->_urlsBeingShared;
    v7->_urlsBeingShared = v15;

    v17 = NSStringFromSelector("sandboxExtensionsByfileURLPath");
    v18 = [v4 objectForKeyedSubscript:v17];
    sandboxExtensionsByfileURLPath = v7->_sandboxExtensionsByfileURLPath;
    v7->_sandboxExtensionsByfileURLPath = v18;

    v20 = NSStringFromSelector("shouldSuggestFamilyMembers");
    v21 = [v4 objectForKeyedSubscript:v20];
    v7->_shouldSuggestFamilyMembers = [v21 BOOLValue];

    v22 = NSStringFromSelector("instantShareSheet");
    v23 = [v4 objectForKeyedSubscript:v22];
    v7->_instantShareSheet = [v23 BOOLValue];

    v24 = NSStringFromSelector("remoteShareSheet");
    v25 = [v4 objectForKeyedSubscript:v24];
    v7->_remoteShareSheet = [v25 BOOLValue];

    v26 = NSStringFromSelector("isSharePlayAvailable");
    v27 = [v4 objectForKeyedSubscript:v26];
    v7->_isSharePlayAvailable = [v27 BOOLValue];

    v28 = NSStringFromSelector("supportsCollaboration");
    v29 = [v4 objectForKeyedSubscript:v28];
    v7->_supportsCollaboration = [v29 BOOLValue];

    v30 = NSStringFromSelector("hideSuggestions");
    v31 = [v4 objectForKeyedSubscript:v30];
    v7->_hideSuggestions = [v31 BOOLValue];

    v32 = NSStringFromSelector("peopleSuggestionBundleIds");
    v33 = [v4 objectForKeyedSubscript:v32];
    peopleSuggestionBundleIds = v7->_peopleSuggestionBundleIds;
    v7->_peopleSuggestionBundleIds = v33;

    v35 = NSStringFromSelector("processedImageResultsData");
    v36 = [v4 objectForKeyedSubscript:v35];
    processedImageResultsData = v7->_processedImageResultsData;
    v7->_processedImageResultsData = v36;

    v38 = NSStringFromSelector("peopleSuggestionsTimeout");
    v39 = [v4 objectForKeyedSubscript:v38];
    [v39 doubleValue];
    v7->_peopleSuggestionsTimeout = v40;

    v41 = NSStringFromSelector("xrRenderingMode");
    v42 = [v4 objectForKeyedSubscript:v41];
    v7->_xrRenderingMode = [v42 unsignedIntValue];
  }

  return v7;
}

- (id)createContextDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(SHSheetRemoteConnectionContext *)self sessionIdentifier];
  v5 = NSStringFromSelector("sessionIdentifier");
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [(SHSheetRemoteConnectionContext *)self discoveryContext];
  v7 = NSStringFromSelector("discoveryContext");
  [v3 setObject:v6 forKeyedSubscript:v7];

  v8 = [(SHSheetRemoteConnectionContext *)self assetIdentifiers];
  v9 = NSStringFromSelector("assetIdentifiers");
  [v3 setObject:v8 forKeyedSubscript:v9];

  v10 = [(SHSheetRemoteConnectionContext *)self urlsBeingShared];
  v11 = NSStringFromSelector("urlsBeingShared");
  [v3 setObject:v10 forKeyedSubscript:v11];

  v12 = [(SHSheetRemoteConnectionContext *)self sandboxExtensionsByfileURLPath];
  v13 = NSStringFromSelector("sandboxExtensionsByfileURLPath");
  [v3 setObject:v12 forKeyedSubscript:v13];

  v14 = [NSNumber numberWithBool:[(SHSheetRemoteConnectionContext *)self shouldSuggestFamilyMembers]];
  v15 = NSStringFromSelector("shouldSuggestFamilyMembers");
  [v3 setObject:v14 forKeyedSubscript:v15];

  v16 = [NSNumber numberWithBool:[(SHSheetRemoteConnectionContext *)self instantShareSheet]];
  v17 = NSStringFromSelector("instantShareSheet");
  [v3 setObject:v16 forKeyedSubscript:v17];

  v18 = [NSNumber numberWithBool:[(SHSheetRemoteConnectionContext *)self remoteShareSheet]];
  v19 = NSStringFromSelector("remoteShareSheet");
  [v3 setObject:v18 forKeyedSubscript:v19];

  v20 = [NSNumber numberWithBool:[(SHSheetRemoteConnectionContext *)self isSharePlayAvailable]];
  v21 = NSStringFromSelector("isSharePlayAvailable");
  [v3 setObject:v20 forKeyedSubscript:v21];

  v22 = [NSNumber numberWithBool:[(SHSheetRemoteConnectionContext *)self supportsCollaboration]];
  v23 = NSStringFromSelector("supportsCollaboration");
  [v3 setObject:v22 forKeyedSubscript:v23];

  v24 = [NSNumber numberWithBool:[(SHSheetRemoteConnectionContext *)self hideSuggestions]];
  v25 = NSStringFromSelector("hideSuggestions");
  [v3 setObject:v24 forKeyedSubscript:v25];

  v26 = [(SHSheetRemoteConnectionContext *)self peopleSuggestionBundleIds];
  v27 = NSStringFromSelector("peopleSuggestionBundleIds");
  [v3 setObject:v26 forKeyedSubscript:v27];

  v28 = [(SHSheetRemoteConnectionContext *)self processedImageResultsData];
  v29 = NSStringFromSelector("processedImageResultsData");
  [v3 setObject:v28 forKeyedSubscript:v29];

  [(SHSheetRemoteConnectionContext *)self peopleSuggestionsTimeout];
  v30 = [NSNumber numberWithDouble:?];
  v31 = NSStringFromSelector("peopleSuggestionsTimeout");
  [v3 setObject:v30 forKeyedSubscript:v31];

  v32 = [NSNumber numberWithUnsignedInteger:[(SHSheetRemoteConnectionContext *)self xrRenderingMode]];
  v33 = NSStringFromSelector("xrRenderingMode");
  [v3 setObject:v32 forKeyedSubscript:v33];

  return v3;
}

@end