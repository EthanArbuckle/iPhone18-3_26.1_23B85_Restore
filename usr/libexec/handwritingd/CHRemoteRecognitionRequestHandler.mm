@interface CHRemoteRecognitionRequestHandler
+ (id)_maxStrokeLimitErrorWithInputDrawingStrokeCount:(int64_t)count;
- (BOOL)isValidRemoteRequest:(id)request bundleIdentifier:(id)identifier error:(id *)error;
- (CHRemoteRecognitionRequestHandler)initWithServerQueue:(id)queue lowPriorityQueue:(id)priorityQueue highPriorityQueue:(id)highPriorityQueue;
- (id)_buildMultiLingualResultForRequest:(id)request recognitionLocales:(id)locales recognizersByLocale:(id)locale statisticsByLocale:(id)byLocale outPrincipalLineResult:(id *)result;
- (id)_computeTextRecognitionResultsForRequest:(id)request recognizer:(id)recognizer recognizerCachingKey:(id)key isTopLocale:(BOOL)locale writingStatistics:(id)statistics outPrincipalPoints:(id *)points;
- (id)_queueForRequest:(id)request;
- (id)generateRecognitionOptionsFromRequest:(id)request isTopLocale:(BOOL)locale cachedPrefixResult:(id)result cachedPrefixColumnRangeToKeep:(_NSRange)keep;
- (id)retrievePartialResultsForDrawing:(id)drawing recognitionEngineCachingKey:(id)key matchingColumnRangeToKeep:(_NSRange *)keep strokesToRecognize:(id *)recognize;
- (void)_handleValidRecognitionMathRequest:(id)request withReply:(id)reply;
- (void)_handleValidRecognitionRequest:(id)request withReply:(id)reply;
- (void)_handleValidRecognitionTextRequest:(id)request withReply:(id)reply;
- (void)_handleValidSketchRecognitionRequest:(id)request withReply:(id)reply;
- (void)dealloc;
- (void)handleRequest:(id)request withReply:(id)reply bundleIdentifier:(id)identifier;
- (void)handleSketchRequest:(id)request withReply:(id)reply bundleIdentifier:(id)identifier;
- (void)optimizeResourceUsage;
- (void)transcriptionPathsForTokenizedTextResult:(id)result recognitionRequest:(id)request withReply:(id)reply bundleIdentifier:(id)identifier;
@end

@implementation CHRemoteRecognitionRequestHandler

- (CHRemoteRecognitionRequestHandler)initWithServerQueue:(id)queue lowPriorityQueue:(id)priorityQueue highPriorityQueue:(id)highPriorityQueue
{
  queueCopy = queue;
  priorityQueueCopy = priorityQueue;
  highPriorityQueueCopy = highPriorityQueue;
  v19.receiver = self;
  v19.super_class = CHRemoteRecognitionRequestHandler;
  v11 = [(CHRemoteProcessingRequestHandler *)&v19 initWithServerQueue:queueCopy lowPriorityQueue:priorityQueueCopy highPriorityQueue:highPriorityQueueCopy];
  if (v11)
  {
    v12 = objc_opt_new();
    recognizerManager = v11->_recognizerManager;
    v11->_recognizerManager = v12;

    v14 = objc_opt_new();
    recognizerInferenceCache = v11->_recognizerInferenceCache;
    v11->_recognizerInferenceCache = v14;

    v16 = objc_opt_new();
    recognizerResultsCache = v11->_recognizerResultsCache;
    v11->_recognizerResultsCache = v16;

    v11->_openRequestCount = 0;
  }

  return v11;
}

- (void)dealloc
{
  recognizerManager = self->_recognizerManager;
  self->_recognizerManager = 0;

  lexiconManager = self->_lexiconManager;
  self->_lexiconManager = 0;

  recognizerInferenceCache = self->_recognizerInferenceCache;
  self->_recognizerInferenceCache = 0;

  v6.receiver = self;
  v6.super_class = CHRemoteRecognitionRequestHandler;
  [(CHRemoteRecognitionRequestHandler *)&v6 dealloc];
}

- (id)_queueForRequest:(id)request
{
  requestCopy = request;
  priority = [requestCopy priority];
  if (!priority)
  {
    goto LABEL_4;
  }

  if (priority == 1)
  {
    highPriorityQueue = [(CHRemoteProcessingRequestHandler *)self highPriorityQueue];
    goto LABEL_6;
  }

  if (priority == 2)
  {
LABEL_4:
    highPriorityQueue = [(CHRemoteProcessingRequestHandler *)self lowPriorityQueue];
LABEL_6:
    v7 = highPriorityQueue;
    goto LABEL_12;
  }

  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v8 = qword_10002ACC8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid recognition request priority specified", v10, 2u);
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (void)handleRequest:(id)request withReply:(id)reply bundleIdentifier:(id)identifier
{
  requestCopy = request;
  replyCopy = reply;
  identifierCopy = identifier;
  serverQueue = [(CHRemoteBasicRequestHandler *)self serverQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000C084;
  v15[3] = &unk_100024BB0;
  v15[4] = self;
  v16 = requestCopy;
  v17 = identifierCopy;
  v18 = replyCopy;
  v12 = replyCopy;
  v13 = identifierCopy;
  v14 = requestCopy;
  dispatch_sync(serverQueue, v15);
}

+ (id)_maxStrokeLimitErrorWithInputDrawingStrokeCount:(int64_t)count
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"The number of strokes in the input drawing exceeds the maximum number permitted for remote recognition (%ld strokes)" value:&stru_100025778 table:0];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Remote recognition cannot handle the input drawing (%ld strokes) because its stroke count exceeds the limit" value:&stru_100025778 table:0];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Submit drawings that do not exceed the stroke limit of remote recognition" value:&stru_100025778 table:0];

  v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v5, [objc_opt_class() absoluteMaxStrokeCountPerRequest], NSLocalizedDescriptionKey);
  v16[0] = v10;
  v15[1] = NSLocalizedFailureReasonErrorKey;
  v11 = [NSString stringWithFormat:v7, count];
  v15[2] = NSLocalizedRecoverySuggestionErrorKey;
  v16[1] = v11;
  v16[2] = v9;
  v12 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = [NSError errorWithDomain:@"com.apple.corehandwriting" code:-1000 userInfo:v12];

  return v13;
}

- (BOOL)isValidRemoteRequest:(id)request bundleIdentifier:(id)identifier error:(id *)error
{
  requestCopy = request;
  lowercaseString = [identifier lowercaseString];
  v9 = [lowercaseString isEqualToString:@"com.apple.compose"];

  if (requestCopy)
  {
    drawing = [requestCopy drawing];

    if (drawing)
    {
      drawing2 = [requestCopy drawing];
      strokeCount = [drawing2 strokeCount];

      if (strokeCount)
      {
        if ((v9 & 1) != 0 || ([requestCopy drawing], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "strokeCount"), v15 = objc_msgSend(objc_opt_class(), "absoluteMaxStrokeCountPerRequest"), v13, v14 <= v15))
        {
          v18 = 0;
          v19 = 1;
          if (!error)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v16 = objc_opt_class();
          drawing3 = [requestCopy drawing];
          v18 = [v16 _maxStrokeLimitErrorWithInputDrawingStrokeCount:{objc_msgSend(drawing3, "strokeCount")}];

          v19 = 0;
          if (!error)
          {
            goto LABEL_15;
          }
        }

        goto LABEL_14;
      }

      v30 = +[NSBundle mainBundle];
      v21 = [v30 localizedStringForKey:@"The input drawing is empty (contains no strokes)" value:&stru_100025778 table:0];

      v31 = +[NSBundle mainBundle];
      v23 = [v31 localizedStringForKey:@"Recognition cannot be performed on empty drawings" value:&stru_100025778 table:0];

      v32 = +[NSBundle mainBundle];
      v25 = [v32 localizedStringForKey:@"Submit drawings containing at least one stroke for recognition" value:&stru_100025778 table:0];

      v26 = [objc_opt_class() invalidInputErrorWithDescription:v21 failureReason:v23 recoverySuggestion:v25 errorCode:-1001];
    }

    else
    {
      v27 = +[NSBundle mainBundle];
      v21 = [v27 localizedStringForKey:@"The input drawing is invalid" value:&stru_100025778 table:0];

      v28 = +[NSBundle mainBundle];
      v23 = [v28 localizedStringForKey:@"Remote recognition cannot handle empty input drawings" value:&stru_100025778 table:0];

      v29 = +[NSBundle mainBundle];
      v25 = [v29 localizedStringForKey:@"Submit valid drawings with one or more strokes for recognition" value:&stru_100025778 table:0];

      v26 = [objc_opt_class() invalidInputErrorWithDescription:v21 failureReason:v23 recoverySuggestion:v25 errorCode:-1001];
    }
  }

  else
  {
    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"The recognition request is invalid" value:&stru_100025778 table:0];

    v22 = +[NSBundle mainBundle];
    v23 = [v22 localizedStringForKey:@"Remote recognition cannot process an empty recognition request" value:&stru_100025778 table:0];

    v24 = +[NSBundle mainBundle];
    v25 = [v24 localizedStringForKey:@"Submit a new valid recognition request" value:&stru_100025778 table:0];

    v26 = [objc_opt_class() invalidInputErrorWithDescription:v21 failureReason:v23 recoverySuggestion:v25 errorCode:-1002];
  }

  v18 = v26;

  v19 = 0;
  if (error)
  {
LABEL_14:
    v33 = v18;
    *error = v18;
  }

LABEL_15:

  return v19;
}

- (id)_buildMultiLingualResultForRequest:(id)request recognitionLocales:(id)locales recognizersByLocale:(id)locale statisticsByLocale:(id)byLocale outPrincipalLineResult:(id *)result
{
  requestCopy = request;
  localesCopy = locales;
  localeCopy = locale;
  byLocaleCopy = byLocale;
  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v10 = qword_10002ACE0;
  spid = os_signpost_id_generate(v10);

  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v11 = qword_10002ACE0;
  v12 = v11;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CHRemoteRecognitionServerComputeMultilocaleResult", "", buf, 2u);
  }

  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v13 = qword_10002ACA8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "BEGIN CHRemoteRecognitionServerComputeMultilocaleResult", buf, 2u);
  }

  v75 = +[NSMutableArray array];
  options = [requestCopy options];
  v83 = [CHRecognizer inputLocalesFromRecognitionOptions:options];

  lexiconManager = self->_lexiconManager;
  customLexiconEntries = [requestCopy customLexiconEntries];
  v77 = [(CHInputContextLexiconManager *)lexiconManager transientLexiconWithCustomEntries:customLexiconEntries];

  v74 = +[NSMutableArray array];
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = localesCopy;
  v17 = [obj countByEnumeratingWithState:&v98 objects:v108 count:16];
  if (v17)
  {
    v84 = 0;
    v78 = 0;
    v79 = *v99;
    v18 = 1;
    while (2)
    {
      v80 = v17;
      for (i = 0; i != v80; i = i + 1)
      {
        if (*v99 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v98 + 1) + 8 * i);
        v21 = [localeCopy objectForKeyedSubscript:v20];
        v22 = [byLocaleCopy objectForKeyedSubscript:v20];
        if (v18)
        {
          recognitionEngineCachingKey = [v21 recognitionEngineCachingKey];
          v24 = [CHRecognizerConfiguration cachingKeyFromRelevantLocales:v83 forLocale:v20];
          v25 = [NSString stringWithFormat:@"%@_%@", recognitionEngineCachingKey, v24];

          v84 = v25;
        }

        if (v18 & 1 | ((+[CHRecognizerConfiguration isSupportedLatinScriptLocale:withMode:](CHRecognizerConfiguration, "isSupportedLatinScriptLocale:withMode:", v20, [requestCopy recognitionMode]) & 1) == 0))
        {
          goto LABEL_21;
        }

        recognizerInferenceCache = self->_recognizerInferenceCache;
        drawing = [requestCopy drawing];
        v28 = [(CHRecognizerInferenceCache *)recognizerInferenceCache retrieveActivationMatrixForDrawing:drawing recognitionEngineCachingKey:v84 outStrokeIndexMapping:0 outStrokeEndings:0 outPrincipalPoints:0];

        unlikelyHasLatinContents = [v28 unlikelyHasLatinContents];
        if ((unlikelyHasLatinContents & 1) == 0)
        {
LABEL_21:
          transientPhraseLexicon = [(CHInputContextLexiconManager *)self->_lexiconManager transientPhraseLexicon];
          vocabulary = [(CHInputContextLexiconManager *)self->_lexiconManager vocabulary];
          textReplacements = [(CHInputContextLexiconManager *)self->_lexiconManager textReplacements];
          addressBookLexicon = [(CHInputContextLexiconManager *)self->_lexiconManager addressBookLexicon];
          [CHCachedRecognizerManager configureRecognizer:v21 forRequest:requestCopy locale:v20 transientLexicon:v77 transientPhraseLexicon:transientPhraseLexicon vocabulary:vocabulary textReplacements:textReplacements addressBookLexicon:addressBookLexicon];

          v34 = [requestCopy recognizerConfigurationKeyWithLocale:v20];
          v35 = [CHRecognizerConfiguration cachingKeyFromRelevantLocales:v83 forLocale:v20];
          v36 = [NSString stringWithFormat:@"%@_%@", v34, v35];

          v97 = 0;
          v37 = [(CHRemoteRecognitionRequestHandler *)self _computeTextRecognitionResultsForRequest:requestCopy recognizer:v21 recognizerCachingKey:v36 isTopLocale:v18 & 1 writingStatistics:v22 outPrincipalPoints:&v97];
          v38 = v97;
          v39 = [CHTokenizedTextResult resultRestoringRawPathInResult:v37];

          if (v39)
          {
            [v75 addObject:v39];
            [v74 addObject:v20];
          }

          if ([v39 isMinimalDrawingResult])
          {

            v40 = 1;
            goto LABEL_33;
          }

          if (v38 && !v78)
          {
            v78 = v38;
          }
        }

        v18 = 0;
      }

      v17 = [obj countByEnumeratingWithState:&v98 objects:v108 count:16];
      v18 = 0;
      v40 = 0;
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v40 = 0;
    v84 = 0;
    v78 = 0;
  }

LABEL_33:

  if ([v75 count] && objc_msgSend(v74, "count"))
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v41 = qword_10002ACE0;
    v42 = v41;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, OS_SIGNPOST_INTERVAL_END, spid, "CHRemoteRecognitionServerComputeMultilocaleResult", "", buf, 2u);
    }

    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v43 = qword_10002ACA8;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "END CHRemoteRecognitionServerComputeMultilocaleResult", buf, 2u);
    }

    if (v40)
    {
      firstObject = [v75 firstObject];
LABEL_94:
      if (result && v78)
      {
        v69 = v78;
        *result = v78;
      }

      goto LABEL_97;
    }

    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v49 = qword_10002ACE0;
    v50 = os_signpost_id_generate(v49);

    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v51 = qword_10002ACE0;
    v52 = v51;
    v53 = v50 - 1;
    if (v50 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v52, OS_SIGNPOST_INTERVAL_BEGIN, v50, "CHRemoteRecognitionServerPostprocessingBlock", "", buf, 2u);
    }

    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v54 = qword_10002ACA8;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "BEGIN CHRemoteRecognitionServerPostprocessingBlock", buf, 2u);
    }

    v92[0] = _NSConcreteStackBlock;
    v92[1] = 3221225472;
    v92[2] = sub_10000D9B4;
    v92[3] = &unk_100024B60;
    v55 = localeCopy;
    v93 = v55;
    v56 = requestCopy;
    v94 = v56;
    selfCopy = self;
    v96 = v77;
    v57 = objc_retainBlock(v92);
    if (qword_10002AD20 == -1)
    {
      v58 = qword_10002ACE0;
      if (v53 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_70;
      }
    }

    else
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
      v58 = qword_10002ACE0;
      if (v53 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_70;
      }
    }

    if (os_signpost_enabled(v58))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v58, OS_SIGNPOST_INTERVAL_END, v50, "CHRemoteRecognitionServerPostprocessingBlock", "", buf, 2u);
    }

LABEL_70:

    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v59 = qword_10002ACA8;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "END CHRemoteRecognitionServerPostprocessingBlock", buf, 2u);
    }

    v87[0] = _NSConcreteStackBlock;
    v87[1] = 3221225472;
    v87[2] = sub_10000DB7C;
    v87[3] = &unk_100024B60;
    v88 = v55;
    v89 = v56;
    selfCopy2 = self;
    v91 = v77;
    v60 = objc_retainBlock(v87);
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v61 = qword_10002ACE0;
    v62 = os_signpost_id_generate(v61);

    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v63 = qword_10002ACE0;
    v64 = v63;
    v65 = v62 - 1;
    if (v62 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v63))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v64, OS_SIGNPOST_INTERVAL_BEGIN, v62, "CHRemoteRecognitionServerMergingBlock", "", buf, 2u);
    }

    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v66 = qword_10002ACA8;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "BEGIN CHRemoteRecognitionServerMergingBlock", buf, 2u);
    }

    firstObject = [CHMultiLocaleResultProcessor combineMultiLocaleResults:v75 locales:v74 topLocaleIndex:0 mergedResultPostprocessingBlock:v57 changeableColumnCountBlock:v60];
    if (qword_10002AD20 == -1)
    {
      v67 = qword_10002ACE0;
      if (v65 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_87;
      }
    }

    else
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
      v67 = qword_10002ACE0;
      if (v65 <= 0xFFFFFFFFFFFFFFFDLL)
      {
LABEL_87:
        if (os_signpost_enabled(v67))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v67, OS_SIGNPOST_INTERVAL_END, v62, "CHRemoteRecognitionServerMergingBlock", "", buf, 2u);
        }
      }
    }

    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v68 = qword_10002ACA8;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "END CHRemoteRecognitionServerMergingBlock", buf, 2u);
    }

    goto LABEL_94;
  }

  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v45 = qword_10002ACA8;
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    v46 = [v75 count];
    *buf = 138412802;
    v103 = obj;
    v104 = 2112;
    v105 = v74;
    v106 = 2048;
    v107 = v46;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Unexpected empty array with original Recognition Locales = %@, recognitionLocalesWithResults = %@, resultsByLocaleCount = %ld", buf, 0x20u);
  }

  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v47 = qword_10002ACA8;
  if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
  {
    v48 = [v75 count];
    *buf = 138412802;
    v103 = obj;
    v104 = 2112;
    v105 = v74;
    v106 = 2048;
    v107 = v48;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_FAULT, "Unexpected empty array with original Recognition Locales = %@, recognitionLocalesWithResults = %@, resultsByLocaleCount = %ld", buf, 0x20u);
  }

  firstObject = 0;
LABEL_97:

  return firstObject;
}

- (void)_handleValidRecognitionRequest:(id)request withReply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CHRemoteRecognitionRequestHandler *)self _handleValidRecognitionMathRequest:requestCopy withReply:replyCopy];
      goto LABEL_15;
    }

    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v10 = qword_10002ACA8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Invalid recognition request class", buf, 2u);
    }

    if (qword_10002AD20 == -1)
    {
      v11 = qword_10002ACA8;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
      v11 = qword_10002ACA8;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_14;
      }
    }

    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Invalid recognition request class", v12, 2u);
    goto LABEL_14;
  }

  if (!self->_lexiconManager)
  {
    v8 = objc_alloc_init(CHInputContextLexiconManager);
    lexiconManager = self->_lexiconManager;
    self->_lexiconManager = v8;
  }

  [(CHRemoteRecognitionRequestHandler *)self _handleValidRecognitionTextRequest:requestCopy withReply:replyCopy];
LABEL_15:
}

- (void)_handleValidRecognitionTextRequest:(id)request withReply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v7 = objc_opt_class();
  locales = [requestCopy locales];
  v25 = [v7 effectiveRecognitionLocales:locales recognitionMode:{objc_msgSend(requestCopy, "recognitionMode")}];

  v27 = +[NSMutableDictionary dictionary];
  v9 = +[NSMutableDictionary dictionary];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v25;
  v10 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v10)
  {
    v11 = *v36;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        replyCopy = [(CHCachedRecognizerManager *)self->_recognizerManager checkOutRecognizerForTextRequest:requestCopy locale:v13, replyCopy];
        [v27 setObject:replyCopy forKeyedSubscript:v13];
        v15 = [(CHCachedRecognizerManager *)self->_recognizerManager writingStatsForRequest:requestCopy locale:v13];
        [v9 setObject:v15 forKeyedSubscript:v13];
      }

      v10 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v10);
  }

  [(CHRemoteBasicRequestHandler *)self setDirty];
  ++self->_openRequestCount;
  v16 = [(CHRemoteRecognitionRequestHandler *)self _queueForRequest:requestCopy];
  if (!v16)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v17 = qword_10002ACA8;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "A valid queue is required to run recognition", buf, 2u);
    }

    if (qword_10002AD20 == -1)
    {
      v18 = qword_10002ACA8;
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
      v18 = qword_10002ACA8;
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_16;
      }
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "A valid queue is required to run recognition", buf, 2u);
    goto LABEL_16;
  }

LABEL_17:
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E390;
  block[3] = &unk_100024B88;
  block[4] = self;
  v29 = requestCopy;
  v30 = obj;
  v31 = v27;
  v32 = v9;
  v33 = replyCopy;
  v19 = replyCopy;
  v20 = v9;
  v21 = v27;
  v22 = obj;
  v23 = requestCopy;
  dispatch_async(v16, block);
}

- (void)_handleValidRecognitionMathRequest:(id)request withReply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v8 = [(CHCachedRecognizerManager *)self->_recognizerManager checkOutRecognizerForMathRequest:requestCopy];
  [(CHRemoteBasicRequestHandler *)self setDirty];
  ++self->_openRequestCount;
  v9 = [(CHRemoteRecognitionRequestHandler *)self _queueForRequest:requestCopy];
  if (!v9)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v10 = qword_10002ACA8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "A valid queue is required to run recognition", buf, 2u);
    }

    if (qword_10002AD20 == -1)
    {
      v11 = qword_10002ACA8;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
      v11 = qword_10002ACA8;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "A valid queue is required to run recognition", buf, 2u);
    goto LABEL_9;
  }

LABEL_10:
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000E948;
  v15[3] = &unk_100024BB0;
  v16 = v8;
  v17 = requestCopy;
  selfCopy = self;
  v19 = replyCopy;
  v12 = replyCopy;
  v13 = requestCopy;
  v14 = v8;
  dispatch_async(v9, v15);
}

- (id)retrievePartialResultsForDrawing:(id)drawing recognitionEngineCachingKey:(id)key matchingColumnRangeToKeep:(_NSRange *)keep strokesToRecognize:(id *)recognize
{
  recognizeCopy = recognize;
  drawingCopy = drawing;
  keyCopy = key;
  v10 = +[NSMutableIndexSet indexSetWithIndexesInRange:](NSMutableIndexSet, "indexSetWithIndexesInRange:", 0, [drawingCopy strokeCount]);
  v35 = xmmword_100019880;
  v11 = [(CHRecognizerResultCache *)self->_recognizerResultsCache retrievePartialResultsForDrawing:drawingCopy recognitionEngineCachingKey:keyCopy matchingColumnRange:&v35];
  v12 = *(&v35 + 1);
  if (v12 <= [v11 tokenColumnCount])
  {
    strokeIndexes = [v11 strokeIndexes];
    v14 = [strokeIndexes count];
    strokeCount = [drawingCopy strokeCount];

    if (v14 < strokeCount)
    {
      v16 = fmin([v11 tokenColumnCount], 2.0);
      if (v16 < 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = 0;
        v18 = 0;
        v19 = 1;
        while (1)
        {
          tokenColumns = [v11 tokenColumns];
          v21 = [tokenColumns objectAtIndexedSubscript:{objc_msgSend(v11, "tokenColumnCount") - v19}];

          strokeIndexes2 = [v21 strokeIndexes];
          v18 += [strokeIndexes2 count];

          if (v18 >= 21)
          {
            break;
          }

          ++v17;
          ++v19;
          if (v17 == v16)
          {
            v17 = v16;
            break;
          }
        }
      }

      v12 = fmax((*(&v35 + 1) - v17), 0.0);
    }
  }

  if (v12 >= 1)
  {
    for (i = 0; i != v12; ++i)
    {
      tokenColumns2 = [v11 tokenColumns];
      v25 = [tokenColumns2 objectAtIndexedSubscript:i];
      strokeIndexes3 = [v25 strokeIndexes];
      [v10 removeIndexes:strokeIndexes3];
    }
  }

  if ([v10 count])
  {
    v27 = [v10 count];
    lastIndex = [v10 lastIndex];
    if (v27 != (lastIndex - [v10 firstIndex] + 1))
    {
      v29 = +[NSMutableIndexSet indexSetWithIndexesInRange:](NSMutableIndexSet, "indexSetWithIndexesInRange:", 0, [drawingCopy strokeCount]);

      v11 = 0;
      v10 = v29;
    }
  }

  if (v33)
  {
    v30 = v10;
    *v33 = v10;
  }

  if (keep)
  {
    keep->location = 0;
    keep->length = v12;
  }

  return v11;
}

- (id)_computeTextRecognitionResultsForRequest:(id)request recognizer:(id)recognizer recognizerCachingKey:(id)key isTopLocale:(BOOL)locale writingStatistics:(id)statistics outPrincipalPoints:(id *)points
{
  localeCopy = locale;
  requestCopy = request;
  recognizerCopy = recognizer;
  keyCopy = key;
  statisticsCopy = statistics;
  drawing = [requestCopy drawing];
  v32 = localeCopy;
  v14 = +[NSMutableIndexSet indexSetWithIndexesInRange:](NSMutableIndexSet, "indexSetWithIndexesInRange:", 0, [drawing strokeCount]);

  v42 = xmmword_100019880;
  drawing2 = [requestCopy drawing];
  if ([requestCopy enableStrokeReordering])
  {
    v41 = 0;
    v16 = [drawing2 sortedDrawingUsingStrokeMidPoint:&v41];
    v17 = v41;

    drawing2 = v16;
  }

  else
  {
    v17 = 0;
  }

  if ([requestCopy enableCachingIfAvailable])
  {
    v40 = v14;
    v18 = [(CHRemoteRecognitionRequestHandler *)self retrievePartialResultsForDrawing:drawing2 recognitionEngineCachingKey:keyCopy matchingColumnRangeToKeep:&v42 strokesToRecognize:&v40];
    v19 = v40;

    if ([v19 firstIndex] == 0x7FFFFFFFFFFFFFFFLL)
    {
      firstIndex = 0;
    }

    else
    {
      firstIndex = [v19 firstIndex];
    }

    v21 = v18;
    v14 = v19;
  }

  else
  {
    v21 = 0;
    firstIndex = 0;
  }

  if ([v14 count])
  {
    v34 = [drawing2 drawingWithStrokesFromIndexSet:v14];
    v33 = [(CHRemoteRecognitionRequestHandler *)self generateRecognitionOptionsFromRequest:requestCopy isTopLocale:v32 cachedPrefixResult:v21 cachedPrefixColumnRangeToKeep:v42];
    v22 = [recognizerCopy textRecognitionResultForDrawing:v34 options:? writingStatistics:? principalPoints:? shouldCancel:?];
    v23 = 0;
    v24 = [v22 mutableCopy];

    if (firstIndex >= 1)
    {
      [v24 offsetAllStrokeIndexesBy:firstIndex];
    }

    if ([requestCopy enableCachingIfAvailable])
    {
      [v24 adjustColumns];
    }

    if (v21)
    {
      tokenColumns = [v21 tokenColumns];
      v26 = [tokenColumns subarrayWithRange:v42];

      transcriptionPaths = [v21 transcriptionPaths];
      v28 = [transcriptionPaths objectAtIndexedSubscript:0];
      [v24 prependTokenColumns:v26 prefixTopPath:v28];

      tokenColumnCount = [v24 tokenColumnCount];
      [v24 setChangeableTokenColumnCount:&tokenColumnCount[-*(&v42 + 1)]];
    }
  }

  else
  {
    v23 = 0;
    v24 = [v21 subResultWithColumnRange:v42];
  }

  if ([requestCopy enableCachingIfAvailable])
  {
    [(CHRecognizerResultCache *)self->_recognizerResultsCache cacheTextResult:v24 drawing:drawing2 recognitionEngineCachingKey:keyCopy];
  }

  if (v17)
  {
    [v24 remapAllStrokeIndexesWithArray:v17];
  }

  if (points && v23)
  {
    v30 = v23;
    *points = v23;
  }

  return v24;
}

- (id)generateRecognitionOptionsFromRequest:(id)request isTopLocale:(BOOL)locale cachedPrefixResult:(id)result cachedPrefixColumnRangeToKeep:(_NSRange)keep
{
  length = keep.length;
  location = keep.location;
  localeCopy = locale;
  resultCopy = result;
  options = [request options];
  v13 = [NSMutableDictionary dictionaryWithDictionary:options];

  [v13 setObject:self->_recognizerInferenceCache forKeyedSubscript:CHRecognitionOptionInferenceCache];
  v14 = [NSNumber numberWithBool:!localeCopy];
  [v13 setObject:v14 forKeyedSubscript:CHRecognitionOptionIsRunningSecondaryLocale];

  if (resultCopy && length)
  {
    v15 = [v13 objectForKeyedSubscript:CHRecognitionOptionTextBefore];
    if (v15)
    {
      v16 = [v13 objectForKeyedSubscript:CHRecognitionOptionTextBefore];
    }

    else
    {
      v16 = &stru_100025778;
    }

    transcriptionPaths = [resultCopy transcriptionPaths];
    v18 = [transcriptionPaths objectAtIndexedSubscript:0];
    v19 = [resultCopy transcriptionWithPath:v18 columnRange:location filterLowConfidence:{length, 0}];

    precedingSeparatorForTopTranscriptionPath = [resultCopy precedingSeparatorForTopTranscriptionPath];
    v21 = [(__CFString *)v16 stringByAppendingFormat:@"%@%@", precedingSeparatorForTopTranscriptionPath, v19];
    [v13 setObject:v21 forKeyedSubscript:CHRecognitionOptionTextBefore];
  }

  allKeys = [v13 allKeys];
  v23 = [allKeys containsObject:CHRecognitionOptionPrecedingSpaceBehavior];

  if ((v23 & 1) == 0)
  {
    [v13 setObject:&off_100025F18 forKeyedSubscript:CHRecognitionOptionPrecedingSpaceBehavior];
  }

  return v13;
}

- (void)transcriptionPathsForTokenizedTextResult:(id)result recognitionRequest:(id)request withReply:(id)reply bundleIdentifier:(id)identifier
{
  resultCopy = result;
  requestCopy = request;
  replyCopy = reply;
  identifierCopy = identifier;
  v14 = [(CHRemoteRecognitionRequestHandler *)self _queueForRequest:requestCopy];
  if (!v14)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v15 = qword_10002ACA8;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "A valid queue is required for building transcription paths", buf, 2u);
    }

    if (qword_10002AD20 == -1)
    {
      v16 = qword_10002ACA8;
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
      v16 = qword_10002ACA8;
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "A valid queue is required for building transcription paths", buf, 2u);
    goto LABEL_9;
  }

LABEL_10:
  serverQueue = [(CHRemoteBasicRequestHandler *)self serverQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000FB94;
  v23[3] = &unk_100024B88;
  v23[4] = self;
  v24 = requestCopy;
  v25 = identifierCopy;
  v26 = v14;
  v27 = resultCopy;
  v28 = replyCopy;
  v18 = replyCopy;
  v19 = resultCopy;
  v20 = v14;
  v21 = identifierCopy;
  v22 = requestCopy;
  dispatch_sync(serverQueue, v23);
}

- (void)handleSketchRequest:(id)request withReply:(id)reply bundleIdentifier:(id)identifier
{
  requestCopy = request;
  replyCopy = reply;
  identifierCopy = identifier;
  serverQueue = [(CHRemoteBasicRequestHandler *)self serverQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000101C8;
  v15[3] = &unk_100024BB0;
  v15[4] = self;
  v16 = requestCopy;
  v17 = identifierCopy;
  v18 = replyCopy;
  v12 = replyCopy;
  v13 = identifierCopy;
  v14 = requestCopy;
  dispatch_sync(serverQueue, v15);
}

- (void)_handleValidSketchRecognitionRequest:(id)request withReply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v8 = [(CHCachedRecognizerManager *)self->_recognizerManager checkOutRecognizerForSketchRequest:requestCopy];
  [(CHRemoteBasicRequestHandler *)self setDirty];
  v9 = [(CHRemoteRecognitionRequestHandler *)self _queueForRequest:requestCopy];
  if (!v9)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v10 = qword_10002ACA8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "A valid queue is required to run recognition", buf, 2u);
    }

    if (qword_10002AD20 == -1)
    {
      v11 = qword_10002ACA8;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
      v11 = qword_10002ACA8;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "A valid queue is required to run recognition", buf, 2u);
    goto LABEL_9;
  }

LABEL_10:
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000104A8;
  v15[3] = &unk_100024BB0;
  v16 = v8;
  v17 = requestCopy;
  selfCopy = self;
  v19 = replyCopy;
  v12 = replyCopy;
  v13 = requestCopy;
  v14 = v8;
  dispatch_async(v9, v15);
}

- (void)optimizeResourceUsage
{
  serverQueue = [(CHRemoteBasicRequestHandler *)self serverQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000108A4;
  block[3] = &unk_100024AA0;
  block[4] = self;
  dispatch_async(serverQueue, block);
}

@end