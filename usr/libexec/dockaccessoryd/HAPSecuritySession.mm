@interface HAPSecuritySession
+ (id)logCategory;
- (BOOL)_initializeSetupSession:(unint64_t)session;
- (HAPSecuritySession)initWithRole:(unint64_t)role resumeSessionID:(unint64_t)d enhancedEncryption:(BOOL)encryption delegate:(id)delegate;
- (HAPSecuritySessionDelegate)delegate;
- (NSData)broadcastKey;
- (NSDictionary)additionalDerivedKeys;
- (NSString)debugDescription;
- (NSString)description;
- (id)_handleLocalPairingIdentityRequestWithStatus:(int *)status;
- (id)_handlePeerPairingIdentityRequestWithIdentifier:(id)identifier status:(int *)status;
- (id)_inputInfo;
- (id)_outputInfo;
- (id)decryptData:(id)data additionalAuthenticatedData:(id)authenticatedData error:(id *)error;
- (id)encryptData:(id)data additionalAuthenticatedData:(id)authenticatedData error:(id *)error;
- (id)logIdentifier;
- (unint64_t)resumeSessionID;
- (unint64_t)state;
- (void)_closeWithError:(id)error;
- (void)_handleSetupExchangeComplete;
- (void)_initiateClientSessionSetupExchange;
- (void)_notifyOpened;
- (void)_notifyOpening;
- (void)_processSetupExchangeData:(id)data error:(id)error;
- (void)close;
- (void)closeWithError:(id)error;
- (void)dealloc;
- (void)open;
- (void)reallyOpen;
- (void)receivedSetupExchangeData:(id)data error:(id)error;
- (void)setAdditionalDerivedKeys:(id)keys;
- (void)setBroadcastKey:(id)key;
- (void)setResumeSessionID:(unint64_t)d;
- (void)setState:(unint64_t)state;
@end

@implementation HAPSecuritySession

- (HAPSecuritySession)initWithRole:(unint64_t)role resumeSessionID:(unint64_t)d enhancedEncryption:(BOOL)encryption delegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy)
  {
    v24.receiver = self;
    v24.super_class = HAPSecuritySession;
    v11 = [(HAPSecuritySession *)&v24 init];
    v12 = v11;
    if (v11)
    {
      v13 = sub_100014728(v11, 0);
      v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v15 = dispatch_queue_create(v13, v14);
      queue = v12->_queue;
      v12->_queue = v15;

      objc_storeWeak(&v12->_delegate, delegateCopy);
      v12->_role = role;
      v17 = objc_alloc_init(HAPSecuritySessionEncryption);
      encryption = v12->_encryption;
      v12->_encryption = v17;

      v12->_enhancedEncryption = encryption;
      [(HAPSecuritySession *)v12 _initializeSetupSession:d];
      v12->_state = 0;
    }

    selfCopy = v12;
    v20 = selfCopy;
  }

  else
  {
    selfCopy = self;
    v21 = sub_10007FAA0();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = sub_10007FAFC(selfCopy);
      *buf = 138543362;
      v26 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@A valid delegate is required", buf, 0xCu);
    }

    v20 = 0;
  }

  return v20;
}

- (void)dealloc
{
  selfCopy = self;
  pairingSession = selfCopy->_pairingSession;
  if (pairingSession)
  {
    CFRelease(pairingSession);
    selfCopy->_pairingSession = 0;
  }

  v4 = objc_alloc_init(HAPSecuritySessionEncryption);
  [(HAPSecuritySession *)selfCopy setEncryption:v4];

  selfCopy->_resumeSessionID = 0;
  v5.receiver = selfCopy;
  v5.super_class = HAPSecuritySession;
  [(HAPSecuritySession *)&v5 dealloc];
}

- (unint64_t)state
{
  os_unfair_lock_lock_with_options();
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (void)setState:(unint64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_state = state;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)broadcastKey
{
  os_unfair_lock_lock_with_options();
  v3 = self->_broadcastKey;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setBroadcastKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock_with_options();
  broadcastKey = self->_broadcastKey;
  self->_broadcastKey = keyCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)additionalDerivedKeys
{
  os_unfair_lock_lock_with_options();
  v3 = self->_additionalDerivedKeys;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setAdditionalDerivedKeys:(id)keys
{
  keysCopy = keys;
  os_unfair_lock_lock_with_options();
  additionalDerivedKeys = self->_additionalDerivedKeys;
  self->_additionalDerivedKeys = keysCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)resumeSessionID
{
  os_unfair_lock_lock_with_options();
  resumeSessionID = self->_resumeSessionID;
  os_unfair_lock_unlock(&self->_lock);
  return resumeSessionID;
}

- (void)setResumeSessionID:(unint64_t)d
{
  os_unfair_lock_lock_with_options();
  self->_resumeSessionID = d;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  role = [(HAPSecuritySession *)self role];
  v5 = @"unknown";
  v6 = @"server";
  if (role != 1)
  {
    v6 = @"unknown";
  }

  if (!role)
  {
    v6 = @"client";
  }

  v7 = v6;
  state = [(HAPSecuritySession *)self state];
  if (state <= 3)
  {
    v5 = off_1002739C0[state];
  }

  v9 = [NSString stringWithFormat:@"<%@: %p, Role = %@, State = %@>", v3, self, v7, v5];

  return v9;
}

- (NSString)description
{
  v3 = objc_opt_class();
  role = [(HAPSecuritySession *)self role];
  v5 = @"unknown";
  v6 = @"server";
  if (role != 1)
  {
    v6 = @"unknown";
  }

  if (!role)
  {
    v6 = @"client";
  }

  v7 = v6;
  state = [(HAPSecuritySession *)self state];
  if (state <= 3)
  {
    v5 = off_1002739C0[state];
  }

  v9 = [NSString stringWithFormat:@"<%@, Role = %@, State = %@>", v3, v7, v5];

  return v9;
}

- (BOOL)_initializeSetupSession:(unint64_t)session
{
  if (session)
  {
    [(HAPSecuritySession *)self role];
    if (!PairingSessionCreate())
    {
      selfCopy = self;
      v13 = sub_10007FAA0();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = sub_10007FAFC(selfCopy);
        *buf = 138543618;
        v17 = v14;
        v18 = 2048;
        sessionCopy = session;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{public}@Created pairing session with resumeSessionID: %llu", buf, 0x16u);
      }

      pairingSession = self->_pairingSession;
      PairingSessionSetResumeInfo();
      selfCopy2 = selfCopy;
      goto LABEL_11;
    }
  }

  [(HAPSecuritySession *)self role];
  v5 = PairingSessionCreate();
  if (!v5)
  {
    selfCopy2 = self;
LABEL_11:
    [(HAPSecuritySession *)selfCopy2 pairingSession];
    PairingSessionSetFlags();
    return 1;
  }

  v6 = v5;
  selfCopy3 = self;
  v8 = sub_10007FAA0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = sub_10007FAFC(selfCopy3);
    *buf = 138543618;
    v17 = v9;
    v18 = 2048;
    sessionCopy = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to create pairing session with error: %ld", buf, 0x16u);
  }

  return 0;
}

- (id)_handleLocalPairingIdentityRequestWithStatus:(int *)status
{
  selfCopy = self;
  v5 = sub_10007FAA0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = sub_10007FAFC(selfCopy);
    *buf = 138543362;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Received request for local pairing identity", buf, 0xCu);
  }

  delegate = [(HAPSecuritySession *)selfCopy delegate];
  v8 = delegate;
  if (delegate)
  {
    v18 = 0;
    v9 = [delegate securitySession:selfCopy didReceiveLocalPairingIdentityRequestWithError:&v18];
    v10 = v18;
    if (!v9)
    {
      v11 = selfCopy;
      v12 = sub_10007FAA0();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = sub_10007FAFC(v11);
        *buf = 138543618;
        v20 = v13;
        v21 = 2112;
        v22 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@The delegate failed to retreive the lcoal pairing identity with error: %@", buf, 0x16u);
      }

      if (status)
      {
        *status = -6727;
      }

      [(HAPSecuritySession *)v11 closeWithError:v10];
    }
  }

  else
  {
    v14 = selfCopy;
    v15 = sub_10007FAA0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = sub_10007FAFC(v14);
      *buf = 138543362;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to get local pairing identity, the delegate is missing", buf, 0xCu);
    }

    v10 = [NSError hapErrorWithcode:9 description:@"Failed to get local pairing identity." reason:@"The delegate is mising." suggestion:0 underlyingError:0];
    [(HAPSecuritySession *)v14 closeWithError:v10];
    v9 = 0;
    if (status)
    {
      *status = -6705;
    }
  }

  return v9;
}

- (id)_handlePeerPairingIdentityRequestWithIdentifier:(id)identifier status:(int *)status
{
  identifierCopy = identifier;
  selfCopy = self;
  v8 = sub_10007FAA0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = sub_10007FAFC(selfCopy);
    *buf = 138543618;
    v23 = v9;
    v24 = 2112;
    v25 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@Received request for peer pairing identity with identifier: %@", buf, 0x16u);
  }

  delegate = [(HAPSecuritySession *)selfCopy delegate];
  v11 = delegate;
  if (delegate)
  {
    v21 = 0;
    v12 = [delegate securitySession:selfCopy didReceiveRequestForPeerPairingIdentityWithIdentifier:identifierCopy error:&v21];
    v13 = v21;
    if (!v12)
    {
      v14 = selfCopy;
      v15 = sub_10007FAA0();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = sub_10007FAFC(v14);
        *buf = 138543618;
        v23 = v16;
        v24 = 2112;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@The delegate failed to retreive the peer pairing identity with error: %@", buf, 0x16u);
      }

      if (status)
      {
        *status = -6727;
      }

      [(HAPSecuritySession *)v14 closeWithError:v13];
    }
  }

  else
  {
    v17 = selfCopy;
    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_10007FAFC(v17);
      *buf = 138543362;
      v23 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to get peer pairing identity, the delegate is missing", buf, 0xCu);
    }

    v13 = [NSError hapErrorWithcode:9 description:@"Failed to get peer pairing identity." reason:@"The delegate is mising." suggestion:0 underlyingError:0];
    [(HAPSecuritySession *)v17 closeWithError:v13];
    v12 = 0;
    if (status)
    {
      *status = -6705;
    }
  }

  return v12;
}

- (void)_initiateClientSessionSetupExchange
{
  selfCopy = self;
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(selfCopy);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@Sending initial client exchange", &v5, 0xCu);
  }

  [(HAPSecuritySession *)selfCopy _notifyOpening];
  [(HAPSecuritySession *)selfCopy _processSetupExchangeData:0 error:0];
}

- (void)receivedSetupExchangeData:(id)data error:(id)error
{
  dataCopy = data;
  errorCopy = error;
  queue = [(HAPSecuritySession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F0A4;
  block[3] = &unk_100273748;
  v12 = errorCopy;
  v13 = dataCopy;
  selfCopy = self;
  v9 = dataCopy;
  v10 = errorCopy;
  dispatch_async(queue, block);
}

- (void)_processSetupExchangeData:(id)data error:(id)error
{
  dataCopy = data;
  errorCopy = error;
  queue = [(HAPSecuritySession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F328;
  block[3] = &unk_100273748;
  block[4] = self;
  v12 = errorCopy;
  v13 = dataCopy;
  v9 = dataCopy;
  v10 = errorCopy;
  dispatch_async(queue, block);
}

- (id)_inputInfo
{
  role = [(HAPSecuritySession *)self role];
  if (role == 1)
  {
    v3 = "Control-Write-Encryption-Key";
    v4 = 28;
  }

  else
  {
    if (role)
    {
      goto LABEL_6;
    }

    v3 = "Control-Read-Encryption-Key";
    v4 = 27;
  }

  role = [NSData dataWithBytes:v3 length:v4];
LABEL_6:

  return role;
}

- (id)_outputInfo
{
  role = [(HAPSecuritySession *)self role];
  if (role == 1)
  {
    v3 = "Control-Read-Encryption-Key";
    v4 = 27;
  }

  else
  {
    if (role)
    {
      goto LABEL_6;
    }

    v3 = "Control-Write-Encryption-Key";
    v4 = 28;
  }

  role = [NSData dataWithBytes:v3 length:v4];
LABEL_6:

  return role;
}

- (void)_handleSetupExchangeComplete
{
  selfCopy = self;
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(selfCopy);
    *buf = 138543362;
    v51 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@Deriving session keys", buf, 0xCu);
  }

  _inputInfo = [(HAPSecuritySession *)selfCopy _inputInfo];
  [(HAPSecuritySession *)selfCopy pairingSession];
  [_inputInfo bytes];
  [_inputInfo length];
  v6 = PairingSessionDeriveKey();
  v41 = v6;
  if (v6)
  {
    _outputInfo = [NSError errorWithDomain:@"HAPErrorDomain" code:v6 userInfo:0];
    v8 = selfCopy;
    v9 = sub_10007FAA0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = sub_10007FAFC(v8);
      *v46 = 138543618;
      v47 = v10;
      v48 = 2112;
      v49 = _outputInfo;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to create input key with error: %@", v46, 0x16u);
    }

    [(HAPSecuritySession *)v8 _closeWithError:_outputInfo];
  }

  else
  {
    _outputInfo = [(HAPSecuritySession *)selfCopy _outputInfo];
    [(HAPSecuritySession *)selfCopy pairingSession];
    [_outputInfo bytes];
    [_outputInfo length];
    v11 = PairingSessionDeriveKey();
    v41 = v11;
    if (v11)
    {
      _broadcastInfo = [NSError errorWithDomain:@"HAPErrorDomain" code:v11 userInfo:0];
      v13 = selfCopy;
      v14 = sub_10007FAA0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = sub_10007FAFC(v13);
        *v42 = 138543618;
        v43 = v15;
        v44 = 2112;
        v45 = _broadcastInfo;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to create output key with error: %@", v42, 0x16u);
      }

      [(HAPSecuritySession *)v13 _closeWithError:_broadcastInfo];
    }

    else
    {
      v40 = 0;
      [(HAPSecuritySession *)selfCopy pairingSession];
      if (!PairingSessionGetResumeInfo())
      {
        v16 = selfCopy;
        v17 = sub_10007FAA0();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = sub_10007FAFC(v16);
          *v42 = 138543618;
          v43 = v18;
          v44 = 2048;
          v45 = v40;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%{public}@Got resumeSessionID: %llu", v42, 0x16u);
        }

        [(HAPSecuritySession *)v16 setResumeSessionID:v40];
      }

      _broadcastInfo = [(HAPSecuritySession *)selfCopy _broadcastInfo];
      v19 = [(HAPSecuritySession *)selfCopy _handleLocalPairingIdentityRequestWithStatus:&v41];
      v20 = &_s11DockKitCore6ErrorsO11AlreadyDoneyACSS_tcACmFWC_ptr;
      if (v41)
      {
        goto LABEL_19;
      }

      if ([(HAPSecuritySession *)selfCopy pairingSession])
      {
        [(HAPSecuritySession *)selfCopy pairingSession];
        publicKey = [v19 publicKey];
        data = [publicKey data];
        [data bytes];
        publicKey2 = [v19 publicKey];
        [publicKey2 data];
        v23 = v37 = v19;
        [v23 length];
        [_broadcastInfo bytes];
        [_broadcastInfo length];
        v20 = &_s11DockKitCore6ErrorsO11AlreadyDoneyACSS_tcACmFWC_ptr;
        v41 = PairingSessionDeriveKey();

        v19 = v37;
      }

      if (v41)
      {
LABEL_19:
        [(HAPSecuritySession *)selfCopy setBroadcastKey:0];
      }

      else
      {
        v35 = [v20[111] dataWithBytes:v42 length:32];
        [(HAPSecuritySession *)selfCopy setBroadcastKey:v35];
      }

      delegate = [(HAPSecuritySession *)selfCopy delegate];
      v25 = objc_opt_respondsToSelector();

      if (v25)
      {
        delegate2 = [(HAPSecuritySession *)selfCopy delegate];
        v27 = [delegate2 securitySessionDidRequestAdditionalDerivedKeyTuples:selfCopy];

        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_10003FE68;
        v38[3] = &unk_100273958;
        v38[4] = selfCopy;
        v39 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v27, "count")}];
        v28 = v39;
        [v27 enumerateObjectsUsingBlock:v38];
        v29 = [v28 copy];
        [(HAPSecuritySession *)selfCopy setAdditionalDerivedKeys:v29];
      }

      pairingSession = selfCopy->_pairingSession;
      if (pairingSession)
      {
        CFRelease(pairingSession);
      }

      selfCopy->_pairingSession = 0;
      v31 = [HAPSecuritySessionEncryption alloc];
      v32 = [v20[111] dataWithBytes:buf length:32];
      v33 = [v20[111] dataWithBytes:v46 length:32];
      v34 = [(HAPSecuritySessionEncryption *)v31 initWithInputKey:v32 outputKey:v33 enhancedEncryption:selfCopy->_enhancedEncryption];
      [(HAPSecuritySession *)selfCopy setEncryption:v34];

      [(HAPSecuritySession *)selfCopy setState:2];
      [(HAPSecuritySession *)selfCopy _notifyOpened];
    }
  }
}

- (void)open
{
  if ([(HAPSecuritySession *)self state])
  {
    selfCopy = self;
    v4 = sub_10007FAA0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = sub_10007FAFC(selfCopy);
      *buf = 138543362;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to open security session, a security session can only be opened once.", buf, 0xCu);
    }
  }

  else
  {
    delegate = [(HAPSecuritySession *)self delegate];

    if (delegate)
    {
      [(HAPSecuritySession *)self setState:1];

      [(HAPSecuritySession *)self reallyOpen];
    }

    else
    {
      v7 = [NSError errorWithDomain:@"HAPErrorDomain" code:-6705 userInfo:0];
      [(HAPSecuritySession *)self closeWithError:?];
    }
  }
}

- (void)reallyOpen
{
  queue = [(HAPSecuritySession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000402AC;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_notifyOpening
{
  delegate = [(HAPSecuritySession *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(HAPSecuritySession *)self delegate];
    [delegate2 securitySessionIsOpening:self];
  }
}

- (void)_notifyOpened
{
  delegate = [(HAPSecuritySession *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(HAPSecuritySession *)self delegate];
    [delegate2 securitySessionDidOpen:self];
  }
}

- (void)close
{
  queue = [(HAPSecuritySession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000404E8;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)closeWithError:(id)error
{
  errorCopy = error;
  queue = [(HAPSecuritySession *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000405A8;
  v7[3] = &unk_100273370;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(queue, v7);
}

- (void)_closeWithError:(id)error
{
  errorCopy = error;
  v4 = [(HAPSecuritySession *)self state]== 3;
  v5 = errorCopy;
  if (!v4)
  {
    os_unfair_lock_lock_with_options();
    selfCopy = self;
    pairingSession = selfCopy->_pairingSession;
    if (pairingSession)
    {
      CFRelease(pairingSession);
      selfCopy->_pairingSession = 0;
    }

    v8 = objc_alloc_init(HAPSecuritySessionEncryption);
    [(HAPSecuritySession *)selfCopy setEncryption:v8];

    selfCopy->_resumeSessionID = 0;
    os_unfair_lock_unlock(&self->_lock);
    [(HAPSecuritySession *)selfCopy setState:3];
    delegate = [(HAPSecuritySession *)selfCopy delegate];
    LOBYTE(v8) = objc_opt_respondsToSelector();

    v5 = errorCopy;
    if (v8)
    {
      delegate2 = [(HAPSecuritySession *)selfCopy delegate];
      [delegate2 securitySession:selfCopy didCloseWithError:errorCopy];

      v5 = errorCopy;
    }
  }
}

- (id)encryptData:(id)data additionalAuthenticatedData:(id)authenticatedData error:(id *)error
{
  dataCopy = data;
  authenticatedDataCopy = authenticatedData;
  if (dataCopy)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_1000408A4;
    v22 = sub_1000408B4;
    v23 = 0;
    queue = [(HAPSecuritySession *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000408BC;
    block[3] = &unk_100273980;
    v16 = &v18;
    errorCopy = error;
    block[4] = self;
    v14 = dataCopy;
    v15 = authenticatedDataCopy;
    dispatch_sync(queue, block);

    v11 = v19[5];
    _Block_object_dispose(&v18, 8);
  }

  else if (error)
  {
    [NSError errorWithDomain:@"HAPErrorDomain" code:-6705 userInfo:0];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)decryptData:(id)data additionalAuthenticatedData:(id)authenticatedData error:(id *)error
{
  dataCopy = data;
  authenticatedDataCopy = authenticatedData;
  if (dataCopy)
  {
    if ([dataCopy length] > 0xF)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v23 = sub_1000408A4;
      v24 = sub_1000408B4;
      v25 = 0;
      queue = [(HAPSecuritySession *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100040C34;
      block[3] = &unk_100273980;
      v20 = buf;
      errorCopy = error;
      block[4] = self;
      v18 = dataCopy;
      v19 = authenticatedDataCopy;
      dispatch_sync(queue, block);

      v14 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);

      goto LABEL_12;
    }

    selfCopy = self;
    v11 = sub_10007FAA0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = sub_10007FAFC(selfCopy);
      *buf = 138543618;
      *&buf[4] = v12;
      *&buf[12] = 2048;
      *&buf[14] = [dataCopy length];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@The encrypted data has an invalid length of %tu bytes", buf, 0x16u);
    }

    if (error)
    {
      v13 = [NSError errorWithDomain:@"HAPErrorDomain" code:-6743 userInfo:0];
LABEL_9:
      v14 = 0;
      *error = v13;
      goto LABEL_12;
    }
  }

  else if (error)
  {
    v13 = [NSError errorWithDomain:@"HAPErrorDomain" code:-6705 userInfo:0];
    goto LABEL_9;
  }

  v14 = 0;
LABEL_12:

  return v14;
}

+ (id)logCategory
{
  if (qword_1002ACBE8 != -1)
  {
    sub_1001F7ED0();
  }

  v3 = qword_1002ACBF0;

  return v3;
}

- (id)logIdentifier
{
  delegate = [(HAPSecuritySession *)self delegate];
  v4 = objc_opt_respondsToSelector();

  v5 = objc_opt_class();
  if (v4)
  {
    delegate2 = [(HAPSecuritySession *)self delegate];
    shortDescription = [delegate2 shortDescription];
    v8 = [NSString stringWithFormat:@"%@ %@", v5, shortDescription];
  }

  else
  {
    state = [(HAPSecuritySession *)self state];
    if (state > 3)
    {
      v10 = @"unknown";
    }

    else
    {
      v10 = off_1002739C0[state];
    }

    v8 = [NSString stringWithFormat:@"%@ %@", v5, v10];
  }

  return v8;
}

- (HAPSecuritySessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end