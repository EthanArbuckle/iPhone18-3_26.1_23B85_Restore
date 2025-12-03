@interface RPNearFieldDaemonController
+ (id)_legacyApplicationLabels;
- (BOOL)_supportsApplicationLabel:(id)label;
- (BOOL)hasCurrentTransaction;
- (RPNearFieldDaemonController)initWithConnection:(id)connection dispatchQueue:(id)queue;
- (id)_convertToLegacyApplicationLabelIfNeeded:(id)needed forVersion:(id)version;
- (id)_convertToUpdatedApplicationLabelIfNeeded:(id)needed forVersion:(id)version;
- (id)_createAuthenticationPayload;
- (id)_createValidationPayload;
- (id)_payloadForType:(int64_t)type;
- (id)_remoteObjectProxy;
- (id)transactionController:(id)controller requestMessageForType:(int64_t)type;
- (id)transactionController:(id)controller responseMessageForRequestMessage:(id)message;
- (id)transactionController:(id)controller tapEventForApplicationLabel:(id)label singleBandAWDLModeRequested:(BOOL)requested pkData:(id)data bonjourListenerUUID:(id)d identity:(id)identity;
- (void)_clearCurrentTransaction;
- (void)_startTransactionControllerIfNeeded;
- (void)_stopTransactionControllerIfNeeded;
- (void)didChangeStateForTransaction:(id)transaction;
- (void)invalidate;
- (void)invalidateTransactionWithIdentifier:(id)identifier;
- (void)invalidateTransactionWithIdentifier:(id)identifier context:(id)context;
- (void)setCurrentPreferredPollingType:(int64_t)type;
- (void)setEnabled:(BOOL)enabled;
- (void)startPolling:(int64_t)polling context:(id)context;
- (void)stop;
- (void)transactionController:(id)controller didBeginTransaction:(id)transaction;
- (void)transactionController:(id)controller didFinishTransaction:(id)transaction error:(id)error;
@end

@implementation RPNearFieldDaemonController

- (BOOL)hasCurrentTransaction
{
  selfCopy = self;
  dispatchQueue = [(RPNearFieldDaemonController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  currentTransaction = [(RPNearFieldDaemonController *)selfCopy currentTransaction];
  LOBYTE(selfCopy) = currentTransaction != 0;

  return selfCopy;
}

+ (id)_legacyApplicationLabels
{
  if (qword_1001D60F8 != -1)
  {
    sub_100115FDC();
  }

  v3 = qword_1001D60F0;

  return v3;
}

- (RPNearFieldDaemonController)initWithConnection:(id)connection dispatchQueue:(id)queue
{
  connectionCopy = connection;
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = RPNearFieldDaemonController;
  v9 = [(RPNearFieldDaemonController *)&v13 init];
  if (v9)
  {
    if (dword_1001D34D0 <= 30 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
    {
      sub_100115FF0();
    }

    objc_storeStrong(&v9->_connection, connection);
    objc_storeStrong(&v9->_dispatchQueue, queue);
    v10 = [[RPNearFieldDataSource alloc] initWithDispatchQueue:queueCopy];
    dataSource = v9->_dataSource;
    v9->_dataSource = v10;
  }

  return v9;
}

- (void)invalidate
{
  if (dword_1001D34D0 <= 30 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
  {
    sub_100116024();
  }

  [(RPNearFieldDaemonController *)self stop];
  connection = [(RPNearFieldDaemonController *)self connection];
  [connection invalidate];

  [(RPNearFieldDaemonController *)self setConnection:0];

  [(RPNearFieldDaemonController *)self setTransactionChangedHandler:0];
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled == enabled)
  {
    return;
  }

  enabledCopy = enabled;
  self->_enabled = enabled;
  if (dword_1001D34D0 <= 30)
  {
    if (dword_1001D34D0 != -1)
    {
LABEL_4:
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      enabled = self->_enabled;
      goto LABEL_4;
    }
  }

LABEL_6:
  if (enabledCopy)
  {

    [(RPNearFieldDaemonController *)self _startTransactionControllerIfNeeded];
  }

  else
  {

    [(RPNearFieldDaemonController *)self _stopTransactionControllerIfNeeded];
  }
}

- (void)startPolling:(int64_t)polling context:(id)context
{
  contextCopy = context;
  if (dword_1001D34D0 <= 30 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
  {
    sub_100116040(contextCopy);
  }

  if (![(RPNearFieldDaemonController *)self isActive])
  {
    goto LABEL_14;
  }

  currentContext = [(RPNearFieldDaemonController *)self currentContext];
  v7 = contextCopy;
  v8 = v7;
  if (currentContext == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = (v7 == 0) == (currentContext != 0) ? 1 : [currentContext isEqual:v7] ^ 1;
  }

  transactionController = [(RPNearFieldDaemonController *)self transactionController];
  if (transactionController)
  {
    transactionController2 = [(RPNearFieldDaemonController *)self transactionController];
    v12 = [transactionController2 preferredPollingType] != polling;
  }

  else
  {
    v12 = 0;
  }

  if (((v9 | v12) & 1) == 0)
  {
    if (dword_1001D34D0 <= 30 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001160AC();
    }
  }

  else
  {
LABEL_14:
    [(RPNearFieldDaemonController *)self setCurrentContext:contextCopy];
    [(RPNearFieldDaemonController *)self setCurrentPreferredPollingType:polling];
    [(RPNearFieldDaemonController *)self setIsActive:1];
    currentTransaction = [(RPNearFieldDaemonController *)self currentTransaction];

    if (currentTransaction)
    {
      currentTransaction2 = [(RPNearFieldDaemonController *)self currentTransaction];
      identifier = [currentTransaction2 identifier];
      [(RPNearFieldDaemonController *)self invalidateTransactionWithIdentifier:identifier];
    }

    else
    {
      [(RPNearFieldDaemonController *)self _startTransactionControllerIfNeeded];
    }
  }
}

- (void)setCurrentPreferredPollingType:(int64_t)type
{
  if (self->_currentPreferredPollingType != type)
  {
    self->_currentPreferredPollingType = type;
    transactionController = [(RPNearFieldDaemonController *)self transactionController];
    [transactionController setPreferredPollingType:type];
  }
}

- (void)stop
{
  if ([(RPNearFieldDaemonController *)self isActive])
  {
    if (dword_1001D34D0 <= 30 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001160C8();
    }

    [(RPNearFieldDaemonController *)self setIsActive:0];
    [(RPNearFieldDaemonController *)self setCurrentContext:0];
    [(RPNearFieldDaemonController *)self setCurrentPreferredPollingType:0];
    [(RPNearFieldDaemonController *)self _stopTransactionControllerIfNeeded];
    currentTransaction = [(RPNearFieldDaemonController *)self currentTransaction];

    if (currentTransaction)
    {
      currentTransaction2 = [(RPNearFieldDaemonController *)self currentTransaction];
      identifier = [currentTransaction2 identifier];
      [(RPNearFieldDaemonController *)self invalidateTransactionWithIdentifier:identifier];
    }
  }
}

- (void)invalidateTransactionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentContext = [(RPNearFieldDaemonController *)self currentContext];
  [(RPNearFieldDaemonController *)self invalidateTransactionWithIdentifier:identifierCopy context:currentContext];
}

- (void)invalidateTransactionWithIdentifier:(id)identifier context:(id)context
{
  identifierCopy = identifier;
  contextCopy = context;
  if (dword_1001D34D0 <= 30 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001160E4(self);
  }

  [(RPNearFieldDaemonController *)self setCurrentContext:contextCopy];
  currentTransaction = [(RPNearFieldDaemonController *)self currentTransaction];
  if (!currentTransaction)
  {
    goto LABEL_17;
  }

  v8 = currentTransaction;
  currentTransaction2 = [(RPNearFieldDaemonController *)self currentTransaction];
  identifier = [currentTransaction2 identifier];
  v11 = [identifier isEqual:identifierCopy];

  if (v11)
  {
    transactionController = [(RPNearFieldDaemonController *)self transactionController];
    currentTransaction3 = [(RPNearFieldDaemonController *)self currentTransaction];
    [transactionController invalidateTransaction:currentTransaction3];

    [(RPNearFieldDaemonController *)self _clearCurrentTransaction];
    [(RPNearFieldDaemonController *)self _startTransactionControllerIfNeeded];
  }

  else
  {
LABEL_17:
    if (dword_1001D34D0 <= 90 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
    {
      sub_100116170();
    }
  }
}

- (void)_startTransactionControllerIfNeeded
{
  transactionController = [(RPNearFieldDaemonController *)self transactionController];
  isRunning = [transactionController isRunning];

  if ((isRunning & 1) == 0 && [(RPNearFieldDaemonController *)self isActive])
  {
    if (dword_1001D34D0 <= 30 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001161B0();
    }

    if ([(RPNearFieldDaemonController *)self enabled])
    {
      currentTransaction = [(RPNearFieldDaemonController *)self currentTransaction];

      if (currentTransaction)
      {
        if (dword_1001D34D0 <= 90 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001161E8();
        }
      }

      else
      {
        transactionController2 = [(RPNearFieldDaemonController *)self transactionController];

        if (!transactionController2)
        {
          v7 = [[RPNFCTransactionController alloc] initWithPreferredPollingType:[(RPNearFieldDaemonController *)self currentPreferredPollingType] dispatchQueue:self->_dispatchQueue];
          transactionController = self->_transactionController;
          self->_transactionController = v7;
        }

        transactionController3 = [(RPNearFieldDaemonController *)self transactionController];
        [transactionController3 setDataSource:self];

        transactionController4 = [(RPNearFieldDaemonController *)self transactionController];
        [transactionController4 setDelegate:self];

        transactionController5 = [(RPNearFieldDaemonController *)self transactionController];
        [transactionController5 start];
      }
    }

    else if (dword_1001D34D0 <= 90 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001161CC();
    }
  }
}

- (void)_stopTransactionControllerIfNeeded
{
  transactionController = [(RPNearFieldDaemonController *)self transactionController];
  isRunning = [transactionController isRunning];

  if (isRunning)
  {
    if (dword_1001D34D0 <= 30 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
    {
      sub_100116204();
    }

    transactionController2 = [(RPNearFieldDaemonController *)self transactionController];
    [transactionController2 setDataSource:0];

    transactionController3 = [(RPNearFieldDaemonController *)self transactionController];
    [transactionController3 setDelegate:0];

    transactionController4 = [(RPNearFieldDaemonController *)self transactionController];
    [transactionController4 stop];
  }
}

- (void)_clearCurrentTransaction
{
  if (dword_1001D34D0 <= 30 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
  {
    sub_100116220(self);
  }

  currentTransaction = [(RPNearFieldDaemonController *)self currentTransaction];
  [currentTransaction setDelegate:0];

  [(RPNearFieldDaemonController *)self setCurrentTransaction:0];
  transactionChangedHandler = [(RPNearFieldDaemonController *)self transactionChangedHandler];

  if (transactionChangedHandler)
  {
    transactionChangedHandler2 = [(RPNearFieldDaemonController *)self transactionChangedHandler];
    transactionChangedHandler2[2]();
  }
}

- (id)_remoteObjectProxy
{
  connection = [(RPNearFieldDaemonController *)self connection];
  v3 = [connection remoteObjectProxyWithErrorHandler:&stru_1001AC518];

  return v3;
}

- (void)didChangeStateForTransaction:(id)transaction
{
  transactionCopy = transaction;
  currentTransaction = [(RPNearFieldDaemonController *)self currentTransaction];

  if (currentTransaction == transactionCopy)
  {
    if (dword_1001D34D0 <= 30 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001162BC();
    }

    if ([transactionCopy state] == 2)
    {
      v6 = +[RPIdentityDaemon sharedIdentityDaemon];
      remoteIdentity = [transactionCopy remoteIdentity];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100047794;
      v9[3] = &unk_1001AC540;
      v9[4] = self;
      v10 = transactionCopy;
      [v6 isContactValidForIdentity:remoteIdentity completionBlock:v9];
    }

    else
    {
      _remoteObjectProxy = [(RPNearFieldDaemonController *)self _remoteObjectProxy];
      [_remoteObjectProxy didUpdateTransaction:transactionCopy];
    }
  }
}

- (void)transactionController:(id)controller didBeginTransaction:(id)transaction
{
  transactionCopy = transaction;
  currentTransaction = [(RPNearFieldDaemonController *)self currentTransaction];

  if (!currentTransaction)
  {
    if (dword_1001D34D0 <= 30 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
    {
      sub_100116318();
    }

    [(RPNearFieldDaemonController *)self setCurrentTransaction:transactionCopy];
    [transactionCopy setDelegate:self];
    _remoteObjectProxy = [(RPNearFieldDaemonController *)self _remoteObjectProxy];
    [_remoteObjectProxy didBeginTransaction:transactionCopy];

    transactionChangedHandler = [(RPNearFieldDaemonController *)self transactionChangedHandler];

    if (transactionChangedHandler)
    {
      transactionChangedHandler2 = [(RPNearFieldDaemonController *)self transactionChangedHandler];
      transactionChangedHandler2[2]();
    }
  }
}

- (void)transactionController:(id)controller didFinishTransaction:(id)transaction error:(id)error
{
  transactionCopy = transaction;
  currentTransaction = [(RPNearFieldDaemonController *)self currentTransaction];

  v7 = transactionCopy;
  if (currentTransaction == transactionCopy)
  {
    if ([transactionCopy state] == 2)
    {
      if (dword_1001D34D0 <= 30 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
      {
        sub_100116358();
      }

      [(RPNearFieldDaemonController *)self _stopTransactionControllerIfNeeded];
    }

    else
    {
      [(RPNearFieldDaemonController *)self _clearCurrentTransaction];
    }

    v7 = transactionCopy;
  }
}

- (id)_createAuthenticationPayload
{
  dataSource = [(RPNearFieldDaemonController *)self dataSource];
  currentContext = [(RPNearFieldDaemonController *)self currentContext];
  pkData = [currentContext pkData];
  currentContext2 = [(RPNearFieldDaemonController *)self currentContext];
  bonjourListenerUUID = [currentContext2 bonjourListenerUUID];
  v8 = [dataSource createAuthenticationPayloadWithPkData:pkData bonjourListenerUUID:bonjourListenerUUID];

  return v8;
}

- (BOOL)_supportsApplicationLabel:(id)label
{
  labelCopy = label;
  currentContext = [(RPNearFieldDaemonController *)self currentContext];
  supportedApplicationLabels = [currentContext supportedApplicationLabels];
  v7 = [supportedApplicationLabels count];

  if (v7)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    currentContext2 = [(RPNearFieldDaemonController *)self currentContext];
    supportedApplicationLabels2 = [currentContext2 supportedApplicationLabels];

    v10 = [supportedApplicationLabels2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = *v15;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(supportedApplicationLabels2);
          }

          if ([labelCopy hasPrefix:*(*(&v14 + 1) + 8 * i)])
          {
            if (dword_1001D34D0 <= 30 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
            {
              sub_100116398();
            }

            LOBYTE(v10) = 1;
            goto LABEL_15;
          }
        }

        v10 = [supportedApplicationLabels2 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (id)_createValidationPayload
{
  currentTransaction = [(RPNearFieldDaemonController *)self currentTransaction];

  if (!currentTransaction && dword_1001D34D0 <= 115 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001163D8();
  }

  currentTransaction2 = [(RPNearFieldDaemonController *)self currentTransaction];
  remoteIdentity = [currentTransaction2 remoteIdentity];
  v6 = remoteIdentity != 0;

  currentTransaction3 = [(RPNearFieldDaemonController *)self currentTransaction];
  remoteAuthenticationMessage = [currentTransaction3 remoteAuthenticationMessage];
  applicationLabel = [remoteAuthenticationMessage applicationLabel];

  v10 = [(RPNearFieldDaemonController *)self _supportsApplicationLabel:applicationLabel];
  dataSource = [(RPNearFieldDaemonController *)self dataSource];
  v12 = [dataSource createValidationPayloadWithKnownIdentity:v6 supportsApplicationLabel:v10];

  return v12;
}

- (id)_payloadForType:(int64_t)type
{
  if (sub_1000583E8(type))
  {
    _createAuthenticationPayload = [(RPNearFieldDaemonController *)self _createAuthenticationPayload];
  }

  else if (type == 2)
  {
    _createAuthenticationPayload = [(RPNearFieldDaemonController *)self _createValidationPayload];
  }

  else
  {
    _createAuthenticationPayload = 0;
  }

  return _createAuthenticationPayload;
}

- (id)_convertToLegacyApplicationLabelIfNeeded:(id)needed forVersion:(id)version
{
  neededCopy = needed;
  versionCopy = version;
  if (qword_1001D6108 != -1)
  {
    sub_1001163F8();
  }

  v7 = neededCopy;
  v8 = v7;
  if ([versionCopy isEqualToString:@"1.0"])
  {
    v9 = [qword_1001D6100 objectForKeyedSubscript:v7];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v7;
    }

    v8 = v11;
  }

  return v8;
}

- (id)_convertToUpdatedApplicationLabelIfNeeded:(id)needed forVersion:(id)version
{
  neededCopy = needed;
  versionCopy = version;
  if (qword_1001D6118 != -1)
  {
    sub_10011640C();
  }

  v7 = neededCopy;
  v8 = v7;
  if ([versionCopy isEqualToString:@"1.0"])
  {
    v9 = [qword_1001D6110 objectForKeyedSubscript:v7];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v7;
    }

    v8 = v11;
  }

  return v8;
}

- (id)transactionController:(id)controller requestMessageForType:(int64_t)type
{
  currentTransaction = [(RPNearFieldDaemonController *)self currentTransaction];

  if (currentTransaction)
  {
    v7 = [(RPNearFieldDaemonController *)self _payloadForType:type];
    v8 = @"1.1";
    if (type == 2)
    {
      currentTransaction2 = [(RPNearFieldDaemonController *)self currentTransaction];
      remoteAuthenticationMessage = [currentTransaction2 remoteAuthenticationMessage];
      version = [remoteAuthenticationMessage version];

      v8 = version;
    }

    currentContext = [(RPNearFieldDaemonController *)self currentContext];
    applicationLabel = [currentContext applicationLabel];
    v14 = [(RPNearFieldDaemonController *)self _convertToLegacyApplicationLabelIfNeeded:applicationLabel forVersion:v8];

    if (dword_1001D34D0 <= 30 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
    {
      v19 = v8;
      v20 = v14;
      typeCopy = type;
      LogPrintF();
    }

    v16 = [(RPNearFieldDaemonController *)self dataSource:typeCopy];
    v15 = [v16 createRequestMessageWithApplicationLabel:v14 payload:v7];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)transactionController:(id)controller responseMessageForRequestMessage:(id)message
{
  messageCopy = message;
  currentTransaction = [(RPNearFieldDaemonController *)self currentTransaction];

  if (currentTransaction)
  {
    payload = [messageCopy payload];
    v8 = -[RPNearFieldDaemonController _payloadForType:](self, "_payloadForType:", [payload type]);

    currentContext = [(RPNearFieldDaemonController *)self currentContext];
    applicationLabel = [currentContext applicationLabel];
    version = [messageCopy version];
    v12 = [(RPNearFieldDaemonController *)self _convertToLegacyApplicationLabelIfNeeded:applicationLabel forVersion:version];

    dataSource = [(RPNearFieldDaemonController *)self dataSource];
    v14 = [dataSource createResponseWithApplicationLabel:v12 payload:v8 forRequestMessage:messageCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)transactionController:(id)controller tapEventForApplicationLabel:(id)label singleBandAWDLModeRequested:(BOOL)requested pkData:(id)data bonjourListenerUUID:(id)d identity:(id)identity
{
  requestedCopy = requested;
  identityCopy = identity;
  dCopy = d;
  dataCopy = data;
  labelCopy = label;
  currentTransaction = [(RPNearFieldDaemonController *)self currentTransaction];
  localValidationMessage = [currentTransaction localValidationMessage];
  payload = [localValidationMessage payload];

  currentTransaction2 = [(RPNearFieldDaemonController *)self currentTransaction];
  remoteValidationMessage = [currentTransaction2 remoteValidationMessage];
  payload2 = [remoteValidationMessage payload];

  supportsApplicationLabel = [payload supportsApplicationLabel];
  LODWORD(remoteValidationMessage) = [supportsApplicationLabel BOOLValue];

  if (remoteValidationMessage)
  {
    supportsApplicationLabel2 = [payload2 supportsApplicationLabel];

    if (supportsApplicationLabel2)
    {
      supportsApplicationLabel3 = [payload2 supportsApplicationLabel];
      v24 = [supportsApplicationLabel3 BOOLValue] ^ 1;
    }

    else
    {
      currentContext = [(RPNearFieldDaemonController *)self currentContext];
      applicationLabel = [currentContext applicationLabel];
      supportsApplicationLabel3 = [(RPNearFieldDaemonController *)self _convertToLegacyApplicationLabelIfNeeded:applicationLabel forVersion:@"1.0"];

      currentTransaction3 = [(RPNearFieldDaemonController *)self currentTransaction];
      remoteValidationMessage2 = [currentTransaction3 remoteValidationMessage];
      applicationLabel2 = [remoteValidationMessage2 applicationLabel];

      _legacyApplicationLabels = [objc_opt_class() _legacyApplicationLabels];
      if ([_legacyApplicationLabels containsObject:supportsApplicationLabel3])
      {
        LOBYTE(v30) = 0;
      }

      else
      {
        v30 = [supportsApplicationLabel3 hasPrefix:@"com.apple.airdrop"] ^ 1;
      }

      _legacyApplicationLabels2 = [objc_opt_class() _legacyApplicationLabels];
      v32 = [_legacyApplicationLabels2 containsObject:applicationLabel2];

      v24 = v30 | v32 ^ 1;
    }
  }

  else
  {
    v24 = 1;
  }

  currentTransaction4 = [(RPNearFieldDaemonController *)self currentTransaction];
  remoteValidationMessage3 = [currentTransaction4 remoteValidationMessage];
  version = [remoteValidationMessage3 version];

  v36 = [(RPNearFieldDaemonController *)self _convertToUpdatedApplicationLabelIfNeeded:labelCopy forVersion:version];

  dataSource = [(RPNearFieldDaemonController *)self dataSource];
  LODWORD(v40) = [(RPNearFieldDaemonController *)self _flagsForVersion:version];
  v38 = [dataSource createTapEventWithApplicationLabel:v36 singleBandAWDLModeRequested:requestedCopy pkData:dataCopy bonjourListenerUUID:dCopy identity:identityCopy isUnsupportedApplicationLabel:v24 & 1 flags:v40];

  return v38;
}

@end