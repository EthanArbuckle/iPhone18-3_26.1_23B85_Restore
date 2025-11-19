void sub_10007013C(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  if (v2)
  {
    v3 = v2;
    v2[2](v2, *(a1 + 40));
    [*(a1 + 32) setCompletionHandler:0];
    v2 = v3;
  }
}

void sub_100070254(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  if (v2)
  {
    v3 = v2;
    v2[2](v2, 0);
    [*(a1 + 32) setCompletionHandler:0];
    v2 = v3;
  }
}

void sub_100070398(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) pairSetupSession];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = sub_10007FAA0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = sub_10007FAFC(v4);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%{public}@Request to send Pair Setup session setup exchange", &v7, 0xCu);
    }

    [*(a1 + 40) _handlePairSetupSessionExchangeData:*(a1 + 48)];
  }
}

void sub_100070AEC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) pairSetupSession];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    [v4 _pairingCompletedWithError:v5];
  }
}

void sub_100070C2C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) pairSetupSession];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    [v4 setProductData:v5];
  }
}

void sub_100070D6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) pairSetupSession];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = sub_10007FAA0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = sub_10007FAFC(v4);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Request to get the pairing peer setup code", &v7, 0xCu);
    }

    [*(a1 + 40) _handlePairingSetupCodeRequestWithCompletionHandler:*(a1 + 48)];
  }
}

void sub_100070F14(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) pairSetupSession];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = sub_10007FAA0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = sub_10007FAFC(v4);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Pair Setup session invalid setup code", &v7, 0xCu);
    }

    [*(a1 + 40) setBadPairSetupCode:1];
    [*(a1 + 40) setPairSetupBackoffTimeInterval:0.0];
  }
}

void sub_1000710E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) pairSetupSession];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = sub_10007FAA0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = sub_10007FAFC(v4);
      v7 = *(a1 + 48);
      v8 = 138543618;
      v9 = v6;
      v10 = 2048;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Pair Setup session request to backoff for %g seconds", &v8, 0x16u);
    }

    [*(a1 + 40) setBadPairSetupCode:1];
    [*(a1 + 40) setPairSetupBackoffTimeInterval:*(a1 + 48)];
  }
}

void sub_1000712D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000712E8(uint64_t a1)
{
  v2 = [*(a1 + 32) protocolInfoServiceSignatureCharacteristics];
  v3 = [v2 instanceID];
  v4 = [HAPProtocolMessages constructInfoRequest:v3 outTID:*(*(a1 + 48) + 8) + 24];

  if (v4)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100071428;
    v9[3] = &unk_100274488;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v6;
    v11 = *(a1 + 48);
    [v5 _sendProtocolInfoServiceExchangeData:v4 completion:v9];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [NSError errorWithDomain:@"HAPErrorDomain" code:1 userInfo:0];
    (*(v7 + 16))(v7, v8);
  }
}

void sub_100071428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 40) + 16);
LABEL_5:

    v5();
    return;
  }

  v6 = [HAPProtocolMessages parseInfoResponse:a3 expectedTID:*(*(*(a1 + 48) + 8) + 24) withHeader:0];
  [*(a1 + 32) setAuthenticatedProtocolInfo:v6];

  v7 = *(a1 + 32);
  v8 = [v7 authenticatedProtocolInfo];
  LODWORD(v7) = [v7 _validateProtocolInfo:v8];

  v9 = *(a1 + 32);
  if (v7)
  {
    v10 = [v9 authenticatedProtocolInfo];
    v11 = [v10 protocolVersion];
    [*(a1 + 32) setVersion:v11];

    v5 = *(*(a1 + 40) + 16);
    goto LABEL_5;
  }

  v12 = v9;
  v13 = sub_10007FAA0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = sub_10007FAFC(v12);
    v15 = [*(a1 + 32) authenticatedProtocolInfo];
    v18 = 138543618;
    v19 = v14;
    v20 = 2112;
    v21 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@Protocol Info does not match: %@ Accessory out of compliance", &v18, 0x16u);
  }

  v16 = *(a1 + 40);
  v17 = [NSError errorWithDomain:@"HAPErrorDomain" code:7 userInfo:0];
  (*(v16 + 16))(v16, v17);
}

void sub_100071934(uint64_t a1)
{
  v1 = [*(a1 + 32) authSession];
  [v1 handleAuthExchangeData:0 withHeader:0];
}

void sub_100071AE0(uint64_t a1)
{
  [*(a1 + 32) setWaitingForAuth:0];
  if ([*(a1 + 32) authMethod] == 2)
  {
    v6 = [*(a1 + 32) authSession];
    [v6 continueAuthAfterValidation:*(a1 + 40)];

    return;
  }

  if (*(a1 + 40) != 1)
  {
    goto LABEL_14;
  }

  if ([*(a1 + 32) authMethod] == 4)
  {
    v2 = *(a1 + 32);

    [v2 _continuePairingAfterMFiCertValidation];
    return;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
LABEL_14:
    v4 = [NSError hapErrorWithcode:16 description:@"Pairing Failed." reason:@"User cancelled pairing" suggestion:0 underlyingError:0];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100071C84;
    v7[3] = &unk_100273370;
    v7[4] = *(a1 + 32);
    v8 = v4;
    v5 = v4;
    sub_100071C84(v7);
    [*(a1 + 32) _pairingCompletedWithError:v5];

    return;
  }

  v3 = *(a1 + 32);

  [v3 continuePairingAfterAuthPrompt];
}

void sub_100071C84(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = sub_10007FAA0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_10007FAFC(0);
      v5 = [*(a1 + 40) domain];
      v6 = [*(a1 + 40) code];
      v7 = 138543874;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      v11 = 2048;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to authenticate accessory with error: %{key:errorDomain}@ %{key:errorCode}ld", &v7, 0x20u);
    }
  }
}

void sub_100071EF8(uint64_t a1)
{
  v2 = [*(a1 + 32) authSession];
  [v2 sendTokenUpdateRequest:*(a1 + 40)];
}

void sub_100071FD4(uint64_t a1)
{
  v2 = [*(a1 + 32) authSession];
  [v2 resetSession];

  [*(a1 + 32) setAuthenticated:1];
  [*(a1 + 32) setPairing:0];
  v3 = [*(a1 + 32) _getPairSetupType];
  v4 = [*(a1 + 32) browser];
  v5 = [v4 pairSetupSession:*(a1 + 32) pairSetupType:v3 enhancedEncryption:{objc_msgSend(*(a1 + 32), "enhancedEncryption")}];

  [*(a1 + 32) setPairSetupSession:v5];
}

void sub_1000721CC(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:NSUnderlyingErrorKey];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v9 = v4;

  v5 = *(a1 + 32);
  if ([v9 isHAPError] && objc_msgSend(v9, "code") == 1)
  {
    v6 = [*(a1 + 32) domain];
    v7 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v6, [*(a1 + 32) code], 0);

    v5 = v7;
  }

  v8 = [*(a1 + 40) delegate];
  [v8 accessoryServer:*(a1 + 40) didStopPairingWithError:v5];
}

id sub_1000723AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100072420;
  v4[3] = &unk_1002744D8;
  v4[4] = v2;
  return [v2 _sendProtocolInfoServiceExchangeData:v1 completion:v4];
}

void sub_100072420(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v5)
  {
    v8 = v7;
    v9 = sub_10007FAA0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = sub_10007FAFC(v8);
      *buf = 138543618;
      v25 = v10;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@SW Auth failed, sending auth exchange with error: %@", buf, 0x16u);
    }

    v11 = v5;
    v12 = [v11 userInfo];
    v13 = [v12 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v14 = v11;
    if (v13)
    {
      v15 = [v11 userInfo];
      v14 = [v15 objectForKeyedSubscript:NSUnderlyingErrorKey];
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000726C4;
    v22[3] = &unk_100273370;
    v22[4] = *(a1 + 32);
    v16 = v14;
    v23 = v16;
    sub_1000726C4(v22);
    v17 = [*(a1 + 32) authSession];
    [v17 resetSession];

    if ([*(a1 + 32) _delegateRespondsToSelector:"accessoryServer:didFinishAuth:"])
    {
      v18 = [*(a1 + 32) delegateQueue];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000727DC;
      v20[3] = &unk_100273370;
      v20[4] = *(a1 + 32);
      v21 = v11;
      dispatch_async(v18, v20);
    }
  }

  else
  {
    v19 = [v7 authSession];
    [v19 handleAuthExchangeData:v6 withHeader:0];
  }
}

void sub_1000726C4(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = sub_10007FAA0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_10007FAFC(0);
      v5 = [*(a1 + 40) domain];
      v6 = [*(a1 + 40) code];
      v7 = 138543874;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      v11 = 2048;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to send auth data to accessory with error: %{key:errorDomain}@ %{key:errorCode}ld", &v7, 0x20u);
    }
  }
}

void sub_1000727DC(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didFinishAuth:*(a1 + 40)];
}

void sub_100072930(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  v4 = *(a1 + 32);
  if (v3)
  {
    [v4 _suspendConnectionIdleTimer];
    [*(a1 + 32) setWaitingForAuth:1];
    v5 = [*(a1 + 32) delegateQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100072B10;
    block[3] = &unk_100273748;
    v6 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v14 = v6;
    v15 = *(a1 + 48);
    dispatch_async(v5, block);
  }

  else
  {
    v7 = v4;
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_10007FAFC(v7);
      *buf = 138543362;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement validateUUID:token1:token2:", buf, 0xCu);
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v12 = [NSError errorWithDomain:@"HAPErrorDomain" code:1 userInfo:0];
    [v10 authSession:v11 authComplete:v12];
  }
}

void sub_100072B10(uint64_t a1)
{
  v7 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 authenticatedProtocolInfo];
  v6 = [v5 modelName];
  [v7 accessoryServer:v2 validateUUID:v3 token:v4 model:v6];
}

void sub_100072CB0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 delegateQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100072E7C;
    block[3] = &unk_100273748;
    v6 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v14 = v6;
    v15 = *(a1 + 48);
    dispatch_async(v5, block);
  }

  else
  {
    v7 = v4;
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_10007FAFC(v7);
      *buf = 138543362;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement accessoryServer:authenticateUUID:token:", buf, 0xCu);
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v12 = [NSError errorWithDomain:@"HAPErrorDomain" code:1 userInfo:0];
    [v10 authSession:v11 authComplete:v12];
  }
}

void sub_100072E7C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) authenticateUUID:*(a1 + 40) token:*(a1 + 48)];
}

void sub_100072FD4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 delegateQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000731A0;
    block[3] = &unk_100273748;
    v6 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v14 = v6;
    v15 = *(a1 + 48);
    dispatch_async(v5, block);
  }

  else
  {
    v7 = v4;
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_10007FAFC(v7);
      *buf = 138543362;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement accessoryServer:confirmUUID:token:)", buf, 0xCu);
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v12 = [NSError errorWithDomain:@"HAPErrorDomain" code:1 userInfo:0];
    [v10 authSession:v11 authComplete:v12];
  }
}

void sub_1000731A0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) confirmUUID:*(a1 + 40) token:*(a1 + 48)];
}

void sub_1000732AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = sub_10007FAFC(v2);
    v5 = *(a1 + 40);
    *buf = 138543618;
    v22 = v4;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%{public}@Auth Complete with status: %@", buf, 0x16u);
  }

  v6 = [*(a1 + 40) userInfo];
  v7 = [v6 objectForKeyedSubscript:NSUnderlyingErrorKey];

  if (!v7)
  {
    v7 = *(a1 + 40);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100073550;
  v19[3] = &unk_100273370;
  v19[4] = *(a1 + 32);
  v8 = v7;
  v20 = v8;
  sub_100073550(v19);
  v9 = [*(a1 + 32) delegate];
  v10 = objc_opt_respondsToSelector();

  v11 = *(a1 + 32);
  if (v10)
  {
    v12 = [v11 delegateQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100073668;
    v17[3] = &unk_100273370;
    v13 = *(a1 + 40);
    v17[4] = *(a1 + 32);
    v18 = v13;
    dispatch_async(v12, v17);
  }

  else
  {
    v14 = v11;
    v15 = sub_10007FAA0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = sub_10007FAFC(v14);
      *buf = 138543362;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement accessoryServer:didFinishAuth:", buf, 0xCu);
    }
  }
}

void sub_100073550(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = sub_10007FAA0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_10007FAFC(0);
      v5 = [*(a1 + 40) domain];
      v6 = [*(a1 + 40) code];
      v7 = 138543874;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      v11 = 2048;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@Authenticating accessory with error: %{key:errorDomain}@ %{key:errorCode}ld", &v7, 0x20u);
    }
  }
}

void sub_100073668(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didFinishAuth:*(a1 + 40)];
}

void sub_100073C9C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) securitySession];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = sub_10007FAA0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = sub_10007FAFC(v4);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Request to send security session setup exchange", &v7, 0xCu);
    }

    [*(a1 + 40) _handleSecuritySessionSetupExchangeData:*(a1 + 48)];
  }
}

void sub_100073E44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) securitySession];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = sub_10007FAA0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = sub_10007FAFC(v4);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Security session is opening", &v7, 0xCu);
    }
  }
}

void sub_100073FE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) securitySession];

  if (v2 == v3)
  {
    v4 = [*(a1 + 40) accessoryCache];
    [v4 setLastKeyBagIdentityIndexFailingPV:0];

    v5 = *(a1 + 40);
    v6 = [v5 identifier];
    [v5 associateAccessoryWithControllerKeyUsingAccessoryIdentifier:v6];

    v7 = *(a1 + 40);
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = sub_10007FAFC(v7);
      v10 = [*(a1 + 32) resumeSessionID];
      v11 = 138543618;
      v12 = v9;
      v13 = 2048;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}@Security session is open with resumeSessionID %llu", &v11, 0x16u);
    }

    [*(a1 + 40) submitPairVerifyMetricWithError:0];
    [*(a1 + 40) updateResumeSessionID:{objc_msgSend(*(a1 + 32), "resumeSessionID")}];
    [*(a1 + 40) _resumeAllOperations];
  }
}

void sub_1000742BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) securitySession];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = sub_10007FAA0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = sub_10007FAFC(v4);
      v7 = *(a1 + 48);
      *buf = 138543618;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Security session did close with error: %@", buf, 0x16u);
    }

    [*(a1 + 40) submitPairVerifyMetricWithError:*(a1 + 48)];
    [*(a1 + 40) setSecuritySession:0];
    if (([*(a1 + 40) _shouldIgnoreRetryDiscoveryError:*(a1 + 48)] & 1) == 0)
    {
      v8 = [*(a1 + 40) keyBag];
      v9 = [v8 getCurrentIndexInBag];

      v10 = [*(a1 + 40) shouldRetryPVDueToAuthenticationError:*(a1 + 48)];
      v11 = *(a1 + 40);
      if (v10)
      {
        v12 = [v11 accessoryCache];
        v13 = [NSNumber numberWithInteger:v9];
        [v12 setLastKeyBagIdentityIndexFailingPV:v13];

        v14 = [*(a1 + 40) clientQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000744D8;
        block[3] = &unk_100273348;
        block[4] = *(a1 + 40);
        dispatch_async(v14, block);
      }

      else
      {
        [v11 disconnectWithCompletionHandler:0];
        if (*(a1 + 48))
        {
          [*(a1 + 40) _cancelAllQueuedOperationsWithError:?];
          [*(a1 + 40) _resumeAllOperations];
          [*(a1 + 40) updateResumeSessionID:0];
        }
      }
    }
  }
}

void sub_100074758(uint64_t a1)
{
  v1 = [*(a1 + 32) pairingActivity];
  if (v1)
  {
    v2 = sub_10007FAA0();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = sub_10007FAFC(0);
      v4 = 138543874;
      v5 = v3;
      v6 = 2112;
      v7 = @"HAPErrorDomain";
      v8 = 2048;
      v9 = 24;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@Disconnecting from accessory due to connection timeout with                                             error: %{key:errorDomain}@ %{key:errorCode}ld", &v4, 0x20u);
    }
  }
}

void sub_100074970(id a1)
{
  v1 = sub_10007F9D4(@"BLEServer2x", @"com.apple.dockaccessoryd");
  v2 = qword_1002ACC08;
  qword_1002ACC08 = v1;
}

__CFString *sub_10007685C(uint64_t a1)
{
  if ((a1 - 1) > 0xE)
  {
    v2 = 0;
  }

  else
  {
    v2 = *off_100274550[a1 - 1];
  }

  return v2;
}

uint64_t sub_1000768B4(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"uint8"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"uint16"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"uint32"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"uint64"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"int8"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"int16"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"int"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"int64"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"BOOL"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"float"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"string"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"data"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"tlv8"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"array"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"dict"])
  {
    v2 = 15;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *sub_100076ABC(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = *off_1002745C8[a1 - 1];
  }

  return v2;
}

void sub_1000789E4(uint64_t a1)
{
  v3 = [NSError hapErrorWithcode:9 description:@"Invalid parameter." reason:@"Characteristic is a required paramter." suggestion:0 underlyingError:0];
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void sub_100078A64(uint64_t a1)
{
  v3 = [NSError hapErrorWithcode:9 description:@"Invalid parameter." reason:@"The timeout must not be negative." suggestion:0 underlyingError:0];
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void sub_100078AE4(uint64_t a1)
{
  v3 = [NSError hapErrorWithcode:14 description:@"Read failed." reason:@"There is no server present for the accessory." suggestion:0 underlyingError:0];
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void sub_100078B64(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 40))
  {
    v12 = v5;
    v6 = [a2 firstObject];
    v7 = [v6 characteristic];
    if ([v7 isEqual:*(a1 + 32)])
    {
      v8 = [v6 error];

      if (v8)
      {
        v9 = [v6 error];
LABEL_7:
        v10 = v9;
        v11 = *(a1 + 32);
        (*(*(a1 + 40) + 16))();

        v5 = v12;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v9 = v12;
    goto LABEL_7;
  }

LABEL_8:
}

void sub_100078FBC(uint64_t a1)
{
  v2 = [NSError hapErrorWithcode:9 description:@"Invalid parameter." reason:@"One or more target characteristics are required." suggestion:0 underlyingError:0];
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_10007FAFC(0);
    v5 = [v2 domain];
    v6 = 138543874;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    v10 = 2048;
    v11 = [v2 code];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@%{key:errorDomain}@, %{key:errorCode}ld", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100079108(uint64_t a1)
{
  v2 = [NSError hapErrorWithcode:9 description:@"Invalid parameter." reason:@"The timeout must not be negative." suggestion:0 underlyingError:0];
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_10007FAFC(0);
    v5 = [v2 domain];
    v6 = 138543874;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    v10 = 2048;
    v11 = [v2 code];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@%{key:errorDomain}@, %{key:errorCode}ld", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100079254(uint64_t a1)
{
  v2 = [NSError hapErrorWithcode:14 description:@"Read failed." reason:@"There is no server present for the accessory." suggestion:0 underlyingError:0];
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_10007FAFC(0);
    v5 = [v2 domain];
    v6 = 138543874;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    v10 = 2048;
    v11 = [v2 code];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@%{key:errorDomain}@, %{key:errorCode}ld", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000797E8(uint64_t a1)
{
  v4 = [NSError hapErrorWithcode:9 description:@"Invalid parameter." reason:@"Characteristic write request is a required paramter." suggestion:0 underlyingError:0];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) characteristic];
  (*(v2 + 16))(v2, v3, v4);
}

void sub_100079880(uint64_t a1)
{
  v4 = [NSError hapErrorWithcode:9 description:@"Invalid parameter." reason:@"The timeout must not be negative." suggestion:0 underlyingError:0];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) characteristic];
  (*(v2 + 16))(v2, v3, v4);
}

void sub_100079918(uint64_t a1)
{
  v4 = [NSError hapErrorWithcode:13 description:@"Write failed." reason:@"There is no server present for the accessory." suggestion:0 underlyingError:0];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) characteristic];
  (*(v2 + 16))(v2, v3, v4);
}

void sub_1000799B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 40))
  {
    v14 = v5;
    v6 = [a2 firstObject];
    v7 = [v6 characteristic];
    v8 = [*(a1 + 32) characteristic];
    if ([v7 isEqual:v8])
    {
      v9 = [v6 error];

      if (v9)
      {
        v10 = [v6 error];
LABEL_7:
        v11 = v10;
        v12 = *(a1 + 40);
        v13 = [*(a1 + 32) characteristic];
        (*(v12 + 16))(v12, v13, v11);

        v5 = v14;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v10 = v14;
    goto LABEL_7;
  }

LABEL_8:
}

void sub_100079E44(uint64_t a1)
{
  v2 = [NSError hapErrorWithcode:9 description:@"Invalid parameter." reason:@"One or more target characteristic writes are required." suggestion:0 underlyingError:0];
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_10007FAFC(0);
    v5 = [v2 domain];
    v6 = 138543874;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    v10 = 2048;
    v11 = [v2 code];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@%{key:errorDomain}@, %{key:errorCode}ld", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100079F90(uint64_t a1)
{
  v2 = [NSError hapErrorWithcode:9 description:@"Invalid parameter." reason:@"The timeout must not be negative." suggestion:0 underlyingError:0];
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_10007FAFC(0);
    v5 = [v2 domain];
    v6 = 138543874;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    v10 = 2048;
    v11 = [v2 code];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@%{key:errorDomain}@, %{key:errorCode}ld", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10007A0DC(uint64_t a1)
{
  v2 = [NSError hapErrorWithcode:13 description:@"Write failed." reason:@"There is no server present for the accessory." suggestion:0 underlyingError:0];
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_10007FAFC(0);
    v5 = [v2 domain];
    v6 = 138543874;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    v10 = 2048;
    v11 = [v2 code];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@%{key:errorDomain}@, %{key:errorCode}ld", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10007BF10(id a1)
{
  v1 = sub_10007F9D4(@"HAPAccessory", @"com.apple.dockaccessoryd");
  v2 = qword_1002ACC28;
  qword_1002ACC28 = v1;
}

void sub_10007C3A0(id a1)
{
  v1 = objc_alloc_init(HAPPowerManager);
  v2 = qword_1002ACC30;
  qword_1002ACC30 = v1;
}

void sub_10007C8C0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegatesMap];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = [*(a1 + 32) delegatesMap];
  [v3 setObject:*(a1 + 48) forKey:*(a1 + 40)];
}

void sub_10007C9C8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegatesMap];
  [v2 removeObjectForKey:*(a1 + 40)];
}

id sub_10007CD10(uint64_t a1)
{
  HIDWORD(v3) = a1 + 536870288;
  LODWORD(v3) = a1 + 536870288;
  v2 = v3 >> 4;
  if (v2 < 0xC && ((0xA07u >> v2) & 1) != 0)
  {
    v4 = *(&off_1002746A0 + v2);
  }

  else
  {
    v4 = [NSString stringWithFormat:@"Missing string for IOSystemMessage: 0x%X", a1];
  }

  return v4;
}

void sub_10007CDEC(id a1)
{
  v1 = sub_10007F9D4(@"HAPPowerManager", @"com.apple.dockaccessoryd");
  v2 = qword_1002ACC48;
  qword_1002ACC48 = v1;
}

uint64_t sub_10007E584(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v3 = sub_10007FAA0();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v4 = sub_10007FAFC(0);
    v7 = 138543362;
    v8 = v4;
    v5 = "%{public}@### Type name is nil";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, v5, &v7, 0xCu);

    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = sub_10007FAA0();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v4 = sub_10007FAFC(0);
    v7 = 138543362;
    v8 = v4;
    v5 = "%{public}@### Type name is not a string";
    goto LABEL_11;
  }

  if (![v1 length])
  {
    v3 = sub_10007FAA0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = sub_10007FAFC(0);
      v7 = 138543362;
      v8 = v4;
      v5 = "%{public}@### Type name is an empty string";
      goto LABEL_11;
    }

LABEL_12:

    v2 = 0;
    goto LABEL_13;
  }

  v2 = 1;
LABEL_13:

  return v2;
}

id sub_10007E724(void *a1)
{
  v1 = a1;
  v2 = [[NSUUID alloc] initWithUUIDString:v1];
  if (v2)
  {
    v3 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-1000-8000-4D69736D6574"];
    v4 = [v2 isEqual:v3];

    if (v4)
    {
      v5 = sub_10007FAA0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = sub_10007FAFC(0);
        *buf = 138543362;
        *&buf[4] = v6;
        v7 = "%{public}@### UUID type is using the HAP Base UUID";
        v8 = v5;
        v9 = 12;
LABEL_8:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v7, buf, v9);

        goto LABEL_9;
      }

      goto LABEL_9;
    }

    v10 = [v2 UUIDString];
  }

  else
  {
    if ([v1 characterAtIndex:0] == 48)
    {
      v5 = sub_10007FAA0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = sub_10007FAFC(0);
        *buf = 138543618;
        *&buf[4] = v6;
        *&buf[12] = 2112;
        *&buf[14] = v1;
        v7 = "%{public}@### UUID type %@ starts with a '0'";
        v8 = v5;
        v9 = 22;
        goto LABEL_8;
      }

LABEL_9:

      v10 = 0;
      goto LABEL_11;
    }

    memset(v30, 0, sizeof(v30));
    [v1 UTF8String];
    v12 = NormalizeUUIDString();
    if (v12)
    {
      v13 = v12;
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      memset(buf, 0, sizeof(buf));
      DebugGetErrorString();
      v5 = sub_10007FAA0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v14 = sub_10007FAFC(0);
        v16 = 138544130;
        v17 = v14;
        v18 = 1024;
        v19 = v13;
        v20 = 2080;
        v21 = buf;
        v22 = 2112;
        v23 = v1;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@### Error: %d(%s) creating UUID string from type: %@.", &v16, 0x26u);
      }

      goto LABEL_9;
    }

    v15 = [NSString stringWithUTF8String:v30];
    v10 = [v15 uppercaseString];
  }

LABEL_11:

  return v10;
}

uint64_t sub_10007EA14(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v1 doubleValue];
      v3 = floor(v2);
      [v1 doubleValue];
      if (v3 == ceil(v4))
      {
        if ([v1 unsignedLongLongValue])
        {
          v8 = 1;
          goto LABEL_12;
        }

        v5 = sub_10007FAA0();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v6 = sub_10007FAFC(0);
          v10 = 138543362;
          v11 = v6;
          v7 = "%{public}@### instance ID is not > 0";
          goto LABEL_10;
        }
      }

      else
      {
        v5 = sub_10007FAA0();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v6 = sub_10007FAFC(0);
          v10 = 138543362;
          v11 = v6;
          v7 = "%{public}@### instance ID is not an integer";
LABEL_10:
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v7, &v10, 0xCu);
        }
      }
    }

    else
    {
      v5 = sub_10007FAA0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = sub_10007FAFC(0);
        v10 = 138543362;
        v11 = v6;
        v7 = "%{public}@### instance ID is not a number";
        goto LABEL_10;
      }
    }
  }

  else
  {
    v5 = sub_10007FAA0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = sub_10007FAFC(0);
      v10 = 138543362;
      v11 = v6;
      v7 = "%{public}@### nil instance ID";
      goto LABEL_10;
    }
  }

  v8 = 0;
LABEL_12:

  return v8;
}

uint64_t sub_10007EC2C(unint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    return [a1 isEqualToString:a2] ^ 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007EC60(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 | v4)
  {
    v6 = 1;
    if (v3 && v4)
    {
      if (CFNumberIsFloatType(v3) || CFNumberIsFloatType(v5))
      {
        [v3 floatValue];
        v8 = v7;
        [v5 floatValue];
        v6 = vabds_f32(v8, v9) >= 0.00000011921;
      }

      else
      {
        v6 = [v3 isEqualToNumber:v5] ^ 1;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_10007ED18(unint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    return [a1 isEqualToArray:a2] ^ 1;
  }

  else
  {
    return 0;
  }
}

os_log_t sub_10007F9D4(void *a1, id a2)
{
  v4 = a2;
  v5 = a1;
  v6 = [a2 UTF8String];
  v7 = [v5 UTF8String];

  v8 = os_log_create(v6, v7);

  return v8;
}

os_log_t sub_10007FA4C()
{
  v0 = os_log_create([@"com.apple.dockaccessoryd" UTF8String], objc_msgSend(@"HAP", "UTF8String"));

  return v0;
}

id sub_10007FAA0()
{
  v0 = objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [v0 logCategory];
  }

  else
  {
    sub_10007FA4C();
  }
  v1 = ;

  return v1;
}

__CFString *sub_10007FAFC(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 logIdentifier];
    v3 = [NSString stringWithFormat:@"[%@] ", v2];
  }

  else
  {
    v3 = &stru_10027BDA0;
  }

  return v3;
}

DKMInterval *__cdecl sub_1000823E4(id a1, NSNumber *a2, NSNumber *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = +[DKMInterval positiveInfinityEnd];
  v7 = [(NSNumber *)v4 isEqual:v6];

  if (v7)
  {
    [DKMInterval openOpenIntervalFromStart:v5 toEnd:v4];
  }

  else
  {
    [DKMInterval openClosedIntervalFromStart:v5 toEnd:v4];
  }
  v8 = ;

  return v8;
}

__CFString *HAPCharacteristicValueTransitionTypesAsString(unint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  if (!a1)
  {
    goto LABEL_12;
  }

  v3 = 1;
  v4 = a1;
  do
  {
    if ((v3 & a1) == 0)
    {
      goto LABEL_9;
    }

    if (v3 == 1)
    {
      v5 = @"HAPCharacteristicValueTransitionTypeLinear";
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_9;
      }

      v5 = @"HAPCharacteristicValueTransitionTypeLinearDerived";
    }

    v4 &= ~v3;
    [v2 addObject:v5];
LABEL_9:
    v3 *= 2;
  }

  while (v3 - 1 < a1);
  if (v4)
  {
    v6 = [NSString stringWithFormat:@"Unknown options %lu", v4];
    [v2 addObject:v6];
  }

LABEL_12:
  if ([v2 count])
  {
    v7 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = @"None";
  }

  return v7;
}

void sub_1000852C4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = sub_10007FAA0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = sub_10007FAFC(v4);
      v7 = 138543618;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to send hello control message (%@)", &v7, 0x16u);
    }
  }
}

void sub_1000854E8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = sub_10007FAA0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = sub_10007FAFC(v4);
      v7 = 138543618;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to send version control message (%@)", &v7, 0x16u);
    }
  }
}

__CFString *HAPCharacteristicValueTransitionEndBehaviorAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"HAPCharacteristicValueTransitionEndBehaviorLoop";
    }

    else
    {
      v2 = [NSString stringWithFormat:@"Unknown HAPCharacteristicValueTransitionEndBehavior %ld", a1];
    }
  }

  else
  {
    v2 = @"HAPCharacteristicValueTransitionEndBehaviorNoChange";
  }

  return v2;
}

__CFString *HAPCharacteristicValueTransitionLinearStartConditionAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [NSString stringWithFormat:@"Unknown HAPCharacteristicValueTransitionLinearStartCondition %ld", a1];
  }

  else
  {
    v2 = off_100274978[a1];
  }

  return v2;
}

__CFString *HAPFirmwareUpdateStateAsString(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [NSString stringWithFormat:@"Unknown HAPFirmwareUpdateState %ld", a1];
  }

  else
  {
    v2 = off_100274990[a1];
  }

  return v2;
}

void sub_100086574(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_100086674(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_100088068(uint64_t a1, void *a2)
{
  v5 = a2;
  dispatch_assert_queue_V2(*(a1 + 32));
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v5);
  }

  v4 = v5;
  if (!v5 && *(a1 + 56) == 1)
  {
    [*(a1 + 40) disconnect];
    [*(a1 + 40) refreshKeyBag];
    v4 = 0;
  }
}

void sub_1000887BC(uint64_t a1)
{
  v2 = [*(a1 + 32) internalDelegates];
  [v2 addObject:*(a1 + 40)];
}

void sub_1000888C4(uint64_t a1)
{
  v2 = [*(a1 + 32) internalDelegates];
  [v2 removeObject:*(a1 + 40)];
}

void sub_1000889CC(uint64_t a1)
{
  v15 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) internalDelegates];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        objc_initWeak(&location, *(*(&v10 + 1) + 8 * v5));
        if ((v15 & 1) == 0)
        {
          v6 = objc_loadWeakRetained(&location);
          v7 = v6 == 0;

          if (!v7)
          {
            v8 = *(a1 + 40);
            v9 = objc_loadWeakRetained(&location);
            (*(v8 + 16))(v8, v9, &v15);
          }
        }

        objc_destroyWeak(&location);
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v3);
  }
}

id sub_100088B40(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];

  TLV8Get();

  return 0;
}

__CFString *HAPDiagnosticsSnapshotAudioAsString(unint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  if (!a1)
  {
    goto LABEL_12;
  }

  v3 = 1;
  v4 = a1;
  do
  {
    if ((v3 & a1) == 0)
    {
      goto LABEL_9;
    }

    if (v3 == 1)
    {
      v5 = @"HAPDiagnosticsSnapshotAudioAudioRecording";
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_9;
      }

      v5 = @"HAPDiagnosticsSnapshotAudioAudioClips";
    }

    v4 &= ~v3;
    [v2 addObject:v5];
LABEL_9:
    v3 *= 2;
  }

  while (v3 - 1 < a1);
  if (v4)
  {
    v6 = [NSString stringWithFormat:@"Unknown options %lu", v4];
    [v2 addObject:v6];
  }

LABEL_12:
  if ([v2 count])
  {
    v7 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = @"None";
  }

  return v7;
}

__CFString *HAPDiagnosticsSnapshotOptionsAsString(unint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  if (!a1)
  {
    goto LABEL_12;
  }

  v3 = 1;
  v4 = a1;
  do
  {
    if ((v3 & a1) == 0)
    {
      goto LABEL_9;
    }

    if (v3 == 1)
    {
      v5 = @"HAPDiagnosticsSnapshotOptionDelay";
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_9;
      }

      v5 = @"HAPDiagnosticsSnapshotOptionConfigurableMaxSize";
    }

    v4 &= ~v3;
    [v2 addObject:v5];
LABEL_9:
    v3 *= 2;
  }

  while (v3 - 1 < a1);
  if (v4)
  {
    v6 = [NSString stringWithFormat:@"Unknown options %lu", v4];
    [v2 addObject:v6];
  }

LABEL_12:
  if ([v2 count])
  {
    v7 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = @"None";
  }

  return v7;
}

__CFString *HAPDiagnosticsSnapshotTypeAsString(unint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  if (!a1)
  {
    goto LABEL_12;
  }

  v3 = 1;
  v4 = a1;
  do
  {
    if ((v3 & a1) == 0)
    {
      goto LABEL_9;
    }

    if (v3 == 1)
    {
      v5 = @"HAPDiagnosticsSnapshotTypeManufacturerSnapshot";
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_9;
      }

      v5 = @"HAPDiagnosticsSnapshotTypeADKSnapshot";
    }

    v4 &= ~v3;
    [v2 addObject:v5];
LABEL_9:
    v3 *= 2;
  }

  while (v3 - 1 < a1);
  if (v4)
  {
    v6 = [NSString stringWithFormat:@"Unknown options %lu", v4];
    [v2 addObject:v6];
  }

LABEL_12:
  if ([v2 count])
  {
    v7 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = @"None";
  }

  return v7;
}

DataStream *__cdecl sub_10008B324(id a1, DataStreamTransport *a2, HAPSecuritySessionEncryption *a3, OS_dispatch_queue *a4, NSString *a5)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = [[DataStream alloc] initWithTransport:v11 sessionEncryption:v10 workQueue:v9 logIdentifier:v8];

  return v12;
}

id sub_10008B5E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10008B650;
  v3[3] = &unk_1002736F8;
  v3[4] = v1;
  return [v1 _readRequiredTransportCharacteristicsIfNeededWithCompletion:v3];
}

void sub_10008B650(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  if (v4)
  {
    v7 = v6;
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_10007FAFC(v7);
      v10 = [*(a1 + 32) accessory];
      v11 = [v10 identifier];
      v12 = 138543874;
      v13 = v9;
      v14 = 2112;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to read the required transport characteristics for: %@ with error: %@", &v12, 0x20u);
    }
  }

  else
  {
    [v6 _handleAccessoryConnected];
  }
}

void sub_10008B7FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  if (v4)
  {
    v7 = v6;
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_10007FAFC(v7);
      v10 = [*(a1 + 32) accessory];
      v11 = [v10 identifier];
      v12 = 138543874;
      v13 = v9;
      v14 = 2112;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to read the required transport characteristics for: %@ with error: %@", &v12, 0x20u);
    }
  }

  else
  {
    [v6 _handleAccessoryConnected];
  }
}

void sub_10008C3B0(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [*(a1 + 40) accessory];
  v6 = [v4 isEqual:v5];

  v7 = *(a1 + 40);
  v8 = sub_10007FAA0();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = sub_10007FAFC(v7);
      v11 = [v4 shortDescription];
      v15 = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory with HDS service is no longer connected: %@. Removing any transports that were active", &v15, 0x16u);
    }

    v12 = *(a1 + 40);
    v7 = [NSError dkErrorWithCode:30];
    [v12 _cancelStreamTransportWithError:v7];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = sub_10007FAFC(v7);
      v14 = [*(a1 + 40) accessory];
      v15 = 138543874;
      v16 = v13;
      v17 = 2112;
      v18 = v4;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@Disconnected accessory: %@ did not match self.accessory :%@", &v15, 0x20u);
    }
  }
}

void sub_10008CF00(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultDataStream];

  if (v2 || ([*(a1 + 32) _initiateStreamSetup], objc_msgSend(*(a1 + 32), "setupInProgress"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [*(a1 + 32) pendingSocketRequests];
    v5 = [[DKPendingSocketRequest alloc] initWithApplicationProtocolName:*(a1 + 40) completion:*(a1 + 48)];
    [v4 addObject:v5];

    v6 = [*(a1 + 32) setupInProgress];

    v7 = *(a1 + 32);
    if (v6)
    {
      v8 = v7;
      v9 = sub_10007FAA0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = sub_10007FAFC(v8);
        *buf = 138543362;
        v14 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@Waiting for DataStream setup before processing stream socket request", buf, 0xCu);
      }
    }

    else
    {

      [v7 _processPendingSocketRequests];
    }
  }

  else
  {
    v11 = *(a1 + 48);
    v12 = [NSError dkErrorWithCode:4];
    (*(v11 + 16))(v11, 0);
  }
}

void sub_10008E70C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[DataStreamBulkSendProtocol protocolName];
  v4 = [v2 _getActiveProtocolWithName:v3];

  v5 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [v7 openSessionForFileType:*(a1 + 40) reason:*(a1 + 48) metadata:*(a1 + 56) queue:*(a1 + 64) callback:*(a1 + 72)];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = sub_10007FAA0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = sub_10007FAFC(v8);
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@DataStreamBulkSendProtocol not registered; cannot start bulk send session", &v12, 0xCu);
    }

    v11 = [NSError dkErrorWithCode:1];
    (*(*(a1 + 72) + 16))();
  }
}

void sub_10008E928(uint64_t a1)
{
  v2 = [NSError errorWithDomain:HMFErrorDomain code:2 userInfo:&off_100282550];
  [*(a1 + 32) _cancelStreamTransportWithError:v2];
}

void sub_10009172C(id a1)
{
  v1 = sub_10007F9D4(@"HAPKeyBag", @"com.apple.dockaccessoryd");
  v2 = qword_1002ACC68;
  qword_1002ACC68 = v1;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v104 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v106 = &v103 - v9;
  v10 = __chkstk_darwin(v8);
  v105 = &v103 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v103 - v13;
  v15 = __chkstk_darwin(v12);
  v103 = &v103 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v103 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v103 - v21;
  qword_1002B1970 = 0x302E303233;
  *algn_1002B1978 = 0xE500000000000000;
  sub_100093D84(v20, qword_1002A6690);
  v23 = sub_100093DE8(v3, qword_1002A6690);
  v107 = "";
  Logger.init(subsystem:category:)();
  type metadata accessor for DockCoreManager();
  v24 = static DockCoreManager.debugAllowed.getter() & 1;
  byte_1002B1980 = v24;
  v25 = type metadata accessor for ServiceDelegate();
  v26 = objc_allocWithZone(v25);
  v26[OBJC_IVAR____TtC14dockaccessoryd15ServiceDelegate_debugAllowed] = v24;
  v111.receiver = v26;
  v111.super_class = v25;
  qword_1002B1988 = objc_msgSendSuper2(&v111, "init");
  qword_1002B1990 = 0;
  if (byte_1002B1980 != 1)
  {
    v29 = v4;
    v110 = *(v4 + 16);
    v110(v19, v23, v3);
    v30 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v30, v33))
    {
      goto LABEL_8;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v30, v33, "dockaccesoryd: debug not allowed", v34, 2u);
    goto LABEL_6;
  }

  v27 = [objc_allocWithZone(type metadata accessor for DebugServiceDelegate()) init];
  v28 = qword_1002B1990;
  qword_1002B1990 = v27;

  v29 = v4;
  v110 = *(v4 + 16);
  v110(v22, v23, v3);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "dockaccesoryd: debug allowed, creating debug port", v32, 2u);
    v19 = v22;
LABEL_6:

    goto LABEL_8;
  }

  v19 = v22;
LABEL_8:

  v109 = *(v29 + 8);
  v109(v19, v3);
  qword_1002B1998 = [objc_allocWithZone(type metadata accessor for PairingServiceDelegate()) init];
  qword_1002B19A0 = [objc_allocWithZone(type metadata accessor for CertificationServiceDelegate()) init];
  qword_1002B19A8 = [objc_allocWithZone(type metadata accessor for CameraCaptureServiceDelegate()) init];
  v35 = type metadata accessor for DockKitFeatures();
  v115 = v35;
  v116 = sub_100095854(&qword_1002A6808, &type metadata accessor for DockKitFeatures);
  v36 = sub_100093E20(&aBlock);
  (*(*(v35 - 8) + 104))(v36, enum case for DockKitFeatures.Daemon(_:), v35);
  LOBYTE(v35) = isFeatureEnabled(_:)();
  sub_100095808(&aBlock);
  v108 = v29 + 8;
  if ((v35 & 1) == 0)
  {
    v110(v103, v23, v3);
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&_mh_execute_header, v100, v101, "dockaccessoryd: daemon features disabled", v102, 2u);
    }

    v109(v103, v3);
    exit(-1);
  }

  v37 = v14;
  v110(v14, v23, v3);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    aBlock = v41;
    *v40 = 136315138;
    v43 = qword_1002B1970;
    v42 = *algn_1002B1978;

    v44 = sub_1000952D4(v43, v42, &aBlock);

    *(v40 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v38, v39, "dockaccessoryd: starting up, dockaccessoryd version %s", v40, 0xCu);
    sub_100095808(v41);
  }

  v45 = v109;
  v109(v37, v3);
  v46 = v105;
  v47 = v23;
  v110(v105, v23, v3);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = v46;
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    aBlock = v52;
    *v51 = 136315138;
    *(v51 + 4) = sub_1000952D4(0x302E303233, 0xE500000000000000, &aBlock);
    _os_log_impl(&_mh_execute_header, v48, v49, "dockkit core version: %s", v51, 0xCu);
    sub_100095808(v52);
    v45 = v109;

    v53 = v50;
  }

  else
  {

    v53 = v46;
  }

  v45(v53, v3);
  if (qword_1002A6710 != -1)
  {
    swift_once();
  }

  v54 = sub_100151CB0();

  if (v54)
  {
    v110(v106, v47, v3);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "Database path exists - checking if we need to migrate data", v57, 2u);
    }

    v45(v106, v3);
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v58 = sub_1000FF338();

    if (v58)
    {
      v110(v104, v47, v3);
      v59 = v58;
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v62 = 138412290;
        *(v62 + 4) = v59;
        *v63 = v58;
        v64 = v59;
        _os_log_impl(&_mh_execute_header, v60, v61, "FAILED data migration: %@", v62, 0xCu);
        sub_100095C84(v63, &unk_1002A6F60, &unk_10023C4E0);
        v45 = v109;
      }

      else
      {
        v64 = v60;
        v60 = v59;
      }

      v45(v104, v3);
    }
  }

  v65 = objc_allocWithZone(NSXPCListener);
  v66 = String._bridgeToObjectiveC()();
  v67 = [v65 initWithMachServiceName:v66];

  qword_1002B19B0 = v67;
  [v67 setDelegate:qword_1002B1988];
  v68 = objc_allocWithZone(NSXPCListener);
  v69 = String._bridgeToObjectiveC()();
  v70 = [v68 initWithMachServiceName:v69];

  qword_1002B19B8 = v70;
  [v70 setDelegate:qword_1002B1998];
  v71 = objc_allocWithZone(NSXPCListener);
  v72 = String._bridgeToObjectiveC()();
  v73 = [v71 initWithMachServiceName:v72];

  qword_1002B19C0 = v73;
  [v73 setDelegate:qword_1002B19A0];
  v74 = objc_allocWithZone(NSXPCListener);
  v75 = String._bridgeToObjectiveC()();
  v76 = [v74 initWithMachServiceName:v75];

  qword_1002B19C8 = v76;
  [v76 setDelegate:qword_1002B19A8];
  qword_1002B19D0 = 0;
  if (byte_1002B1980 == 1)
  {
    v77 = objc_allocWithZone(NSXPCListener);
    v78 = String._bridgeToObjectiveC()();
    v79 = [v77 initWithMachServiceName:v78];

    v80 = qword_1002B19D0;
    qword_1002B19D0 = v79;

    if (qword_1002B19D0)
    {
      [qword_1002B19D0 setDelegate:qword_1002B1990];
    }
  }

  if (qword_1002A67A0 != -1)
  {
    swift_once();
  }

  v81 = qword_1002B1EB8;
  v82 = *(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan);
  if (v82)
  {
    v83 = qword_1002A6780;
    v84 = *(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan);

    if (v83 != -1)
    {
      swift_once();
    }

    v85 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v115 = type metadata accessor for AccessoryManager();
    v116 = &off_100276690;
    aBlock = v85;
    swift_beginAccess();
    v86 = v85;
    sub_100095204(&aBlock, v82 + 80);
    swift_endAccess();

    v81 = qword_1002B1EB8;
    if (*(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan))
    {

      sub_1000F2E4C(1);

      v81 = qword_1002B1EB8;
    }
  }

  v87 = *(v81 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_queue);
  v116 = sub_10009282C;
  v117 = 0;
  aBlock = _NSConcreteStackBlock;
  v113 = 1107296256;
  v114 = sub_100092A98;
  v115 = &unk_1002750C0;
  v88 = _Block_copy(&aBlock);
  v89 = v87;
  xpc_set_event_stream_handler("com.apple.bluetooth.discovery", v89, v88);
  _Block_release(v88);

  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v90 = *(*(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager) + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue);
  v116 = sub_100092AF8;
  v117 = 0;
  aBlock = _NSConcreteStackBlock;
  v113 = 1107296256;
  v114 = sub_100092A98;
  v115 = &unk_1002750E8;
  v91 = _Block_copy(&aBlock);
  v92 = v90;
  xpc_set_event_stream_handler("com.apple.dockaccessoryd.pairsetup", v92, v91);
  _Block_release(v91);

  v93 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_keystore);
  aBlock = 0;
  v94 = [v93 getOrCreateLocalPairingIdentity:&aBlock];
  if (v94)
  {
    v95 = v94;
    v96 = aBlock;
  }

  else
  {
    v97 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (qword_1002A66F0 != -1)
  {
    swift_once();
  }

  qword_1002B19D8 = qword_1002B1B98;
  v98 = *(qword_1002B1B98 + 24);

  if (v98)
  {
    sub_100138758();
  }

  else
  {
    sub_100138F54();
    sub_100138758();
    sub_1001396D0();
  }

  qword_1002B19E0 = sub_1000935EC();
  if (qword_1002B19D0)
  {
    [qword_1002B19D0 resume];
  }

  [qword_1002B19B0 resume];
  [qword_1002B19B8 resume];
  [qword_1002B19C0 resume];
  [qword_1002B19C8 resume];
  CFRunLoopRun();
  return 0;
}

const char *sub_10009282C(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100093DE8(v5, &unk_1002A6690);
  result = xpc_dictionary_get_string(a1, _xpc_event_key_name);
  if (result)
  {
    v10 = String.init(cString:)();
    v12 = v11;
    v13 = v10 == 0xD000000000000010 && 0x800000010022E8B0 == v11;
    if (v13 || (v14 = v10, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
    }

    else
    {
      (*(v3 + 16))(v7, v8, v2);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v21 = v18;
        *v17 = 136315138;
        v19 = sub_1000952D4(v14, v12, &v21);

        *(v17 + 4) = v19;
        sub_100095808(v18);
      }

      else
      {
      }

      return (*(v3 + 8))(v7, v2);
    }
  }

  return result;
}

uint64_t sub_100092A98(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

const char *sub_100092AF8(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v72 = *(v2 - 8);
  v73 = v2;
  v3 = *(v72 + 64);
  __chkstk_darwin(v2);
  v70 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DispatchQoS();
  v69 = *(v71 - 8);
  v5 = *(v69 + 64);
  __chkstk_darwin(v71);
  v68 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v74 = v66 - v9;
  v77 = type metadata accessor for URL();
  v75 = *(v77 - 8);
  v10 = *(v75 + 64);
  v11 = __chkstk_darwin(v77);
  v67 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66[1] = v12;
  __chkstk_darwin(v11);
  v76 = v66 - v13;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v14);
  v19 = v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = v66 - v21;
  v23 = sub_100093DE8(v20, &unk_1002A6690);
  v25 = (v15 + 2);
  v24 = v15[2];
  v24(v22, v23, v14);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v66[0] = v24;
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "NFC XPC event!", v28, 2u);
    v24 = v66[0];
  }

  v29 = v15[1];
  v29(v22, v14);
  result = xpc_dictionary_get_string(a1, _xpc_event_key_name);
  if (result)
  {
    v24(v19, v23, v14);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v66[0] = v29;
      v34 = v33;
      v35 = a1;
      v36 = swift_slowAlloc();
      aBlock = v36;
      *v34 = 136315138;
      v37 = String.init(cString:)();
      v25 = sub_1000952D4(v37, v38, &aBlock);

      *(v34 + 4) = v25;
      sub_100095808(v36);
      a1 = v35;

      (v66[0])(v19, v14);
    }

    else
    {

      v29(v19, v14);
    }

    v85 = sub_1001F29A8(&_swiftEmptyArrayStorage);
    type = xpc_get_type(a1);
    if (type != XPC_TYPE_DICTIONARY.getter())
    {
    }

    v40 = swift_allocObject();
    *(v40 + 16) = &v85;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_100095C40;
    *(v41 + 24) = v40;
    v83 = sub_100095C58;
    v84 = v41;
    aBlock = _NSConcreteStackBlock;
    v80 = 1107296256;
    v81 = sub_100093594;
    v82 = &unk_1002753F8;
    v42 = _Block_copy(&aBlock);
    v43 = v84;

    xpc_dictionary_apply(a1, v42);
    _Block_release(v42);
    LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

    if (v42)
    {
      __break(1u);
    }

    else
    {
      v44 = v85;
      if (!*(v85 + 16))
      {
        goto LABEL_19;
      }

      v45 = sub_10016D4D0(7107189, 0xE300000000000000);
      if ((v46 & 1) == 0)
      {
        goto LABEL_19;
      }

      v47 = (*(v44 + 56) + 16 * v45);
      v48 = *v47;
      v49 = v47[1];

      v50 = v74;
      URL.init(string:)();

      v41 = v75;
      v25 = v77;
      if ((*(v75 + 48))(v50, 1, v77) == 1)
      {
        sub_100095C84(v50, &qword_1002A6B70, &unk_10023C9C0);
LABEL_19:
      }

      v43 = *(v41 + 32);
      v43(v76, v50, v25);
      if (qword_1002A67A0 == -1)
      {
LABEL_14:
        if (*(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan))
        {
          v51 = *(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan);

          sub_1000F2E4C(5);
        }

        v74 = v40;
        if (qword_1002A6780 != -1)
        {
          swift_once();
        }

        v52 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
        v53 = *&v52[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
        v54 = v67;
        (*(v41 + 16))(v67, v76, v25);
        v55 = (*(v41 + 80) + 24) & ~*(v41 + 80);
        v56 = swift_allocObject();
        v57 = v25;
        v58 = v41;
        v59 = v56;
        *(v56 + 16) = v52;
        v43((v56 + v55), v54, v57);
        v83 = sub_100095DA8;
        v84 = v59;
        aBlock = _NSConcreteStackBlock;
        v80 = 1107296256;
        v81 = sub_100147FC8;
        v82 = &unk_100275448;
        v60 = _Block_copy(&aBlock);
        v61 = v52;
        v62 = v53;
        v63 = v68;
        static DispatchQoS.unspecified.getter();
        v78 = &_swiftEmptyArrayStorage;
        sub_100095854(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
        sub_100095274(&unk_1002A6B60, qword_10023AE10);
        sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
        v64 = v70;
        v65 = v73;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v60);

        (*(v72 + 8))(v64, v65);
        (*(v69 + 8))(v63, v71);
        (*(v58 + 8))(v76, v77);

        goto LABEL_19;
      }
    }

    swift_once();
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1000934C4(int a1, xpc_object_t object, uint64_t *a3)
{
  type = xpc_get_type(object);
  if (type == XPC_TYPE_STRING.getter() && xpc_string_get_string_ptr(object))
  {
    v6 = String.init(cString:)();
    v8 = v7;
    v9 = String.init(cString:)();
    v11 = v10;
    v12 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *a3;
    *a3 = 0x8000000000000000;
    sub_1001EB3C8(v9, v11, v6, v8, isUniquelyReferenced_nonNull_native);

    *a3 = v15;
  }

  return 1;
}

uint64_t sub_100093594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

uint64_t sub_1000935EC()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = SIG_IGN.getter();
  signal(15, v10);
  sub_100095B94(0, &unk_1002A6B50, OS_dispatch_source_ptr);
  sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  swift_getObjectType();
  aBlock[4] = sub_100093864;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100275380;
  v13 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  sub_100093A00();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v13);
  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v9, v5);
  OS_dispatch_source.resume()();
  return v12;
}

uint64_t sub_100093864()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100093DE8(v3, &unk_1002A6690);
  (*(v1 + 16))(v5, v6, v0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Asked to terminate, cleaning up transactions", v9, 2u);
  }

  (*(v1 + 8))(v5, v0);
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  sub_1001926C4();
  sub_10019AE80();
  return sub_100185C54();
}

uint64_t sub_100093A00()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100095854(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t variable initialization expression of AppLayoutMonitor.delegateQueue()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v11 = &_swiftEmptyArrayStorage;
  sub_100095854(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_100095BDC(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t *sub_100093D84(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100093DE8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100093E20(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

double variable initialization expression of MotionValidator._startupConstants@<D0>(uint64_t a1@<X8>)
{
  sub_100095274(&unk_1002A6840, &unk_10023E5A0);
  v2 = swift_allocObject();
  v2[1] = xmmword_10023AAC0;
  v2[2] = xmmword_10023AAD0;
  v2[3] = xmmword_10023AAE0;
  *a1 = xmmword_10023AAF0;
  *(a1 + 16) = 0x3FC3333333333333;
  *(a1 + 24) = 5;
  *(a1 + 32) = 0x3FC3333333333333;
  *(a1 + 40) = v2;
  result = 0.1;
  *(a1 + 48) = xmmword_10023AB00;
  return result;
}

uint64_t variable initialization expression of DockDetector.dockStatus@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for DockStatus.Undocked(_:);
  v3 = type metadata accessor for DockStatus();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t variable initialization expression of DeviceLockMonitor.lock()
{
  sub_100095274(&unk_1002A7370, &qword_10023AB30);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t variable initialization expression of DeviceLockMonitor.delegateQueue()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v11 = &_swiftEmptyArrayStorage;
  sub_100095854(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_100095BDC(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

_DWORD *sub_10009436C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void *sub_10009437C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000943CC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t sub_100094418()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int sub_100094470()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000944E4(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10009455C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000945DC@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100094628(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

uint64_t sub_1000946A8()
{
  sub_100095854(&qword_1002A6D48, type metadata accessor for MFAAError);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_100094714(uint64_t a1)
{
  v2 = sub_100095854(&qword_1002A6D48, type metadata accessor for MFAAError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100094780(void *a1, uint64_t a2)
{
  v4 = sub_100095854(&qword_1002A6D48, type metadata accessor for MFAAError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100094834(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095854(&qword_1002A6D48, type metadata accessor for MFAAError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000948B0()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100094914@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100094940(uint64_t a1)
{
  v2 = sub_100095854(&qword_1002A6D80, type metadata accessor for FileAttributeKey);
  v3 = sub_100095854(&qword_1002A6D88, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000949FC(uint64_t a1)
{
  v2 = sub_100095854(&qword_1002A6D70, type metadata accessor for DeviceType);
  v3 = sub_100095854(&qword_1002A6D78, type metadata accessor for DeviceType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100094AB8(uint64_t a1)
{
  v2 = sub_100095854(&qword_1002A6D60, type metadata accessor for ObjectType);
  v3 = sub_100095854(&qword_1002A6D68, type metadata accessor for ObjectType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100094B74(uint64_t a1)
{
  v2 = sub_100095854(&qword_1002A6D50, type metadata accessor for URLResourceKey);
  v3 = sub_100095854(&qword_1002A6D58, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100094C30(uint64_t a1)
{
  v2 = sub_100095854(&qword_1002A6DB0, type metadata accessor for Key);
  v3 = sub_100095854(&qword_1002A6DB8, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100094CEC(uint64_t a1)
{
  v2 = sub_100095854(&qword_1002A6DA0, type metadata accessor for EventType);
  v3 = sub_100095854(&qword_1002A6DA8, type metadata accessor for EventType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100094DA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100094DF0(uint64_t a1)
{
  v2 = sub_100095854(&qword_1002A6D90, type metadata accessor for ID);
  v3 = sub_100095854(&qword_1002A6D98, type metadata accessor for ID);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100094EAC(uint64_t a1)
{
  v2 = sub_100095854(&qword_1002A6D10, type metadata accessor for MFAAError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100094F18(uint64_t a1)
{
  v2 = sub_100095854(&qword_1002A6D10, type metadata accessor for MFAAError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100094F88(uint64_t a1)
{
  v2 = sub_100095854(&qword_1002A6D48, type metadata accessor for MFAAError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100094FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100095854(&qword_1002A6D48, type metadata accessor for MFAAError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100095078()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_1000950B4()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100095108()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_10009517C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100095204(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A6810, &unk_10023AB10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100095274(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000952BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000952D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000953A0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100095B34(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100095808(v11);
  return v7;
}

unint64_t sub_1000953A0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000954AC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1000954AC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000954F8(a1, a2);
  sub_100095628(&off_100274B80);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_1000954F8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1001F7A30(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy((v6 + 32), v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy((v7 + 32), v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1001F7A30(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100095628(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100095714(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100095714(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100095274(&unk_1002AC9B0, &qword_10023C3D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100095808(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100095854(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10009589C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for Angle2DStamped(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Angle2DStamped(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Angle2DStamped(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_100095968(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100095988(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_100095A48(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100095A68(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_100095B34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100095B94(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100095BDC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10009589C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100095C58()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_100095C84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100095274(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100095CE4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100095DA8()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);
  return sub_1000D6B18(v2);
}

uint64_t sub_100095F10(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 sub_100095F40(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100095F4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100095F6C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 sub_100095FAC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000967D8()
{
  result = qword_1002A6D38;
  if (!qword_1002A6D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A6D38);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for Angle2D(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for JarvisEvent(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for JarvisEvent(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_100096938(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000969EC()
{
  v0 = type metadata accessor for Logger();
  sub_100093D84(v0, qword_1002A6EA0);
  sub_100093DE8(v0, qword_1002A6EA0);
  return Logger.init(subsystem:category:)();
}

id sub_100096A6C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger;
  Logger.init(subsystem:category:)();
  v8 = &v1[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy];
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 4) = 0;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateTimer] = 0;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_MANUAL_FWUP_TIMEOUT] = 0x408F400000000000;
  (*(v3 + 16))(v6, &v1[v7], v2);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "cert interface open", v11, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v12 = type metadata accessor for dockCertHandler();
  v14.receiver = v1;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_100096C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v17;
  *(v8 + 64) = v19;
  *(v8 + 184) = v18;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = type metadata accessor for Errors();
  *(v8 + 72) = v9;
  v10 = *(v9 - 8);
  *(v8 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  *(v8 + 96) = v12;
  v13 = *(v12 - 8);
  *(v8 + 104) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();

  return (_swift_task_switch)(sub_100096DE0, 0, 0);
}

uint64_t sub_100096DE0()
{
  v1 = *(v0 + 16);
  sub_1000A470C();
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_100096E78;
  v3 = *(v0 + 16);

  return sub_1000F77BC();
}

uint64_t sub_100096E78()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return (_swift_task_switch)(sub_100096F74, 0, 0);
}

uint64_t sub_100096F74()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_diagnosticsManager);
  v0[17] = v1;
  if (v1)
  {
    v2 = v0[6];
    type metadata accessor for AccessoryDiagnosticsOptions();
    swift_allocObject();

    v4 = sub_100106520(v3);
    v0[18] = v4;
    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    v5[1] = sub_100097290;

    return sub_1000C7C54(v4);
  }

  else
  {
    (*(v0[13] + 16))(v0[15], v0[3] + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, v0[12]);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Diagnostics manager is nil", v9, 2u);
    }

    v10 = v0[15];
    v11 = v0[12];
    v12 = v0[13];
    v14 = v0[10];
    v13 = v0[11];
    v15 = v0[9];
    v17 = v0[4];
    v16 = v0[5];

    (*(v12 + 8))(v10, v11);
    *v13 = 0xD00000000000001ALL;
    v13[1] = 0x800000010022F210;
    (*(v14 + 104))(v13, enum case for Errors.NotFound(_:), v15);
    sub_1000A1340(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v14 + 16))(v18, v13, v15);
    v19 = _convertErrorToNSError(_:)();
    v17(0xFFFFFFFFLL, v19);

    (*(v14 + 8))(v13, v15);

    v21 = v0[14];
    v20 = v0[15];
    v22 = v0[11];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_100097290(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 152);
  v8 = *v3;
  *(*v3 + 160) = v2;

  if (v2)
  {
    v9 = sub_1000974A8;
  }

  else
  {
    *(v6 + 168) = a2;
    *(v6 + 176) = a1;
    v9 = sub_1000973C4;
  }

  return (_swift_task_switch)(v9, 0, 0);
}

uint64_t sub_1000973C4()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 184);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = String._bridgeToObjectiveC()();

  [v7 diagnosticsFeedbackWithProcessID:v5 info:v6 path:v8 err:0];

  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  v11 = *(v0 + 88);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1000974A8()
{
  v1 = *(v0 + 160);
  (*(*(v0 + 104) + 16))(*(v0 + 112), *(v0 + 24) + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, *(v0 + 96));
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 160);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "Diagnostics transfer failed: %@", v5, 0xCu);
    sub_100095C84(v6, &unk_1002A6F60, &unk_10023C4E0);
  }

  v8 = *(v0 + 160);
  v10 = *(v0 + 136);
  v9 = *(v0 + 144);
  v11 = v2;
  v12 = *(v0 + 104);
  v13 = *(v0 + 112);
  v14 = *(v0 + 96);
  v15 = *(v0 + 184);
  v17 = *(v0 + 56);
  v16 = *(v0 + 64);

  (*(v12 + 8))(v13, v14);
  v18 = _convertErrorToNSError(_:)();
  [v17 diagnosticsFeedbackWithProcessID:v15 info:v16 path:0 err:v18];

  v20 = *(v0 + 112);
  v19 = *(v0 + 120);
  v21 = *(v0 + 88);

  v22 = *(v0 + 8);

  return v22();
}

void sub_100097794()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy);
    v2 = *(Strong + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy + 8);
    v3 = *(Strong + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy + 16);
    v4 = Strong;
    sub_10009ABF8(v1, v2);

    if (v1)
    {
      swift_unknownObjectRetain();
      v5 = String._bridgeToObjectiveC()();
      sub_1000A1168();
      swift_allocError();
      *v6 = 0xD000000000000020;
      *(v6 + 8) = 0x800000010022F290;
      *(v6 + 16) = 7;
      v7 = _convertErrorToNSError(_:)();

      [v1 fwUpdateFeedbackWithProcessID:v3 info:v2 message:v5 complete:1 err:v7];

      swift_unknownObjectRelease_n();
    }
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy;
    v11 = *(v8 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy);
    v10 = *(v8 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy + 8);
    v12 = *(v8 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy + 16);
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    v13 = v8;
    sub_10009ABB8(v11, v10);
  }
}

uint64_t sub_1000979F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 336) = a6;
  *(v6 + 216) = a4;
  *(v6 + 224) = a5;
  *(v6 + 200) = a2;
  *(v6 + 208) = a3;
  v7 = type metadata accessor for UUID();
  *(v6 + 232) = v7;
  v8 = *(v7 - 8);
  *(v6 + 240) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v6 + 264) = v10;
  v11 = *(v10 - 8);
  *(v6 + 272) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();

  return (_swift_task_switch)(sub_100097B44, 0, 0);
}

uint64_t sub_100097B44()
{
  v78 = v0;
  v1 = [*(v0 + 208) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100095274(&qword_1002A6F58, &qword_10023BEB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(*(v0 + 272) + 16))(*(v0 + 304), *(v0 + 216) + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, *(v0 + 264));
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 304);
    v22 = *(v0 + 264);
    v23 = *(v0 + 272);
    if (v20)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "nsxpc proxy is nil", v24, 2u);
    }

    (*(v23 + 8))(v21, v22);
    goto LABEL_25;
  }

  v70 = *(v0 + 176);
  *(v0 + 312) = v70;
  if (qword_1002A6780 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v71 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v72 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v2 = *&v72[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    v3 = v72;
    v4 = v2;
    OS_dispatch_semaphore.wait()();

    v5 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v73 = v3;
    v6 = *&v3[v5];
    v7 = *(v6 + 16);

    v75 = v7;
    if (!v7)
    {
      break;
    }

    v8 = 0;
    v9 = v6 + 32;
    v10 = (*(v0 + 240) + 8);
    while (v8 < *(v6 + 16))
    {
      v12 = *(v0 + 248);
      v11 = *(v0 + 256);
      v14 = *(v0 + 224);
      v13 = *(v0 + 232);
      sub_1000A097C(v9, v0 + 56);
      v15 = *(*sub_1000A09E0((v0 + 56), *(v0 + 80)) + 24);
      DockCoreInfo.identifier.getter();

      DockCoreInfo.identifier.getter();
      LOBYTE(v15) = static UUID.== infix(_:_:)();
      v16 = *v10;
      (*v10)(v12, v13);
      v16(v11, v13);
      if (v15)
      {

        v25 = *&v72[v71];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v0 + 56, v0 + 16);
        sub_100095808((v0 + 56));
        goto LABEL_13;
      }

      ++v8;
      sub_100095808((v0 + 56));
      v9 += 40;
      if (v75 == v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_36:
    swift_once();
  }

LABEL_8:

  v17 = *&v72[v71];
  OS_dispatch_semaphore.signal()();

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_13:

  if (!*(v0 + 40))
  {
    sub_100095C84(v0 + 16, &unk_1002A6F40, &unk_10023BE90);
    goto LABEL_21;
  }

  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    (*(*(v0 + 272) + 16))(*(v0 + 280), *(v0 + 216) + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, *(v0 + 264));
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 272);
    v48 = *(v0 + 280);
    v49 = *(v0 + 264);
    if (v46)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Accessory record not found", v50, 2u);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    (*(v47 + 8))(v48, v49);
    goto LABEL_25;
  }

  v26 = *(v0 + 184);
  *(v0 + 320) = v26;
  if (*(v26 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) != 2)
  {

    goto LABEL_21;
  }

  v27 = *(v0 + 264);
  v28 = *(v0 + 272);
  v29 = *(v0 + 216);
  if (*(v0 + 200))
  {
    (*(v28 + 16))(*(v0 + 288), v29 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, v27);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 288);
    v35 = *(v0 + 264);
    v34 = *(v0 + 272);
    if (v32)
    {
      v36 = swift_slowAlloc();
      v76 = v35;
      v77 = swift_slowAlloc();
      v37 = v77;
      *v36 = 136315138;
      swift_getErrorValue();
      v74 = v33;
      v39 = *(v0 + 152);
      v38 = *(v0 + 160);
      v40 = *(v0 + 168);
      v41 = Error.localizedDescription.getter();
      v43 = sub_1000952D4(v41, v42, &v77);

      *(v36 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v30, v31, "Device connection failed: %s", v36, 0xCu);
      sub_100095808(v37);

      (*(v34 + 8))(v74, v76);
    }

    else
    {

      (*(v34 + 8))(v33, v35);
    }

    v67 = *(v0 + 336);
    v68 = *(v0 + 224);
    v69 = _convertErrorToNSError(_:)();
    [v70 haltFeedbackWithProcessID:v67 info:v68 success:0 complete:1 err:v69];
    swift_unknownObjectRelease();

LABEL_25:
    v52 = *(v0 + 296);
    v51 = *(v0 + 304);
    v54 = *(v0 + 280);
    v53 = *(v0 + 288);
    v56 = *(v0 + 248);
    v55 = *(v0 + 256);

    v57 = *(v0 + 8);

    return v57();
  }

  (*(v28 + 16))(*(v0 + 296), v29 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, v27);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "Device connected, initiating halt request", v61, 2u);
  }

  v62 = *(v0 + 296);
  v63 = *(v0 + 264);
  v64 = *(v0 + 272);

  (*(v64 + 8))(v62, v63);
  v65 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v66 = swift_task_alloc();
  *(v0 + 328) = v66;
  *v66 = v0;
  v66[1] = sub_10009835C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 340, 0, 0, 0x2928746C6168, 0xE600000000000000, sub_1000A1158, v26, &type metadata for Bool);
}

uint64_t sub_10009835C()
{
  v1 = *(*v0 + 328);
  v3 = *v0;

  return (_swift_task_switch)(sub_100098458, 0, 0);
}

uint64_t sub_100098458()
{
  v1 = *(v0 + 320);
  [*(v0 + 312) haltFeedbackWithProcessID:*(v0 + 336) info:*(v0 + 224) success:*(v0 + 340) complete:1 err:0];

  swift_unknownObjectRelease();
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v7 = *(v0 + 248);
  v6 = *(v0 + 256);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100098530(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_10009862C;

  return (v11)(a6, 0);
}

uint64_t sub_10009862C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000987E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 336) = a6;
  *(v6 + 216) = a4;
  *(v6 + 224) = a5;
  *(v6 + 200) = a2;
  *(v6 + 208) = a3;
  v7 = type metadata accessor for UUID();
  *(v6 + 232) = v7;
  v8 = *(v7 - 8);
  *(v6 + 240) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v6 + 264) = v10;
  v11 = *(v10 - 8);
  *(v6 + 272) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();

  return (_swift_task_switch)(sub_10009893C, 0, 0);
}

uint64_t sub_10009893C()
{
  v78 = v0;
  v1 = [*(v0 + 208) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100095274(&qword_1002A6F58, &qword_10023BEB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(*(v0 + 272) + 16))(*(v0 + 304), *(v0 + 216) + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, *(v0 + 264));
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 304);
    v22 = *(v0 + 264);
    v23 = *(v0 + 272);
    if (v20)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "nsxpc proxy is nil", v24, 2u);
    }

    (*(v23 + 8))(v21, v22);
    goto LABEL_25;
  }

  v70 = *(v0 + 176);
  *(v0 + 312) = v70;
  if (qword_1002A6780 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v71 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v72 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v2 = *&v72[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    v3 = v72;
    v4 = v2;
    OS_dispatch_semaphore.wait()();

    v5 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v73 = v3;
    v6 = *&v3[v5];
    v7 = *(v6 + 16);

    v75 = v7;
    if (!v7)
    {
      break;
    }

    v8 = 0;
    v9 = v6 + 32;
    v10 = (*(v0 + 240) + 8);
    while (v8 < *(v6 + 16))
    {
      v12 = *(v0 + 248);
      v11 = *(v0 + 256);
      v14 = *(v0 + 224);
      v13 = *(v0 + 232);
      sub_1000A097C(v9, v0 + 56);
      v15 = *(*sub_1000A09E0((v0 + 56), *(v0 + 80)) + 24);
      DockCoreInfo.identifier.getter();

      DockCoreInfo.identifier.getter();
      LOBYTE(v15) = static UUID.== infix(_:_:)();
      v16 = *v10;
      (*v10)(v12, v13);
      v16(v11, v13);
      if (v15)
      {

        v25 = *&v72[v71];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v0 + 56, v0 + 16);
        sub_100095808((v0 + 56));
        goto LABEL_13;
      }

      ++v8;
      sub_100095808((v0 + 56));
      v9 += 40;
      if (v75 == v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_36:
    swift_once();
  }

LABEL_8:

  v17 = *&v72[v71];
  OS_dispatch_semaphore.signal()();

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_13:

  if (!*(v0 + 40))
  {
    sub_100095C84(v0 + 16, &unk_1002A6F40, &unk_10023BE90);
    goto LABEL_21;
  }

  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    (*(*(v0 + 272) + 16))(*(v0 + 280), *(v0 + 216) + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, *(v0 + 264));
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 272);
    v48 = *(v0 + 280);
    v49 = *(v0 + 264);
    if (v46)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Accessory record not found", v50, 2u);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    (*(v47 + 8))(v48, v49);
    goto LABEL_25;
  }

  v26 = *(v0 + 184);
  *(v0 + 320) = v26;
  if (*(v26 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) != 2)
  {

    goto LABEL_21;
  }

  v27 = *(v0 + 264);
  v28 = *(v0 + 272);
  v29 = *(v0 + 216);
  if (*(v0 + 200))
  {
    (*(v28 + 16))(*(v0 + 288), v29 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, v27);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 288);
    v35 = *(v0 + 264);
    v34 = *(v0 + 272);
    if (v32)
    {
      v36 = swift_slowAlloc();
      v76 = v35;
      v77 = swift_slowAlloc();
      v37 = v77;
      *v36 = 136315138;
      swift_getErrorValue();
      v74 = v33;
      v39 = *(v0 + 152);
      v38 = *(v0 + 160);
      v40 = *(v0 + 168);
      v41 = Error.localizedDescription.getter();
      v43 = sub_1000952D4(v41, v42, &v77);

      *(v36 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v30, v31, "Device connection failed: %s", v36, 0xCu);
      sub_100095808(v37);

      (*(v34 + 8))(v74, v76);
    }

    else
    {

      (*(v34 + 8))(v33, v35);
    }

    v67 = *(v0 + 336);
    v68 = *(v0 + 224);
    v69 = _convertErrorToNSError(_:)();
    [v70 rebootFeedbackWithProcessID:v67 info:v68 success:0 complete:1 err:v69];
    swift_unknownObjectRelease();

LABEL_25:
    v52 = *(v0 + 296);
    v51 = *(v0 + 304);
    v54 = *(v0 + 280);
    v53 = *(v0 + 288);
    v56 = *(v0 + 248);
    v55 = *(v0 + 256);

    v57 = *(v0 + 8);

    return v57();
  }

  (*(v28 + 16))(*(v0 + 296), v29 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, v27);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "Device connected, initiating reboot request", v61, 2u);
  }

  v62 = *(v0 + 296);
  v63 = *(v0 + 264);
  v64 = *(v0 + 272);

  (*(v64 + 8))(v62, v63);
  v65 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v66 = swift_task_alloc();
  *(v0 + 328) = v66;
  *v66 = v0;
  v66[1] = sub_100099158;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 340, 0, 0, 0x2928746F6F626572, 0xE800000000000000, sub_1000A0F30, v26, &type metadata for Bool);
}

uint64_t sub_100099158()
{
  v1 = *(*v0 + 328);
  v3 = *v0;

  return (_swift_task_switch)(sub_100099254, 0, 0);
}

uint64_t sub_100099254()
{
  v1 = *(v0 + 320);
  [*(v0 + 312) rebootFeedbackWithProcessID:*(v0 + 336) info:*(v0 + 224) success:*(v0 + 340) complete:1 err:0];

  swift_unknownObjectRelease();
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v7 = *(v0 + 248);
  v6 = *(v0 + 256);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10009932C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1000A139C;

  return (v11)(a6, 0);
}

uint64_t sub_100099568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 280) = v17;
  *(v8 + 160) = a8;
  *(v8 + 168) = v18;
  *(v8 + 144) = a6;
  *(v8 + 152) = a7;
  *(v8 + 128) = a4;
  *(v8 + 136) = a5;
  v9 = type metadata accessor for Errors();
  *(v8 + 176) = v9;
  v10 = *(v9 - 8);
  *(v8 + 184) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  *(v8 + 200) = v12;
  v13 = *(v12 - 8);
  *(v8 + 208) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();

  return (_swift_task_switch)(sub_1000996A8, 0, 0);
}

uint64_t sub_1000996A8()
{
  v1 = *(v0 + 128);
  sub_1000A470C();
  v2 = swift_task_alloc();
  *(v0 + 232) = v2;
  *v2 = v0;
  v2[1] = sub_100099740;
  v3 = *(v0 + 128);

  return sub_1000FA6C8();
}

uint64_t sub_100099740()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return (_swift_task_switch)(sub_10009983C, 0, 0);
}

uint64_t sub_10009983C()
{
  v1 = *(v0[16] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_accessoryDescriptionManager);
  v0[30] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[31] = v2;
    *v2 = v0;
    v2[1] = sub_100099B24;

    return sub_1000E871C();
  }

  else
  {
    (*(v0[26] + 16))(v0[28], v0[17] + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, v0[25]);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Accessory description manager is nil", v6, 2u);
    }

    v7 = v0[28];
    v8 = v0[25];
    v9 = v0[26];
    v11 = v0[23];
    v10 = v0[24];
    v12 = v0[22];
    v14 = v0[18];
    v13 = v0[19];

    (*(v9 + 8))(v7, v8);
    *v10 = 0xD00000000000001ALL;
    v10[1] = 0x800000010022F210;
    (*(v11 + 104))(v10, enum case for Errors.NotFound(_:), v12);
    sub_1000A1340(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v11 + 16))(v15, v10, v12);
    v16 = _convertErrorToNSError(_:)();
    v14(0xFFFFFFFFLL, 0, v16);

    (*(v11 + 8))(v10, v12);

    v18 = v0[27];
    v17 = v0[28];
    v19 = v0[24];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_100099B24(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 248);
  v8 = *v3;
  v4[32] = a1;
  v4[33] = a2;
  v4[34] = v2;

  if (v2)
  {
    v6 = sub_100099E80;
  }

  else
  {
    v6 = sub_100099C3C;
  }

  return (_swift_task_switch)(v6, 0, 0);
}

uint64_t sub_100099C3C()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 256);
  sub_1000A0CD8(v2, v1);
  sub_10016282C(v2, v1);
  v4 = v3;
  v5 = *(v0 + 256);
  v6 = *(v0 + 264);
  if (!v4)
  {
    *(v0 + 96) = v5;
    *(v0 + 104) = v6;
    sub_1000A0CD8(v5, v6);
    sub_100095274(&unk_1002A9C00, &unk_10023BED0);
    if (swift_dynamicCast())
    {
      sub_1000A0D80((v0 + 56), v0 + 16);
      v7 = *(v0 + 48);
      sub_1000A09E0((v0 + 16), *(v0 + 40));
      if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
      {
        sub_1000A0D2C(*(v0 + 256), *(v0 + 264));
        v8 = *(v0 + 48);
        sub_1000A09E0((v0 + 16), *(v0 + 40));
        dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
        v9 = *(v0 + 112);
        v10 = *(v0 + 120);
        sub_100095808((v0 + 16));
        goto LABEL_9;
      }

      sub_100095808((v0 + 16));
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
      sub_100095C84(v0 + 56, &unk_1002A6F70, &unk_10023CE60);
    }

    v12 = *(v0 + 256);
    v11 = *(v0 + 264);
    sub_100162514(v12, v11);
    v5 = v12;
    v6 = v11;
  }

  sub_1000A0D2C(v5, v6);
LABEL_9:
  v14 = *(v0 + 256);
  v13 = *(v0 + 264);
  v15 = *(v0 + 240);
  v16 = *(v0 + 280);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = String._bridgeToObjectiveC()();

  [v18 accessoryDescriptionFeedbackWithProcessID:v16 info:v17 accessoryDescription:v19 err:0];

  sub_1000A0D2C(v14, v13);
  v21 = *(v0 + 216);
  v20 = *(v0 + 224);
  v22 = *(v0 + 192);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100099E80()
{
  v1 = *(v0 + 272);
  (*(*(v0 + 208) + 16))(*(v0 + 216), *(v0 + 136) + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, *(v0 + 200));
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 272);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "Accessory Description transfer request failed with %@", v5, 0xCu);
    sub_100095C84(v6, &unk_1002A6F60, &unk_10023C4E0);
  }

  v8 = *(v0 + 272);
  v9 = *(v0 + 240);
  v11 = *(v0 + 208);
  v10 = *(v0 + 216);
  v12 = *(v0 + 200);
  v13 = *(v0 + 280);
  v15 = *(v0 + 160);
  v14 = *(v0 + 168);

  (*(v11 + 8))(v10, v12);
  v16 = _convertErrorToNSError(_:)();
  [v15 accessoryDescriptionFeedbackWithProcessID:v13 info:v14 accessoryDescription:0 err:v16];

  v18 = *(v0 + 216);
  v17 = *(v0 + 224);
  v19 = *(v0 + 192);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10009A0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return (_swift_task_switch)(sub_10009A0C4, 0, 0);
}

uint64_t sub_10009A0C4()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_10009A1C4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 6, 0, 0, 0xD000000000000010, 0x800000010022F150, sub_1000A0B18, v2, &type metadata for Bool);
}

uint64_t sub_10009A1C4()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return (_swift_task_switch)(sub_10009A2DC, 0, 0);
}

void sub_10009A314(void *a1, int a2, void *a3, void *aBlock, void (*a5)(void *, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(a3, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t type metadata accessor for dockCertHandler()
{
  result = qword_1002A6EE0;
  if (!qword_1002A6EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009A4B4()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10009A564(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = v4 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy;
  v7 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy);
  if (v7)
  {
    v9 = *(v6 + 16);
    v10 = *(v6 + 8);
    v11 = swift_unknownObjectRetain();
    sub_10009ABF8(v11, v10);
    v12 = String._bridgeToObjectiveC()();
    if (a4)
    {
      a4 = _convertErrorToNSError(_:)();
    }

    [v7 fwUpdateFeedbackWithProcessID:v9 info:v10 message:v12 complete:a3 & 1 err:a4];

    swift_unknownObjectRelease_n();
  }

  if (a3)
  {
    v13 = *v6;
    v14 = *(v6 + 8);
    v15 = *(v6 + 16);
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;

    sub_10009ABB8(v13, v14);
  }
}

void sub_10009A694(char a1)
{
  if ((a1 & 1) == 0)
  {
    v3 = *v1;
    v4 = *(*v1 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateTimer);
    *(*v1 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateTimer) = 0;

    v5 = v3 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy;
    v6 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy);
    v7 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy + 8);
    v8 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy + 16);
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;

    sub_10009ABB8(v6, v7);
  }
}

uint64_t sub_10009A6FC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v28 = a1;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A66A8 != -1)
  {
    swift_once();
  }

  v13 = sub_100093DE8(v8, qword_1002A6EA0);
  (*(v9 + 16))(v12, v13, v8);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v29[0] = v17;
    v29[1] = a2;
    *v16 = 67109378;
    *(v16 + 4) = v28;
    *(v16 + 8) = 2080;
    v29[2] = a3;

    sub_100095274(&unk_1002A6F20, &unk_10023C660);
    v18 = String.init<A>(describing:)();
    v20 = sub_1000952D4(v18, v19, v29);

    *(v16 + 10) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, a5, v16, 0x12u);
    sub_100095808(v17);
  }

  (*(v9 + 8))(v12, v8);
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v21 = qword_1002B1CF0;
  v22 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v23 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v23 + 4);

  swift_beginAccess();
  v24 = sub_1001E4BFC(v28);
  swift_endAccess();

  v25 = *(v21 + v22);

  os_unfair_lock_unlock(v25 + 4);
}

id sub_10009AAB0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

__n128 sub_10009AB0C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_10009AB20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009AB68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10009ABB8(uint64_t a1, void *a2)
{
  if (a1)
  {
    swift_unknownObjectRelease();
  }
}

id sub_10009ABF8(id result, void *a2)
{
  if (result)
  {
    swift_unknownObjectRetain();

    return a2;
  }

  return result;
}

uint64_t sub_10009AC38(void *a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v38 = a2;
  v4 = type metadata accessor for UUID();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  __chkstk_darwin(v4);
  v34[3] = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  __chkstk_darwin(v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = v34 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = v34 - v20;
  __chkstk_darwin(v19);
  v23 = v34 - v22;
  v24 = type metadata accessor for Errors();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v26(v23, 1, 1, v24);
  if (a1)
  {
    v39 = v10;
    v27 = qword_1002A6780;
    v28 = a1;
    if (v27 != -1)
    {
      swift_once();
    }

    v29 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    sub_1000CE0B8(v28);
    v37 = v28;

    sub_1000A090C(v23, v15);
    v31 = (*(v25 + 48))(v15, 1, v24);
    v32 = v37;
    if (v31 == 1)
    {
      sub_100095C84(v15, &unk_1002A6F30, &unk_10023C4D0);
      v30 = 0;
    }

    else
    {
      sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
      swift_dynamicCast();
      v30 = v43;
    }

    (*(v42 + 16))(v42, 1, v30);
  }

  else
  {
    sub_100095C84(v23, &unk_1002A6F30, &unk_10023C4D0);
    *v21 = 0xD000000000000012;
    *(v21 + 1) = 0x800000010022F110;
    (*(v25 + 104))(v21, enum case for Errors.NotFound(_:), v24);
    v26(v21, 0, 1, v24);
    sub_1000A089C(v21, v23);
    sub_1000A090C(v23, v18);
    if ((*(v25 + 48))(v18, 1, v24) == 1)
    {
      sub_100095C84(v18, &unk_1002A6F30, &unk_10023C4D0);
      v30 = 0;
    }

    else
    {
      sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
      swift_dynamicCast();
      v30 = v43;
    }

    (*(v42 + 16))(v42, 0, v30);
  }

  return sub_100095C84(v23, &unk_1002A6F30, &unk_10023C4D0);
}

uint64_t sub_10009B3A4(void *a1, uint64_t a2, char *a3, void (**a4)(const void *, uint64_t, void *))
{
  v130 = a2;
  v139 = a1;
  v6 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v129 = &v127 - v8;
  v9 = type metadata accessor for Errors();
  v142 = *(v9 - 8);
  v143 = v9;
  v10 = *(v142 + 64);
  __chkstk_darwin(v9);
  v141 = (&v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v145 = type metadata accessor for UUID();
  v131 = *(v145 - 8);
  v12 = *(v131 + 64);
  v13 = __chkstk_darwin(v145);
  v15 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v127 - v16;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v133 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v134 = &v127 - v24;
  v25 = __chkstk_darwin(v23);
  v132 = &v127 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v127 - v28;
  __chkstk_darwin(v27);
  v31 = &v127 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a4;
  v33 = objc_opt_self();
  v144 = a4;
  _Block_copy(a4);
  v34 = [v33 currentConnection];
  if (!v34)
  {
    (*(v19 + 16))(v31, &a3[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v18);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Failed fetching current NSXPCConnection, cannot construct client", v58, 2u);
    }

    (*(v19 + 8))(v31, v18);
    v60 = v141;
    v59 = v142;
    *v141 = 0xD000000000000029;
    v60[1] = 0x800000010022F170;
    v61 = v143;
    (*(v59 + 104))(v60, enum case for Errors.XPCNil(_:), v143);
    sub_1000A1340(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v59 + 16))(v62, v60, v61);
    v63 = _convertErrorToNSError(_:)();
    v144[2](v144, 0xFFFFFFFFLL, v63);

    goto LABEL_41;
  }

  v136 = a3;
  v137 = v19;
  v135 = v18;
  v138 = v32;
  v140 = v34;
  LODWORD(a3) = [v34 processIdentifier];
  if (qword_1002A6780 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v35 = qword_1002B1CF0;
    v36 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v37 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v37 + 4);

    v38 = *(v35 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v39 = *(v35 + v36);
    v40 = v38;

    os_unfair_lock_unlock(v39 + 4);

    if (!v38)
    {
      v64 = v137;
      v65 = v135;
      (*(v137 + 16))(v29, &v136[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v135);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&_mh_execute_header, v66, v67, "No accessory connected. Cannot initiate accessory diagnostics", v68, 2u);
      }

      (*(v64 + 8))(v29, v65);
      v70 = v141;
      v69 = v142;
      *v141 = 0xD000000000000016;
      v70[1] = 0x800000010022F1A0;
      v71 = v143;
      (*(v69 + 104))(v70, enum case for Errors.AccessoryNotReachable(_:), v143);
      sub_1000A1340(&qword_1002A6F50, &type metadata accessor for Errors);
      swift_allocError();
      (*(v69 + 16))(v72, v70, v71);
      v73 = _convertErrorToNSError(_:)();
      v144[2](v144, 0xFFFFFFFFLL, v73);

      (*(v69 + 8))(v70, v71);
      goto LABEL_25;
    }

    v146 = dispatch thunk of DockCoreAccessory.info.getter();

    v41 = v139;
    if (!v139)
    {
      goto LABEL_7;
    }

    type metadata accessor for DockCoreInfo();
    v42 = v41;
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      v81 = v137;
      v82 = v132;
      v83 = v135;
      (*(v137 + 16))(v132, &v136[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v135);
      v84 = v42;
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        *v87 = 138412290;
        *(v87 + 4) = v84;
        *v88 = v41;
        v89 = v84;
        _os_log_impl(&_mh_execute_header, v85, v86, "%@ is not connected", v87, 0xCu);
        sub_100095C84(v88, &unk_1002A6F60, &unk_10023C4E0);
      }

      (*(v81 + 8))(v82, v83);
      *&v148 = 0;
      *(&v148 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(19);
      v90 = [v84 description];
      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v92;

      *&v148 = v91;
      *(&v148 + 1) = v93;
      v94._object = 0x800000010022F1F0;
      v94._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v94);
      v95 = *(&v148 + 1);
      v97 = v141;
      v96 = v142;
      *v141 = v148;
      v97[1] = v95;
      v98 = v143;
      (*(v96 + 104))(v97, enum case for Errors.AccessoryNotReachable(_:), v143);
      sub_1000A1340(&qword_1002A6F50, &type metadata accessor for Errors);
      swift_allocError();
      (*(v96 + 16))(v99, v97, v98);
      v100 = _convertErrorToNSError(_:)();
      v144[2](v144, 0xFFFFFFFFLL, v100);

      (*(v96 + 8))(v97, v98);
LABEL_25:
    }

LABEL_7:
    LODWORD(v139) = a3;
    v43 = [v140 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100095274(&qword_1002A6F58, &qword_10023BEB0);
    if (!swift_dynamicCast())
    {
      v74 = v137;
      v75 = v134;
      v76 = v135;
      (*(v137 + 16))(v134, &v136[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v135);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&_mh_execute_header, v77, v78, "nsxpc proxy is nil", v79, 2u);

        v80 = v140;
      }

      else
      {

        v80 = v146;
      }

      (*(v74 + 8))(v75, v76);
    }

    v134 = v147[0];
    v44 = *(v35 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v127 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v45 = *&v44[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    v128 = v44;
    v46 = v44;
    v47 = v45;
    OS_dispatch_semaphore.wait()();

    v48 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v132 = v46;
    v29 = *&v46[v48];
    v49 = *(v29 + 2);

    if (!v49)
    {
      break;
    }

    a3 = 0;
    v50 = (v29 + 32);
    v51 = (v131 + 8);
    while (a3 < *(v29 + 2))
    {
      sub_1000A097C(v50, v147);
      v52 = *(*sub_1000A09E0(v147, v147[3]) + 24);
      DockCoreInfo.identifier.getter();

      DockCoreInfo.identifier.getter();
      LOBYTE(v52) = static UUID.== infix(_:_:)();
      v53 = *v51;
      v54 = v145;
      (*v51)(v15, v145);
      v53(v17, v54);
      if (v52)
      {

        v101 = *&v128[v127];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v147, &v148);
        sub_100095808(v147);
        goto LABEL_29;
      }

      ++a3;
      sub_100095808(v147);
      v50 += 40;
      if (v49 == a3)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_45:
    swift_once();
  }

LABEL_13:

  v55 = *&v128[v127];
  OS_dispatch_semaphore.signal()();

  v150 = 0;
  v148 = 0u;
  v149 = 0u;
LABEL_29:

  v102 = v138;
  v103 = v135;
  v104 = v137;
  if (*(&v149 + 1))
  {
    sub_100095274(&unk_1002A7A90, &unk_10023C960);
    type metadata accessor for DaemonAccessory();
    v105 = swift_dynamicCast();
    v106 = v136;
    if (v105)
    {
      if (*(v147[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) == 2 && (v107 = *(v147[0] + 16)) != 0 && (v108 = *&v107[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral]) != 0)
      {
        v109 = v147[0];
        v110 = v107;
        if ([v108 state] == 2)
        {
          v111 = type metadata accessor for TaskPriority();
          v112 = v129;
          (*(*(v111 - 8) + 56))(v129, 1, 1, v111);
          v113 = swift_allocObject();
          *(v113 + 16) = 0;
          *(v113 + 24) = 0;
          *(v113 + 32) = v109;
          *(v113 + 40) = v106;
          *(v113 + 48) = sub_1000A11BC;
          *(v113 + 56) = v102;
          v114 = v134;
          *(v113 + 64) = v130;
          *(v113 + 72) = v114;
          v115 = v139;
          *(v113 + 80) = v139;
          v116 = v146;
          *(v113 + 88) = v146;

          v117 = v106;

          swift_unknownObjectRetain();
          v118 = v116;
          sub_1001B6410(0, 0, v112, &unk_10023BF30, v113);

          v144[2](v144, v115, 0);

          return swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_100095C84(&v148, &unk_1002A6F40, &unk_10023BE90);
    v106 = v136;
  }

  v120 = &v106[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger];
  v121 = v133;
  (*(v104 + 16))(v133, v120, v103);
  v122 = Logger.logObject.getter();
  v123 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v122, v123))
  {
    v124 = swift_slowAlloc();
    *v124 = 0;
    _os_log_impl(&_mh_execute_header, v122, v123, "accessory does not exist and/or is not paired", v124, 2u);
  }

  (*(v104 + 8))(v121, v103);
  v60 = v141;
  v59 = v142;
  *v141 = 0xD00000000000002DLL;
  v60[1] = 0x800000010022F1C0;
  v61 = v143;
  (*(v59 + 104))(v60, enum case for Errors.NotFound(_:), v143);
  sub_1000A1340(&qword_1002A6F50, &type metadata accessor for Errors);
  swift_allocError();
  (*(v59 + 16))(v125, v60, v61);
  v126 = _convertErrorToNSError(_:)();
  v144[2](v144, 0xFFFFFFFFLL, v126);
  swift_unknownObjectRelease();

LABEL_41:
  (*(v59 + 8))(v60, v61);
}

uint64_t sub_10009C520(uint64_t a1, void *a2, uint64_t a3, void *a4, char *a5, uint64_t a6)
{
  v152 = a6;
  v147 = a3;
  v148 = a4;
  v146 = a2;
  v145 = a1;
  v7 = type metadata accessor for UUID();
  v149 = *(v7 - 8);
  v8 = *(v149 + 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v126 - v12;
  v14 = type metadata accessor for Errors();
  v150 = *(v14 - 8);
  v151 = v14;
  v15 = *(v150 + 64);
  __chkstk_darwin(v14);
  v17 = (&v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v22 = __chkstk_darwin(v21);
  __chkstk_darwin(v22);
  v24 = __chkstk_darwin(&v126 - v23);
  v25 = __chkstk_darwin(v24);
  v27 = &v126 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v126 - v29;
  v31 = __chkstk_darwin(v28);
  v36 = &v126 - v32;
  if (*&a5[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy] || *&a5[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateTimer])
  {
    (*(v19 + 16))(&v126 - v32, &a5[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v18);
    v37 = Logger.logObject.getter();
    v38 = v18;
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v154 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_1000952D4(0xD00000000000003FLL, 0x800000010022F230, &v154);
      _os_log_impl(&_mh_execute_header, v37, v39, "%s", v40, 0xCu);
      sub_100095808(v41);
    }

    (*(v19 + 8))(v36, v38);
    *v17 = 0xD00000000000003FLL;
    v17[1] = 0x800000010022F230;
    v42 = &enum case for Errors.OperationInProgress(_:);
LABEL_6:
    v44 = v150;
    v43 = v151;
    (*(v150 + 104))(v17, *v42, v151);
    sub_1000A1340(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v44 + 16))(v45, v17, v43);
    v46 = _convertErrorToNSError(_:)();
    (*(v152 + 16))(v152, 0xFFFFFFFFLL, v46);

    (*(v44 + 8))(v17, v43);
  }

  v139 = v31;
  v140 = v35;
  v137 = v34;
  v135 = &a5[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy];
  v136 = OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateTimer;
  v138 = v33;
  v141 = a5;
  v48 = [objc_opt_self() currentConnection];
  if (!v48)
  {
    (*(v19 + 16))(v30, &v141[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v18);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "Failed fetching current NSXPCConnection, cannot construct client", v72, 2u);
    }

    (*(v19 + 8))(v30, v18);
    *v17 = 0xD000000000000029;
    v17[1] = 0x800000010022F170;
    v42 = &enum case for Errors.XPCNil(_:);
    goto LABEL_6;
  }

  v49 = v48;
  v50 = [v48 remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100095274(&qword_1002A6F58, &qword_10023BEB0);
  if (swift_dynamicCast())
  {
    v133 = v18;
    v134 = v153[0];
    v128 = [v49 processIdentifier];
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v51 = qword_1002B1CF0;
    v52 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v53 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v53 + 4);

    v54 = *(v51 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v55 = *(v51 + v52);
    v56 = v54;

    os_unfair_lock_unlock(v55 + 4);

    if (v54)
    {
      v131 = v49;
      v127 = v51;
      v126 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager;
      v57 = *(v51 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
      v132 = v56;
      v144 = dispatch thunk of DockCoreAccessory.info.getter();
      v129 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
      v58 = *&v57[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
      OS_dispatch_semaphore.wait()();

      v59 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
      swift_beginAccess();
      v130 = v57;
      v60 = *&v57[v59];
      v61 = *(v60 + 16);
      v62 = v60;

      v143 = v19;
      v142 = v61;
      if (v61)
      {
        v63 = 0;
        v64 = v62 + 32;
        v65 = v149 + 8;
        while (v63 < *(v62 + 16))
        {
          sub_1000A097C(v64, v153);
          v66 = *(*sub_1000A09E0(v153, v153[3]) + 24);
          DockCoreInfo.identifier.getter();

          DockCoreInfo.identifier.getter();
          LOBYTE(v66) = static UUID.== infix(_:_:)();
          v67 = *v65;
          (*v65)(v11, v7);
          v67(v13, v7);
          if (v66)
          {

            v76 = v130;
            v77 = *&v130[v129];
            OS_dispatch_semaphore.signal()();

            sub_1000A097C(v153, &v154);
            sub_100095808(v153);

            v19 = v143;
            goto LABEL_26;
          }

          ++v63;
          sub_100095808(v153);
          v64 += 40;
          v19 = v143;
          if (v142 == v63)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        goto LABEL_47;
      }

LABEL_18:

      v68 = v130;
      v69 = *&v130[v129];
      OS_dispatch_semaphore.signal()();

      v156 = 0;
      v154 = 0u;
      v155 = 0u;

LABEL_26:
      v64 = v134;
      v78 = v132;
      v49 = v131;
      if (*(&v155 + 1))
      {
        sub_100095274(&unk_1002A7A90, &unk_10023C960);
        type metadata accessor for DaemonAccessory();
        if (swift_dynamicCast())
        {
          v79 = v153[0];
          v80 = *(v153[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productData + 8);
          if (v80 && (v81 = *(v153[0] + 16)) != 0)
          {
            v82 = *&v81[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
            if (v82)
            {
              v83 = *(v153[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productData);
              v84 = *(v153[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productData + 8);

              v85 = v81;
              if ([v82 state] == 2)
              {
                v149 = v85;
                v151 = v79;
                v86 = v19;
                v87 = OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger;
                v88 = v133;
                v150 = *(v86 + 16);
                (v150)(v139, &v141[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v133);
                v89 = Logger.logObject.getter();
                v90 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v89, v90))
                {
                  v91 = swift_slowAlloc();
                  *v91 = 0;
                  _os_log_impl(&_mh_execute_header, v89, v90, "Device is connected, now initiating firmware update", v91, 2u);
                }

                v92 = *(v143 + 8);
                v143 += 8;
                v92(v139, v88);
                v93 = *(*(v127 + v126) + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_firmwareUpdateManager);
                v94 = sub_10014B4AC(v145, v146, v147, v148, v83, v80);
                v144 = v93;
                v104 = v103;
                v148 = v94;

                (v150)(v137, &v141[v87], v88);
                v13 = v93;
                v105 = v151;

                v106 = Logger.logObject.getter();
                v107 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v106, v107))
                {
                  v108 = swift_slowAlloc();
                  v147 = v13;
                  v109 = v108;
                  v110 = swift_slowAlloc();
                  *v109 = 138412546;
                  v111 = *(v105 + 24);
                  *(v109 + 4) = v111;
                  *v110 = v111;
                  *(v109 + 12) = 2048;
                  *(v109 + 14) = 0x404E000000000000;
                  v112 = v111;
                  _os_log_impl(&_mh_execute_header, v106, v107, "Setting accessory reachable %@ after %f secs", v109, 0x16u);
                  sub_100095C84(v110, &unk_1002A6F60, &unk_10023C4E0);
                  v64 = v134;

                  v13 = v147;
                }

                v92(v137, v133);
                sub_10014E948(v105, 1, v148, v104);

                v113 = *&v13[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer];
                *&v13[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer] = 0;

                *(&v155 + 1) = type metadata accessor for dockCertHandler();
                v156 = &off_100275928;
                *&v154 = v141;
                v114 = v141;
                sub_10014B6CC(&v154, v151);
LABEL_47:
                v115 = v13;
                sub_100095808(&v154);
                v116 = *(v151 + 24);
                v117 = v135;
                v118 = *v135;
                v119 = *(v135 + 1);
                v120 = *(v135 + 4);
                *v135 = v64;
                *(v117 + 1) = v116;
                v121 = v128;
                *(v117 + 4) = v128;
                swift_unknownObjectRetain();
                v122 = v116;
                sub_10009ABB8(v118, v119);
                swift_allocObject();
                swift_unknownObjectWeakInit();
                v123 = objc_allocWithZone(type metadata accessor for RepeatingTimer());

                v124 = RepeatingTimer.init(interval:fireOnce:queue:_:)();

                v125 = *&v141[v136];
                *&v141[v136] = v124;

                (*(v152 + 16))(v152, v121, 0);
                return swift_unknownObjectRelease();
              }
            }

            else
            {
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {

        sub_100095C84(&v154, &unk_1002A6F40, &unk_10023BE90);
      }
    }

    v95 = v133;
    (*(v19 + 16))(v140, &v141[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v133);
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v96, v97, "No accessory connected, try again", v98, 2u);
    }

    (*(v19 + 8))(v140, v95);
    *v17 = 0xD000000000000016;
    v17[1] = 0x800000010022F1A0;
    v100 = v150;
    v99 = v151;
    (*(v150 + 104))(v17, enum case for Errors.AccessoryNotReachable(_:), v151);
    sub_1000A1340(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v100 + 16))(v101, v17, v99);
    v102 = _convertErrorToNSError(_:)();
    (*(v152 + 16))(v152, 0xFFFFFFFFLL, v102);
    swift_unknownObjectRelease();

    (*(v100 + 8))(v17, v99);
  }

  (*(v19 + 16))(v27, &v141[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v18);
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&_mh_execute_header, v73, v74, "nsxpc proxy is nil", v75, 2u);
  }

  return (*(v19 + 8))(v27, v18);
}

uint64_t sub_10009D82C(void *a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v94 = a8;
  v93 = a7;
  v92 = a6;
  v105 = a5;
  v108 = a4;
  v109 = a3;
  v110 = a1;
  v9 = type metadata accessor for Errors();
  v104 = *(v9 - 8);
  v10 = *(v104 + 8);
  __chkstk_darwin(v9);
  v12 = (&v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v91 = &v89 - v15;
  v16 = type metadata accessor for UUID();
  v106 = *(v16 - 8);
  v17 = *(v106 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v89 - v21;
  v23 = type metadata accessor for Logger();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v96 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v107 = &v89 - v29;
  __chkstk_darwin(v28);
  v31 = &v89 - v30;
  v32 = [objc_opt_self() currentConnection];
  if (v32)
  {
    v33 = v32;
    v100 = v24;
    v101 = v23;
    v34 = [v32 processIdentifier];
    v35 = swift_allocObject();
    *(v35 + 16) = v33;
    *(v35 + 24) = a2;
    v36 = v110;
    *(v35 + 32) = v110;
    v102 = v35;
    v95 = v34;
    *(v35 + 40) = v34;
    v37 = qword_1002A6780;
    v99 = v33;
    v97 = a2;
    v110 = v36;
    if (v37 != -1)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v98 = qword_1002B1CF0;
      v90 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager;
      v38 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
      v103 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
      v104 = v38;
      v39 = *&v38[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
      v40 = v38;
      v41 = v39;
      OS_dispatch_semaphore.wait()();

      v42 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
      swift_beginAccess();
      v108 = v40;
      v43 = *&v40[v42];
      v44 = *(v43 + 16);

      if (!v44)
      {
        break;
      }

      v45 = 0;
      v46 = v43 + 32;
      v47 = (v106 + 8);
      while (v45 < *(v43 + 16))
      {
        sub_1000A097C(v46, v111);
        v48 = *(*sub_1000A09E0(v111, v111[3]) + 24);
        DockCoreInfo.identifier.getter();

        DockCoreInfo.identifier.getter();
        LOBYTE(v48) = static UUID.== infix(_:_:)();
        v49 = *v47;
        (*v47)(v20, v16);
        v49(v22, v16);
        if (v48)
        {

          v59 = *&v104[v103];
          OS_dispatch_semaphore.signal()();

          sub_1000A097C(v111, &v112);
          sub_100095808(v111);
          goto LABEL_13;
        }

        ++v45;
        sub_100095808(v111);
        v46 += 40;
        if (v44 == v45)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_33:
      swift_once();
    }

LABEL_8:

    v50 = *&v104[v103];
    OS_dispatch_semaphore.signal()();

    v114 = 0;
    v112 = 0u;
    v113 = 0u;
LABEL_13:

    v60 = v102;
    v61 = v101;
    v62 = v100;
    v63 = v107;
    v64 = v98;
    v65 = v110;
    if (*(&v113 + 1))
    {
      sub_100095274(&unk_1002A7A90, &unk_10023C960);
      type metadata accessor for DaemonAccessory();
      if (swift_dynamicCast())
      {
        if (*(v111[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) == 2)
        {
          v66 = *(v111[0] + 16);
          if (v66)
          {
            v67 = *&v66[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
            if (v67)
            {
              v68 = v66;
              if ([v67 state] == 2)
              {
                v69 = type metadata accessor for TaskPriority();
                v70 = v91;
                (*(*(v69 - 8) + 56))(v91, 1, 1, v69);
                v71 = swift_allocObject();
                v71[2] = 0;
                v71[3] = 0;
                v71[4] = v93;
                v71[5] = v60;
                v71[6] = v68;
                v72 = v68;

                sub_1001B6410(0, 0, v70, v94, v71);

                goto LABEL_27;
              }
            }
          }
        }
      }
    }

    else
    {
      sub_100095C84(&v112, &unk_1002A6F40, &unk_10023BE90);
    }

    v73 = sub_1001884E4();
    if (!v73)
    {
      v85 = v96;
      (*(v62 + 16))(v96, v97 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, v61);
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&_mh_execute_header, v86, v87, "accessory does not exist and/or is not paired ", v88, 2u);
      }

      (*(v62 + 8))(v85, v61);
      v84 = *(v109 + 16);
      goto LABEL_31;
    }

    (*(v62 + 16))(v63, v97 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, v61);
    v74 = v65;
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v77 = 138412290;
      *(v77 + 4) = v74;
      *v78 = v74;
      v79 = v74;
      _os_log_impl(&_mh_execute_header, v75, v76, "%@ not connected, connecting and deferring callback for later", v77, 0xCu);
      sub_100095C84(v78, &unk_1002A6F60, &unk_10023C4E0);
    }

    (*(v62 + 8))(v63, v61);
    v80 = *(v64 + v90);
    sub_100095274(&qword_1002A7390, &qword_10023BEF0);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_10023BDA0;
    *(v81 + 32) = v74;
    v82 = v74;

    v83 = v80;
    sub_1000CED88(v81, v105, v60);

LABEL_27:

    v84 = *(v109 + 16);
LABEL_31:
    v84();
  }

  v51 = v104;
  v52 = v9;
  (*(v24 + 16))(v31, a2 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, v23);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "Failed fetching current NSXPCConnection, cannot construct client", v55, 2u);
  }

  (*(v24 + 8))(v31, v23);
  *v12 = 0xD000000000000029;
  v12[1] = 0x800000010022F170;
  (*(v51 + 13))(v12, enum case for Errors.XPCNil(_:), v52);
  sub_1000A1340(&qword_1002A6F50, &type metadata accessor for Errors);
  swift_allocError();
  (*(v51 + 2))(v56, v12, v52);
  v57 = _convertErrorToNSError(_:)();
  (*(v109 + 16))(v109, 0xFFFFFFFFLL, 0, v57);

  (*(v51 + 1))(v12, v52);
}

uint64_t sub_10009E338(void *a1, char *a2, void (**a3)(const void *, uint64_t, void, void *))
{
  v137 = a1;
  v5 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v128 = &v125 - v7;
  v8 = type metadata accessor for Errors();
  v140 = *(v8 - 8);
  v141 = v8;
  v9 = *(v140 + 64);
  __chkstk_darwin(v8);
  v139 = (&v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v143 = type metadata accessor for UUID();
  v129 = *(v143 - 8);
  v11 = *(v129 + 64);
  v12 = __chkstk_darwin(v143);
  v14 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v125 - v15;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v131 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v132 = &v125 - v23;
  v24 = __chkstk_darwin(v22);
  v130 = &v125 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v125 - v27;
  __chkstk_darwin(v26);
  v30 = &v125 - v29;
  v31 = swift_allocObject();
  *(v31 + 16) = a3;
  v32 = objc_opt_self();
  v142 = a3;
  _Block_copy(a3);
  v33 = [v32 currentConnection];
  if (!v33)
  {
    (*(v18 + 16))(v30, &a2[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v17);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "Failed fetching current NSXPCConnection, cannot construct client", v57, 2u);
    }

    (*(v18 + 8))(v30, v17);
    v59 = v139;
    v58 = v140;
    *v139 = 0xD000000000000029;
    v59[1] = 0x800000010022F170;
    v60 = v141;
    (*(v58 + 104))(v59, enum case for Errors.XPCNil(_:), v141);
    sub_1000A1340(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v58 + 16))(v61, v59, v60);
    v62 = _convertErrorToNSError(_:)();
    v142[2](v142, 0xFFFFFFFFLL, 0, v62);

    goto LABEL_41;
  }

  v134 = a2;
  v135 = v18;
  v133 = v17;
  v136 = v31;
  v138 = v33;
  LODWORD(a2) = [v33 processIdentifier];
  if (qword_1002A6780 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v34 = qword_1002B1CF0;
    v35 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v36 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v36 + 4);

    v37 = *(v34 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v38 = *(v34 + v35);
    v39 = v37;

    os_unfair_lock_unlock(v38 + 4);

    if (!v37)
    {
      v63 = v135;
      v64 = v133;
      (*(v135 + 16))(v28, &v134[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v133);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&_mh_execute_header, v65, v66, "No accessory connected. Cannot initiate accessory description transfer", v67, 2u);
      }

      (*(v63 + 8))(v28, v64);
      v69 = v139;
      v68 = v140;
      *v139 = 0xD000000000000016;
      v69[1] = 0x800000010022F1A0;
      v70 = v141;
      (*(v68 + 104))(v69, enum case for Errors.AccessoryNotReachable(_:), v141);
      sub_1000A1340(&qword_1002A6F50, &type metadata accessor for Errors);
      swift_allocError();
      (*(v68 + 16))(v71, v69, v70);
      v72 = _convertErrorToNSError(_:)();
      v142[2](v142, 0xFFFFFFFFLL, 0, v72);

      (*(v68 + 8))(v69, v70);
      goto LABEL_25;
    }

    v144 = dispatch thunk of DockCoreAccessory.info.getter();

    v40 = v137;
    if (!v137)
    {
      goto LABEL_7;
    }

    type metadata accessor for DockCoreInfo();
    v41 = v40;
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      v80 = v135;
      v81 = v130;
      v82 = v133;
      (*(v135 + 16))(v130, &v134[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v133);
      v83 = v41;
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *v86 = 138412290;
        *(v86 + 4) = v83;
        *v87 = v40;
        v88 = v83;
        _os_log_impl(&_mh_execute_header, v84, v85, "%@ is not connected", v86, 0xCu);
        sub_100095C84(v87, &unk_1002A6F60, &unk_10023C4E0);
      }

      (*(v80 + 8))(v81, v82);
      *&v146 = 0;
      *(&v146 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(19);
      v89 = [v83 description];
      v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v92 = v91;

      *&v146 = v90;
      *(&v146 + 1) = v92;
      v93._object = 0x800000010022F1F0;
      v93._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v93);
      v94 = *(&v146 + 1);
      v96 = v139;
      v95 = v140;
      *v139 = v146;
      v96[1] = v94;
      v97 = v141;
      (*(v95 + 104))(v96, enum case for Errors.AccessoryNotReachable(_:), v141);
      sub_1000A1340(&qword_1002A6F50, &type metadata accessor for Errors);
      swift_allocError();
      (*(v95 + 16))(v98, v96, v97);
      v99 = _convertErrorToNSError(_:)();
      v142[2](v142, 0xFFFFFFFFLL, 0, v99);

      (*(v95 + 8))(v96, v97);
LABEL_25:
    }

LABEL_7:
    LODWORD(v137) = a2;
    v42 = [v138 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100095274(&qword_1002A6F58, &qword_10023BEB0);
    if (!swift_dynamicCast())
    {
      v73 = v135;
      v74 = v132;
      v75 = v133;
      (*(v135 + 16))(v132, &v134[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v133);
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&_mh_execute_header, v76, v77, "nsxpc proxy is nil", v78, 2u);

        v79 = v138;
      }

      else
      {

        v79 = v144;
      }

      (*(v73 + 8))(v74, v75);
    }

    v132 = v145[0];
    v43 = *(v34 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v126 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v44 = *&v43[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    v127 = v43;
    v45 = v43;
    v46 = v44;
    OS_dispatch_semaphore.wait()();

    v47 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v130 = v45;
    v28 = *&v45[v47];
    v48 = *(v28 + 2);

    if (!v48)
    {
      break;
    }

    a2 = 0;
    v49 = (v28 + 32);
    v50 = (v129 + 8);
    while (a2 < *(v28 + 2))
    {
      sub_1000A097C(v49, v145);
      v51 = *(*sub_1000A09E0(v145, v145[3]) + 24);
      DockCoreInfo.identifier.getter();

      DockCoreInfo.identifier.getter();
      LOBYTE(v51) = static UUID.== infix(_:_:)();
      v52 = *v50;
      v53 = v143;
      (*v50)(v14, v143);
      v52(v16, v53);
      if (v51)
      {

        v100 = *&v127[v126];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v145, &v146);
        sub_100095808(v145);
        goto LABEL_29;
      }

      ++a2;
      sub_100095808(v145);
      v49 += 40;
      if (v48 == a2)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_45:
    swift_once();
  }

LABEL_13:

  v54 = *&v127[v126];
  OS_dispatch_semaphore.signal()();

  v148 = 0;
  v146 = 0u;
  v147 = 0u;
LABEL_29:

  v101 = v136;
  v102 = v133;
  v103 = v135;
  if (*(&v147 + 1))
  {
    sub_100095274(&unk_1002A7A90, &unk_10023C960);
    type metadata accessor for DaemonAccessory();
    v104 = swift_dynamicCast();
    v105 = v134;
    if (v104)
    {
      if (*(v145[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) == 2 && (v106 = *(v145[0] + 16)) != 0 && (v107 = *&v106[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral]) != 0)
      {
        v108 = v145[0];
        v109 = v106;
        if ([v107 state] == 2)
        {
          v110 = type metadata accessor for TaskPriority();
          v111 = v128;
          (*(*(v110 - 8) + 56))(v128, 1, 1, v110);
          v112 = swift_allocObject();
          *(v112 + 16) = 0;
          *(v112 + 24) = 0;
          *(v112 + 32) = v108;
          *(v112 + 40) = v105;
          *(v112 + 48) = sub_1000A0B5C;
          *(v112 + 56) = v101;
          *(v112 + 64) = v132;
          v113 = v137;
          *(v112 + 72) = v137;
          v114 = v144;
          *(v112 + 80) = v144;

          v115 = v105;

          swift_unknownObjectRetain();
          v116 = v114;
          sub_1001B6410(0, 0, v111, &unk_10023BEC0, v112);

          v142[2](v142, v113, 1, 0);

          return swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_100095C84(&v146, &unk_1002A6F40, &unk_10023BE90);
    v105 = v134;
  }

  v118 = &v105[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger];
  v119 = v131;
  (*(v103 + 16))(v131, v118, v102);
  v120 = Logger.logObject.getter();
  v121 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    *v122 = 0;
    _os_log_impl(&_mh_execute_header, v120, v121, "accessory does not exist and/or is not paired", v122, 2u);
  }

  (*(v103 + 8))(v119, v102);
  v59 = v139;
  v58 = v140;
  *v139 = 0xD00000000000002DLL;
  v59[1] = 0x800000010022F1C0;
  v60 = v141;
  (*(v58 + 104))(v59, enum case for Errors.NotFound(_:), v141);
  sub_1000A1340(&qword_1002A6F50, &type metadata accessor for Errors);
  swift_allocError();
  (*(v58 + 16))(v123, v59, v60);
  v124 = _convertErrorToNSError(_:)();
  v142[2](v142, 0xFFFFFFFFLL, 0, v124);
  swift_unknownObjectRelease();

LABEL_41:
  (*(v58 + 8))(v59, v60);
}

uint64_t sub_10009F4B0(void *a1, uint64_t a2, uint64_t a3)
{
  v85 = a3;
  v81 = a2;
  v4 = type metadata accessor for Logger();
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  __chkstk_darwin(v4);
  v86 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v70 = &v69 - v9;
  v87 = type metadata accessor for UUID();
  v79 = *(v87 - 8);
  v10 = *(v79 + 64);
  v11 = __chkstk_darwin(v87);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v69 - v14;
  v16 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v82 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v69 = &v69 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v69 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v69 - v26;
  __chkstk_darwin(v25);
  v29 = &v69 - v28;
  v30 = type metadata accessor for Errors();
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v32(v29, 1, 1, v30);
  if (a1)
  {
    v71 = v32;
    v72 = v31 + 56;
    v80 = v27;
    v73 = v31;
    v74 = v30;
    v75 = v29;
    v33 = qword_1002A6780;
    v34 = a1;
    if (v33 != -1)
    {
      goto LABEL_31;
    }

    while (1)
    {
      v35 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
      v76 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
      v36 = *&v35[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
      v77 = v35;
      v37 = v35;
      v38 = v36;
      OS_dispatch_semaphore.wait()();

      v39 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
      swift_beginAccess();
      v78 = v37;
      v40 = *&v37[v39];
      v41 = *(v40 + 16);

      v88 = v34;
      if (!v41)
      {
        break;
      }

      v42 = 0;
      v43 = v40 + 32;
      v44 = (v79 + 8);
      v45 = v87;
      while (v42 < *(v40 + 16))
      {
        sub_1000A097C(v43, v89);
        v46 = *(*sub_1000A09E0(v89, v89[3]) + 24);
        DockCoreInfo.identifier.getter();

        DockCoreInfo.identifier.getter();
        LOBYTE(v46) = static UUID.== infix(_:_:)();
        v47 = *v44;
        (*v44)(v13, v45);
        v47(v15, v45);
        if (v46)
        {

          v51 = *&v77[v76];
          OS_dispatch_semaphore.signal()();

          sub_1000A097C(v89, &v90);
          sub_100095808(v89);
          goto LABEL_12;
        }

        ++v42;
        sub_100095808(v89);
        v43 += 40;
        v34 = v88;
        if (v41 == v42)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_31:
      swift_once();
    }

LABEL_8:

    v48 = *&v77[v76];
    OS_dispatch_semaphore.signal()();

    v92 = 0;
    v90 = 0u;
    v91 = 0u;
LABEL_12:

    v53 = v84;
    v52 = v85;
    v29 = v75;
    v54 = v74;
    v55 = v73;
    v56 = v83;
    v57 = v80;
    if (*(&v91 + 1))
    {
      sub_100095274(&unk_1002A7A90, &unk_10023C960);
      type metadata accessor for DaemonAccessory();
      if (swift_dynamicCast())
      {
        v58 = v89[0];
        if (*(v89[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) == 2)
        {
          v59 = type metadata accessor for TaskPriority();
          v60 = v70;
          (*(*(v59 - 8) + 56))(v70, 1, 1, v59);
          v61 = swift_allocObject();
          v61[2] = 0;
          v61[3] = 0;
          v61[4] = v58;

          sub_1001B6710(0, 0, v60, &unk_10023BEA8, v61);

          v62 = v69;
          sub_1000A090C(v29, v69);
          if ((*(v55 + 48))(v62, 1, v54) == 1)
          {
            sub_100095C84(v62, &unk_1002A6F30, &unk_10023C4D0);
            v50 = 0;
          }

          else
          {
            sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
            swift_dynamicCast();
            v50 = v90;
          }

          (*(v52 + 16))(v52, 1, v50);

          goto LABEL_27;
        }
      }
    }

    else
    {
      sub_100095C84(&v90, &unk_1002A6F40, &unk_10023BE90);
    }

    (*(v56 + 16))(v86, v81 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, v53);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "Accessory record not found", v65, 2u);
      v57 = v80;
    }

    (*(v56 + 8))(v86, v53);
    sub_100095C84(v29, &unk_1002A6F30, &unk_10023C4D0);
    *v57 = 0xD00000000000001ALL;
    *(v57 + 1) = 0x800000010022F130;
    (*(v55 + 104))(v57, enum case for Errors.NotFound(_:), v54);
    v71(v57, 0, 1, v54);
    sub_1000A089C(v57, v29);
    v66 = v82;
    sub_1000A090C(v29, v82);
    if ((*(v55 + 48))(v66, 1, v54) == 1)
    {
      sub_100095C84(v66, &unk_1002A6F30, &unk_10023C4D0);
      v67 = 0;
    }

    else
    {
      sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
      swift_dynamicCast();
      v67 = v90;
    }

    (*(v52 + 16))(v52, 0, v67);

    v50 = v88;
  }

  else
  {
    v49 = v85;
    sub_100095C84(v29, &unk_1002A6F30, &unk_10023C4D0);
    *v27 = 0xD000000000000012;
    *(v27 + 1) = 0x800000010022F110;
    (*(v31 + 104))(v27, enum case for Errors.NotFound(_:), v30);
    v32(v27, 0, 1, v30);
    sub_1000A089C(v27, v29);
    sub_1000A090C(v29, v24);
    if ((*(v31 + 48))(v24, 1, v30) == 1)
    {
      sub_100095C84(v24, &unk_1002A6F30, &unk_10023C4D0);
      v50 = 0;
    }

    else
    {
      sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
      swift_dynamicCast();
      v50 = v90;
    }

    (*(v49 + 16))(v49, 0, v50);
  }

LABEL_27:

  return sub_100095C84(v29, &unk_1002A6F30, &unk_10023C4D0);
}

uint64_t sub_10009FF20(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v52 - v8;
  v10 = [a1 processIdentifier];
  v11 = String._bridgeToObjectiveC()();
  v12 = [a1 valueForEntitlement:v11];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
  }

  aBlock = v68;
  v65 = v69;
  if (*(&v69 + 1))
  {
    v13 = swift_dynamicCast();
    if (v13)
    {
      v14 = v62;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = v63;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    sub_100095C84(&aBlock, &qword_1002A9210, &unk_10023BE70);
    v14 = 0;
    v15 = 0;
  }

  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v57 = sub_10019B91C(a1);
  v17 = v16;
  if (qword_1002A66A8 != -1)
  {
    swift_once();
  }

  v18 = sub_100093DE8(v2, qword_1002A6EA0);
  v19 = v3[2];
  v59 = v18;
  v60 = v3 + 2;
  v58 = v19;
  (v19)(v9);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v61 = v9;
  v22 = v21;

  v23 = os_log_type_enabled(v20, v22);
  v56 = v14;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v55 = v3;
    v25 = v24;
    v52 = swift_slowAlloc();
    *&v68 = v52;
    *v25 = 67109634;
    *(v25 + 4) = v10;
    *(v25 + 8) = 2080;
    *&aBlock = v14;
    *(&aBlock + 1) = v15;

    sub_100095274(&unk_1002A6F20, &unk_10023C660);
    v54 = v7;
    v26 = String.init<A>(describing:)();
    v53 = v15;
    v28 = v2;
    v29 = v10;
    v30 = sub_1000952D4(v26, v27, &v68);

    *(v25 + 10) = v30;
    *(v25 + 18) = 2080;
    *&aBlock = v57;
    *(&aBlock + 1) = v17;
    v7 = v54;
    v31 = String.init<A>(describing:)();
    v33 = sub_1000952D4(v31, v32, &v68);
    v15 = v53;

    *(v25 + 20) = v33;
    v10 = v29;
    v2 = v28;
    _os_log_impl(&_mh_execute_header, v20, v22, "new connection from pid %d, appID entitlement %s, appID %s", v25, 0x1Cu);
    swift_arrayDestroy();

    v34 = v55;

    v35 = v34[1];
    v35(v61, v28);
  }

  else
  {

    v35 = v3[1];
    v35(v61, v2);
  }

  v36 = String._bridgeToObjectiveC()();
  v37 = [a1 valueForEntitlement:v36];

  if (v37)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
  }

  aBlock = v68;
  v65 = v69;
  if (*(&v69 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v62)
    {
      v38 = objc_opt_self();
      v61 = [v38 interfaceWithProtocol:&OBJC_PROTOCOL____TtP11DockKitCore22DockDaemonCertProtocol_];
      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v40 = swift_allocObject();
      *(v40 + 16) = v10;
      v41 = v56;
      *(v40 + 24) = v56;
      *(v40 + 32) = v15;
      *(v40 + 40) = v39;
      v66 = sub_1000A07EC;
      v67 = v40;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v65 = sub_100147FC8;
      *(&v65 + 1) = &unk_100275990;
      v42 = _Block_copy(&aBlock);

      [a1 setInvalidationHandler:v42];
      _Block_release(v42);
      v43 = swift_allocObject();
      *(v43 + 16) = v10;
      *(v43 + 24) = v41;
      *(v43 + 32) = v15;
      *(v43 + 40) = v39;
      v66 = sub_1000A0870;
      v67 = v43;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v65 = sub_100147FC8;
      *(&v65 + 1) = &unk_1002759E0;
      v44 = _Block_copy(&aBlock);

      [a1 setInterruptionHandler:v44];
      _Block_release(v44);
      v45 = v61;
      [a1 setExportedInterface:v61];
      v46 = [v38 interfaceWithProtocol:&OBJC_PROTOCOL____TtP11DockKitCore22DockClientCertProtocol_];
      [a1 setRemoteObjectInterface:v46];
      v47 = [objc_allocWithZone(type metadata accessor for dockCertHandler()) init];
      [a1 setExportedObject:v47];
      [a1 resume];

      return 1;
    }
  }

  else
  {

    sub_100095C84(&aBlock, &qword_1002A9210, &unk_10023BE70);
  }

  v58(v7, v59, v2);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 67109120;
    *(v51 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v49, v50, "process %d is not entitled for certification. Add entitlements and try again", v51, 8u);
  }

  v35(v7, v2);
  [a1 invalidate];
  return 0;
}

uint64_t sub_1000A07B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A0818(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A0830()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A089C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A090C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A097C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1000A09E0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000A0A24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A0A64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10009862C;

  return sub_10009A0A4(a1, v4, v5, v6);
}

uint64_t sub_1000A0B24()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A0B7C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000A0BDC(uint64_t a1)
{
  v4 = *(v1 + 24);
  v14 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 80);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000A139C;

  return sub_100099568(a1, v14, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000A0CD8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000A0D2C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000A0D80(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000A0D9C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1000A139C;

  return sub_1000987E8(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_1000A0E68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000A139C;

  return sub_10009932C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000A0F38()
{

  return _swift_deallocObject(v0, 44, 7);
}

uint64_t sub_1000A0F80(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1000A139C;

  return sub_1000979F0(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_1000A1048()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A1090(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000A139C;

  return sub_100098530(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1000A1168()
{
  result = qword_1002A6F80;
  if (!qword_1002A6F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A6F80);
  }

  return result;
}

uint64_t sub_1000A11D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1000A123C(uint64_t a1)
{
  v16 = *(v1 + 16);
  v14 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v9 = *(v1 + 64);
  v8 = *(v1 + 72);
  v10 = *(v1 + 80);
  v11 = *(v1 + 88);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000A139C;

  return sub_100096C98(a1, v16, v14, v4, v5, v6, v7, v9);
}

uint64_t sub_1000A1340(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000A13A8(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v46 = a1;
  v47 = a5;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 != 12 || !a7)
  {
    return;
  }

  v18 = (v7 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_currentInductiveConnectionUUID);
  v19 = *(v7 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_currentInductiveConnectionUUID) == a6 && *(v7 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_currentInductiveConnectionUUID + 8) == a7;
  if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return;
  }

  v20 = *(v14 + 16);
  v45 = v7;
  v20(v17, v7 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_logger, v13);

  v21 = Logger.logObject.getter();
  v22 = a2;
  v23 = static os_log_type_t.default.getter();

  v44 = v23;
  if (!os_log_type_enabled(v21, v23))
  {

    (*(v14 + 8))(v17, v13);
    v32 = v45;
    goto LABEL_13;
  }

  v42 = v21;
  v43 = a4;
  v24 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  v49 = v41;
  *v24 = 136316162;
  if (!v22)
  {

    __break(1u);
    goto LABEL_23;
  }

  v40 = v22;
  *(v24 + 4) = sub_1000952D4(v46, v22, &v49);
  *(v24 + 12) = 2080;
  v48 = 12;
  type metadata accessor for ACCEndpoint_TransportType_t(0);
  v25 = String.init<A>(describing:)();
  v27 = sub_1000952D4(v25, v26, &v49);

  *(v24 + 14) = v27;
  *(v24 + 22) = 1024;
  *(v24 + 24) = v43;
  *(v24 + 28) = 2080;
  if (!v47)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v28 = Dictionary.description.getter();
  v30 = sub_1000952D4(v28, v29, &v49);

  *(v24 + 30) = v30;
  *(v24 + 38) = 2080;
  *(v24 + 40) = sub_1000952D4(a6, a7, &v49);
  v31 = v42;
  _os_log_impl(&_mh_execute_header, v42, v44, "Inductive accessory attached: %s, transport %s, protocol %u, properties %s, connection %s", v24, 0x30u);
  swift_arrayDestroy();

  (*(v14 + 8))(v17, v13);
  a4 = v43;
  v32 = v45;
  v22 = v40;
LABEL_13:
  v33 = v18[1];
  *v18 = a6;
  v18[1] = a7;

  v34 = *(v32 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_connectionDelegate);
  if (v34 && ([v34 respondsToSelector:"accessoryEndpointAttached:transportType:protocol:properties:forConnection:"] & 1) != 0)
  {
    swift_unknownObjectRetain();
    if (v22)
    {
      v35 = String._bridgeToObjectiveC()();
      if (v47)
      {
LABEL_17:
        v36 = a4;
        v37.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
LABEL_20:
        v38 = String._bridgeToObjectiveC()();
        [v34 accessoryEndpointAttached:v35 transportType:12 protocol:v36 properties:v37.super.isa forConnection:v38];
        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      v35 = 0;
      if (v47)
      {
        goto LABEL_17;
      }
    }

    v36 = a4;
    v37.super.isa = 0;
    goto LABEL_20;
  }
}

void sub_1000A18F0(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v39 - v11;
  v13 = v6[2];
  v44 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_logger;
  v45 = v13;
  v43 = v6 + 2;
  v13(&v39 - v11, &v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_logger], v5);

  v46 = v2;
  v14 = v2;
  v15 = a2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v18 = os_log_type_enabled(v16, v17);
  v47 = v14;
  if (v18)
  {
    v40 = v10;
    v41 = v5;
    v42 = v6;
    v19 = a1;
    v20 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v20 = 136315394;

    if (!v15)
    {
      __break(1u);
      return;
    }

    *(v20 + 4) = sub_1000952D4(v19, v15, &v48);
    *(v20 + 12) = 2080;
    v21 = *&v14[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_currentInductiveConnectionUUID];
    v22 = *&v14[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_currentInductiveConnectionUUID + 8];

    v23 = sub_1000952D4(v21, v22, &v48);

    *(v20 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "acessory detached %s %s", v20, 0x16u);
    swift_arrayDestroy();

    a1 = v19;

    v5 = v41;
    v6 = v42;
    v24 = v42[1];
    v24(v12, v41);
    v10 = v40;
  }

  else
  {

    v24 = v6[1];
    v24(v12, v5);
    if (!v15)
    {
      return;
    }
  }

  v25 = &v47[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_currentInductiveConnectionUUID];
  v26 = *&v47[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_currentInductiveConnectionUUID] == a1 && *&v47[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_currentInductiveConnectionUUID + 8] == v15;
  if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v45(v10, &v46[v44], v5);

    v27 = v15;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    v30 = os_log_type_enabled(v28, v29);
    v39 = v27;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v42 = v6;
      v32 = v31;
      v33 = v10;
      v34 = swift_slowAlloc();
      v48 = v34;
      *v32 = 136315138;
      *(v32 + 4) = sub_1000952D4(a1, v27, &v48);
      _os_log_impl(&_mh_execute_header, v28, v29, "acessory detached %s", v32, 0xCu);
      sub_100095808(v34);

      v35 = v33;
    }

    else
    {

      v35 = v10;
    }

    v24(v35, v5);
    v36 = *&v47[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_connectionDelegate];
    if (v36)
    {
      if ([*&v47[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_connectionDelegate] respondsToSelector:{"accessoryConnectionDetached:", v39}])
      {
        swift_unknownObjectRetain();
        v37 = String._bridgeToObjectiveC()();
        [v36 accessoryConnectionDetached:v37];
        swift_unknownObjectRelease();
      }
    }

    v38 = *(v25 + 1);
    *v25 = 0;
    *(v25 + 1) = 0xE000000000000000;
  }
}

id sub_1000A1DD8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_tokenConnect;
  if (*&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_tokenConnect] != -1)
  {
    (*(v3 + 16))(&v20 - v8, &v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_logger], v2);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "De-registering for MFI4 connection notifications", v13, 2u);
    }

    (*(v3 + 8))(v9, v2);
    notify_cancel(*&v1[v10]);
    *&v1[v10] = -1;
  }

  v14 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_tokenDisconnect;
  if (*&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_tokenDisconnect] != -1)
  {
    (*(v3 + 16))(v7, &v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_logger], v2);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "De-registering for MFI4 disconnection notifications", v17, 2u);
    }

    (*(v3 + 8))(v7, v2);
    notify_cancel(*&v1[v14]);
    *&v1[v14] = -1;
  }

  v18 = type metadata accessor for AccessoryHandler();
  v20.receiver = v1;
  v20.super_class = v18;
  return objc_msgSendSuper2(&v20, "dealloc");
}

uint64_t type metadata accessor for AccessoryHandler()
{
  result = qword_1002A6FD8;
  if (!qword_1002A6FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1000A21AC()
{
  v1 = &v0[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_passedMFI4Auth];
  *v1 = 0xD00000000000002FLL;
  *(v1 + 1) = 0x800000010022F650;
  v2 = &v0[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_MFI4AccessoryDisconnected];
  *v2 = 0xD00000000000003ALL;
  *(v2 + 1) = 0x800000010022F680;
  Logger.init(subsystem:category:)();
  *&v0[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_tokenConnect] = -1;
  *&v0[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_tokenDisconnect] = -1;
  *&v0[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_connectionDelegate] = 0;
  v3 = &v0[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_currentInductiveConnectionUUID];
  *v3 = 0;
  *(v3 + 1) = 0xE000000000000000;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for AccessoryHandler();
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t sub_1000A22CC()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000A2384(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_1000A23A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000A23BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000A2410(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000A2470()
{
  v0 = type metadata accessor for Logger();
  sub_100093D84(v0, qword_1002A6FF0);
  sub_100093DE8(v0, qword_1002A6FF0);
  return Logger.init(subsystem:category:)();
}

Swift::Int sub_1000A24FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000A2570()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

_BYTE *sub_1000A25B4@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1000A25E0(unint64_t a1)
{
  result = DockCoreAccessoryType.init(rawValue:)();
  if (v3)
  {
    return 0;
  }

  if (a1 >> 15)
  {
    __break(1u);
  }

  else if (a1 > 0x7F)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000A2C54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v204 = &v187 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v187 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  v13 = objc_allocWithZone(NSURLComponents);
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  v17 = [v13 initWithURL:v15 resolvingAgainstBaseURL:1];

  v18 = *(v9 + 8);
  v18(v12, v8);
  if (v17)
  {
    v19 = [v17 scheme];
    if (v19)
    {
      v199 = v5;
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = [v17 host];
      if (v24)
      {
        v200 = v17;
        v201 = a1;
        v25 = v24;
        v203 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = String.lowercased()();
        v29 = v28._countAndFlagsBits == 1801727352 && v28._object == 0xE400000000000000;
        v202 = v18;
        if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v28._countAndFlagsBits == 0x2D74696B6B636F64 ? (v64 = v28._object == 0xED00007075746573) : (v64 = 0), v64))
        {
        }

        else
        {
          v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v66 = v200;
          if ((v65 & 1) == 0)
          {

            if (qword_1002A66B0 == -1)
            {
              goto LABEL_69;
            }

            goto LABEL_292;
          }
        }

        v30 = v203;
        sub_100162A44(2);

        v31 = static String._fromSubstring(_:)();
        v21 = v32;

        v196 = sub_10013BB2C(2uLL, v30, v27);
        v197 = v33;
        v198 = v34;
        v36 = v35;

        v37 = HIBYTE(v21) & 0xF;
        v38 = v31 & 0xFFFFFFFFFFFFLL;
        if ((v21 & 0x2000000000000000) != 0)
        {
          v39 = HIBYTE(v21) & 0xF;
        }

        else
        {
          v39 = v31 & 0xFFFFFFFFFFFFLL;
        }

        if (v39)
        {
          if ((v21 & 0x1000000000000000) == 0)
          {
            if ((v21 & 0x2000000000000000) != 0)
            {
              v207 = v31;
              v208 = v21 & 0xFFFFFFFFFFFFFFLL;
              if (v31 == 43)
              {
                if (!v37)
                {
                  goto LABEL_284;
                }

                if (--v37)
                {
                  v42 = 0;
                  v76 = &v207 + 1;
                  while (1)
                  {
                    v77 = *v76;
                    v78 = v77 - 48;
                    if ((v77 - 48) >= 0xA)
                    {
                      if ((v77 - 65) < 0x1A)
                      {
                        v78 = v77 - 55;
                      }

                      else
                      {
                        if ((v77 - 97) > 0x19)
                        {
                          goto LABEL_120;
                        }

                        v78 = v77 - 87;
                      }
                    }

                    if (!is_mul_ok(v42, 0x24uLL))
                    {
                      break;
                    }

                    v46 = __CFADD__(36 * v42, v78);
                    v42 = 36 * v42 + v78;
                    if (v46)
                    {
                      break;
                    }

                    ++v76;
                    if (!--v37)
                    {
                      goto LABEL_121;
                    }
                  }
                }
              }

              else if (v31 == 45)
              {
                if (!v37)
                {
LABEL_282:
                  __break(1u);
                  goto LABEL_283;
                }

                if (--v37)
                {
                  v42 = 0;
                  v61 = &v207 + 1;
                  while (1)
                  {
                    v62 = *v61;
                    v63 = v62 - 48;
                    if ((v62 - 48) >= 0xA)
                    {
                      if ((v62 - 65) < 0x1A)
                      {
                        v63 = v62 - 55;
                      }

                      else
                      {
                        if ((v62 - 97) > 0x19)
                        {
                          goto LABEL_120;
                        }

                        v63 = v62 - 87;
                      }
                    }

                    if (!is_mul_ok(v42, 0x24uLL))
                    {
                      break;
                    }

                    v46 = 36 * v42 >= v63;
                    v42 = 36 * v42 - v63;
                    if (!v46)
                    {
                      break;
                    }

                    ++v61;
                    if (!--v37)
                    {
                      goto LABEL_121;
                    }
                  }
                }
              }

              else if (v37)
              {
                v42 = 0;
                v81 = &v207;
                while (1)
                {
                  v82 = *v81;
                  v83 = v82 - 48;
                  if ((v82 - 48) >= 0xA)
                  {
                    if ((v82 - 65) < 0x1A)
                    {
                      v83 = v82 - 55;
                    }

                    else
                    {
                      if ((v82 - 97) > 0x19)
                      {
                        goto LABEL_120;
                      }

                      v83 = v82 - 87;
                    }
                  }

                  if (!is_mul_ok(v42, 0x24uLL))
                  {
                    break;
                  }

                  v46 = __CFADD__(36 * v42, v83);
                  v42 = 36 * v42 + v83;
                  if (v46)
                  {
                    break;
                  }

                  v81 = (v81 + 1);
                  if (!--v37)
                  {
                    goto LABEL_121;
                  }
                }
              }

              goto LABEL_120;
            }

            if ((v31 & 0x1000000000000000) != 0)
            {
              v40 = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
LABEL_279:
              v40 = _StringObject.sharedUTF8.getter();
            }

            v41 = *v40;
            if (v41 == 43)
            {
              if (v38 < 1)
              {
LABEL_283:
                __break(1u);
LABEL_284:
                __break(1u);
LABEL_285:
                __break(1u);
LABEL_286:
                __break(1u);
LABEL_287:
                __break(1u);
LABEL_288:
                __break(1u);
                goto LABEL_289;
              }

              v37 = v38 - 1;
              if (v38 == 1)
              {
                goto LABEL_120;
              }

              if (v40)
              {
                v42 = 0;
                v73 = v40 + 1;
                while (1)
                {
                  v74 = *v73;
                  v75 = v74 - 48;
                  if ((v74 - 48) >= 0xA)
                  {
                    if ((v74 - 65) < 0x1A)
                    {
                      v75 = v74 - 55;
                    }

                    else
                    {
                      if ((v74 - 97) > 0x19)
                      {
                        goto LABEL_120;
                      }

                      v75 = v74 - 87;
                    }
                  }

                  if (!is_mul_ok(v42, 0x24uLL))
                  {
                    goto LABEL_120;
                  }

                  v46 = __CFADD__(36 * v42, v75);
                  v42 = 36 * v42 + v75;
                  if (v46)
                  {
                    goto LABEL_120;
                  }

                  ++v73;
                  if (!--v37)
                  {
                    goto LABEL_121;
                  }
                }
              }
            }

            else if (v41 == 45)
            {
              if (v38 < 1)
              {
LABEL_281:
                __break(1u);
                goto LABEL_282;
              }

              v37 = v38 - 1;
              if (v38 == 1)
              {
                goto LABEL_120;
              }

              if (v40)
              {
                v42 = 0;
                v43 = v40 + 1;
                while (1)
                {
                  v44 = *v43;
                  v45 = v44 - 48;
                  if ((v44 - 48) >= 0xA)
                  {
                    if ((v44 - 65) < 0x1A)
                    {
                      v45 = v44 - 55;
                    }

                    else
                    {
                      if ((v44 - 97) > 0x19)
                      {
                        goto LABEL_120;
                      }

                      v45 = v44 - 87;
                    }
                  }

                  if (!is_mul_ok(v42, 0x24uLL))
                  {
                    goto LABEL_120;
                  }

                  v46 = 36 * v42 >= v45;
                  v42 = 36 * v42 - v45;
                  if (!v46)
                  {
                    goto LABEL_120;
                  }

                  ++v43;
                  if (!--v37)
                  {
                    goto LABEL_121;
                  }
                }
              }
            }

            else
            {
              if (!v38)
              {
LABEL_120:
                v42 = 0;
                LOBYTE(v37) = 1;
LABEL_121:
                LOBYTE(v211) = v37;
                if (v37)
                {
                  goto LABEL_126;
                }

                goto LABEL_125;
              }

              if (v40)
              {
                v42 = 0;
                while (1)
                {
                  v79 = *v40;
                  v80 = v79 - 48;
                  if ((v79 - 48) >= 0xA)
                  {
                    if ((v79 - 65) < 0x1A)
                    {
                      v80 = v79 - 55;
                    }

                    else
                    {
                      if ((v79 - 97) > 0x19)
                      {
                        goto LABEL_120;
                      }

                      v80 = v79 - 87;
                    }
                  }

                  if (!is_mul_ok(v42, 0x24uLL))
                  {
                    goto LABEL_120;
                  }

                  v46 = __CFADD__(36 * v42, v80);
                  v42 = 36 * v42 + v80;
                  if (v46)
                  {
                    goto LABEL_120;
                  }

                  ++v40;
                  if (!--v38)
                  {
                    LOBYTE(v37) = 0;
                    goto LABEL_121;
                  }
                }
              }
            }

            v42 = 0;
            LOBYTE(v37) = 0;
            goto LABEL_121;
          }

          v42 = sub_10017C5E0(v31, v21);
          v85 = v84;

          if ((v85 & 1) == 0)
          {
LABEL_125:
            v86 = sub_1000A25E0(v42);
            if (v87 == 2)
            {
              goto LABEL_126;
            }

            v94 = v36;
            v193 = v87;
            v194 = v86;

            v95 = String.count.getter();

            v96 = v95 - 2;
            v31 = v202;
            if (!__OFSUB__(v95, 2))
            {
              v36 = v201;
              if (v96 >= 1)
              {
                if (v96 < 0xA)
                {

                  if (qword_1002A66B0 != -1)
                  {
                    swift_once();
                  }

                  v97 = type metadata accessor for Logger();
                  sub_100093DE8(v97, qword_1002A6FF0);
                  v98 = Logger.logObject.getter();
                  v99 = static os_log_type_t.error.getter();
                  if (os_log_type_enabled(v98, v99))
                  {
                    v50 = 2;
                    v100 = swift_slowAlloc();
                    *v100 = 0;
                    v101 = "Unable to parse setup URI: Invalid address encoding length";
LABEL_145:
                    _os_log_impl(&_mh_execute_header, v98, v99, v101, v100, 2u);

                    result = (v31)(v36, v8);
                    goto LABEL_45;
                  }

                  goto LABEL_146;
                }

                v66 = v94;

                v103 = v196;
                v23 = v197;
                v104 = v198;
                v105 = Substring.index(_:offsetBy:limitedBy:)();
                if (v106)
                {
                  v107 = v104;
                }

                else
                {
                  v107 = v105;
                }

                if (v107 >> 14 < v103 >> 14)
                {
                  __break(1u);
                }

                else
                {
                  v191 = v4;
                  Substring.subscript.getter();

                  v23 = static String._fromSubstring(_:)();
                  v21 = v108;
                  v109 = v198;

                  v110 = Substring.index(_:offsetBy:limitedBy:)();
                  if (v111)
                  {
                    v110 = v109;
                  }

                  if (v109 >> 14 >= v110 >> 14)
                  {
                    v112 = Substring.subscript.getter();
                    v114 = v113;
                    v203 = v115;
                    v117 = v116;

                    v198 = v23;
                    v118 = sub_1000A2650(v23, v21);
                    if (v119 >> 60 == 15)
                    {

                      if (qword_1002A66B0 != -1)
                      {
                        swift_once();
                      }

                      v120 = type metadata accessor for Logger();
                      sub_100093DE8(v120, qword_1002A6FF0);

                      v68 = Logger.logObject.getter();
                      v121 = static os_log_type_t.error.getter();

                      v122 = os_log_type_enabled(v68, v121);
                      v66 = v200;
                      v123 = v21;
                      v124 = v198;
                      if (v122)
                      {
                        v125 = swift_slowAlloc();
                        v126 = swift_slowAlloc();
                        v207 = v126;
                        *v125 = 136315138;
                        v127 = sub_1000952D4(v124, v123, &v207);

                        *(v125 + 4) = v127;
                        _os_log_impl(&_mh_execute_header, v68, v121, "Unable to parse setup URI: Invalid address encoding %s", v125, 0xCu);
                        sub_100095808(v126);

                        goto LABEL_130;
                      }

                      goto LABEL_131;
                    }

                    v36 = v118;
                    v31 = v119;

                    v211 = xmmword_10023BF90;
                    v128 = v114 >> 14;
                    v197 = v112 >> 14;
                    if (v112 >> 14 == v114 >> 14)
                    {
                      v129 = v191;
                      goto LABEL_276;
                    }

                    v130 = v114;
                    v192 = &v207 + 1;
                    v189 = xmmword_10023BFA0;
                    v131 = v112;
                    v132 = v203;
                    v133 = v117;
                    v129 = v191;
LABEL_163:
                    v190 = v128;
                    v198 = v133;
                    if (Substring.distance(from:to:)() < 13)
                    {
                      goto LABEL_276;
                    }

                    v134 = v131;
                    v21 = v129;
                    v4 = v198;
                    v196 = v134;
                    v195 = v130;
                    v203 = v132;
                    while (1)
                    {

                      v135 = Substring.index(_:offsetBy:limitedBy:)();
                      if (v136)
                      {
                        v137 = v130;
                      }

                      else
                      {
                        v137 = v135;
                      }

                      if (v197 > v137 >> 14)
                      {
                        __break(1u);
                        goto LABEL_279;
                      }

                      Substring.subscript.getter();

                      v138 = static String._fromSubstring(_:)();
                      v140 = v139;

                      v141 = HIBYTE(v140) & 0xF;
                      v142 = v138 & 0xFFFFFFFFFFFFLL;
                      if ((v140 & 0x2000000000000000) != 0)
                      {
                        v143 = HIBYTE(v140) & 0xF;
                      }

                      else
                      {
                        v143 = v138 & 0xFFFFFFFFFFFFLL;
                      }

                      if (!v143)
                      {

                        goto LABEL_260;
                      }

                      if ((v140 & 0x1000000000000000) == 0)
                      {
                        break;
                      }

                      v146 = sub_10017C5E0(v138, v140);
                      v164 = v165;
LABEL_259:

                      if ((v164 & 1) == 0)
                      {
                        sub_100095274(&unk_1002AC9B0, &qword_10023C3D0);
                        v166 = swift_allocObject();
                        *(v166 + 16) = v189;
                        *(v166 + 32) = v146;
                        v167 = sub_100095274(&unk_1002A7B10, &unk_10023F3A0);
                        v209 = v167;
                        v210 = sub_1000A4474();
                        v207 = v166;
                        v168 = sub_1000A09E0(&v207, v167);
                        v169 = *v168;
                        v170 = *(*v168 + 16);
                        if (v170)
                        {
                          if (v170 <= 0xE)
                          {
                            memset(__dst, 0, sizeof(__dst));
                            v206 = v170;
                            memcpy(__dst, (v169 + 32), v170);
                            v176 = *__dst;
                            v177 = v187 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v206 << 16)) << 32);
                            v187 = v177;
                          }

                          else
                          {
                            v171 = type metadata accessor for __DataStorage();
                            v172 = *(v171 + 48);
                            v173 = *(v171 + 52);
                            swift_allocObject();
                            v174 = __DataStorage.init(bytes:length:)();
                            v175 = v174;
                            if (v170 >= 0x7FFFFFFF)
                            {
                              type metadata accessor for Data.RangeReference();
                              v176 = swift_allocObject();
                              *(v176 + 16) = 0;
                              *(v176 + 24) = v170;
                              v177 = v175 | 0x8000000000000000;
                            }

                            else
                            {
                              v176 = v170 << 32;
                              v177 = v174 | 0x4000000000000000;
                            }
                          }
                        }

                        else
                        {
                          v176 = 0;
                          v177 = 0xC000000000000000;
                        }

                        sub_100095808(&v207);
                        v197 = v176;
                        v188 = v177;
                        Data.append(_:)();
                        v178 = v195;
                        v179 = Substring.index(_:offsetBy:limitedBy:)();
                        if (v180)
                        {
                          v179 = v178;
                        }

                        if (v190 < v179 >> 14)
                        {
                          __break(1u);
                        }

                        v131 = Substring.subscript.getter();
                        v130 = v181;
                        v132 = v182;
                        v184 = v183;

                        sub_1000A0D2C(v197, v188);
                        v128 = v130 >> 14;
                        v133 = v184;
                        v197 = v131 >> 14;
                        v129 = v191;
                        if (v131 >> 14 == v130 >> 14)
                        {
LABEL_276:

                          v59 = *(&v211 + 1);
                          v58 = v211;
                          v50 = v193 & 0x1010101;
                          sub_1000A0CD8(v211, *(&v211 + 1));
                          v185 = v204;
                          static Date.now.getter();
                          Date.timeIntervalSince1970.getter();
                          v60 = v186;

                          v202(v201, v8);
                          (*(v199 + 8))(v185, v129);
                          result = sub_1000A0D2C(v211, *(&v211 + 1));
                          v57 = v194;
                          goto LABEL_134;
                        }

                        goto LABEL_163;
                      }

LABEL_260:
                      v130 = v195;
                      v4 = v198;
                      if (Substring.distance(from:to:)() < 13)
                      {
                        v129 = v21;
                        goto LABEL_276;
                      }
                    }

                    if ((v140 & 0x2000000000000000) != 0)
                    {
                      v207 = v138;
                      v208 = v140 & 0xFFFFFFFFFFFFFFLL;
                      if (v138 == 43)
                      {
                        if (!v141)
                        {
                          goto LABEL_288;
                        }

                        if (--v141)
                        {
                          v146 = 0;
                          v156 = v192;
                          while (1)
                          {
                            v157 = *v156;
                            v158 = v157 - 48;
                            if ((v157 - 48) >= 0xA)
                            {
                              if ((v157 - 65) < 0x1A)
                              {
                                v158 = v157 - 55;
                              }

                              else
                              {
                                if ((v157 - 97) > 0x19)
                                {
                                  goto LABEL_257;
                                }

                                v158 = v157 - 87;
                              }
                            }

                            if (!is_mul_ok(v146, 0x24uLL))
                            {
                              break;
                            }

                            v46 = __CFADD__(36 * v146, v158);
                            v146 = 36 * v146 + v158;
                            if (v46)
                            {
                              break;
                            }

                            ++v156;
                            if (!--v141)
                            {
                              goto LABEL_258;
                            }
                          }
                        }
                      }

                      else if (v138 == 45)
                      {
                        if (!v141)
                        {
                          goto LABEL_285;
                        }

                        if (--v141)
                        {
                          v146 = 0;
                          v150 = v192;
                          while (1)
                          {
                            v151 = *v150;
                            v152 = v151 - 48;
                            if ((v151 - 48) >= 0xA)
                            {
                              if ((v151 - 65) < 0x1A)
                              {
                                v152 = v151 - 55;
                              }

                              else
                              {
                                if ((v151 - 97) > 0x19)
                                {
                                  goto LABEL_257;
                                }

                                v152 = v151 - 87;
                              }
                            }

                            if (!is_mul_ok(v146, 0x24uLL))
                            {
                              break;
                            }

                            v46 = 36 * v146 >= v152;
                            v146 = 36 * v146 - v152;
                            if (!v46)
                            {
                              break;
                            }

                            ++v150;
                            if (!--v141)
                            {
                              goto LABEL_258;
                            }
                          }
                        }
                      }

                      else if (v141)
                      {
                        v146 = 0;
                        v161 = &v207;
                        while (1)
                        {
                          v162 = *v161;
                          v163 = v162 - 48;
                          if ((v162 - 48) >= 0xA)
                          {
                            if ((v162 - 65) < 0x1A)
                            {
                              v163 = v162 - 55;
                            }

                            else
                            {
                              if ((v162 - 97) > 0x19)
                              {
                                goto LABEL_257;
                              }

                              v163 = v162 - 87;
                            }
                          }

                          if (!is_mul_ok(v146, 0x24uLL))
                          {
                            break;
                          }

                          v46 = __CFADD__(36 * v146, v163);
                          v146 = 36 * v146 + v163;
                          if (v46)
                          {
                            break;
                          }

                          v161 = (v161 + 1);
                          if (!--v141)
                          {
                            goto LABEL_258;
                          }
                        }
                      }

                      goto LABEL_257;
                    }

                    if ((v138 & 0x1000000000000000) != 0)
                    {
                      v144 = ((v140 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    }

                    else
                    {
                      v144 = _StringObject.sharedUTF8.getter();
                    }

                    v145 = *v144;
                    if (v145 == 43)
                    {
                      if (v142 < 1)
                      {
                        goto LABEL_286;
                      }

                      v141 = v142 - 1;
                      if (v142 == 1)
                      {
                        goto LABEL_257;
                      }

                      if (v144)
                      {
                        v146 = 0;
                        v153 = v144 + 1;
                        while (1)
                        {
                          v154 = *v153;
                          v155 = v154 - 48;
                          if ((v154 - 48) >= 0xA)
                          {
                            if ((v154 - 65) < 0x1A)
                            {
                              v155 = v154 - 55;
                            }

                            else
                            {
                              if ((v154 - 97) > 0x19)
                              {
                                goto LABEL_257;
                              }

                              v155 = v154 - 87;
                            }
                          }

                          if (!is_mul_ok(v146, 0x24uLL))
                          {
                            goto LABEL_257;
                          }

                          v46 = __CFADD__(36 * v146, v155);
                          v146 = 36 * v146 + v155;
                          if (v46)
                          {
                            goto LABEL_257;
                          }

                          ++v153;
                          if (!--v141)
                          {
                            goto LABEL_258;
                          }
                        }
                      }
                    }

                    else if (v145 == 45)
                    {
                      if (v142 < 1)
                      {
                        goto LABEL_287;
                      }

                      v141 = v142 - 1;
                      if (v142 == 1)
                      {
                        goto LABEL_257;
                      }

                      if (v144)
                      {
                        v146 = 0;
                        v147 = v144 + 1;
                        while (1)
                        {
                          v148 = *v147;
                          v149 = v148 - 48;
                          if ((v148 - 48) >= 0xA)
                          {
                            if ((v148 - 65) < 0x1A)
                            {
                              v149 = v148 - 55;
                            }

                            else
                            {
                              if ((v148 - 97) > 0x19)
                              {
                                goto LABEL_257;
                              }

                              v149 = v148 - 87;
                            }
                          }

                          if (!is_mul_ok(v146, 0x24uLL))
                          {
                            goto LABEL_257;
                          }

                          v46 = 36 * v146 >= v149;
                          v146 = 36 * v146 - v149;
                          if (!v46)
                          {
                            goto LABEL_257;
                          }

                          ++v147;
                          if (!--v141)
                          {
                            goto LABEL_258;
                          }
                        }
                      }
                    }

                    else
                    {
                      if (!v142)
                      {
LABEL_257:
                        v146 = 0;
                        LOBYTE(v141) = 1;
                        goto LABEL_258;
                      }

                      if (v144)
                      {
                        v146 = 0;
                        while (1)
                        {
                          v159 = *v144;
                          v160 = v159 - 48;
                          if ((v159 - 48) >= 0xA)
                          {
                            if ((v159 - 65) < 0x1A)
                            {
                              v160 = v159 - 55;
                            }

                            else
                            {
                              if ((v159 - 97) > 0x19)
                              {
                                goto LABEL_257;
                              }

                              v160 = v159 - 87;
                            }
                          }

                          if (!is_mul_ok(v146, 0x24uLL))
                          {
                            goto LABEL_257;
                          }

                          v46 = __CFADD__(36 * v146, v160);
                          v146 = 36 * v146 + v160;
                          if (v46)
                          {
                            goto LABEL_257;
                          }

                          ++v144;
                          if (!--v142)
                          {
                            LOBYTE(v141) = 0;
                            goto LABEL_258;
                          }
                        }
                      }
                    }

                    v146 = 0;
                    LOBYTE(v141) = 0;
LABEL_258:
                    __dst[0] = v141;
                    v164 = v141;
                    goto LABEL_259;
                  }
                }

                __break(1u);
LABEL_292:
                swift_once();
LABEL_69:
                v67 = type metadata accessor for Logger();
                sub_100093DE8(v67, qword_1002A6FF0);

                v68 = Logger.logObject.getter();
                v69 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v68, v69))
                {
                  v70 = swift_slowAlloc();
                  v71 = swift_slowAlloc();
                  v207 = v71;
                  *v70 = 136315138;
                  v72 = sub_1000952D4(v21, v23, &v207);

                  *(v70 + 4) = v72;
                  _os_log_impl(&_mh_execute_header, v68, v69, "Unable to parse setup URI: %s not a DockKit URI", v70, 0xCu);
                  sub_100095808(v71);

LABEL_130:

LABEL_132:
                  result = (v202)(v201, v8);
                  goto LABEL_133;
                }

                goto LABEL_131;
              }

              if (qword_1002A66B0 == -1)
              {
LABEL_143:
                v102 = type metadata accessor for Logger();
                sub_100093DE8(v102, qword_1002A6FF0);
                v98 = Logger.logObject.getter();
                v99 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v98, v99))
                {
                  v50 = 2;
                  v100 = swift_slowAlloc();
                  *v100 = 0;
                  v101 = "Unable to parse setup URI: Invalid setup payload length";
                  goto LABEL_145;
                }

LABEL_146:

                result = (v31)(v36, v8);
                goto LABEL_133;
              }

LABEL_289:
              swift_once();
              goto LABEL_143;
            }

            __break(1u);
            goto LABEL_281;
          }
        }

LABEL_126:

        if (qword_1002A66B0 != -1)
        {
          swift_once();
        }

        v88 = type metadata accessor for Logger();
        sub_100093DE8(v88, qword_1002A6FF0);

        v68 = Logger.logObject.getter();
        v89 = static os_log_type_t.error.getter();

        v90 = os_log_type_enabled(v68, v89);
        v66 = v200;
        if (v90)
        {
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v207 = v92;
          *v91 = 136315138;
          v93 = sub_1000952D4(v31, v21, &v207);

          *(v91 + 4) = v93;
          _os_log_impl(&_mh_execute_header, v68, v89, "Unable to parse setup URI: Invalid setup header encoding %s", v91, 0xCu);
          sub_100095808(v92);

          goto LABEL_130;
        }

LABEL_131:

        goto LABEL_132;
      }
    }

    if (qword_1002A66B0 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100093DE8(v52, qword_1002A6FF0);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v50 = 2;
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Unable to parse setup URI: Invalid URI format", v55, 2u);

      goto LABEL_44;
    }

LABEL_47:
    result = (v18)(a1, v8);
LABEL_133:
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v36 = 0;
    v31 = 0;
    v60 = 0;
    v50 = 2;
    goto LABEL_134;
  }

  if (qword_1002A66B0 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_100093DE8(v47, qword_1002A6FF0);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v48, v49))
  {

    goto LABEL_47;
  }

  v50 = 2;
  v51 = swift_slowAlloc();
  *v51 = 0;
  _os_log_impl(&_mh_execute_header, v48, v49, "Unable to parse setup URI: Invalid URI format", v51, 2u);

LABEL_44:
  result = (v18)(a1, v8);
LABEL_45:
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v36 = 0;
  v31 = 0;
  v60 = 0;
LABEL_134:
  *a2 = v57;
  a2[1] = v58;
  a2[2] = v59;
  a2[3] = v50;
  a2[4] = v36;
  a2[5] = v31;
  a2[6] = v60;
  return result;
}