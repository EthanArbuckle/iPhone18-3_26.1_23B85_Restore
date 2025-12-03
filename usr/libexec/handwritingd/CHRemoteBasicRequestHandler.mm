@interface CHRemoteBasicRequestHandler
+ (id)invalidInputErrorWithDescription:(id)description failureReason:(id)reason recoverySuggestion:(id)suggestion errorCode:(int64_t)code;
- (CHRemoteBasicRequestHandler)initWithServerQueue:(id)queue;
- (void)_stageEvictionOfResourceWithTargetLifetime:(double)lifetime block:(id)block;
- (void)setDirty;
- (void)setIdle;
@end

@implementation CHRemoteBasicRequestHandler

- (CHRemoteBasicRequestHandler)initWithServerQueue:(id)queue
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = CHRemoteBasicRequestHandler;
  v5 = [(CHRemoteBasicRequestHandler *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_serverQueue = queueCopy;
    v7 = objc_opt_new();
    modelPowerLogger = v6->_modelPowerLogger;
    v6->_modelPowerLogger = v7;
  }

  return v6;
}

- (void)setDirty
{
  if (!self->_transaction)
  {
    v4 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v4;

    _objc_release_x1();
  }
}

- (void)setIdle
{
  transaction = self->_transaction;
  self->_transaction = 0;
  _objc_release_x1();
}

- (void)_stageEvictionOfResourceWithTargetLifetime:(double)lifetime block:(id)block
{
  blockCopy = block;
  v7 = dispatch_time(0, (lifetime * 1000000000.0));
  serverQueue = [(CHRemoteBasicRequestHandler *)self serverQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A8E8;
  block[3] = &unk_100024AE8;
  v11 = blockCopy;
  v9 = blockCopy;
  dispatch_after(v7, serverQueue, block);
}

+ (id)invalidInputErrorWithDescription:(id)description failureReason:(id)reason recoverySuggestion:(id)suggestion errorCode:(int64_t)code
{
  descriptionCopy = description;
  reasonCopy = reason;
  suggestionCopy = suggestion;
  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v12 = qword_10002ACA8;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138413058;
    v26 = descriptionCopy;
    v27 = 2112;
    v28 = reasonCopy;
    v29 = 2112;
    v30 = suggestionCopy;
    v31 = 2048;
    codeCopy = code;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "invalidInputErrorWithDescription with description: %@, failureReason: %@, recoverySuggestion:%@, errorCode:%ld", buf, 0x2Au);
  }

  if (descriptionCopy)
  {
    v13 = descriptionCopy;
  }

  else
  {
    v13 = &stru_100025778;
  }

  v19 = NSLocalizedDescriptionKey;
  v20 = NSLocalizedFailureReasonErrorKey;
  if (reasonCopy)
  {
    v14 = reasonCopy;
  }

  else
  {
    v14 = &stru_100025778;
  }

  v22 = v13;
  v23 = v14;
  v21 = NSLocalizedRecoverySuggestionErrorKey;
  if (suggestionCopy)
  {
    v15 = suggestionCopy;
  }

  else
  {
    v15 = &stru_100025778;
  }

  v24 = v15;
  v16 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v19 count:3];
  v17 = [NSError errorWithDomain:@"com.apple.corehandwriting" code:code userInfo:v16, v19, v20, v21, v22, v23];

  return v17;
}

@end