@interface RPSiriDaemon
- (BOOL)activateAndReturnError:(id *)a3;
- (RPSiriDaemon)init;
- (void)_handleSiriAudio:(id)a3;
- (void)_handleSiriStart:(id)a3 options:(id)a4 responseHandler:(id)a5;
- (void)_handleSiriStartWhileRecording:(id)a3 options:(id)a4 responseHandler:(id)a5;
- (void)_handleSiriStop:(id)a3 options:(id)a4 responseHandler:(id)a5;
- (void)invalidate;
@end

@implementation RPSiriDaemon

- (RPSiriDaemon)init
{
  v6.receiver = self;
  v6.super_class = RPSiriDaemon;
  v2 = [(RPSiriDaemon *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v4 = v3;
  }

  return v3;
}

- (BOOL)activateAndReturnError:(id *)a3
{
  v5 = [(RPMessageable *)self->_messenger dispatchQueue];
  dispatchQueue = v5;
  if (!v5)
  {
    dispatchQueue = self->_dispatchQueue;
  }

  objc_storeStrong(&self->_dispatchQueue, dispatchQueue);

  v7 = self->_messenger;
  if (!v7)
  {
    v9 = RPErrorF();
    if (dword_1001D4E40 <= 90 && (dword_1001D4E40 != -1 || _LogCategory_Initialize()))
    {
      sub_10012B2B0();
      if (!a3)
      {
        goto LABEL_13;
      }
    }

    else if (!a3)
    {
LABEL_13:

      goto LABEL_14;
    }

    v10 = v9;
    *a3 = v9;
    goto LABEL_13;
  }

  if (dword_1001D4E40 <= 30 && (dword_1001D4E40 != -1 || _LogCategory_Initialize()))
  {
    sub_10012B2F0();
  }

  v16 = @"statusFlags";
  v17 = &off_1001B8068;
  v8 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000BC964;
  v15[3] = &unk_1001AC870;
  v15[4] = self;
  [(RPMessageable *)v7 registerEventID:@"_siA" options:v8 handler:v15];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000BC970;
  v14[3] = &unk_1001AB798;
  v14[4] = self;
  [(RPMessageable *)v7 registerRequestID:@"_siriStart" options:v8 handler:v14];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000BCA28;
  v13[3] = &unk_1001AB798;
  v13[4] = self;
  [(RPMessageable *)v7 registerRequestID:@"_siriStop" options:v8 handler:v13];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000BCA3C;
  v12[3] = &unk_1001AB798;
  v12[4] = self;
  [(RPMessageable *)v7 registerRequestID:@"_siriStartWhileRecording" options:v8 handler:v12];

LABEL_14:
  return v7 != 0;
}

- (void)invalidate
{
  if (dword_1001D4E40 <= 30 && (dword_1001D4E40 != -1 || _LogCategory_Initialize()))
  {
    sub_10012B30C();
  }

  [(RPSiriAudioSession *)self->_siriAudioSession invalidate];
  siriAudioSession = self->_siriAudioSession;
  self->_siriAudioSession = 0;

  [(RPMessageable *)self->_messenger deregisterEventID:@"_siA"];
  [(RPMessageable *)self->_messenger deregisterRequestID:@"_siriStart"];
  [(RPMessageable *)self->_messenger deregisterRequestID:@"_siriStop"];
  messenger = self->_messenger;
  self->_messenger = 0;
}

- (void)_handleSiriAudio:(id)a3
{
  v4 = a3;
  siriAudioSession = self->_siriAudioSession;
  if (siriAudioSession)
  {
    v7 = v4;
    [(RPSiriAudioSession *)siriAudioSession receivedSiriAudioEvent:?];
LABEL_3:
    v4 = v7;
    goto LABEL_7;
  }

  if (dword_1001D4E40 <= 60)
  {
    v7 = v4;
    if (dword_1001D4E40 != -1 || (v6 = _LogCategory_Initialize(), v4 = v7, v6))
    {
      sub_10012B328();
      goto LABEL_3;
    }
  }

LABEL_7:
}

- (void)_handleSiriStart:(id)a3 options:(id)a4 responseHandler:(id)a5
{
  v6 = a5;
  v7 = RPErrorF();
  (*(a5 + 2))(v6, 0, 0, v7);
}

- (void)_handleSiriStop:(id)a3 options:(id)a4 responseHandler:(id)a5
{
  v9 = a3;
  v7 = a4;
  v8 = a5;
  if (dword_1001D4E40 <= 30 && (dword_1001D4E40 != -1 || _LogCategory_Initialize()))
  {
    sub_10012B348();
  }

  (*(v8 + 2))(v8, &__NSDictionary0__struct, 0, 0);
}

- (void)_handleSiriStartWhileRecording:(id)a3 options:(id)a4 responseHandler:(id)a5
{
  v10 = a3;
  v7 = a4;
  v8 = a5;
  if (dword_1001D4E40 <= 30 && (dword_1001D4E40 != -1 || _LogCategory_Initialize()))
  {
    sub_10012B388();
  }

  v9 = RPErrorF();
  (*(v8 + 2))(v8, 0, 0, v9);
}

@end