@interface HAPSecuritySession
+ (id)logCategory;
- (BOOL)_initializeSetupSession:(unint64_t)a3;
- (HAPSecuritySession)initWithRole:(unint64_t)a3 resumeSessionID:(unint64_t)a4 enhancedEncryption:(BOOL)a5 delegate:(id)a6;
- (HAPSecuritySessionDelegate)delegate;
- (NSData)broadcastKey;
- (NSDictionary)additionalDerivedKeys;
- (NSString)debugDescription;
- (NSString)description;
- (id)_handleLocalPairingIdentityRequestWithStatus:(int *)a3;
- (id)_handlePeerPairingIdentityRequestWithIdentifier:(id)a3 status:(int *)a4;
- (id)_inputInfo;
- (id)_outputInfo;
- (id)decryptData:(id)a3 additionalAuthenticatedData:(id)a4 error:(id *)a5;
- (id)encryptData:(id)a3 additionalAuthenticatedData:(id)a4 error:(id *)a5;
- (id)logIdentifier;
- (unint64_t)resumeSessionID;
- (unint64_t)state;
- (void)_closeWithError:(id)a3;
- (void)_handleSetupExchangeComplete;
- (void)_initiateClientSessionSetupExchange;
- (void)_notifyOpened;
- (void)_notifyOpening;
- (void)_processSetupExchangeData:(id)a3 error:(id)a4;
- (void)close;
- (void)closeWithError:(id)a3;
- (void)dealloc;
- (void)open;
- (void)reallyOpen;
- (void)receivedSetupExchangeData:(id)a3 error:(id)a4;
- (void)setAdditionalDerivedKeys:(id)a3;
- (void)setBroadcastKey:(id)a3;
- (void)setResumeSessionID:(unint64_t)a3;
- (void)setState:(unint64_t)a3;
@end

@implementation HAPSecuritySession

- (HAPSecuritySession)initWithRole:(unint64_t)a3 resumeSessionID:(unint64_t)a4 enhancedEncryption:(BOOL)a5 delegate:(id)a6
{
  v10 = a6;
  if (v10)
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

      objc_storeWeak(&v12->_delegate, v10);
      v12->_role = a3;
      v17 = objc_alloc_init(HAPSecuritySessionEncryption);
      encryption = v12->_encryption;
      v12->_encryption = v17;

      v12->_enhancedEncryption = a5;
      [(HAPSecuritySession *)v12 _initializeSetupSession:a4];
      v12->_state = 0;
    }

    v19 = v12;
    v20 = v19;
  }

  else
  {
    v19 = self;
    v21 = sub_10007FAA0();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = sub_10007FAFC(v19);
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
  v2 = self;
  pairingSession = v2->_pairingSession;
  if (pairingSession)
  {
    CFRelease(pairingSession);
    v2->_pairingSession = 0;
  }

  v4 = objc_alloc_init(HAPSecuritySessionEncryption);
  [(HAPSecuritySession *)v2 setEncryption:v4];

  v2->_resumeSessionID = 0;
  v5.receiver = v2;
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

- (void)setState:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_state = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)broadcastKey
{
  os_unfair_lock_lock_with_options();
  v3 = self->_broadcastKey;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setBroadcastKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  broadcastKey = self->_broadcastKey;
  self->_broadcastKey = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)additionalDerivedKeys
{
  os_unfair_lock_lock_with_options();
  v3 = self->_additionalDerivedKeys;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setAdditionalDerivedKeys:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  additionalDerivedKeys = self->_additionalDerivedKeys;
  self->_additionalDerivedKeys = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)resumeSessionID
{
  os_unfair_lock_lock_with_options();
  resumeSessionID = self->_resumeSessionID;
  os_unfair_lock_unlock(&self->_lock);
  return resumeSessionID;
}

- (void)setResumeSessionID:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_resumeSessionID = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = [(HAPSecuritySession *)self role];
  v5 = @"unknown";
  v6 = @"server";
  if (v4 != 1)
  {
    v6 = @"unknown";
  }

  if (!v4)
  {
    v6 = @"client";
  }

  v7 = v6;
  v8 = [(HAPSecuritySession *)self state];
  if (v8 <= 3)
  {
    v5 = off_1002739C0[v8];
  }

  v9 = [NSString stringWithFormat:@"<%@: %p, Role = %@, State = %@>", v3, self, v7, v5];

  return v9;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(HAPSecuritySession *)self role];
  v5 = @"unknown";
  v6 = @"server";
  if (v4 != 1)
  {
    v6 = @"unknown";
  }

  if (!v4)
  {
    v6 = @"client";
  }

  v7 = v6;
  v8 = [(HAPSecuritySession *)self state];
  if (v8 <= 3)
  {
    v5 = off_1002739C0[v8];
  }

  v9 = [NSString stringWithFormat:@"<%@, Role = %@, State = %@>", v3, v7, v5];

  return v9;
}

- (BOOL)_initializeSetupSession:(unint64_t)a3
{
  if (a3)
  {
    [(HAPSecuritySession *)self role];
    if (!PairingSessionCreate())
    {
      v12 = self;
      v13 = sub_10007FAA0();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = sub_10007FAFC(v12);
        *buf = 138543618;
        v17 = v14;
        v18 = 2048;
        v19 = a3;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{public}@Created pairing session with resumeSessionID: %llu", buf, 0x16u);
      }

      pairingSession = self->_pairingSession;
      PairingSessionSetResumeInfo();
      v11 = v12;
      goto LABEL_11;
    }
  }

  [(HAPSecuritySession *)self role];
  v5 = PairingSessionCreate();
  if (!v5)
  {
    v11 = self;
LABEL_11:
    [(HAPSecuritySession *)v11 pairingSession];
    PairingSessionSetFlags();
    return 1;
  }

  v6 = v5;
  v7 = self;
  v8 = sub_10007FAA0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = sub_10007FAFC(v7);
    *buf = 138543618;
    v17 = v9;
    v18 = 2048;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to create pairing session with error: %ld", buf, 0x16u);
  }

  return 0;
}

- (id)_handleLocalPairingIdentityRequestWithStatus:(int *)a3
{
  v4 = self;
  v5 = sub_10007FAA0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = sub_10007FAFC(v4);
    *buf = 138543362;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Received request for local pairing identity", buf, 0xCu);
  }

  v7 = [(HAPSecuritySession *)v4 delegate];
  v8 = v7;
  if (v7)
  {
    v18 = 0;
    v9 = [v7 securitySession:v4 didReceiveLocalPairingIdentityRequestWithError:&v18];
    v10 = v18;
    if (!v9)
    {
      v11 = v4;
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

      if (a3)
      {
        *a3 = -6727;
      }

      [(HAPSecuritySession *)v11 closeWithError:v10];
    }
  }

  else
  {
    v14 = v4;
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
    if (a3)
    {
      *a3 = -6705;
    }
  }

  return v9;
}

- (id)_handlePeerPairingIdentityRequestWithIdentifier:(id)a3 status:(int *)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_10007FAA0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = sub_10007FAFC(v7);
    *buf = 138543618;
    v23 = v9;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@Received request for peer pairing identity with identifier: %@", buf, 0x16u);
  }

  v10 = [(HAPSecuritySession *)v7 delegate];
  v11 = v10;
  if (v10)
  {
    v21 = 0;
    v12 = [v10 securitySession:v7 didReceiveRequestForPeerPairingIdentityWithIdentifier:v6 error:&v21];
    v13 = v21;
    if (!v12)
    {
      v14 = v7;
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

      if (a4)
      {
        *a4 = -6727;
      }

      [(HAPSecuritySession *)v14 closeWithError:v13];
    }
  }

  else
  {
    v17 = v7;
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
    if (a4)
    {
      *a4 = -6705;
    }
  }

  return v12;
}

- (void)_initiateClientSessionSetupExchange
{
  v2 = self;
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(v2);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@Sending initial client exchange", &v5, 0xCu);
  }

  [(HAPSecuritySession *)v2 _notifyOpening];
  [(HAPSecuritySession *)v2 _processSetupExchangeData:0 error:0];
}

- (void)receivedSetupExchangeData:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPSecuritySession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F0A4;
  block[3] = &unk_100273748;
  v12 = v7;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)_processSetupExchangeData:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPSecuritySession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F328;
  block[3] = &unk_100273748;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (id)_inputInfo
{
  v2 = [(HAPSecuritySession *)self role];
  if (v2 == 1)
  {
    v3 = "Control-Write-Encryption-Key";
    v4 = 28;
  }

  else
  {
    if (v2)
    {
      goto LABEL_6;
    }

    v3 = "Control-Read-Encryption-Key";
    v4 = 27;
  }

  v2 = [NSData dataWithBytes:v3 length:v4];
LABEL_6:

  return v2;
}

- (id)_outputInfo
{
  v2 = [(HAPSecuritySession *)self role];
  if (v2 == 1)
  {
    v3 = "Control-Read-Encryption-Key";
    v4 = 27;
  }

  else
  {
    if (v2)
    {
      goto LABEL_6;
    }

    v3 = "Control-Write-Encryption-Key";
    v4 = 28;
  }

  v2 = [NSData dataWithBytes:v3 length:v4];
LABEL_6:

  return v2;
}

- (void)_handleSetupExchangeComplete
{
  v2 = self;
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(v2);
    *buf = 138543362;
    v51 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@Deriving session keys", buf, 0xCu);
  }

  v5 = [(HAPSecuritySession *)v2 _inputInfo];
  [(HAPSecuritySession *)v2 pairingSession];
  [v5 bytes];
  [v5 length];
  v6 = PairingSessionDeriveKey();
  v41 = v6;
  if (v6)
  {
    v7 = [NSError errorWithDomain:@"HAPErrorDomain" code:v6 userInfo:0];
    v8 = v2;
    v9 = sub_10007FAA0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = sub_10007FAFC(v8);
      *v46 = 138543618;
      v47 = v10;
      v48 = 2112;
      v49 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to create input key with error: %@", v46, 0x16u);
    }

    [(HAPSecuritySession *)v8 _closeWithError:v7];
  }

  else
  {
    v7 = [(HAPSecuritySession *)v2 _outputInfo];
    [(HAPSecuritySession *)v2 pairingSession];
    [v7 bytes];
    [v7 length];
    v11 = PairingSessionDeriveKey();
    v41 = v11;
    if (v11)
    {
      v12 = [NSError errorWithDomain:@"HAPErrorDomain" code:v11 userInfo:0];
      v13 = v2;
      v14 = sub_10007FAA0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = sub_10007FAFC(v13);
        *v42 = 138543618;
        v43 = v15;
        v44 = 2112;
        v45 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to create output key with error: %@", v42, 0x16u);
      }

      [(HAPSecuritySession *)v13 _closeWithError:v12];
    }

    else
    {
      v40 = 0;
      [(HAPSecuritySession *)v2 pairingSession];
      if (!PairingSessionGetResumeInfo())
      {
        v16 = v2;
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

      v12 = [(HAPSecuritySession *)v2 _broadcastInfo];
      v19 = [(HAPSecuritySession *)v2 _handleLocalPairingIdentityRequestWithStatus:&v41];
      v20 = &_s11DockKitCore6ErrorsO11AlreadyDoneyACSS_tcACmFWC_ptr;
      if (v41)
      {
        goto LABEL_19;
      }

      if ([(HAPSecuritySession *)v2 pairingSession])
      {
        [(HAPSecuritySession *)v2 pairingSession];
        v36 = [v19 publicKey];
        v21 = [v36 data];
        [v21 bytes];
        v22 = [v19 publicKey];
        [v22 data];
        v23 = v37 = v19;
        [v23 length];
        [v12 bytes];
        [v12 length];
        v20 = &_s11DockKitCore6ErrorsO11AlreadyDoneyACSS_tcACmFWC_ptr;
        v41 = PairingSessionDeriveKey();

        v19 = v37;
      }

      if (v41)
      {
LABEL_19:
        [(HAPSecuritySession *)v2 setBroadcastKey:0];
      }

      else
      {
        v35 = [v20[111] dataWithBytes:v42 length:32];
        [(HAPSecuritySession *)v2 setBroadcastKey:v35];
      }

      v24 = [(HAPSecuritySession *)v2 delegate];
      v25 = objc_opt_respondsToSelector();

      if (v25)
      {
        v26 = [(HAPSecuritySession *)v2 delegate];
        v27 = [v26 securitySessionDidRequestAdditionalDerivedKeyTuples:v2];

        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_10003FE68;
        v38[3] = &unk_100273958;
        v38[4] = v2;
        v39 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v27, "count")}];
        v28 = v39;
        [v27 enumerateObjectsUsingBlock:v38];
        v29 = [v28 copy];
        [(HAPSecuritySession *)v2 setAdditionalDerivedKeys:v29];
      }

      pairingSession = v2->_pairingSession;
      if (pairingSession)
      {
        CFRelease(pairingSession);
      }

      v2->_pairingSession = 0;
      v31 = [HAPSecuritySessionEncryption alloc];
      v32 = [v20[111] dataWithBytes:buf length:32];
      v33 = [v20[111] dataWithBytes:v46 length:32];
      v34 = [(HAPSecuritySessionEncryption *)v31 initWithInputKey:v32 outputKey:v33 enhancedEncryption:v2->_enhancedEncryption];
      [(HAPSecuritySession *)v2 setEncryption:v34];

      [(HAPSecuritySession *)v2 setState:2];
      [(HAPSecuritySession *)v2 _notifyOpened];
    }
  }
}

- (void)open
{
  if ([(HAPSecuritySession *)self state])
  {
    v3 = self;
    v4 = sub_10007FAA0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = sub_10007FAFC(v3);
      *buf = 138543362;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to open security session, a security session can only be opened once.", buf, 0xCu);
    }
  }

  else
  {
    v6 = [(HAPSecuritySession *)self delegate];

    if (v6)
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
  v3 = [(HAPSecuritySession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000402AC;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_notifyOpening
{
  v3 = [(HAPSecuritySession *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(HAPSecuritySession *)self delegate];
    [v5 securitySessionIsOpening:self];
  }
}

- (void)_notifyOpened
{
  v3 = [(HAPSecuritySession *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(HAPSecuritySession *)self delegate];
    [v5 securitySessionDidOpen:self];
  }
}

- (void)close
{
  v3 = [(HAPSecuritySession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000404E8;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)closeWithError:(id)a3
{
  v4 = a3;
  v5 = [(HAPSecuritySession *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000405A8;
  v7[3] = &unk_100273370;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_closeWithError:(id)a3
{
  v11 = a3;
  v4 = [(HAPSecuritySession *)self state]== 3;
  v5 = v11;
  if (!v4)
  {
    os_unfair_lock_lock_with_options();
    v6 = self;
    pairingSession = v6->_pairingSession;
    if (pairingSession)
    {
      CFRelease(pairingSession);
      v6->_pairingSession = 0;
    }

    v8 = objc_alloc_init(HAPSecuritySessionEncryption);
    [(HAPSecuritySession *)v6 setEncryption:v8];

    v6->_resumeSessionID = 0;
    os_unfair_lock_unlock(&self->_lock);
    [(HAPSecuritySession *)v6 setState:3];
    v9 = [(HAPSecuritySession *)v6 delegate];
    LOBYTE(v8) = objc_opt_respondsToSelector();

    v5 = v11;
    if (v8)
    {
      v10 = [(HAPSecuritySession *)v6 delegate];
      [v10 securitySession:v6 didCloseWithError:v11];

      v5 = v11;
    }
  }
}

- (id)encryptData:(id)a3 additionalAuthenticatedData:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_1000408A4;
    v22 = sub_1000408B4;
    v23 = 0;
    v10 = [(HAPSecuritySession *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000408BC;
    block[3] = &unk_100273980;
    v16 = &v18;
    v17 = a5;
    block[4] = self;
    v14 = v8;
    v15 = v9;
    dispatch_sync(v10, block);

    v11 = v19[5];
    _Block_object_dispose(&v18, 8);
  }

  else if (a5)
  {
    [NSError errorWithDomain:@"HAPErrorDomain" code:-6705 userInfo:0];
    *a5 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)decryptData:(id)a3 additionalAuthenticatedData:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    if ([v8 length] > 0xF)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v23 = sub_1000408A4;
      v24 = sub_1000408B4;
      v25 = 0;
      v15 = [(HAPSecuritySession *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100040C34;
      block[3] = &unk_100273980;
      v20 = buf;
      v21 = a5;
      block[4] = self;
      v18 = v8;
      v19 = v9;
      dispatch_sync(v15, block);

      v14 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);

      goto LABEL_12;
    }

    v10 = self;
    v11 = sub_10007FAA0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = sub_10007FAFC(v10);
      *buf = 138543618;
      *&buf[4] = v12;
      *&buf[12] = 2048;
      *&buf[14] = [v8 length];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@The encrypted data has an invalid length of %tu bytes", buf, 0x16u);
    }

    if (a5)
    {
      v13 = [NSError errorWithDomain:@"HAPErrorDomain" code:-6743 userInfo:0];
LABEL_9:
      v14 = 0;
      *a5 = v13;
      goto LABEL_12;
    }
  }

  else if (a5)
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
  v3 = [(HAPSecuritySession *)self delegate];
  v4 = objc_opt_respondsToSelector();

  v5 = objc_opt_class();
  if (v4)
  {
    v6 = [(HAPSecuritySession *)self delegate];
    v7 = [v6 shortDescription];
    v8 = [NSString stringWithFormat:@"%@ %@", v5, v7];
  }

  else
  {
    v9 = [(HAPSecuritySession *)self state];
    if (v9 > 3)
    {
      v10 = @"unknown";
    }

    else
    {
      v10 = off_1002739C0[v9];
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