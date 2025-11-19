@interface SDSuggestionBrowser
+ (id)asyncBrowserWithSessionID:(id)a3 context:(id)a4 queue:(id)a5 timeout:(double)a6;
+ (id)browserWithSessionID:(id)a3 context:(id)a4;
+ (void)initializeCache;
- (NSArray)peopleSuggestionNodes;
- (NSArray)peopleSuggestions;
- (SDSuggestionBrowser)initWithSessionID:(id)a3 context:(id)a4 asynchronous:(BOOL)a5 queue:(id)a6 timeout:(double)a7;
- (SDSuggestionBrowserDelegate)delegate;
- (SDXPCHelperConnection)helperConnection;
- (id)_createAttachmentsForURLsBeingShared:(id)a3 typeIdentifiersBeingShared:(id)a4 photosAssetIDs:(id)a5 processedImageResultsData:(id)a6 sandboxExtensionsByfileURLPath:(id)a7;
- (id)_createPeopleSuggestionNodesForSuggestions:(id)a3;
- (id)_createPeopleSuggestionsForSuggestions:(id)a3;
- (id)_createPlaceholderSuggestions;
- (id)_createPredictionContextWithContext:(id)a3;
- (id)_createSuggestionsForDuetSuggestions:(id)a3;
- (id)_extractTextFromFileURL:(id)a3;
- (id)_extractTextFromTextFileURL:(id)a3;
- (id)_peopleSuggestionForIdentifier:(id)a3 outIndex:(int64_t *)a4;
- (id)_peopleSuggestionNodeForNodeIdentifier:(id)a3 outIndex:(int64_t *)a4;
- (void)_didFetchDuetSuggestions:(id)a3;
- (void)_fetchDuetSuggestionsWithPreheating:(BOOL)a3;
- (void)_fetchSuggestionsIfNeeded;
- (void)_loadIconForSuggestionNode:(id)a3 outIcon:(CGImage *)a4 outIconData:(id *)a5;
- (void)_provideFeedbackForNodeAtIndex:(id)a3 bundleID:(id)a4 suggestion:(id)a5 selectedActionBundleID:(id)a6 abandoned:(BOOL)a7;
- (void)provideFeedbackForPeopleSuggestion:(id)a3;
- (void)provideFeedbackForPeopleSuggestionIdentifier:(id)a3;
- (void)provideFeedbackForPeopleSuggestionNodeIdentifier:(id)a3;
- (void)setSuggestions:(id)a3;
- (void)suggestLessPeopleSuggestionIdentifier:(id)a3;
@end

@implementation SDSuggestionBrowser

+ (void)initializeCache
{
  v2 = sub_10011C258();
  v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", +[SDStatusMonitor shareSheetMaxSuggestions]);
  [v2 initializePSSuggesterCacheWithMaxSuggestionCount:v3];
}

+ (id)asyncBrowserWithSessionID:(id)a3 context:(id)a4 queue:(id)a5 timeout:(double)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[a1 alloc] initWithSessionID:v12 context:v11 asynchronous:1 queue:v10 timeout:a6];

  return v13;
}

+ (id)browserWithSessionID:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithSessionID:v7 context:v6 asynchronous:0 queue:0 timeout:0.0];

  return v8;
}

- (SDSuggestionBrowser)initWithSessionID:(id)a3 context:(id)a4 asynchronous:(BOOL)a5 queue:(id)a6 timeout:(double)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v39.receiver = self;
  v39.super_class = SDSuggestionBrowser;
  v15 = [(SDSuggestionBrowser *)&v39 init];
  if (v15)
  {
    v16 = [v12 copy];
    sessionID = v15->_sessionID;
    v15->_sessionID = v16;

    objc_storeStrong(&v15->_queue, a6);
    v15->_isAsynchronous = a5;
    v15->_timeout = a7;
    v18 = [(SDSuggestionBrowser *)v15 _createPredictionContextWithContext:v13];
    predictionContext = v15->_predictionContext;
    v15->_predictionContext = v18;

    [(_PSPredictionContext *)v15->_predictionContext setSessionID:v12];
    v45 = 0;
    v46 = &v45;
    v47 = 0x2050000000;
    v20 = qword_100989E18;
    v48 = qword_100989E18;
    if (!qword_100989E18)
    {
      *buf = _NSConcreteStackBlock;
      v41 = 3221225472;
      v42 = sub_10011F9E0;
      v43 = &unk_1008CDA20;
      v44 = &v45;
      sub_10011F9E0(buf);
      v20 = v46[3];
    }

    v21 = v20;
    _Block_object_dispose(&v45, 8);
    v22 = [v20 defaultConfiguration];
    [v22 setMaximumNumberOfSuggestions:{+[SDStatusMonitor shareSheetMaxSuggestions](SDStatusMonitor, "shareSheetMaxSuggestions")}];
    v23 = [objc_alloc(sub_10011C258()) initWithDaemonUsingConfiguration:v22];
    suggester = v15->_suggester;
    v15->_suggester = v23;

    v25 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v26 = dispatch_queue_create("com.apple.sharingd.suggestionBrowser.primedSuggestions", v25);
    primedSuggestionsQueue = v15->_primedSuggestionsQueue;
    v15->_primedSuggestionsQueue = v26;

    if (v15->_isAsynchronous)
    {
      v28 = share_sheet_log();
      v29 = share_sheet_log();
      v30 = os_signpost_id_make_with_pointer(v29, v15);

      if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_BEGIN, v30, "CandidatesForShareSheetRanking", " enableTelemetry=YES ", buf, 2u);
      }

      v31 = [(_PSSuggester *)v15->_suggester candidatesForShareSheetRanking];
      v32 = share_sheet_log();
      v33 = share_sheet_log();
      v34 = os_signpost_id_make_with_pointer(v33, v15);

      if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_END, v34, "CandidatesForShareSheetRanking", " enableTelemetry=YES ", buf, 2u);
      }

      v35 = [v31 count];
      v15->_canExpectSuggestions = v35 != 0;
      if (v35)
      {
        v36 = [(SDSuggestionBrowser *)v15 _createPlaceholderSuggestions];
        suggestions = v15->_suggestions;
        v15->_suggestions = v36;
      }
    }

    else
    {
      v15->_canExpectSuggestions = 1;
    }

    [(SDSuggestionBrowser *)v15 _fetchDuetSuggestionsWithPreheating:1];
  }

  return v15;
}

- (id)_createPredictionContextWithContext:(id)a3
{
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v5 = qword_100989E20;
  v23 = qword_100989E20;
  if (!qword_100989E20)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v25 = sub_10011FA38;
    v26 = &unk_1008CDA20;
    v27 = &v20;
    sub_10011FA38(&buf);
    v5 = v21[3];
  }

  v6 = v5;
  _Block_object_dispose(&v20, 8);
  v7 = objc_alloc_init(v5);
  [v7 setShowPotentialFamilyMembers:{objc_msgSend(v4, "shouldSuggestFamilyMembers", v20)}];
  [v7 setIsSharePlayAvailable:{objc_msgSend(v4, "isSharePlayAvailable")}];
  if ([v4 supportsCollaboration])
  {
    v8 = _os_feature_enabled_impl();
  }

  else
  {
    v8 = 0;
  }

  [v7 setIsCollaborationAvailable:v8];
  v9 = [v4 peopleSuggestionBundleIds];
  [v7 setSuggestionsFilteredByBundleIds:v9];

  v10 = [v4 urlsBeingShared];
  v11 = [v4 typeIdentifiersBeingShared];
  v12 = [v4 photosAssetIDs];
  v13 = [v4 processedImageResultsData];
  v14 = [v4 sandboxExtensionsByfileURLPath];
  v15 = [(SDSuggestionBrowser *)self _createAttachmentsForURLsBeingShared:v10 typeIdentifiersBeingShared:v11 photosAssetIDs:v12 processedImageResultsData:v13 sandboxExtensionsByfileURLPath:v14];

  v16 = share_sheet_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138477827;
    *(&buf + 4) = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Attachments in PredictionContext for People Suggestion = %{private}@", &buf, 0xCu);
  }

  [v7 setAttachments:v15];
  v17 = [v4 bundleID];
  [v7 setBundleID:v17];

  v18 = +[NSDate date];
  [v7 setSuggestionDate:v18];

  return v7;
}

- (id)_createAttachmentsForURLsBeingShared:(id)a3 typeIdentifiersBeingShared:(id)a4 photosAssetIDs:(id)a5 processedImageResultsData:(id)a6 sandboxExtensionsByfileURLPath:(id)a7
{
  v45 = a3;
  v44 = a4;
  v43 = a5;
  v51 = a6;
  v47 = a7;
  v11 = +[NSMutableArray array];
  v68 = 0;
  v69 = &v68;
  v70 = 0x2050000000;
  v12 = qword_100989E28;
  v71 = qword_100989E28;
  if (!qword_100989E28)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10011FA90;
    v77 = &unk_1008CDA20;
    v78 = &v68;
    sub_10011FA90(buf);
    v12 = v69[3];
  }

  v13 = v12;
  _Block_object_dispose(&v68, 8);
  if (v12)
  {
    if ([v45 count])
    {
      v66 = 0uLL;
      v67 = 0uLL;
      v64 = 0uLL;
      v65 = 0uLL;
      v14 = v44;
      v15 = [v14 countByEnumeratingWithState:&v64 objects:v75 count:16];
      if (v15)
      {
        v16 = *v65;
        while (2)
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v65 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v64 + 1) + 8 * i);
            if ([v18 hasSuffix:@"url"])
            {
              v19 = v18;
              goto LABEL_18;
            }
          }

          v15 = [v14 countByEnumeratingWithState:&v64 objects:v75 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      v19 = 0;
LABEL_18:

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      obj = v45;
      v50 = [obj countByEnumeratingWithState:&v60 objects:v74 count:16];
      if (v50)
      {
        v49 = *v61;
        do
        {
          for (j = 0; j != v50; j = j + 1)
          {
            if (*v61 != v49)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v60 + 1) + 8 * j);
            if ([v19 hasSuffix:@"file-url"])
            {
              v24 = [(SDSuggestionBrowser *)self _extractTextFromFileURL:v23];
            }

            else
            {
              v24 = 0;
            }

            v25 = [[v12 alloc] initWithCreationDate:0 UTI:v19 photoLocalIdentifier:0 identifier:0 cloudIdentifier:0 contentURL:v23 contentText:v24];
            if (objc_opt_respondsToSelector())
            {
              v26 = v25;
              v27 = [v23 path];
              v28 = [v47 objectForKeyedSubscript:v27];

              if (v28)
              {
                v29 = share_sheet_log();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  v30 = [v28 length];
                  *buf = 134218243;
                  *&buf[4] = v30;
                  *&buf[12] = 2113;
                  *&buf[14] = v23;
                  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "adding urlSandboxExtension with length:%lu for url attachment:%{private}@", buf, 0x16u);
                }

                [v26 setContentURLSandboxExtension:v28];
              }
            }

            [v11 addObject:v25];
            if (((v51 != 0) & [v19 hasSuffix:@"file-url"]) == 1)
            {
              v31 = [[v12 alloc] initWithCreationDate:0 UTI:@"SDShareSheetImageAnalysisIdentifier" photoLocalIdentifier:0 identifier:0 cloudIdentifier:0 contentURL:v23 contentText:v24 imageData:v51];

              [v11 addObject:v31];
            }

            else
            {
              v31 = v25;
            }
          }

          v50 = [obj countByEnumeratingWithState:&v60 objects:v74 count:16];
        }

        while (v50);
      }
    }

    else
    {
      v58 = 0uLL;
      v59 = 0uLL;
      v56 = 0uLL;
      v57 = 0uLL;
      v32 = v44;
      v33 = [v32 countByEnumeratingWithState:&v56 objects:v73 count:16];
      if (v33)
      {
        v34 = *v57;
        do
        {
          for (k = 0; k != v33; k = k + 1)
          {
            if (*v57 != v34)
            {
              objc_enumerationMutation(v32);
            }

            v36 = [[v12 alloc] initWithCreationDate:0 UTI:*(*(&v56 + 1) + 8 * k) photoLocalIdentifier:0 identifier:0 cloudIdentifier:0 contentURL:0 contentText:0];
            [v11 addObject:v36];
          }

          v33 = [v32 countByEnumeratingWithState:&v56 objects:v73 count:16];
        }

        while (v33);
      }

      if (!v51)
      {
        goto LABEL_48;
      }

      v19 = [[v12 alloc] initWithCreationDate:0 UTI:@"SDShareSheetImageAnalysisIdentifier" photoLocalIdentifier:0 identifier:0 cloudIdentifier:0 contentURL:0 contentText:0 imageData:v51];
      [v11 addObject:v19];
    }

LABEL_48:
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v37 = v43;
    v38 = [v37 countByEnumeratingWithState:&v52 objects:v72 count:16];
    if (v38)
    {
      v39 = *v53;
      do
      {
        for (m = 0; m != v38; m = m + 1)
        {
          if (*v53 != v39)
          {
            objc_enumerationMutation(v37);
          }

          v41 = [[v12 alloc] initWithCreationDate:0 UTI:0 photoLocalIdentifier:*(*(&v52 + 1) + 8 * m) identifier:0 cloudIdentifier:0 contentURL:0 contentText:0];
          [v11 addObject:v41];
        }

        v38 = [v37 countByEnumeratingWithState:&v52 objects:v72 count:16];
      }

      while (v38);
    }

    v21 = [v11 copy];
    goto LABEL_56;
  }

  v20 = share_sheet_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_10011FB98();
  }

  v21 = &__NSArray0__struct;
LABEL_56:

  return v21;
}

- (id)_extractTextFromFileURL:(id)a3
{
  v4 = a3;
  v5 = [v4 pathExtension];
  if (([v5 isEqualToString:@"rtf"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"txt"))
  {
    v6 = [(SDSuggestionBrowser *)self _extractTextFromTextFileURL:v4];
LABEL_4:
    v7 = v6;
    goto LABEL_5;
  }

  if ([v5 isEqualToString:@"pdf"])
  {
    v6 = [(SDSuggestionBrowser *)self _extractTextFromPDFFileURL:v4];
    goto LABEL_4;
  }

  v7 = 0;
LABEL_5:

  return v7;
}

- (id)_extractTextFromTextFileURL:(id)a3
{
  v3 = a3;
  v13 = 0;
  v4 = [NSFileHandle fileHandleForReadingFromURL:v3 error:&v13];
  v5 = v13;
  if (v4)
  {
    v12 = 0;
    v6 = [v4 readDataUpToLength:102400 error:&v12];
    v7 = v12;

    if ([v6 length])
    {
      v8 = [[NSString alloc] initWithData:v6 encoding:4];
      if (v8)
      {
        v9 = v8;
        goto LABEL_15;
      }

      v10 = share_sheet_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10011FBD4();
      }
    }

    else
    {
      if (!v7)
      {
LABEL_14:
        v9 = 0;
        goto LABEL_15;
      }

      v10 = share_sheet_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10011FC10();
      }
    }

    goto LABEL_14;
  }

  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10011FC84();
  }

  v9 = 0;
  v7 = v5;
LABEL_15:

  return v9;
}

- (void)setSuggestions:(id)a3
{
  v5 = a3;
  if (self->_suggestions != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_suggestions, a3);
    [(SDSuggestionBrowser *)self setPeopleSuggestionNodes:0];
    [(SDSuggestionBrowser *)self setPeopleSuggestions:0];
    v5 = v6;
  }
}

- (NSArray)peopleSuggestionNodes
{
  [(SDSuggestionBrowser *)self _fetchSuggestionsIfNeeded];
  peopleSuggestionNodes = self->_peopleSuggestionNodes;
  if (!peopleSuggestionNodes)
  {
    v4 = [(SDSuggestionBrowser *)self suggestions];
    v5 = [(SDSuggestionBrowser *)self _createPeopleSuggestionNodesForSuggestions:v4];
    v6 = self->_peopleSuggestionNodes;
    self->_peopleSuggestionNodes = v5;

    peopleSuggestionNodes = self->_peopleSuggestionNodes;
  }

  return peopleSuggestionNodes;
}

- (NSArray)peopleSuggestions
{
  [(SDSuggestionBrowser *)self _fetchSuggestionsIfNeeded];
  peopleSuggestions = self->_peopleSuggestions;
  if (!peopleSuggestions)
  {
    v4 = [(SDSuggestionBrowser *)self suggestions];
    v5 = [(SDSuggestionBrowser *)self _createPeopleSuggestionsForSuggestions:v4];
    v6 = self->_peopleSuggestions;
    self->_peopleSuggestions = v5;

    peopleSuggestions = self->_peopleSuggestions;
  }

  return peopleSuggestions;
}

- (id)_createPlaceholderSuggestions
{
  v2 = +[SDStatusMonitor shareSheetMaxSuggestions];
  for (i = [NSMutableArray arrayWithCapacity:v2];
  {
    v4 = +[SDSuggestion placeholderSuggestion];
    [i addObject:v4];
  }

  v5 = [i copy];

  return v5;
}

- (id)_createSuggestionsForDuetSuggestions:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [SDSuggestion alloc];
        v12 = [(SDSuggestion *)v11 initWithSuggestion:v10, v17];
        v13 = [(SDSuggestion *)v12 displayName];
        if (v13)
        {
        }

        else
        {
          v14 = [(SDSuggestion *)v12 formattedHandles];

          if (!v14)
          {
            goto LABEL_10;
          }
        }

        [v4 addObject:v12];
LABEL_10:
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = [v4 copy];

  return v15;
}

- (id)_createPeopleSuggestionNodesForSuggestions:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  objc_initWeak(&location, self);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [[SDSuggestionNode alloc] initWithSuggestion:v10];
        if (([v10 isPlaceholder] & 1) == 0)
        {
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_10011D9A4;
          v14[3] = &unk_1008D0E10;
          objc_copyWeak(&v15, &location);
          [(SDSuggestionNode *)v11 setLoadIconHandler:v14];
          objc_destroyWeak(&v15);
        }

        [v5 addObject:v11];
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v7);
  }

  v12 = [v5 copy];
  objc_destroyWeak(&location);

  return v12;
}

- (id)_createPeopleSuggestionsForSuggestions:(id)a3
{
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [a3 count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(SDSuggestionBrowser *)self suggestions];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) createPeopleSuggestion];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (void)_didFetchDuetSuggestions:(id)a3
{
  v4 = a3;
  [(SDSuggestionBrowser *)self setDuetSuggestions:v4];
  v5 = [(SDSuggestionBrowser *)self _createSuggestionsForDuetSuggestions:v4];

  [(SDSuggestionBrowser *)self setSuggestions:v5];
  if ([(SDSuggestionBrowser *)self isAsynchronous])
  {
    v6 = [(SDSuggestionBrowser *)self delegate];
    [v6 suggestionBrowserDidUpdateSuggestions:self];
  }
}

- (void)_fetchSuggestionsIfNeeded
{
  v3 = [(SDSuggestionBrowser *)self suggestions];

  if (!v3)
  {
    v4 = [(SDSuggestionBrowser *)self primedSuggestionsQueue];
    dispatch_sync(v4, &stru_1008D0E30);

    v5 = [(SDSuggestionBrowser *)self suggestions];

    if (!v5)
    {

      [(SDSuggestionBrowser *)self _fetchDuetSuggestionsWithPreheating:0];
    }
  }
}

- (void)_fetchDuetSuggestionsWithPreheating:(BOOL)a3
{
  v3 = a3;
  v5 = +[SDStatusMonitor sharedMonitor];
  v6 = [v5 disablePeopleSuggestions];

  if (v6)
  {
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "People suggestions are disabled", buf, 2u);
    }

LABEL_14:
    [(SDSuggestionBrowser *)self setSuggestions:&__NSArray0__struct];
    return;
  }

  v8 = [(SDSuggestionBrowser *)self canExpectSuggestions];
  v9 = share_sheet_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if ((v8 & 1) == 0)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "People suggestions are not expected.", buf, 2u);
    }

    goto LABEL_14;
  }

  if (v10)
  {
    v11 = [(SDSuggestionBrowser *)self sessionID];
    *buf = 138412290;
    v39 = *&v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calling into PeopleSuggester for session ID %@", buf, 0xCu);
  }

  v12 = share_sheet_log();
  v13 = os_signpost_id_make_with_pointer(v12, self);

  sub_10011DCC0(v13, 1, v3, [(SDSuggestionBrowser *)self isAsynchronous]);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10011E258;
  v36[3] = &unk_1008D0E58;
  v37 = v3;
  v36[4] = self;
  v36[5] = v13;
  v14 = objc_retainBlock(v36);
  if ([(SDSuggestionBrowser *)self isAsynchronous])
  {
    v15 = [(SDSuggestionBrowser *)self queue];
    [(SDSuggestionBrowser *)self timeout];
    if (v16 <= 0.0)
    {
      v18 = 1.79769313e308;
    }

    else
    {
      [(SDSuggestionBrowser *)self timeout];
      v18 = v17;
    }

    v23 = share_sheet_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v39 = v18;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "fetch people suggestions asynchronously with timeout:%f", buf, 0xCu);
    }

    suggester = self->_suggester;
    predictionContext = self->_predictionContext;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10011E3AC;
    v33[3] = &unk_1008D0EA8;
    v33[4] = self;
    v34 = v15;
    v35 = v14;
    v26 = v14;
    v19 = v15;
    [(_PSSuggester *)suggester asyncSuggestInteractionsFromContext:predictionContext timeout:v33 completionHandler:v18];
  }

  else
  {
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_10011E548;
    v30 = &unk_1008CE708;
    v31 = self;
    v32 = v14;
    v19 = v14;
    v20 = objc_retainBlock(&v27);
    v21 = v20;
    if (v3)
    {
      v22 = [(SDSuggestionBrowser *)self primedSuggestionsQueue:v27];
      dispatch_async(v22, v21);
    }

    else
    {
      (v20[2])(v20);
    }
  }
}

- (void)_loadIconForSuggestionNode:(id)a3 outIcon:(CGImage *)a4 outIconData:(id *)a5
{
  v8 = [a3 suggestion];
  v9 = [v8 image];

  if (v9)
  {
    v10 = share_sheet_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 displayName];
      *buf = 138412290;
      v44 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Contact %@ is a donated suggestion, fetching from intents", buf, 0xCu);
    }

    v12 = [v8 conversationIdentifier];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [v8 derivedIntentIdentifier];
    }

    v15 = v14;

    v16 = [v8 image];
    v17 = [(SDSuggestionBrowser *)self helperConnection];
    v18 = sub_100090848(v16, v15, 0, v17);

    if (v18)
    {
      v19 = 0;
      goto LABEL_18;
    }

    v20 = share_sheet_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10011FDA4(v15, v8, v20);
    }
  }

  v21 = [v8 recipients];
  v22 = [v21 count];

  if (v22 < 2)
  {
    v34 = [SharingXPCHelperContactIcon alloc];
    v35 = [v8 recipients];
    v36 = [v35 firstObject];
    v37 = [v36 contact];
    v23 = [(SharingXPCHelperContactIcon *)v34 initWithContact:v37 iconData:0 atIndex:0 cacheLookupKey:0];

    v41 = v23;
    v38 = [NSArray arrayWithObjects:&v41 count:1];
    v39 = [(SDSuggestionBrowser *)self helperConnection];
    v30 = sub_100090A2C(v38, v39);

    v15 = [(SharingXPCHelperGroupContactIcon *)v30 firstObject];
  }

  else
  {
    v23 = [v8 contacts];
    v24 = [(SharingXPCHelperContactIcon *)v23 count];
    v25 = [v8 transientContactsCount];
    v26 = share_sheet_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v24 - v25;
      v28 = [v8 recipients];
      v29 = [v28 count];
      *buf = 134218240;
      v44 = v27;
      v45 = 2048;
      v46 = v29;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Received %ld out of %ld contacts from group recipients", buf, 0x16u);
    }

    v30 = [[SharingXPCHelperGroupContactIcon alloc] initWithContacts:v23 iconData:0 atIndex:0 cacheLookupKey:0];
    v42 = v30;
    v31 = [NSArray arrayWithObjects:&v42 count:1];
    v32 = [(SDSuggestionBrowser *)self helperConnection];
    v33 = sub_100090AA0(v31, v32);

    v15 = [v33 firstObject];
  }

  v19 = [v15 icon];
  v18 = [v15 iconData];
LABEL_18:

  *a4 = v19;
  v40 = v18;
  *a5 = v18;
}

- (void)_provideFeedbackForNodeAtIndex:(id)a3 bundleID:(id)a4 suggestion:(id)a5 selectedActionBundleID:(id)a6 abandoned:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [UIActivity _activityImageForActionRepresentationImage:0];
  [v16 size];
  v18 = v17;
  v19 = +[UIScreen mainScreen];
  [v19 bounds];
  v21 = v20;

  v22 = [(SDSuggestionBrowser *)self duetSuggestions];
  if (v7)
  {
    v23 = [sub_10011EC74() abandonment];
    goto LABEL_12;
  }

  if (!v12)
  {
    if (v14)
    {
      v27 = objc_alloc(sub_10011EC74());
      v28 = 0;
      v29 = v14;
    }

    else
    {
      if (v15)
      {
        v27 = objc_alloc(sub_10011EC74());
        v28 = 1;
        v29 = 0;
        v30 = v15;
        goto LABEL_11;
      }

      if (!v13)
      {
        goto LABEL_19;
      }

      v27 = objc_alloc(sub_10011EC74());
      v28 = 4;
      v29 = 0;
    }

    v30 = v13;
LABEL_11:
    v23 = [v27 initWithType:v28 suggestion:v29 transportBundleID:v30];
LABEL_12:
    v26 = v23;
    if (v23)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  v24 = objc_alloc(sub_10011EC74());
  v25 = [v22 objectAtIndexedSubscript:{objc_msgSend(v12, "unsignedIntValue")}];
  v26 = [v24 initWithType:0 suggestion:v25 transportBundleID:v13];

  if (v26)
  {
LABEL_13:
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10011ED54;
    v36[3] = &unk_1008D0ED0;
    v31 = v26;
    v37 = v31;
    v38 = self;
    v39 = v22;
    v40 = v21;
    v41 = v18 + 10.0;
    v32 = objc_retainBlock(v36);
    v33 = v32;
    if (v12 | v14)
    {
      (v32[2])(v32);
    }

    else
    {
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10011EEE8;
      v34[3] = &unk_1008D08E0;
      v35 = v32;
      dispatch_async(&_dispatch_main_q, v34);
    }

    goto LABEL_21;
  }

LABEL_19:
  v31 = share_sheet_log();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
  {
    sub_10011FE68();
  }

LABEL_21:
}

- (void)provideFeedbackForPeopleSuggestionIdentifier:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [(SDSuggestionBrowser *)self _peopleSuggestionForIdentifier:v4 outIndex:&v8];
  if (v5)
  {
    v6 = [NSNumber numberWithInteger:v8];
    v7 = [v5 transportBundleIdentifier];
    [(SDSuggestionBrowser *)self provideFeedbackForNodeAtIndex:v6 bundleID:v7 selectedActionBundleID:0 abandoned:0];
  }

  else
  {
    v6 = share_sheet_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10011FEA8();
    }
  }
}

- (void)provideFeedbackForPeopleSuggestionNodeIdentifier:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [(SDSuggestionBrowser *)self _peopleSuggestionNodeForNodeIdentifier:v4 outIndex:&v8];
  if (v5)
  {
    v6 = [NSNumber numberWithInteger:v8];
    v7 = [v5 bundleID];
    [(SDSuggestionBrowser *)self provideFeedbackForNodeAtIndex:v6 bundleID:v7 selectedActionBundleID:0 abandoned:0];
  }

  else
  {
    v6 = share_sheet_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10011FF18();
    }
  }
}

- (void)provideFeedbackForPeopleSuggestion:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleID];
  [(SDSuggestionBrowser *)self _provideFeedbackForNodeAtIndex:0 bundleID:v5 suggestion:v4 selectedActionBundleID:0 abandoned:0];
}

- (void)suggestLessPeopleSuggestionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SDSuggestionBrowser *)self peopleSuggestionNodes];
  v6 = [v5 mutableCopy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(SDSuggestionBrowser *)self peopleSuggestionNodes];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v12 identifier];
        v14 = [v13 isEqualToString:v4];

        if (v14)
        {
          [v6 removeObject:v12];
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(SDSuggestionBrowser *)self setPeopleSuggestionNodes:v6];
}

- (id)_peopleSuggestionForIdentifier:(id)a3 outIndex:(int64_t *)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10011F3E4;
  v19 = sub_10011F3F4;
  v20 = 0;
  v7 = [(SDSuggestionBrowser *)self peopleSuggestions];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10011F3FC;
  v11[3] = &unk_1008D0EF8;
  v8 = v6;
  v12 = v8;
  v13 = &v15;
  v14 = a4;
  [v7 enumerateObjectsUsingBlock:v11];

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

- (id)_peopleSuggestionNodeForNodeIdentifier:(id)a3 outIndex:(int64_t *)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10011F3E4;
  v19 = sub_10011F3F4;
  v20 = 0;
  v7 = [(SDSuggestionBrowser *)self peopleSuggestionNodes];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10011F5EC;
  v11[3] = &unk_1008D0F20;
  v8 = v6;
  v12 = v8;
  v13 = &v15;
  v14 = a4;
  [v7 enumerateObjectsUsingBlock:v11];

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

- (SDSuggestionBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SDXPCHelperConnection)helperConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_helperConnection);

  return WeakRetained;
}

@end