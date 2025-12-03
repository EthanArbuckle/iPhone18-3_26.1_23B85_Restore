@interface CRDictationService
+ (id)sharedInstance;
- (BOOL)dictationAvailable;
- (BOOL)dictationEnabledInKeyboardSettings;
- (CRDictationService)init;
- (void)_failWithError:(id)error;
- (void)_finishIfPossible;
- (void)_fireHandler:(id)handler withState:(int64_t)state result:(id)result error:(id)error;
- (void)_processingTimeLimitReached;
- (void)_transitionToState:(int64_t)state;
- (void)beginRecordingWithCompletion:(id)completion;
- (void)cancelRecording;
- (void)dictationConnection:(id)connection didRecognizeTokens:(id)tokens languageModel:(id)model;
- (void)dictationConnection:(id)connection speechRecognitionDidFail:(id)fail;
- (void)dictationConnection:(id)connection speechRecordingDidFail:(id)fail;
- (void)dictationConnectionSpeechRecognitionDidSucceed:(id)succeed;
- (void)dictationConnectionSpeechRecordingDidBegin:(id)begin;
- (void)dictationConnectionSpeechRecordingDidCancel:(id)cancel;
- (void)dictationConnectionSpeechRecordingDidEnd:(id)end;
- (void)dictationConnectionSpeechRecordingWillBegin:(id)begin;
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
  dictationIsEnabled = [v2 dictationIsEnabled];

  return dictationIsEnabled;
}

- (BOOL)dictationAvailable
{
  if (!sub_10000D43C() || !+[AFDictationConnection dictationIsEnabled])
  {
    return 0;
  }

  dictationConnection = [(CRDictationService *)self dictationConnection];
  v4 = [dictationConnection dictationIsAvailableForLanguage:@"en_US"];

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
      dictationConnection = [(CRDictationService *)self dictationConnection];
      [dictationConnection stopSpeechWithOptions:0];
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
      dictationConnection = [(CRDictationService *)self dictationConnection];
      [dictationConnection stopSpeechWithOptions:0];
    }
  }
}

- (void)beginRecordingWithCompletion:(id)completion
{
  completionCopy = completion;
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
      [(CRDictationService *)self setHandler:completionCopy];
      [(CRDictationService *)self setResult:0];
      [(CRDictationService *)self setError:0];
      [(CRDictationService *)self _transitionToState:1];
      v9 = objc_alloc_init(AFDictationOptions);
      [v9 setTranscriptionMode:0];
      [v9 setKeyboardType:13];
      [v9 setReturnKeyType:10];
      [v9 setReleaseAudioSessionOnRecordingCompletion:1];
      v10 = objc_alloc_init(AFSpeechRequestOptions);
      dictationConnection = [(CRDictationService *)self dictationConnection];
      [dictationConnection startDictationWithLanguageCode:@"en_US" options:v9 speechOptions:v10];

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

  [(CRDictationService *)self _fireHandler:completionCopy withState:-1 result:0 error:0];
LABEL_11:
}

- (void)_fireHandler:(id)handler withState:(int64_t)state result:(id)result error:(id)error
{
  handlerCopy = handler;
  resultCopy = result;
  errorCopy = error;
  if (handlerCopy)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000C678;
    v12[3] = &unk_1000DD638;
    stateCopy = state;
    v13 = resultCopy;
    v14 = errorCopy;
    v15 = handlerCopy;
    dispatch_async(&_dispatch_main_q, v12);
  }
}

- (void)_transitionToState:(int64_t)state
{
  if (self->_state != state)
  {
    state = [(CRDictationService *)self state];
    self->_state = state;
    v6 = CarDiagnosticsLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if ((state + 1) >= 6)
      {
        v7 = [NSString stringWithFormat:@"Unknown (%ld)", state];
      }

      else
      {
        v7 = off_1000DD6B8[state + 1];
      }

      v8 = v7;
      if ((state + 1) >= 6)
      {
        state2 = [NSString stringWithFormat:@"Unknown (%ld)", state];
      }

      else
      {
        state2 = off_1000DD6B8[state + 1];
      }

      *buf = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = state2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dictation transitioning from %@ to %@", buf, 0x16u);
    }

    handler = [(CRDictationService *)self handler];
    state3 = [(CRDictationService *)self state];
    result = [(CRDictationService *)self result];
    error = [(CRDictationService *)self error];
    [(CRDictationService *)self _fireHandler:handler withState:state3 result:result error:error];

    if (state == 3)
    {
      v14 = [NSTimer scheduledTimerWithTimeInterval:self target:"_processingTimeLimitReached" selector:0 userInfo:0 repeats:2.0];
      [(CRDictationService *)self setProcessingTimer:v14];
    }

    else
    {
      processingTimer = [(CRDictationService *)self processingTimer];
      [processingTimer invalidate];

      [(CRDictationService *)self setProcessingTimer:0];
      if (state == 4)
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
    result = [(CRDictationService *)self result];
    transcription = [result transcription];
    v5 = [transcription length];

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

- (void)_failWithError:(id)error
{
  [(CRDictationService *)self setError:error];

  [(CRDictationService *)self _transitionToState:4];
}

- (void)dictationConnectionSpeechRecordingWillBegin:(id)begin
{
  v4 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Recording will begin", v5, 2u);
  }

  [(CRDictationService *)self _transitionToState:2];
}

- (void)dictationConnectionSpeechRecordingDidBegin:(id)begin
{
  v3 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Recording did begin", v4, 2u);
  }
}

- (void)dictationConnectionSpeechRecordingDidEnd:(id)end
{
  v4 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Recording did end", v5, 2u);
  }

  [(CRDictationService *)self _transitionToState:3];
}

- (void)dictationConnectionSpeechRecognitionDidSucceed:(id)succeed
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

- (void)dictationConnection:(id)connection didRecognizeTokens:(id)tokens languageModel:(id)model
{
  tokensCopy = tokens;
  if ([(CRDictationService *)self state]>= 2)
  {
    v7 = +[NSMutableString string];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = tokensCopy;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v18 = tokensCopy;
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

          text = [v15 text];
          [v7 appendString:text];

          v11 = v15;
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);

      tokensCopy = v18;
    }

    v17 = [[CARDictationResult alloc] initWithText:v7];
    [(CRDictationService *)self setResult:v17];

    [(CRDictationService *)self _finishIfPossible];
  }
}

- (void)dictationConnectionSpeechRecordingDidCancel:(id)cancel
{
  v4 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Speech recording did cancel", v5, 2u);
  }

  [(CRDictationService *)self _transitionToState:4];
}

- (void)dictationConnection:(id)connection speechRecordingDidFail:(id)fail
{
  failCopy = fail;
  v6 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = failCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Speech recording failed with error: %{public}@", &v7, 0xCu);
  }

  [(CRDictationService *)self _failWithError:failCopy];
}

- (void)dictationConnection:(id)connection speechRecognitionDidFail:(id)fail
{
  failCopy = fail;
  v6 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = failCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Speech recognition failed with error: %{public}@", &v7, 0xCu);
  }

  [(CRDictationService *)self _failWithError:failCopy];
}

@end