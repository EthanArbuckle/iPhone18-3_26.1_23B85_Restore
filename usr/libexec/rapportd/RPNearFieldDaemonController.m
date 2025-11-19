@interface RPNearFieldDaemonController
+ (id)_legacyApplicationLabels;
- (BOOL)_supportsApplicationLabel:(id)a3;
- (BOOL)hasCurrentTransaction;
- (RPNearFieldDaemonController)initWithConnection:(id)a3 dispatchQueue:(id)a4;
- (id)_convertToLegacyApplicationLabelIfNeeded:(id)a3 forVersion:(id)a4;
- (id)_convertToUpdatedApplicationLabelIfNeeded:(id)a3 forVersion:(id)a4;
- (id)_createAuthenticationPayload;
- (id)_createValidationPayload;
- (id)_payloadForType:(int64_t)a3;
- (id)_remoteObjectProxy;
- (id)transactionController:(id)a3 requestMessageForType:(int64_t)a4;
- (id)transactionController:(id)a3 responseMessageForRequestMessage:(id)a4;
- (id)transactionController:(id)a3 tapEventForApplicationLabel:(id)a4 singleBandAWDLModeRequested:(BOOL)a5 pkData:(id)a6 bonjourListenerUUID:(id)a7 identity:(id)a8;
- (void)_clearCurrentTransaction;
- (void)_startTransactionControllerIfNeeded;
- (void)_stopTransactionControllerIfNeeded;
- (void)didChangeStateForTransaction:(id)a3;
- (void)invalidate;
- (void)invalidateTransactionWithIdentifier:(id)a3;
- (void)invalidateTransactionWithIdentifier:(id)a3 context:(id)a4;
- (void)setCurrentPreferredPollingType:(int64_t)a3;
- (void)setEnabled:(BOOL)a3;
- (void)startPolling:(int64_t)a3 context:(id)a4;
- (void)stop;
- (void)transactionController:(id)a3 didBeginTransaction:(id)a4;
- (void)transactionController:(id)a3 didFinishTransaction:(id)a4 error:(id)a5;
@end

@implementation RPNearFieldDaemonController

- (BOOL)hasCurrentTransaction
{
  v2 = self;
  v3 = [(RPNearFieldDaemonController *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(RPNearFieldDaemonController *)v2 currentTransaction];
  LOBYTE(v2) = v4 != 0;

  return v2;
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

- (RPNearFieldDaemonController)initWithConnection:(id)a3 dispatchQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = RPNearFieldDaemonController;
  v9 = [(RPNearFieldDaemonController *)&v13 init];
  if (v9)
  {
    if (dword_1001D34D0 <= 30 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
    {
      sub_100115FF0();
    }

    objc_storeStrong(&v9->_connection, a3);
    objc_storeStrong(&v9->_dispatchQueue, a4);
    v10 = [[RPNearFieldDataSource alloc] initWithDispatchQueue:v8];
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
  v3 = [(RPNearFieldDaemonController *)self connection];
  [v3 invalidate];

  [(RPNearFieldDaemonController *)self setConnection:0];

  [(RPNearFieldDaemonController *)self setTransactionChangedHandler:0];
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled == a3)
  {
    return;
  }

  v3 = a3;
  self->_enabled = a3;
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
  if (v3)
  {

    [(RPNearFieldDaemonController *)self _startTransactionControllerIfNeeded];
  }

  else
  {

    [(RPNearFieldDaemonController *)self _stopTransactionControllerIfNeeded];
  }
}

- (void)startPolling:(int64_t)a3 context:(id)a4
{
  v16 = a4;
  if (dword_1001D34D0 <= 30 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
  {
    sub_100116040(v16);
  }

  if (![(RPNearFieldDaemonController *)self isActive])
  {
    goto LABEL_14;
  }

  v6 = [(RPNearFieldDaemonController *)self currentContext];
  v7 = v16;
  v8 = v7;
  if (v6 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = (v7 == 0) == (v6 != 0) ? 1 : [v6 isEqual:v7] ^ 1;
  }

  v10 = [(RPNearFieldDaemonController *)self transactionController];
  if (v10)
  {
    v11 = [(RPNearFieldDaemonController *)self transactionController];
    v12 = [v11 preferredPollingType] != a3;
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
    [(RPNearFieldDaemonController *)self setCurrentContext:v16];
    [(RPNearFieldDaemonController *)self setCurrentPreferredPollingType:a3];
    [(RPNearFieldDaemonController *)self setIsActive:1];
    v13 = [(RPNearFieldDaemonController *)self currentTransaction];

    if (v13)
    {
      v14 = [(RPNearFieldDaemonController *)self currentTransaction];
      v15 = [v14 identifier];
      [(RPNearFieldDaemonController *)self invalidateTransactionWithIdentifier:v15];
    }

    else
    {
      [(RPNearFieldDaemonController *)self _startTransactionControllerIfNeeded];
    }
  }
}

- (void)setCurrentPreferredPollingType:(int64_t)a3
{
  if (self->_currentPreferredPollingType != a3)
  {
    self->_currentPreferredPollingType = a3;
    v5 = [(RPNearFieldDaemonController *)self transactionController];
    [v5 setPreferredPollingType:a3];
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
    v3 = [(RPNearFieldDaemonController *)self currentTransaction];

    if (v3)
    {
      v5 = [(RPNearFieldDaemonController *)self currentTransaction];
      v4 = [v5 identifier];
      [(RPNearFieldDaemonController *)self invalidateTransactionWithIdentifier:v4];
    }
  }
}

- (void)invalidateTransactionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(RPNearFieldDaemonController *)self currentContext];
  [(RPNearFieldDaemonController *)self invalidateTransactionWithIdentifier:v4 context:v5];
}

- (void)invalidateTransactionWithIdentifier:(id)a3 context:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (dword_1001D34D0 <= 30 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001160E4(self);
  }

  [(RPNearFieldDaemonController *)self setCurrentContext:v6];
  v7 = [(RPNearFieldDaemonController *)self currentTransaction];
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = v7;
  v9 = [(RPNearFieldDaemonController *)self currentTransaction];
  v10 = [v9 identifier];
  v11 = [v10 isEqual:v14];

  if (v11)
  {
    v12 = [(RPNearFieldDaemonController *)self transactionController];
    v13 = [(RPNearFieldDaemonController *)self currentTransaction];
    [v12 invalidateTransaction:v13];

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
  v3 = [(RPNearFieldDaemonController *)self transactionController];
  v4 = [v3 isRunning];

  if ((v4 & 1) == 0 && [(RPNearFieldDaemonController *)self isActive])
  {
    if (dword_1001D34D0 <= 30 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001161B0();
    }

    if ([(RPNearFieldDaemonController *)self enabled])
    {
      v5 = [(RPNearFieldDaemonController *)self currentTransaction];

      if (v5)
      {
        if (dword_1001D34D0 <= 90 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001161E8();
        }
      }

      else
      {
        v6 = [(RPNearFieldDaemonController *)self transactionController];

        if (!v6)
        {
          v7 = [[RPNFCTransactionController alloc] initWithPreferredPollingType:[(RPNearFieldDaemonController *)self currentPreferredPollingType] dispatchQueue:self->_dispatchQueue];
          transactionController = self->_transactionController;
          self->_transactionController = v7;
        }

        v9 = [(RPNearFieldDaemonController *)self transactionController];
        [v9 setDataSource:self];

        v10 = [(RPNearFieldDaemonController *)self transactionController];
        [v10 setDelegate:self];

        v11 = [(RPNearFieldDaemonController *)self transactionController];
        [v11 start];
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
  v3 = [(RPNearFieldDaemonController *)self transactionController];
  v4 = [v3 isRunning];

  if (v4)
  {
    if (dword_1001D34D0 <= 30 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
    {
      sub_100116204();
    }

    v5 = [(RPNearFieldDaemonController *)self transactionController];
    [v5 setDataSource:0];

    v6 = [(RPNearFieldDaemonController *)self transactionController];
    [v6 setDelegate:0];

    v7 = [(RPNearFieldDaemonController *)self transactionController];
    [v7 stop];
  }
}

- (void)_clearCurrentTransaction
{
  if (dword_1001D34D0 <= 30 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
  {
    sub_100116220(self);
  }

  v3 = [(RPNearFieldDaemonController *)self currentTransaction];
  [v3 setDelegate:0];

  [(RPNearFieldDaemonController *)self setCurrentTransaction:0];
  v4 = [(RPNearFieldDaemonController *)self transactionChangedHandler];

  if (v4)
  {
    v5 = [(RPNearFieldDaemonController *)self transactionChangedHandler];
    v5[2]();
  }
}

- (id)_remoteObjectProxy
{
  v2 = [(RPNearFieldDaemonController *)self connection];
  v3 = [v2 remoteObjectProxyWithErrorHandler:&stru_1001AC518];

  return v3;
}

- (void)didChangeStateForTransaction:(id)a3
{
  v4 = a3;
  v5 = [(RPNearFieldDaemonController *)self currentTransaction];

  if (v5 == v4)
  {
    if (dword_1001D34D0 <= 30 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001162BC();
    }

    if ([v4 state] == 2)
    {
      v6 = +[RPIdentityDaemon sharedIdentityDaemon];
      v7 = [v4 remoteIdentity];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100047794;
      v9[3] = &unk_1001AC540;
      v9[4] = self;
      v10 = v4;
      [v6 isContactValidForIdentity:v7 completionBlock:v9];
    }

    else
    {
      v8 = [(RPNearFieldDaemonController *)self _remoteObjectProxy];
      [v8 didUpdateTransaction:v4];
    }
  }
}

- (void)transactionController:(id)a3 didBeginTransaction:(id)a4
{
  v9 = a4;
  v5 = [(RPNearFieldDaemonController *)self currentTransaction];

  if (!v5)
  {
    if (dword_1001D34D0 <= 30 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
    {
      sub_100116318();
    }

    [(RPNearFieldDaemonController *)self setCurrentTransaction:v9];
    [v9 setDelegate:self];
    v6 = [(RPNearFieldDaemonController *)self _remoteObjectProxy];
    [v6 didBeginTransaction:v9];

    v7 = [(RPNearFieldDaemonController *)self transactionChangedHandler];

    if (v7)
    {
      v8 = [(RPNearFieldDaemonController *)self transactionChangedHandler];
      v8[2]();
    }
  }
}

- (void)transactionController:(id)a3 didFinishTransaction:(id)a4 error:(id)a5
{
  v8 = a4;
  v6 = [(RPNearFieldDaemonController *)self currentTransaction];

  v7 = v8;
  if (v6 == v8)
  {
    if ([v8 state] == 2)
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

    v7 = v8;
  }
}

- (id)_createAuthenticationPayload
{
  v3 = [(RPNearFieldDaemonController *)self dataSource];
  v4 = [(RPNearFieldDaemonController *)self currentContext];
  v5 = [v4 pkData];
  v6 = [(RPNearFieldDaemonController *)self currentContext];
  v7 = [v6 bonjourListenerUUID];
  v8 = [v3 createAuthenticationPayloadWithPkData:v5 bonjourListenerUUID:v7];

  return v8;
}

- (BOOL)_supportsApplicationLabel:(id)a3
{
  v4 = a3;
  v5 = [(RPNearFieldDaemonController *)self currentContext];
  v6 = [v5 supportedApplicationLabels];
  v7 = [v6 count];

  if (v7)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [(RPNearFieldDaemonController *)self currentContext];
    v9 = [v8 supportedApplicationLabels];

    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = *v15;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v9);
          }

          if ([v4 hasPrefix:*(*(&v14 + 1) + 8 * i)])
          {
            if (dword_1001D34D0 <= 30 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
            {
              sub_100116398();
            }

            LOBYTE(v10) = 1;
            goto LABEL_15;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v3 = [(RPNearFieldDaemonController *)self currentTransaction];

  if (!v3 && dword_1001D34D0 <= 115 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001163D8();
  }

  v4 = [(RPNearFieldDaemonController *)self currentTransaction];
  v5 = [v4 remoteIdentity];
  v6 = v5 != 0;

  v7 = [(RPNearFieldDaemonController *)self currentTransaction];
  v8 = [v7 remoteAuthenticationMessage];
  v9 = [v8 applicationLabel];

  v10 = [(RPNearFieldDaemonController *)self _supportsApplicationLabel:v9];
  v11 = [(RPNearFieldDaemonController *)self dataSource];
  v12 = [v11 createValidationPayloadWithKnownIdentity:v6 supportsApplicationLabel:v10];

  return v12;
}

- (id)_payloadForType:(int64_t)a3
{
  if (sub_1000583E8(a3))
  {
    v5 = [(RPNearFieldDaemonController *)self _createAuthenticationPayload];
  }

  else if (a3 == 2)
  {
    v5 = [(RPNearFieldDaemonController *)self _createValidationPayload];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_convertToLegacyApplicationLabelIfNeeded:(id)a3 forVersion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_1001D6108 != -1)
  {
    sub_1001163F8();
  }

  v7 = v5;
  v8 = v7;
  if ([v6 isEqualToString:@"1.0"])
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

- (id)_convertToUpdatedApplicationLabelIfNeeded:(id)a3 forVersion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_1001D6118 != -1)
  {
    sub_10011640C();
  }

  v7 = v5;
  v8 = v7;
  if ([v6 isEqualToString:@"1.0"])
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

- (id)transactionController:(id)a3 requestMessageForType:(int64_t)a4
{
  v6 = [(RPNearFieldDaemonController *)self currentTransaction];

  if (v6)
  {
    v7 = [(RPNearFieldDaemonController *)self _payloadForType:a4];
    v8 = @"1.1";
    if (a4 == 2)
    {
      v9 = [(RPNearFieldDaemonController *)self currentTransaction];
      v10 = [v9 remoteAuthenticationMessage];
      v11 = [v10 version];

      v8 = v11;
    }

    v12 = [(RPNearFieldDaemonController *)self currentContext];
    v13 = [v12 applicationLabel];
    v14 = [(RPNearFieldDaemonController *)self _convertToLegacyApplicationLabelIfNeeded:v13 forVersion:v8];

    if (dword_1001D34D0 <= 30 && (dword_1001D34D0 != -1 || _LogCategory_Initialize()))
    {
      v19 = v8;
      v20 = v14;
      v18 = a4;
      LogPrintF();
    }

    v16 = [(RPNearFieldDaemonController *)self dataSource:v18];
    v15 = [v16 createRequestMessageWithApplicationLabel:v14 payload:v7];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)transactionController:(id)a3 responseMessageForRequestMessage:(id)a4
{
  v5 = a4;
  v6 = [(RPNearFieldDaemonController *)self currentTransaction];

  if (v6)
  {
    v7 = [v5 payload];
    v8 = -[RPNearFieldDaemonController _payloadForType:](self, "_payloadForType:", [v7 type]);

    v9 = [(RPNearFieldDaemonController *)self currentContext];
    v10 = [v9 applicationLabel];
    v11 = [v5 version];
    v12 = [(RPNearFieldDaemonController *)self _convertToLegacyApplicationLabelIfNeeded:v10 forVersion:v11];

    v13 = [(RPNearFieldDaemonController *)self dataSource];
    v14 = [v13 createResponseWithApplicationLabel:v12 payload:v8 forRequestMessage:v5];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)transactionController:(id)a3 tapEventForApplicationLabel:(id)a4 singleBandAWDLModeRequested:(BOOL)a5 pkData:(id)a6 bonjourListenerUUID:(id)a7 identity:(id)a8
{
  v42 = a5;
  v43 = a8;
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = [(RPNearFieldDaemonController *)self currentTransaction];
  v16 = [v15 localValidationMessage];
  v17 = [v16 payload];

  v18 = [(RPNearFieldDaemonController *)self currentTransaction];
  v19 = [v18 remoteValidationMessage];
  v20 = [v19 payload];

  v21 = [v17 supportsApplicationLabel];
  LODWORD(v19) = [v21 BOOLValue];

  if (v19)
  {
    v22 = [v20 supportsApplicationLabel];

    if (v22)
    {
      v23 = [v20 supportsApplicationLabel];
      v24 = [v23 BOOLValue] ^ 1;
    }

    else
    {
      v25 = [(RPNearFieldDaemonController *)self currentContext];
      v26 = [v25 applicationLabel];
      v23 = [(RPNearFieldDaemonController *)self _convertToLegacyApplicationLabelIfNeeded:v26 forVersion:@"1.0"];

      v27 = [(RPNearFieldDaemonController *)self currentTransaction];
      v28 = [v27 remoteValidationMessage];
      v41 = [v28 applicationLabel];

      v29 = [objc_opt_class() _legacyApplicationLabels];
      if ([v29 containsObject:v23])
      {
        LOBYTE(v30) = 0;
      }

      else
      {
        v30 = [v23 hasPrefix:@"com.apple.airdrop"] ^ 1;
      }

      v31 = [objc_opt_class() _legacyApplicationLabels];
      v32 = [v31 containsObject:v41];

      v24 = v30 | v32 ^ 1;
    }
  }

  else
  {
    v24 = 1;
  }

  v33 = [(RPNearFieldDaemonController *)self currentTransaction];
  v34 = [v33 remoteValidationMessage];
  v35 = [v34 version];

  v36 = [(RPNearFieldDaemonController *)self _convertToUpdatedApplicationLabelIfNeeded:v14 forVersion:v35];

  v37 = [(RPNearFieldDaemonController *)self dataSource];
  LODWORD(v40) = [(RPNearFieldDaemonController *)self _flagsForVersion:v35];
  v38 = [v37 createTapEventWithApplicationLabel:v36 singleBandAWDLModeRequested:v42 pkData:v13 bonjourListenerUUID:v12 identity:v43 isUnsupportedApplicationLabel:v24 & 1 flags:v40];

  return v38;
}

@end