@interface SOSEnginePeerMessageCallBackInfo
- (SOSEnginePeerMessageCallBackInfo)initWithEngine:(__OpaqueSOSEngine *)a3 peer:(__OpaqueSOSPeer *)a4 localManifest:(__OpaqueSOSManifest *)a5 proposedManifest:(__OpaqueSOSManifest *)a6 confirmedManifest:(__OpaqueSOSManifest *)a7 andMessage:(__OpaqueSOSMessage *)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (void)callCallback:(BOOL)a3;
- (void)dealloc;
- (void)setCallback:(id)a3;
- (void)setCoder:(__OpaqueSOSCoder *)a3;
@end

@implementation SOSEnginePeerMessageCallBackInfo

- (id)copyWithZone:(_NSZone *)a3
{
  if (qword_10039E0F8 != -1)
  {
    dispatch_once(&qword_10039E0F8, &stru_100342098);
  }

  if (byte_10039CB18 != 1)
  {
    return 0;
  }

  v4 = objc_opt_new();
  if (v4)
  {
    engine = self->_engine;
    if (engine)
    {
      CFRetain(self->_engine);
    }

    [v4 setEngine:engine];
    peer = self->_peer;
    if (peer)
    {
      CFRetain(self->_peer);
    }

    [v4 setPeer:peer];
    local = self->_local;
    if (local)
    {
      CFRetain(self->_local);
    }

    [v4 setLocal:local];
    proposed = self->_proposed;
    if (proposed)
    {
      CFRetain(self->_proposed);
    }

    [v4 setProposed:proposed];
    confirmed = self->_confirmed;
    if (confirmed)
    {
      CFRetain(self->_confirmed);
    }

    [v4 setConfirmed:confirmed];
    message = self->_message;
    if (message)
    {
      CFRetain(self->_message);
    }

    [v4 setMessage:message];
    [v4 setCoder:self->_coder];
    [v4 setCallbackBlock:self->_callbackBlock];
  }

  return v4;
}

- (void)dealloc
{
  if (qword_10039E0F8 != -1)
  {
    dispatch_once(&qword_10039E0F8, &stru_100342098);
  }

  if (byte_10039CB18 == 1)
  {
    engine = self->_engine;
    if (engine)
    {
      self->_engine = 0;
      CFRelease(engine);
    }

    peer = self->_peer;
    if (peer)
    {
      self->_peer = 0;
      CFRelease(peer);
    }

    local = self->_local;
    if (local)
    {
      self->_local = 0;
      CFRelease(local);
    }

    proposed = self->_proposed;
    if (proposed)
    {
      self->_proposed = 0;
      CFRelease(proposed);
    }

    confirmed = self->_confirmed;
    if (confirmed)
    {
      self->_confirmed = 0;
      CFRelease(confirmed);
    }

    message = self->_message;
    if (message)
    {
      self->_message = 0;
      CFRelease(message);
    }

    coder = self->_coder;
    if (coder)
    {
      CFRelease(coder);
    }
  }

  v10.receiver = self;
  v10.super_class = SOSEnginePeerMessageCallBackInfo;
  [(SOSEnginePeerMessageCallBackInfo *)&v10 dealloc];
}

- (void)setCoder:(__OpaqueSOSCoder *)a3
{
  if (qword_10039E0F8 != -1)
  {
    dispatch_once(&qword_10039E0F8, &stru_100342098);
  }

  if (byte_10039CB18 == 1)
  {
    if (a3)
    {
      CFRetain(a3);
    }

    self->_coder = a3;
  }
}

- (void)setCallback:(id)a3
{
  v4 = a3;
  if (qword_10039E0F8 != -1)
  {
    v8 = v4;
    dispatch_once(&qword_10039E0F8, &stru_100342098);
    v4 = v8;
  }

  if (byte_10039CB18 == 1)
  {
    v7 = v4;
    v5 = objc_retainBlock(v4);
    callbackBlock = self->_callbackBlock;
    self->_callbackBlock = v5;

    v4 = v7;
  }
}

- (void)callCallback:(BOOL)a3
{
  if (qword_10039E0F8 != -1)
  {
    dispatch_once(&qword_10039E0F8, &stru_100342098);
  }

  if (byte_10039CB18 == 1)
  {
    v4 = *(self->_callbackBlock + 2);

    v4();
  }
}

- (SOSEnginePeerMessageCallBackInfo)initWithEngine:(__OpaqueSOSEngine *)a3 peer:(__OpaqueSOSPeer *)a4 localManifest:(__OpaqueSOSManifest *)a5 proposedManifest:(__OpaqueSOSManifest *)a6 confirmedManifest:(__OpaqueSOSManifest *)a7 andMessage:(__OpaqueSOSMessage *)a8
{
  if (qword_10039E0F8 != -1)
  {
    dispatch_once(&qword_10039E0F8, &stru_100342098);
  }

  if (byte_10039CB18 == 1)
  {
    v20.receiver = self;
    v20.super_class = SOSEnginePeerMessageCallBackInfo;
    v15 = [(SOSEnginePeerMessageCallBackInfo *)&v20 init];
    v16 = v15;
    if (v15)
    {
      callbackBlock = v15->_callbackBlock;
      v15->_callbackBlock = 0;

      if (a3)
      {
        CFRetain(a3);
      }

      v16->_engine = a3;
      if (a4)
      {
        CFRetain(a4);
      }

      v16->_peer = a4;
      if (a5)
      {
        CFRetain(a5);
      }

      v16->_local = a5;
      if (a6)
      {
        CFRetain(a6);
      }

      v16->_proposed = a6;
      if (a7)
      {
        CFRetain(a7);
      }

      v16->_confirmed = a7;
      if (a8)
      {
        CFRetain(a8);
      }

      v16->_message = a8;
    }

    self = v16;
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end