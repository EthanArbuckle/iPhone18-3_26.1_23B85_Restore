@interface CRDictationService
+ (id)sharedInstance;
- (BOOL)dictationAvailable;
- (BOOL)dictationEnabledInKeyboardSettings;
- (CRDictationService)init;
- (void)_failWithError:(id)a3;
- (void)_finishIfPossible;
- (void)_fireHandler:(id)a3 withState:(int64_t)a4 result:(id)a5 error:(id)a6;
- (void)_processingTimeLimitReached;
- (void)_transitionToState:(int64_t)a3;
- (void)beginRecordingWithCompletion:(id)a3;
- (void)cancelRecording;
- (void)dictationConnection:(id)a3 didRecognizeTokens:(id)a4 languageModel:(id)a5;
- (void)dictationConnection:(id)a3 speechRecognitionDidFail:(id)a4;
- (void)dictationConnection:(id)a3 speechRecordingDidFail:(id)a4;
- (void)dictationConnectionSpeechRecognitionDidSucceed:(id)a3;
- (void)dictationConnectionSpeechRecordingDidBegin:(id)a3;
- (void)dictationConnectionSpeechRecordingDidCancel:(id)a3;
- (void)dictationConnectionSpeechRecordingDidEnd:(id)a3;
- (void)dictationConnectionSpeechRecordingWillBegin:(id)a3;
- (void)reset;
- (void)stopRecording;
@end

@implementation CRDictationService

+ (id)sharedInstance
{
  if (qword_100107F10 != -1)
  {
    sub_100081BEC();
  }

  v3 = qword_100107F08;

  return v3;
}

- (CRDictationService)init
{
  v8.receiver = self;
  v8.super_class = CRDictationService;
  v2 = [(CRDictationService *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = qword_100107F18;
    v13 = qword_100107F18;
    if (!qword_100107F18)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10000D3AC;
      v9[3] = &unk_1000DD660;
      v9[4] = &v10;
      sub_10000D3AC(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = objc_alloc_init(v3);
    dictationConnection = v2->_dictationConnection;
    v2->_dictationConnection = v5;

    [(AFDictationConnection *)v2->_dictationConnection setDelegate:v2];
    v2->_state = [(CRDictationService *)v2 dictationAvailable]- 1;
  }

  return v2;
}

- (BOOL)dictationEnabledInKeyboardSettings
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 dictationIsEnabled];

  return v3;
}

- (BOOL)dictationAvailable
{
  if (!sub_10000D43C() || !+[AFDictationConnection dictationIsEnabled])
  {
    return 0;
  }

  v3 = [(CRDictationService *)self dictationConnection];
  v4 = [v3 dictationIsAvailableForLanguage:@"en_US"];

  return v4;
}

- (void)stopRecording
{
  if ([(CRDictationService *)self state]>= 1)
  {
    if ([(CRDictationService *)self state]< 2)
    {

      [(CRDictationService *)self _transitionToState:4];
    }

    else
    {
      v3 = [(CRDictationService *)self dictationConnection];
      [v3 stopSpeechWithOptions:0];
    }
  }
}

- (void)cancelRecording
{
  if ([(CRDictationService *)self state]>= 1)
  {
    v3 = CarDiagnosticsLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cancel dictation request", v5, 2u);
    }

    [(CRDictationService *)self setHandler:0];
    if ([(CRDictationService *)self state]< 2)
    {
      [(CRDictationService *)self _transitionToState:4];
    }

    else
    {
      v4 = [(CRDictationService *)self dictationConnection];
      [v4 stopSpeechWithOptions:0];
    }
  }
}

- (void)beginRecordingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dictation will begin.", buf, 2u);
  }

  if ([(CRDictationService *)self dictationAvailable])
  {
    if ([(CRDictationService *)self state]< 1)
    {
      [(CRDictationService *)self setHandler:v4];
      [(CRDictationService *)self setResult:0];
      [(CRDictationService *)self setError:0];
      [(CRDictationService *)self _transitionToState:1];
      v9 = objc_alloc_init(AFDictationOptions);
      [v9 setTranscriptionMode:0];
      [v9 setKeyboardType:13];
      [v9 setReturnKeyType:10];
      [v9 setReleaseAudioSessionOnRecordingCompletion:1];
      v10 = objc_alloc_init(AFSpeechRequestOptions);
      v11 = [(CRDictationService *)self dictationConnection];
      [v11 startDictationWithLanguageCode:@"en_US" options:v9 speechOptions:v10];

      goto LABEL_11;
    }

    v6 = CarDiagnosticsLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v7 = "Dictation is already in progress.";
      v8 = &v12;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }

  else
  {
    v6 = CarDiagnosticsLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      v7 = "Dictation is not available.";
      v8 = v13;
      goto LABEL_9;
    }
  }

  [(CRDictationService *)self _fireHandler:v4 withState:-1 result:0 error:0];
LABEL_11:
}

- (void)_fireHandler:(id)a3 withState:(int64_t)a4 result:(id)a5 error:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (v9)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000C678;
    v12[3] = &unk_1000DD638;
    v16 = a4;
    v13 = v10;
    v14 = v11;
    v15 = v9;
    dispatch_async(&_dispatch_main_q, v12);
  }
}

- (void)_transitionToState:(int64_t)a3
{
  if (self->_state != a3)
  {
    v5 = [(CRDictationService *)self state];
    self->_state = a3;
    v6 = CarDiagnosticsLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if ((v5 + 1) >= 6)
      {
        v7 = [NSString stringWithFormat:@"Unknown (%ld)", v5];
      }

      else
      {
        v7 = off_1000DD6B8[v5 + 1];
      }

      v8 = v7;
      if ((a3 + 1) >= 6)
      {
        v9 = [NSString stringWithFormat:@"Unknown (%ld)", a3];
      }

      else
      {
        v9 = off_1000DD6B8[a3 + 1];
      }

      *buf = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dictation transitioning from %@ to %@", buf, 0x16u);
    }

    v10 = [(CRDictationService *)self handler];
    v11 = [(CRDictationService *)self state];
    v12 = [(CRDictationService *)self result];
    v13 = [(CRDictationService *)self error];
    [(CRDictationService *)self _fireHandler:v10 withState:v11 result:v12 error:v13];

    if (a3 == 3)
    {
      v14 = [NSTimer scheduledTimerWithTimeInterval:self target:"_processingTimeLimitReached" selector:0 userInfo:0 repeats:2.0];
      [(CRDictationService *)self setProcessingTimer:v14];
    }

    else
    {
      v15 = [(CRDictationService *)self processingTimer];
      [v15 invalidate];

      [(CRDictationService *)self setProcessingTimer:0];
      if (a3 == 4)
      {
        [(AFDictationConnection *)self->_dictationConnection stopSpeechWithOptions:0];
        [(CRDictationService *)self reset];
      }
    }
  }
}

- (void)reset
{
  v3 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Resetting dictation state.", v8, 2u);
  }

  [(NSTimer *)self->_processingTimer invalidate];
  processingTimer = self->_processingTimer;
  self->_processingTimer = 0;

  self->_state = [(CRDictationService *)self dictationAvailable]- 1;
  result = self->_result;
  self->_result = 0;

  handler = self->_handler;
  self->_handler = 0;

  error = self->_error;
  self->_error = 0;
}

- (void)_processingTimeLimitReached
{
  [(CRDictationService *)self setProcessingTimer:0];
  if ([(CRDictationService *)self state]== 3)
  {
    v3 = CarDiagnosticsLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dictation maximum processing time reached, stopping dictation", v4, 2u);
    }

    [(AFDictationConnection *)self->_dictationConnection stopSpeechWithOptions:0];
    [(CRDictationService *)self _transitionToState:4];
  }
}

- (void)_finishIfPossible
{
  if ([(CRDictationService *)self state]== 3)
  {
    v3 = [(CRDictationService *)self result];
    v4 = [v3 transcription];
    v5 = [v4 length];

    if (v5)
    {
      v6 = CarDiagnosticsLogging();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Will finish processing, have valid result", v7, 2u);
      }

      [(CRDictationService *)self _transitionToState:4];
    }
  }
}

- (void)_failWithError:(id)a3
{
  [(CRDictationService *)self setError:a3];

  [(CRDictationService *)self _transitionToState:4];
}

- (void)dictationConnectionSpeechRecordingWillBegin:(id)a3
{
  v4 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Recording will begin", v5, 2u);
  }

  [(CRDictationService *)self _transitionToState:2];
}

- (void)dictationConnectionSpeechRecordingDidBegin:(id)a3
{
  v3 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Recording did begin", v4, 2u);
  }
}

- (void)dictationConnectionSpeechRecordingDidEnd:(id)a3
{
  v4 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Recording did end", v5, 2u);
  }

  [(CRDictationService *)self _transitionToState:3];
}

- (void)dictationConnectionSpeechRecognitionDidSucceed:(id)a3
{
  v4 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Speech recognition did succeed", v5, 2u);
  }

  [(CRDictationService *)self _transitionToState:3];
  [(CRDictationService *)self _finishIfPossible];
}

- (void)dictationConnection:(id)a3 didRecognizeTokens:(id)a4 languageModel:(id)a5
{
  v6 = a4;
  if ([(CRDictationService *)self state]>= 2)
  {
    v7 = +[NSMutableString string];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v18 = v6;
      v11 = 0;
      v12 = *v20;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          v14 = v11;
          if (*v20 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          if (v14 && ([*(*(&v19 + 1) + 8 * i) removeSpaceBefore] & 1) == 0 && (objc_msgSend(v14, "removeSpaceAfter") & 1) == 0)
          {
            [v7 appendString:@" "];
          }

          v16 = [v15 text];
          [v7 appendString:v16];

          v11 = v15;
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);

      v6 = v18;
    }

    v17 = [[CARDictationResult alloc] initWithText:v7];
    [(CRDictationService *)self setResult:v17];

    [(CRDictationService *)self _finishIfPossible];
  }
}

- (void)dictationConnectionSpeechRecordingDidCancel:(id)a3
{
  v4 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Speech recording did cancel", v5, 2u);
  }

  [(CRDictationService *)self _transitionToState:4];
}

- (void)dictationConnection:(id)a3 speechRecordingDidFail:(id)a4
{
  v5 = a4;
  v6 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Speech recording failed with error: %{public}@", &v7, 0xCu);
  }

  [(CRDictationService *)self _failWithError:v5];
}

- (void)dictationConnection:(id)a3 speechRecognitionDidFail:(id)a4
{
  v5 = a4;
  v6 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Speech recognition failed with error: %{public}@", &v7, 0xCu);
  }

  [(CRDictationService *)self _failWithError:v5];
}

@end