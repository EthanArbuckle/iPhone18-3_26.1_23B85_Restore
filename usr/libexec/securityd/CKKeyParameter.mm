@interface CKKeyParameter
- (BOOL)SOSTransportKeyParameterHandleKeyParameterChanges:(id)changes data:(__CFData *)data err:(__CFError *)err;
- (BOOL)SOSTransportKeyParameterKVSAppendKeyInterests:(id)interests ak:(__CFArray *)ak firstUnLock:(__CFArray *)lock unlocked:(__CFArray *)unlocked err:(__CFError *)err;
- (BOOL)SOSTransportKeyParameterPublishCloudParameters:(id)parameters data:(__CFData *)data err:(__CFError *)err;
- (CKKeyParameter)initWithAccount:(id)account;
@end

@implementation CKKeyParameter

- (BOOL)SOSTransportKeyParameterPublishCloudParameters:(id)parameters data:(__CFData *)data err:(__CFError *)err
{
  v8 = sub_100006274("circleOps");
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (data)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Publishing Cloud Parameters", buf, 2u);
    }

    MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, @"[");
    Current = CFAbsoluteTimeGetCurrent();
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10023E12C;
    v35[3] = &unk_100346A98;
    v35[4] = MutableCopy;
    sub_10008629C(v35, Current);
    CFStringAppend(MutableCopy, @"]");
    ExternalRepresentation = CFStringCreateExternalRepresentation(0, MutableCopy, 0x8000100u, 0x3Fu);
    Length = CFDataGetLength(ExternalRepresentation);
    v14 = CFDataGetLength(data);
    Mutable = CFDataCreateMutable(kCFAllocatorDefault, v14 + Length);
    BytePtr = CFDataGetBytePtr(ExternalRepresentation);
    v17 = CFDataGetLength(ExternalRepresentation);
    CFDataAppendBytes(Mutable, BytePtr, v17);
    v18 = CFDataGetBytePtr(data);
    v19 = CFDataGetLength(data);
    CFDataAppendBytes(Mutable, v18, v19);
    Copy = CFDataCreateCopy(kCFAllocatorDefault, Mutable);
    peerID = [(SOSAccount *)self->account peerID];

    if (peerID)
    {
      v22 = SOSLastKeyParametersPushedKeyCreateWithPeerID();
    }

    else
    {
      account = self->account;
      v22 = SOSLastKeyParametersPushedKeyCreateWithAccountGestalt();
    }

    v31 = v22;
    v32 = sub_10001104C(kCFAllocatorDefault, v23, v24, v25, v26, v27, v28, v29, kSOSKVSKeyParametersKey, data);
    if (v31)
    {
      CFRelease(v31);
    }

    v33 = dispatch_get_global_queue(-2, 0);
    SOSCloudKeychainPutObjectsInCloud();

    sub_100246DB4();
    if (v32)
    {
      CFRelease(v32);
    }

    if (ExternalRepresentation)
    {
      CFRelease(ExternalRepresentation);
    }

    if (Copy)
    {
      CFRelease(Copy);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Tried to publish nil Cloud Parameters", buf, 2u);
    }

    sub_100087E9C(0, err, @"Tried to publish nil Cloud Parameters");
  }

  return data != 0;
}

- (BOOL)SOSTransportKeyParameterKVSAppendKeyInterests:(id)interests ak:(__CFArray *)ak firstUnLock:(__CFArray *)lock unlocked:(__CFArray *)unlocked err:(__CFError *)err
{
  CFArrayAppendValue(ak, kSOSKVSKeyParametersKey);
  CFArrayAppendValue(ak, kSOSKVSOfficialDSIDKey);
  return 1;
}

- (CKKeyParameter)initWithAccount:(id)account
{
  accountCopy = account;
  v10.receiver = self;
  v10.super_class = CKKeyParameter;
  v5 = [(CKKeyParameter *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(CKKeyParameter *)v5 setAccount:accountCopy];
    v7 = v6;
    v8 = sub_100235E68();
    CFArrayAppendValue(v8, v7);
  }

  return v6;
}

- (BOOL)SOSTransportKeyParameterHandleKeyParameterChanges:(id)changes data:(__CFData *)data err:(__CFError *)err
{
  v6 = self->account;
  v7 = v6;
  if (v6)
  {
    if ([(SOSAccount *)v6 accountIsChanging])
    {
      v8 = sub_100006274("circleOps");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SOSAccountHandleParametersChange called before signing in to new account", buf, 2u);
      }

      v9 = 1;
      goto LABEL_60;
    }

    cf2 = 0;
    if (!sub_100215D20(&cf2, data))
    {
      goto LABEL_17;
    }
  }

  else
  {
    cf2 = 0;
    if (!sub_100215D20(&cf2, data))
    {
LABEL_17:
      v9 = 0;
      goto LABEL_58;
    }
  }

  sub_100214900(@"SOSAccountHandleParametersChange got new user key parameters:", 0);
  v10 = SOSCopyIDOfKeyWithLength();
  v11 = sub_100006274("circleOps");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SOSAccountHandleParametersChange got new public key: %@", buf, 0xCu);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  accountKey = [(SOSAccount *)v7 accountKey];
  if (accountKey && cf2)
  {
    if (CFEqual(accountKey, cf2))
    {
      goto LABEL_14;
    }
  }

  else if (accountKey == cf2)
  {
LABEL_14:
    v13 = sub_100006274("circleOps");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "Got same public key sent our way. Ignoring.";
LABEL_45:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
      goto LABEL_46;
    }

    goto LABEL_46;
  }

  previousAccountKey = [(SOSAccount *)v7 previousAccountKey];
  v16 = cf2;
  if (previousAccountKey && cf2)
  {
    if (!CFEqual(previousAccountKey, cf2))
    {
      v16 = cf2;
      goto LABEL_24;
    }
  }

  else if (previousAccountKey != cf2)
  {
LABEL_24:
    v17 = v7;
    if ([(SOSAccount *)v17 accountKeyIsTrusted]&& [(SOSAccount *)v17 accountKey])
    {
      v18 = sub_100006274("circleOps");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        accountKey2 = [(SOSAccount *)v17 accountKey];
        *buf = 138412290;
        v35 = accountKey2;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Moving : %@ to previousAccountKey", buf, 0xCu);
      }

      [(SOSAccount *)v17 setPreviousAccountKey:[(SOSAccount *)v17 accountKey]];
    }

    [(SOSAccount *)v17 setAccountKey:v16];
    [(SOSAccount *)v17 setAccountKeyIsTrusted:0];
    if (![(SOSAccount *)v17 previousAccountKey])
    {
      [(SOSAccount *)v17 setPreviousAccountKey:[(SOSAccount *)v17 accountKey]];
    }

    [(SOSAccount *)v17 accountKey];
    v20 = SOSCopyIDOfKeyWithLength();
    v21 = sub_100006274("circleOps");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "not trusting new public key: %@", buf, 0xCu);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    v22 = cf2;
    if (cf2)
    {
      cf2 = 0;
      CFRelease(v22);
    }

    [(SOSAccount *)v17 setAccountKeyDerivationParameters:0];
    v23 = v17;
    _password_tmp = [(SOSAccount *)v23 _password_tmp];

    if (!_password_tmp)
    {
      v25 = sub_100006274("circleOps");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Password cache expired", buf, 2u);
      }
    }

    _password_tmp2 = [(SOSAccount *)v23 _password_tmp];

    if (_password_tmp2)
    {
      CFRetain(_password_tmp2);
      v27 = sub_100219108(v23, 0, _password_tmp2, 0);
      CFRelease(_password_tmp2);
    }

    else
    {
      v27 = 0;
    }

    v28 = sub_100006274("circleOps");
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (v27)
    {
      if (v29)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Successfully used cached password with new parameters", buf, 2u);
      }

      sub_100217C70(v23);
    }

    else
    {
      if (v29)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Got new parameters for public key - could not find or use cached password", buf, 2u);
      }

      sub_100217D3C(v23);
    }

    v30 = sub_100006274("circleop");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Setting account.key_interests_need_updating to true in SOSAccountHandleParametersChange", buf, 2u);
    }

    v9 = 1;
    [(SOSAccount *)v23 setCircle_rings_retirements_need_attention:1];
    [(SOSAccount *)v23 setKey_interests_need_updating:1];
    goto LABEL_58;
  }

  v13 = sub_100006274("circleOps");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v14 = "Got previous public key repeated. Ignoring.";
    goto LABEL_45;
  }

LABEL_46:

  v9 = 1;
LABEL_58:
  v31 = cf2;
  if (cf2)
  {
    cf2 = 0;
    CFRelease(v31);
  }

LABEL_60:

  return v9;
}

@end