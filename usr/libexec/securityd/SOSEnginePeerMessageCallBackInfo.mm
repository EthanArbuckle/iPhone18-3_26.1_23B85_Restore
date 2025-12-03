@interface SOSEnginePeerMessageCallBackInfo
- (SOSEnginePeerMessageCallBackInfo)initWithEngine:(__OpaqueSOSEngine *)engine peer:(__OpaqueSOSPeer *)peer localManifest:(__OpaqueSOSManifest *)manifest proposedManifest:(__OpaqueSOSManifest *)proposedManifest confirmedManifest:(__OpaqueSOSManifest *)confirmedManifest andMessage:(__OpaqueSOSMessage *)message;
- (id)copyWithZone:(_NSZone *)zone;
- (void)callCallback:(BOOL)callback;
- (void)dealloc;
- (void)setCallback:(id)callback;
- (void)setCoder:(__OpaqueSOSCoder *)coder;
@end

@implementation SOSEnginePeerMessageCallBackInfo

- (id)copyWithZone:(_NSZone *)zone
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

- (void)setCoder:(__OpaqueSOSCoder *)coder
{
  if (qword_10039E0F8 != -1)
  {
    dispatch_once(&qword_10039E0F8, &stru_100342098);
  }

  if (byte_10039CB18 == 1)
  {
    if (coder)
    {
      CFRetain(coder);
    }

    self->_coder = coder;
  }
}

- (void)setCallback:(id)callback
{
  callbackCopy = callback;
  if (qword_10039E0F8 != -1)
  {
    v8 = callbackCopy;
    dispatch_once(&qword_10039E0F8, &stru_100342098);
    callbackCopy = v8;
  }

  if (byte_10039CB18 == 1)
  {
    v7 = callbackCopy;
    v5 = objc_retainBlock(callbackCopy);
    callbackBlock = self->_callbackBlock;
    self->_callbackBlock = v5;

    callbackCopy = v7;
  }
}

- (void)callCallback:(BOOL)callback
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

- (SOSEnginePeerMessageCallBackInfo)initWithEngine:(__OpaqueSOSEngine *)engine peer:(__OpaqueSOSPeer *)peer localManifest:(__OpaqueSOSManifest *)manifest proposedManifest:(__OpaqueSOSManifest *)proposedManifest confirmedManifest:(__OpaqueSOSManifest *)confirmedManifest andMessage:(__OpaqueSOSMessage *)message
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

      if (engine)
      {
        CFRetain(engine);
      }

      v16->_engine = engine;
      if (peer)
      {
        CFRetain(peer);
      }

      v16->_peer = peer;
      if (manifest)
      {
        CFRetain(manifest);
      }

      v16->_local = manifest;
      if (proposedManifest)
      {
        CFRetain(proposedManifest);
      }

      v16->_proposed = proposedManifest;
      if (confirmedManifest)
      {
        CFRetain(confirmedManifest);
      }

      v16->_confirmed = confirmedManifest;
      if (message)
      {
        CFRetain(message);
      }

      v16->_message = message;
    }

    self = v16;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end