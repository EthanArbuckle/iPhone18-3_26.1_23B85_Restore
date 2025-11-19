@interface RPNFCTransactionController
- (BOOL)_didReceiveAuthenticationResponseWithResult:(id)a3 error:(id)a4;
- (BOOL)_didReceiveValidationResponseWithResult:(id)a3 error:(id)a4;
- (RPNFCTransactionController)initWithPreferredPollingType:(int64_t)a3 dispatchQueue:(id)a4;
- (RPNFCTransactionControllerDataSource)dataSource;
- (RPNFCTransactionControllerDelegate)delegate;
- (id)_createOneShotTimerWithInterval:(double)a3 completionHandler:(id)a4;
- (id)_createTapEventForApplicationLabel:(id)a3;
- (void)_beginTransactionForRole:(int64_t)a3;
- (void)_didReceiveAuthenticationMessage:(id)a3;
- (void)_didReceiveValidationMessage:(id)a3;
- (void)_fileTTRForError:(id)a3;
- (void)_finishCurrentTransactionWithError:(id)a3;
- (void)_releasePowerAssertion;
- (void)_requestPowerAssertion;
- (void)_startBecomeInitiatorTimer;
- (void)_startConnectToReceiverTimer;
- (void)_startInitiator;
- (void)_startInitiatorLimitTimer;
- (void)_startPollingCoolDownTimer;
- (void)_startReceiver;
- (void)_stopBecomeInitiatorTimer;
- (void)_stopConnectToReceiverTimer;
- (void)_stopInitiator;
- (void)_stopInitiatorLimitTimer;
- (void)_stopPollingCoolDownTimer;
- (void)_stopReceiver;
- (void)_stopTimers;
- (void)_updatePolling;
- (void)controller:(id)a3 didInvalidate:(id)a4;
- (void)controller:(id)a3 didReceiveField:(id)a4;
- (void)controller:(id)a3 didReceiveRequest:(id)a4;
- (void)controllerDidConnectToReceiver:(id)a3;
- (void)controllerDidDetectUnsupportedInitiatorVersion:(id)a3;
- (void)controllerDidDetectUnsupportedReceiverVersion:(id)a3;
- (void)didConnectedToInitiator:(id)a3;
- (void)didDisconnectedFromInitiator:(id)a3;
- (void)invalidateTransaction:(id)a3;
- (void)setInitiatorState:(int64_t)a3;
- (void)setPreferredPollingType:(int64_t)a3;
- (void)setReceiverState:(int64_t)a3;
- (void)start;
- (void)stop;
@end

@implementation RPNFCTransactionController

- (RPNFCTransactionController)initWithPreferredPollingType:(int64_t)a3 dispatchQueue:(id)a4
{
  v7 = a4;
  v10.receiver = self;
  v10.super_class = RPNFCTransactionController;
  v8 = [(RPNFCTransactionController *)&v10 init];
  if (v8)
  {
    if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011EC64();
    }

    v8->_preferredPollingType = a3;
    objc_storeStrong(&v8->_dispatchQueue, a4);
    v8->_receiverState = 0;
    v8->_initiatorState = 0;
  }

  return v8;
}

- (void)setPreferredPollingType:(int64_t)a3
{
  if (self->_preferredPollingType != a3)
  {
    self->_preferredPollingType = a3;
    [(RPNFCTransactionController *)self _updatePolling];
  }
}

- (void)_updatePolling
{
  if ([(RPNFCTransactionController *)self isRunning])
  {
    if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011ECA4(self);
    }

    [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:0];
    [(RPNFCTransactionController *)self _startReceiver];
    if ([(RPNFCTransactionController *)self preferredPollingType]== 2)
    {

      [(RPNFCTransactionController *)self _startInitiator];
    }

    else
    {

      [(RPNFCTransactionController *)self _stopInitiator];
    }
  }
}

- (void)setInitiatorState:(int64_t)a3
{
  if (self->_initiatorState != a3)
  {
    self->_initiatorState = a3;
    if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011ECE8();
    }
  }
}

- (void)setReceiverState:(int64_t)a3
{
  if (self->_receiverState != a3)
  {
    self->_receiverState = a3;
    if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011ED50();
    }
  }
}

- (void)start
{
  if (![(RPNFCTransactionController *)self isRunning])
  {
    [(RPNFCTransactionController *)self setIsRunning:1];
    if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011EDB8();
    }

    [(RPNFCTransactionController *)self _updatePolling];
  }
}

- (void)stop
{
  if ([(RPNFCTransactionController *)self isRunning])
  {
    [(RPNFCTransactionController *)self setIsRunning:0];
    if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011EDD4();
    }

    [(RPNFCTransactionController *)self _stopInitiator];
    [(RPNFCTransactionController *)self _stopReceiver];
    [(RPNFCTransactionController *)self _stopTimers];

    [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:0];
  }
}

- (void)invalidateTransaction:(id)a3
{
  v9 = a3;
  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011EDF0(v9);
  }

  v4 = [(RPNFCTransactionController *)self currentTransaction];

  if (v4)
  {
    v5 = [(RPNFCTransactionController *)self currentTransaction];
    v6 = [v5 identifier];
    v7 = [v9 identifier];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
      [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:0];
    }

    else if (dword_1001D4330 <= 90 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011EE4C(self);
    }
  }
}

- (void)_startInitiator
{
  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011EEC4();
  }

  if ([(RPNFCTransactionController *)self initiatorState]== 1)
  {
    if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011EEFC();
    }
  }

  else if ([(RPNFCTransactionController *)self initiatorState]== 2)
  {
    if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011EEE0();
    }

    [(RPNFCTransactionController *)self setPendingInitiator:1];
  }

  else
  {
    [(RPNFCTransactionController *)self setInitiatorState:1];
    [(RPNFCTransactionController *)self setPendingInitiator:0];
    initiator = self->_initiator;
    if (!initiator)
    {
      v4 = [(objc_class *)off_1001D43A0() initiatorWithDelegate:self callbackQueue:self->_dispatchQueue];
      v5 = self->_initiator;
      self->_initiator = v4;

      initiator = self->_initiator;
    }

    [(NFConnectionHandoverInitiator *)initiator setDelegate:self];
    [(NFConnectionHandoverInitiator *)self->_initiator start];
    [(RPNFCTransactionController *)self _startInitiatorLimitTimer];
    if (![(RPNFCTransactionController *)self preferredPollingType])
    {

      [(RPNFCTransactionController *)self _startConnectToReceiverTimer];
    }
  }
}

- (void)_stopInitiator
{
  if ([(RPNFCTransactionController *)self initiatorState]== 1)
  {
    if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011EF18();
    }

    [(NFConnectionHandoverInitiator *)self->_initiator stop];
    [(RPNFCTransactionController *)self setInitiatorState:2];
    [(RPNFCTransactionController *)self _stopInitiatorLimitTimer];
  }

  [(RPNFCTransactionController *)self setPendingInitiator:0];
}

- (void)_startReceiver
{
  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011EF34();
  }

  if ([(RPNFCTransactionController *)self receiverState]== 1)
  {
    if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011EF6C();
    }
  }

  else if ([(RPNFCTransactionController *)self receiverState]== 2)
  {
    if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011EF50();
    }

    [(RPNFCTransactionController *)self setPendingReceiver:1];
  }

  else
  {
    [(RPNFCTransactionController *)self setReceiverState:1];
    [(RPNFCTransactionController *)self setPendingReceiver:0];
    receiver = self->_receiver;
    if (!receiver)
    {
      v4 = [(objc_class *)off_1001D43A8() receiverWithDelegate:self callbackQueue:self->_dispatchQueue];
      v5 = self->_receiver;
      self->_receiver = v4;

      receiver = self->_receiver;
    }

    [(NFConnectionHandoverReceiver *)receiver setDelegate:self];
    v6 = self->_receiver;

    [(NFConnectionHandoverReceiver *)v6 start];
  }
}

- (void)_stopReceiver
{
  if ([(RPNFCTransactionController *)self receiverState]== 1)
  {
    if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011EF88();
    }

    [(NFConnectionHandoverReceiver *)self->_receiver stop];
    [(RPNFCTransactionController *)self setReceiverState:2];
  }

  [(RPNFCTransactionController *)self setPendingReceiver:0];
}

- (void)_stopTimers
{
  [(RPNFCTransactionController *)self _stopPollingCoolDownTimer];
  [(RPNFCTransactionController *)self _stopInitiatorLimitTimer];
  [(RPNFCTransactionController *)self _stopConnectToReceiverTimer];

  [(RPNFCTransactionController *)self _stopBecomeInitiatorTimer];
}

- (id)_createOneShotTimerWithInterval:(double)a3 completionHandler:(id)a4
{
  dispatchQueue = self->_dispatchQueue;
  v6 = a4;
  dispatch_assert_queue_V2(dispatchQueue);
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  dispatch_source_set_event_handler(v7, v6);

  CUDispatchTimerSet();

  return v7;
}

- (void)_startPollingCoolDownTimer
{
  [(RPNFCTransactionController *)self _stopPollingCoolDownTimer];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10007C068;
  v4[3] = &unk_1001AA970;
  v4[4] = self;
  v3 = [(RPNFCTransactionController *)self _createOneShotTimerWithInterval:v4 completionHandler:10.0];
  [(RPNFCTransactionController *)self setPollingCoolDownTimer:v3];
  dispatch_activate(v3);
}

- (void)_stopPollingCoolDownTimer
{
  v3 = [(RPNFCTransactionController *)self pollingCoolDownTimer];

  if (v3)
  {
    if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011EFE8();
    }

    pollingCoolDownTimer = self->_pollingCoolDownTimer;
    if (pollingCoolDownTimer)
    {
      v5 = pollingCoolDownTimer;
      dispatch_source_cancel(v5);
      v6 = self->_pollingCoolDownTimer;
      self->_pollingCoolDownTimer = 0;
    }

    [(RPNFCTransactionController *)self setPollingCoolDownTimer:0];
  }
}

- (void)_startConnectToReceiverTimer
{
  [(RPNFCTransactionController *)self _stopConnectToReceiverTimer];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10007C27C;
  v4[3] = &unk_1001AA970;
  v4[4] = self;
  v3 = [(RPNFCTransactionController *)self _createOneShotTimerWithInterval:v4 completionHandler:(arc4random_uniform(3u) + 3)];
  [(RPNFCTransactionController *)self setConnectToReceiverTimer:v3];
  dispatch_activate(v3);
  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011F004();
  }
}

- (void)_stopConnectToReceiverTimer
{
  v3 = [(RPNFCTransactionController *)self connectToReceiverTimer];

  if (v3)
  {
    if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011F060();
    }

    connectToReceiverTimer = self->_connectToReceiverTimer;
    if (connectToReceiverTimer)
    {
      v5 = connectToReceiverTimer;
      dispatch_source_cancel(v5);
      v6 = self->_connectToReceiverTimer;
      self->_connectToReceiverTimer = 0;
    }

    [(RPNFCTransactionController *)self setConnectToReceiverTimer:0];
  }
}

- (void)_startInitiatorLimitTimer
{
  [(RPNFCTransactionController *)self _stopInitiatorLimitTimer];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10007C480;
  v4[3] = &unk_1001AA970;
  v4[4] = self;
  v3 = [(RPNFCTransactionController *)self _createOneShotTimerWithInterval:v4 completionHandler:60.0];
  [(RPNFCTransactionController *)self setInitiatorLimitTimer:v3];
  dispatch_activate(v3);
}

- (void)_stopInitiatorLimitTimer
{
  v3 = [(RPNFCTransactionController *)self initiatorLimitTimer];

  if (v3)
  {
    initiatorLimitTimer = self->_initiatorLimitTimer;
    if (initiatorLimitTimer)
    {
      v5 = initiatorLimitTimer;
      dispatch_source_cancel(v5);
      v6 = self->_initiatorLimitTimer;
      self->_initiatorLimitTimer = 0;
    }

    [(RPNFCTransactionController *)self setInitiatorLimitTimer:0];
  }
}

- (void)_startBecomeInitiatorTimer
{
  [(RPNFCTransactionController *)self _stopBecomeInitiatorTimer];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10007C614;
  v4[3] = &unk_1001AA970;
  v4[4] = self;
  v3 = [(RPNFCTransactionController *)self _createOneShotTimerWithInterval:v4 completionHandler:0.7];
  [(RPNFCTransactionController *)self setBecomeInitiatorTimer:v3];
  dispatch_activate(v3);
}

- (void)_stopBecomeInitiatorTimer
{
  v3 = [(RPNFCTransactionController *)self becomeInitiatorTimer];

  if (v3)
  {
    becomeInitiatorTimer = self->_becomeInitiatorTimer;
    if (becomeInitiatorTimer)
    {
      v5 = becomeInitiatorTimer;
      dispatch_source_cancel(v5);
      v6 = self->_becomeInitiatorTimer;
      self->_becomeInitiatorTimer = 0;
    }

    [(RPNFCTransactionController *)self setBecomeInitiatorTimer:0];
  }
}

- (void)_beginTransactionForRole:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011F108();
  }

  v5 = [(RPNFCTransactionController *)self currentTransaction];

  if (v5)
  {
    if (dword_1001D4330 <= 90 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011F148();
    }

    [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:0];
  }

  v6 = [[RPNFCTransaction alloc] initWithRole:a3];
  [(RPNFCTransactionController *)self setCurrentTransaction:v6];

  v8 = [(RPNFCTransactionController *)self delegate];
  v7 = [(RPNFCTransactionController *)self currentTransaction];
  [v8 transactionController:self didBeginTransaction:v7];
}

- (void)_finishCurrentTransactionWithError:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = [(RPNFCTransactionController *)self currentTransaction];

  if (v4)
  {
    [(RPNFCTransactionController *)self _stopInitiator];
    if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011F188(self);
    }

    v5 = [(RPNFCTransactionController *)self currentTransaction];
    [v5 setError:v7];
    [(RPNFCTransactionController *)self setCurrentTransaction:0];
    v6 = [(RPNFCTransactionController *)self delegate];
    [v6 transactionController:self didFinishTransaction:v5 error:v7];

    [(RPNFCTransactionController *)self _updatePolling];
  }
}

- (BOOL)_didReceiveAuthenticationResponseWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v7)
  {
    [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:v7];
    v8 = 0;
  }

  else
  {
    v9 = [RPTransportServiceHandoverMessage messageWithConnectionHandoverSelect:v6];
    v8 = v9 != 0;
    if (v9)
    {
      [(RPNFCTransactionController *)self _didReceiveAuthenticationMessage:v9];
    }

    else
    {
      if (dword_1001D4330 <= 90 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
      {
        sub_10011F1F4();
      }

      v10 = RPErrorF();
      [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:v10];
    }
  }

  return v8;
}

- (void)_didReceiveAuthenticationMessage:(id)a3
{
  v11 = a3;
  v4 = +[RPIdentityDaemon sharedIdentityDaemon];
  v5 = [v11 payload];
  v6 = [v4 resolveIdentityForNearFieldMessagePayload:v5];

  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    v9 = v11;
    v10 = v6;
    LogPrintF();
  }

  v7 = [(RPNFCTransactionController *)self currentTransaction:v9];
  [v7 setRemoteIdentity:v6];

  v8 = [(RPNFCTransactionController *)self currentTransaction];
  [v8 setRemoteAuthenticationMessage:v11];
}

- (BOOL)_didReceiveValidationResponseWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    v13 = v6;
    v14 = v7;
    LogPrintF();
  }

  v8 = v7 == 0;
  if (v7)
  {
    goto LABEL_8;
  }

  v9 = [RPTransportServiceHandoverMessage messageWithConnectionHandoverSelect:v6];
  if (v9)
  {
    v10 = v9;
    [(RPNFCTransactionController *)self _didReceiveValidationMessage:v9];

LABEL_8:
    [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:v7, v13, v14];
    goto LABEL_9;
  }

  if (dword_1001D4330 <= 90 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011F210();
  }

  v12 = RPErrorF();
  [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:v12];

  v8 = 0;
LABEL_9:

  return v8;
}

- (void)_didReceiveValidationMessage:(id)a3
{
  v8 = a3;
  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011F22C();
  }

  v4 = [(RPNFCTransactionController *)self currentTransaction];
  [v4 setRemoteValidationMessage:v8];

  v5 = [v8 applicationLabel];
  v6 = [(RPNFCTransactionController *)self _createTapEventForApplicationLabel:v5];

  v7 = [(RPNFCTransactionController *)self currentTransaction];
  [v7 setTapEvent:v6];
}

- (id)_createTapEventForApplicationLabel:(id)a3
{
  v4 = a3;
  v5 = [(RPNFCTransactionController *)self currentTransaction];
  v6 = [v5 remoteAuthenticationMessage];

  v7 = [v6 payload];
  v8 = [(RPNFCTransactionController *)self currentTransaction];
  v9 = [v8 remoteValidationMessage];
  v10 = [v9 payload];

  v11 = [v6 transportServicesMetadata];
  v12 = sub_1000582B0(v11);

  if (v10 && ![v10 isKnownIdentity])
  {
    v14 = 0;
  }

  else
  {
    v13 = [(RPNFCTransactionController *)self currentTransaction];
    v14 = [v13 remoteIdentity];
  }

  v15 = [(RPNFCTransactionController *)self dataSource];
  v16 = [v7 pkData];
  v17 = [v7 bonjourListenerUUID];
  v18 = [v15 transactionController:self tapEventForApplicationLabel:v4 singleBandAWDLModeRequested:v12 pkData:v16 bonjourListenerUUID:v17 identity:v14];

  return v18;
}

- (void)controller:(id)a3 didReceiveField:(id)a4
{
  v19 = a3;
  v6 = a4;
  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011F26C();
  }

  if ([v19 initiator])
  {
    if ([v6 chFieldType] == 4)
    {
      if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
      {
        sub_10011F358();
      }

      [(RPNFCTransactionController *)self _stopInitiator];
    }

    goto LABEL_19;
  }

  v7 = [(RPNFCTransactionController *)self currentTransaction];

  if (v7)
  {
    goto LABEL_19;
  }

  v8 = [v6 chFieldType];
  v9 = v8;
  v11 = v8 == 2 || v8 == 4;
  if ([(RPNFCTransactionController *)self preferredPollingType]== 1)
  {
    goto LABEL_18;
  }

  if (v9 > 2)
  {
    switch(v9)
    {
      case 3:
        if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
        {
          sub_10011F320();
        }

        v17 = [(RPNFCTransactionController *)self receiver];
        v18 = [v17 roleBroadcastInBackground];

        if (!v18)
        {
          if (dword_1001D4330 > 90 || dword_1001D4330 == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_19;
          }

LABEL_33:
          sub_10011F2E8();
          goto LABEL_19;
        }

        break;
      case 4:
        if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
        {
          sub_10011F304();
        }

        [(RPNFCTransactionController *)self _stopInitiator];
        goto LABEL_18;
      case 5:
        if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
        {
          sub_10011F2CC();
        }

        v13 = [(RPNFCTransactionController *)self receiver];
        v14 = [v13 roleBroadcastInBackground];

        if (!v14)
        {
          if (dword_1001D4330 > 90 || dword_1001D4330 == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_19;
          }

          goto LABEL_33;
        }

        break;
      default:
LABEL_18:
        v12 = [(RPNFCTransactionController *)self delegate];
        [v12 transactionController:self didDetectDeviceNearbyWithInitiatorRole:v11];

        goto LABEL_19;
    }

    [(RPNFCTransactionController *)self _startInitiator];
    goto LABEL_18;
  }

  if (v9 == 1)
  {
    if (dword_1001D4330 <= 60 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011F2AC();
    }
  }

  else
  {
    if (v9 != 2)
    {
      goto LABEL_18;
    }

    if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011F33C();
    }

    [(RPNFCTransactionController *)self _stopInitiator];
    v15 = [(RPNFCTransactionController *)self receiver];
    v16 = [v15 roleBroadcastInBackground];

    if (v16)
    {
      [(RPNFCTransactionController *)self _startBecomeInitiatorTimer];
      goto LABEL_18;
    }
  }

LABEL_19:
}

- (void)controller:(id)a3 didInvalidate:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v11 initiator];
  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011F374();
  }

  if (v7)
  {
    [(RPNFCTransactionController *)self setInitiatorState:0];
    [(RPNFCTransactionController *)self _stopConnectToReceiverTimer];
    [(RPNFCTransactionController *)self _stopInitiatorLimitTimer];
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_22:
    if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011F428(self);
    }

    if ([(RPNFCTransactionController *)self pendingReceiver]|| [(RPNFCTransactionController *)self pendingInitiator])
    {
      [(RPNFCTransactionController *)self _updatePolling];
    }

    goto LABEL_30;
  }

  v8 = [(RPNFCTransactionController *)self receiver];

  if (v8 != v11)
  {
    if (dword_1001D4330 <= 90 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011F3E8();
    }

    goto LABEL_30;
  }

  [(RPNFCTransactionController *)self setReceiverState:0];
  [(RPNFCTransactionController *)self _stopBecomeInitiatorTimer];
  if (!v6)
  {
    goto LABEL_22;
  }

LABEL_6:
  if ([v6 code] == 57)
  {
    goto LABEL_7;
  }

  if ([v6 code] != 67 && objc_msgSend(v6, "code") != 68)
  {
    [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:v6];
    if ([v6 code] != 50 && objc_msgSend(v6, "code") != 47 && objc_msgSend(v6, "code") != 44)
    {
LABEL_7:
      if (dword_1001D4330 <= 90 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
        [(RPNFCTransactionController *)self stop:v11];
      }

      else
      {
        [(RPNFCTransactionController *)self stop:v9];
      }

      goto LABEL_30;
    }

    [(RPNFCTransactionController *)self _startPollingCoolDownTimer];
  }

LABEL_30:
}

- (void)controllerDidDetectUnsupportedReceiverVersion:(id)a3
{
  v6 = a3;
  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011F4B8();
  }

  v4 = [(RPNFCTransactionController *)self currentTransaction];
  v5 = [v4 role];

  if (v5 == 1)
  {
    [(RPNFCTransactionController *)self _stopInitiator];
    [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:0];
  }
}

- (void)controllerDidConnectToReceiver:(id)a3
{
  v4 = a3;
  if ([(RPNFCTransactionController *)self initiatorState]== 1)
  {
    [(RPNFCTransactionController *)self _stopConnectToReceiverTimer];
    if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011F4D4();
    }

    [(RPNFCTransactionController *)self _beginTransactionForRole:1];
    v5 = [(RPNFCTransactionController *)self dataSource];
    v6 = [v5 transactionController:self requestMessageForType:1];

    if (v6)
    {
      v7 = [(RPNFCTransactionController *)self currentTransaction];
      [v7 setLocalAuthenticationMessage:v6];

      if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
      {
        sub_10011F4F0();
      }

      v8 = [v6 connectionHandoverRequest];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10007D81C;
      v10[3] = &unk_1001AD808;
      v10[4] = self;
      v11 = v4;
      [v11 sendHandoverRequest:v8 responseHandler:v10];
    }

    else
    {
      if (dword_1001D4330 <= 90 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
      {
        sub_10011F530();
      }

      v9 = [NSError errorWithDomain:@"RPNFCTransactionControllerErrorDomain" code:2 userInfo:0];
      [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:v9];
    }
  }
}

- (void)controllerDidDetectUnsupportedInitiatorVersion:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (dword_1001D4330 <= 30)
  {
    v6 = v3;
    if (dword_1001D4330 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_10011F5C4();
      v4 = v6;
    }
  }
}

- (void)didConnectedToInitiator:(id)a3
{
  if ([(RPNFCTransactionController *)self receiverState]== 1)
  {
    if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011F5E0();
    }

    [(RPNFCTransactionController *)self _stopBecomeInitiatorTimer];
    [(RPNFCTransactionController *)self _stopInitiator];

    [(RPNFCTransactionController *)self _beginTransactionForRole:2];
  }
}

- (void)didDisconnectedFromInitiator:(id)a3
{
  v9 = a3;
  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011F5FC();
  }

  v4 = [(RPNFCTransactionController *)self currentTransaction];
  v5 = [v4 role];

  if (v5 == 2)
  {
    v6 = [(RPNFCTransactionController *)self currentTransaction];
    v7 = [v6 state];

    if (v7 == 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = [NSError errorWithDomain:@"RPNFCTransactionControllerErrorDomain" code:0 userInfo:0];
    }

    [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:v8];
  }
}

- (void)controller:(id)a3 didReceiveRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011F618();
  }

  v8 = [RPTransportServiceHandoverMessage messageWithConnectionHandoverRequest:v7];
  if (v8)
  {
    v9 = [(RPNFCTransactionController *)self dataSource];
    v10 = [v9 transactionController:self responseMessageForRequestMessage:v8];

    if (!v10)
    {
      if (dword_1001D4330 <= 90 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
      {
        sub_10011F7D0();
      }

      v11 = [NSError errorWithDomain:@"RPNFCTransactionControllerErrorDomain" code:2 userInfo:0];
      [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:v11];
      goto LABEL_56;
    }

    v11 = [v10 connectionHandoverSelect];
    v12 = [v8 payload];
    v13 = [v12 type];

    if (v13)
    {
      v14 = [v8 payload];
      v15 = [v14 type];

      v16 = [(RPNFCTransactionController *)self currentTransaction];
      v17 = v16;
      v18 = v15 == 1;
      if (v15 == 1)
      {
        [v16 setLocalAuthenticationMessage:v10];
        v19 = 0.0;
        goto LABEL_51;
      }

      [v16 setLocalValidationMessage:v10];

      v21 = [(RPNFCTransactionController *)self currentTransaction];
      v22 = [v21 remoteAuthenticationMessage];

      if (v22)
      {
        v34 = v18;
        v17 = [v8 payload];
        if ([v17 isKnownIdentity] && (-[RPNFCTransactionController currentTransaction](self, "currentTransaction"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "remoteIdentity"), v24 = objc_claimAutoreleasedReturnValue(), v23, v24))
        {
          v19 = 0.0;
        }

        else
        {
          v33 = v6;
          v28 = +[NSDate now];
          v29 = [(RPNFCTransactionController *)self currentTransaction];
          v30 = [v29 connectionDate];
          [v28 timeIntervalSinceDate:v30];
          v32 = v31;

          if (dword_1001D4330 < 31)
          {
            v6 = v33;
            if (dword_1001D4330 != -1 || _LogCategory_Initialize())
            {
              sub_10011F658();
            }

            v19 = fmax(0.8 - v32, 0.0);
            v18 = v34;
            if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
            {
              sub_10011F698();
            }

            v24 = 0;
            goto LABEL_50;
          }

          v24 = 0;
          v19 = fmax(0.8 - v32, 0.0);
          v6 = v33;
        }

        v18 = v34;
LABEL_50:

LABEL_51:
        if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_10007E2EC;
        v35[3] = &unk_1001AD830;
        v35[4] = self;
        v37 = v18;
        v36 = v8;
        [v6 sendHandoverSelect:v11 delay:v35 completionHandler:v19];

        goto LABEL_56;
      }

      if (dword_1001D4330 <= 115 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
      {
        sub_10011F6D8(self);
      }

      v20 = [NSError errorWithDomain:@"RPNFCTransactionControllerErrorDomain" code:1 userInfo:0];
    }

    else
    {
      if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
      {
        sub_10011F734();
      }

      [(RPNFCTransactionController *)self _didReceiveAuthenticationMessage:v8];
      if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
      {
        sub_10011F750();
      }

      v38 = 0;
      [v6 sendHandoverSelect:v11 error:&v38];
      v20 = v38;
      if (!v20)
      {
        v25 = [v7 applicationLabel];
        v26 = [(RPNFCTransactionController *)self _createTapEventForApplicationLabel:v25];

        v27 = [(RPNFCTransactionController *)self currentTransaction];
        [v27 setTapEvent:v26];

LABEL_46:
LABEL_56:

        goto LABEL_57;
      }

      if (dword_1001D4330 <= 90 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
      {
        sub_10011F790();
      }
    }

    [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:v20];
    goto LABEL_46;
  }

  if (dword_1001D4330 <= 90 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011F810();
  }

  v10 = RPErrorF();
  [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:v10];
LABEL_57:
}

- (void)_requestPowerAssertion
{
  v4 = 0;
  v3 = sub_1000583F4(&v4);
  [(RPNFCTransactionController *)self _releasePowerAssertion];
  [(RPNFCTransactionController *)self setPowerAssertionID:v4];
  if (v3 && dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011F86C(self);
  }
}

- (void)_releasePowerAssertion
{
  v3 = [(RPNFCTransactionController *)self powerAssertionID];
  if (sub_100058518(&v3))
  {
    if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011F8B0(self);
    }

    [(RPNFCTransactionController *)self setPowerAssertionID:v3];
  }
}

- (void)_fileTTRForError:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSURLComponents);
  [v4 setScheme:@"tap-to-radar"];
  [v4 setHost:@"new"];
  v5 = [NSURLQueryItem queryItemWithName:@"ComponentID" value:@"800892"];
  v6 = [NSURLQueryItem queryItemWithName:@"ComponentName" value:@"Rapport"];
  v7 = [NSURLQueryItem queryItemWithName:@"ComponentVersion" value:@"All"];
  v19 = [NSURLQueryItem queryItemWithName:@"DeviceClasses" value:@"iPhone, Watch"];
  v8 = [NSURLQueryItem queryItemWithName:@"Classification" value:@"Serious Bug"];
  v9 = +[NSDate date];
  v10 = objc_alloc_init(NSDateFormatter);
  [v10 setDateFormat:@"yyyy.MM.dd_HH-mm-ss"];
  v21 = v9;
  v20 = [v10 stringFromDate:v9];
  v11 = [NSURLQueryItem queryItemWithName:@"TimeOfIssue" value:?];
  v12 = [NSString stringWithFormat:@"Failing to start NFC controller with error:%@", v3];

  v13 = [NSURLQueryItem queryItemWithName:@"Title" value:@"Unexpected error when starting NFC controller"];
  v14 = [NSURLQueryItem queryItemWithName:@"Description" value:v12];
  v22 = v6;
  v23 = v5;
  v26[0] = v5;
  v26[1] = v6;
  v26[2] = v7;
  v26[3] = v19;
  v26[4] = v8;
  v26[5] = v11;
  v26[6] = v13;
  v26[7] = v14;
  v15 = [NSArray arrayWithObjects:v26 count:8];
  [v4 setQueryItems:v15];

  if (dword_1001D4330 <= 90 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011F8F4(v4);
  }

  v16 = [(objc_class *)off_1001D43B0() defaultWorkspace];
  v17 = [v4 URL];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10007E824;
  v24[3] = &unk_1001AAB18;
  v25 = v4;
  v18 = v4;
  [v16 openURL:v17 configuration:0 completionHandler:v24];
}

- (RPNFCTransactionControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (RPNFCTransactionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end