@interface CHCachedRecognizerManager
+ (void)configureRecognizer:(id)recognizer forRequest:(id)request locale:(id)locale;
+ (void)configureRecognizer:(id)recognizer forRequest:(id)request locale:(id)locale transientLexicon:(_LXLexicon *)lexicon transientPhraseLexicon:(_LXLexicon *)phraseLexicon vocabulary:(void *)vocabulary textReplacements:(id)replacements addressBookLexicon:(id)self0;
- (CHCachedRecognizerManager)init;
- (id)_recognizerConfigurationKeyForRequest:(id)request locale:(id)locale;
- (id)_recognizerWrapperForRequest:(id)request locale:(id)locale;
- (id)checkOutRecognizerForMathRequest:(id)request;
- (id)checkOutRecognizerForSketchRequest:(id)request;
- (id)checkOutRecognizerForTextRequest:(id)request locale:(id)locale;
- (id)writingStatsForRequest:(id)request locale:(id)locale;
- (void)_cleanupCachedRecognizersTargetLifetime:(id)lifetime;
- (void)checkInRecognizerForRequest:(id)request locale:(id)locale onQueue:(id)queue idleCallbackBlock:(id)block;
- (void)optimizeResourceUsageWithTimeout:(double)timeout onQueue:(id)queue idleCallbackBlock:(id)block;
@end

@implementation CHCachedRecognizerManager

- (CHCachedRecognizerManager)init
{
  v10.receiver = self;
  v10.super_class = CHCachedRecognizerManager;
  v2 = [(CHCachedRecognizerManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    cachedRecognizersByConfigurationKey = v2->_cachedRecognizersByConfigurationKey;
    v2->_cachedRecognizersByConfigurationKey = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    writingStatsByConfigurationKey = v2->_writingStatsByConfigurationKey;
    v2->_writingStatsByConfigurationKey = v5;

    v7 = objc_opt_new();
    powerLogger = v2->_powerLogger;
    v2->_powerLogger = v7;
  }

  return v2;
}

- (id)checkOutRecognizerForTextRequest:(id)request locale:(id)locale
{
  v4 = [(CHCachedRecognizerManager *)self _recognizerWrapperForRequest:request locale:locale];
  checkOutRecognizer = [v4 checkOutRecognizer];

  return checkOutRecognizer;
}

- (id)checkOutRecognizerForMathRequest:(id)request
{
  v3 = [(CHCachedRecognizerManager *)self _recognizerWrapperForRequest:request locale:0];
  checkOutRecognizer = [v3 checkOutRecognizer];

  return checkOutRecognizer;
}

- (id)checkOutRecognizerForSketchRequest:(id)request
{
  v3 = [(CHCachedRecognizerManager *)self _recognizerWrapperForRequest:request locale:0];
  checkOutRecognizer = [v3 checkOutRecognizer];

  return checkOutRecognizer;
}

- (void)checkInRecognizerForRequest:(id)request locale:(id)locale onQueue:(id)queue idleCallbackBlock:(id)block
{
  requestCopy = request;
  localeCopy = locale;
  queueCopy = queue;
  blockCopy = block;
  v14 = [(CHCachedRecognizerManager *)self _recognizerWrapperForRequest:requestCopy locale:localeCopy];
  [v14 checkInRecognizer];
  [v14 targetIdleLifetime];
  v16 = dispatch_time(0, (v15 * 1000000000.0));
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_100005878;
  v24 = &unk_100024980;
  selfCopy = self;
  v17 = blockCopy;
  v26 = v17;
  dispatch_after(v16, queueCopy, &v21);
  selfCopy = [(CHCachedRecognizerManager *)self _recognizerConfigurationKeyForRequest:requestCopy locale:localeCopy, v21, v22, v23, v24, selfCopy];
  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v19 = qword_10002ACC8;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    activeRequestCount = [v14 activeRequestCount];
    *buf = 138412546;
    v28 = selfCopy;
    v29 = 2048;
    v30 = activeRequestCount;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Finished request for recognizer %@. Remaining processing requests: %li", buf, 0x16u);
  }
}

- (id)writingStatsForRequest:(id)request locale:(id)locale
{
  v5 = [(CHCachedRecognizerManager *)self _recognizerConfigurationKeyForRequest:request locale:locale];
  v6 = [(NSMutableDictionary *)self->_writingStatsByConfigurationKey objectForKey:v5];
  if (!v6)
  {
    v6 = objc_alloc_init(CHWritingStatistics);
    [(NSMutableDictionary *)self->_writingStatsByConfigurationKey setObject:v6 forKey:v5];
  }

  return v6;
}

- (id)_recognizerConfigurationKeyForRequest:(id)request locale:(id)locale
{
  requestCopy = request;
  localeCopy = locale;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [requestCopy recognizerConfigurationKeyWithLocale:localeCopy];
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = @"Math";
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = @"Sketch";
    goto LABEL_15;
  }

  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v8 = qword_10002ACA8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid recognition request class", buf, 2u);
  }

  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
    v9 = qword_10002ACA8;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v9 = qword_10002ACA8;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
LABEL_13:
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Invalid recognition request class", v11, 2u);
  }

LABEL_14:

  v7 = 0;
LABEL_15:

  return v7;
}

- (id)_recognizerWrapperForRequest:(id)request locale:(id)locale
{
  requestCopy = request;
  localeCopy = locale;
  v8 = [(CHCachedRecognizerManager *)self _recognizerConfigurationKeyForRequest:requestCopy locale:localeCopy];
  v9 = [(NSMutableDictionary *)self->_cachedRecognizersByConfigurationKey objectForKey:v8];
  if (v9)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v10 = qword_10002ACC8;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v24 = 138412290;
    v25 = v8;
    v11 = "Loaded recognizer with configuration key %@";
    v12 = v10;
    v13 = OS_LOG_TYPE_DEBUG;
    v14 = 12;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = requestCopy;
    v17 = objc_alloc_init(CHRecognizerOptions);
    [v17 setEnableCachingIfAvailable:{objc_msgSend(v16, "enableCachingIfAvailable")}];
    [v17 setEnableGen2ModelIfAvailable:{objc_msgSend(v16, "enableGen2ModelIfAvailable")}];
    [v17 setEnableGen2CharacterLMIfAvailable:{objc_msgSend(v16, "enableGen2CharacterLMIfAvailable")}];
    v18 = [[CHRecognizer alloc] initWithMode:objc_msgSend(v16 locale:"recognitionMode") recognizerOptions:{localeCopy, v17}];

    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = objc_alloc_init(CHMathRecognizer);
    [(CHPowerLogger *)self->_powerLogger logModelLoaded:2];
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = objc_alloc_init(CHSketchRecognizer);
    [(CHPowerLogger *)self->_powerLogger logModelLoaded:12];
    goto LABEL_22;
  }

  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v19 = qword_10002ACA8;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Invalid recognition request class", &v24, 2u);
  }

  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
    v20 = qword_10002ACA8;
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v20 = qword_10002ACA8;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
LABEL_20:
    LOWORD(v24) = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "Invalid recognition request class", &v24, 2u);
  }

LABEL_21:

  v18 = 0;
LABEL_22:
  v15 = [[CHCachedRecognizerWrapper alloc] initWithRecognizer:v18];
  [(NSMutableDictionary *)self->_cachedRecognizersByConfigurationKey setObject:v15 forKey:v8];
  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v21 = qword_10002ACC8;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v24 = 138412546;
    v25 = v8;
    v26 = 1024;
    v27 = dword_10002AC70;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Created recognizer with configuration key %@, recognizer index = %d", &v24, 0x12u);
  }

  ++dword_10002AC70;
  if (!v15)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v23 = qword_10002ACA8;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "A valid recognizer wrapper is required to serve a request", &v24, 2u);
    }

    if (qword_10002AD20 == -1)
    {
      v10 = qword_10002ACA8;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_7;
      }
    }

    else
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
      v10 = qword_10002ACA8;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_7;
      }
    }

    LOWORD(v24) = 0;
    v11 = "A valid recognizer wrapper is required to serve a request";
    v12 = v10;
    v13 = OS_LOG_TYPE_FAULT;
    v14 = 2;
LABEL_6:
    _os_log_impl(&_mh_execute_header, v12, v13, v11, &v24, v14);
LABEL_7:

    v15 = v9;
  }

  return v15;
}

- (void)_cleanupCachedRecognizersTargetLifetime:(id)lifetime
{
  lifetimeCopy = lifetime;
  +[NSDate timeIntervalSinceReferenceDate];
  v5 = v4;
  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v6 = qword_10002ACC8;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v31 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Starting scheduled recognizer cleanup at %f", buf, 0xCu);
  }

  v7 = +[NSMutableArray array];
  cachedRecognizersByConfigurationKey = self->_cachedRecognizersByConfigurationKey;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100006574;
  v25[3] = &unk_1000249A8;
  v19 = lifetimeCopy;
  v26 = v19;
  v28 = v5;
  v9 = v7;
  v27 = v9;
  [(NSMutableDictionary *)cachedRecognizersByConfigurationKey enumerateKeysAndObjectsUsingBlock:v25];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v11)
  {
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        if (qword_10002AD20 == -1)
        {
          v16 = qword_10002ACC8;
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_16;
          }

LABEL_15:
          *buf = 138412290;
          v31 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Evicting recognizer with config key: %@", buf, 0xCu);
          goto LABEL_16;
        }

        dispatch_once(&qword_10002AD20, &stru_1000249F0);
        v16 = qword_10002ACC8;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

LABEL_16:

        [(NSMutableDictionary *)self->_cachedRecognizersByConfigurationKey removeObjectForKey:v15];
        if ([v15 isEqualToString:@"Math"])
        {
          v14 = 2;
LABEL_9:
          [(CHPowerLogger *)self->_powerLogger logModelUnloaded:v14];
          continue;
        }

        if ([v15 isEqualToString:@"Sketch"])
        {
          v14 = 12;
          goto LABEL_9;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v11);
  }

  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
    v17 = qword_10002ACC8;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v17 = qword_10002ACC8;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
LABEL_24:
    v18 = [(NSMutableDictionary *)self->_cachedRecognizersByConfigurationKey count];
    *buf = 134217984;
    v31 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Number of recognizers after clean-up: %lu", buf, 0xCu);
  }

LABEL_25:
}

- (void)optimizeResourceUsageWithTimeout:(double)timeout onQueue:(id)queue idleCallbackBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  v10 = dispatch_time(0, (timeout * 1000000000.0));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006808;
  block[3] = &unk_1000249D0;
  timeoutCopy = timeout;
  block[4] = self;
  v13 = blockCopy;
  v11 = blockCopy;
  dispatch_after(v10, queueCopy, block);
}

+ (void)configureRecognizer:(id)recognizer forRequest:(id)request locale:(id)locale
{
  recognizerCopy = recognizer;
  requestCopy = request;
  localeCopy = locale;
  if (!recognizerCopy)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v10 = qword_10002ACA8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "A valid recognizer is required", buf, 2u);
    }

    if (qword_10002AD20 == -1)
    {
      v11 = qword_10002ACA8;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_11;
      }
    }

    else
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
      v11 = qword_10002ACA8;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
LABEL_11:

        if (!requestCopy)
        {
          goto LABEL_12;
        }

        goto LABEL_20;
      }
    }

    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "A valid recognizer is required", v18, 2u);
    goto LABEL_11;
  }

  if (!requestCopy)
  {
LABEL_12:
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v12 = qword_10002ACA8;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "A valid recognition request is required", v17, 2u);
    }

    if (qword_10002AD20 == -1)
    {
      v13 = qword_10002ACA8;
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
      v13 = qword_10002ACA8;
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_19;
      }
    }

    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "A valid recognition request is required", v16, 2u);
    goto LABEL_19;
  }

LABEL_20:
  [recognizerCopy setMaxRecognitionResultCount:{objc_msgSend(requestCopy, "maxRecognitionResultCount")}];
  [requestCopy minimumDrawingSize];
  [recognizerCopy setMinimumDrawingSize:?];
  activeCharacterSetPerLocale = [requestCopy activeCharacterSetPerLocale];
  v15 = [activeCharacterSetPerLocale objectForKeyedSubscript:localeCopy];
  [recognizerCopy setActiveCharacterSet:v15];

  [recognizerCopy setContentType:{objc_msgSend(requestCopy, "contentType")}];
  [recognizerCopy setAutoCapitalizationMode:{objc_msgSend(requestCopy, "autoCapitalizationMode")}];
  [recognizerCopy setAutoCorrectionMode:{objc_msgSend(requestCopy, "autoCorrectionMode")}];
  [recognizerCopy setBaseWritingDirection:{objc_msgSend(requestCopy, "baseWritingDirection")}];
  [recognizerCopy setEnableCachingIfAvailable:{objc_msgSend(requestCopy, "enableCachingIfAvailable")}];
  [recognizerCopy setEnableGen2ModelIfAvailable:{objc_msgSend(requestCopy, "enableGen2ModelIfAvailable")}];
  [recognizerCopy setEnableGen2CharacterLMIfAvailable:{objc_msgSend(requestCopy, "enableGen2CharacterLMIfAvailable")}];
}

+ (void)configureRecognizer:(id)recognizer forRequest:(id)request locale:(id)locale transientLexicon:(_LXLexicon *)lexicon transientPhraseLexicon:(_LXLexicon *)phraseLexicon vocabulary:(void *)vocabulary textReplacements:(id)replacements addressBookLexicon:(id)self0
{
  recognizerCopy = recognizer;
  requestCopy = request;
  localeCopy = locale;
  replacementsCopy = replacements;
  bookLexiconCopy = bookLexicon;
  [objc_opt_class() configureRecognizer:recognizerCopy forRequest:requestCopy locale:localeCopy];
  if ([requestCopy shouldUseTextReplacements])
  {
    v19 = replacementsCopy;
  }

  else
  {
    v19 = 0;
  }

  [recognizerCopy setTextReplacements:v19];
  [recognizerCopy setCustomLexicon:lexicon customVocabulary:vocabulary];
  [recognizerCopy updateAddressBookLexicon:bookLexiconCopy];
  [recognizerCopy setCustomPhraseLexicon:phraseLexicon];
}

@end