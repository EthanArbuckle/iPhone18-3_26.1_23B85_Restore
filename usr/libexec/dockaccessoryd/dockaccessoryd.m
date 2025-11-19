void sub_10000499C(uint64_t a1)
{
  v2 = [*(a1 + 32) wakeTuples];
  v3 = [v2 count];

  if (v3)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = [*(a1 + 32) wakeTuples];
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = 0;
      v9 = *v21;
      do
      {
        v10 = 0;
        v11 = v7;
        do
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v4);
          }

          v12 = *(*(&v20 + 1) + 8 * v10);
          v13 = *(a1 + 32);
          v14 = [v13 dnsName];
          v7 = [v13 _wakeWithTuple:v12 dnsName:v14];

          v8 |= v7 == 0;
          v10 = v10 + 1;
          v11 = v7;
        }

        while (v6 != v10);
        v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);

      if ((v8 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v7 = v4;
    }

    v7 = 0;
LABEL_15:
    (*(*(a1 + 40) + 16))();

    return;
  }

  v15 = [*(a1 + 32) dnsName];

  v16 = *(a1 + 40);
  if (v15)
  {
    v17 = *(a1 + 32);
    v19 = [v17 dnsName];
    v18 = [v17 _wakeWithTuple:0 dnsName:?];
    (*(v16 + 16))(v16, v18);
  }

  else
  {
    v19 = [NSError hapErrorWithcode:9];
    (*(v16 + 16))(v16);
  }
}

void sub_100004F50(id a1)
{
  v1 = sub_10007F9D4(@"Accessory.LPM", @"com.apple.dockaccessoryd");
  v2 = qword_1002ACB88;
  qword_1002ACB88 = v1;
}

void sub_100006428(uint64_t a1)
{
  v3 = [NSError errorWithDomain:@"HAPErrorDomain" code:-6752 userInfo:0];
  v2 = [*(a1 + 32) delegate];
  [v2 fragmentationStream:*(a1 + 32) didCloseWithError:v3];
}

void sub_100006560(uint64_t a1)
{
  v2 = [*(a1 + 32) currentPacketTransactionIdentifier];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) currentPacketTransactionIdentifier];
    v5 = [v4 unsignedCharValue];
    v6 = [*(a1 + 40) transactionIdentifier];

    if (v6 != v5)
    {
      v7 = *(a1 + 32);
      v8 = [v7 currentPacketTransactionIdentifier];
      [v7 __removeAllPendingPacketsWithTransactionIdentifier:{objc_msgSend(v8, "unsignedCharValue")}];

      v9 = [NSError errorWithDomain:@"HAPErrorDomain" code:-6723 userInfo:0];
      v10 = [*(a1 + 32) delegate];
      v11 = *(a1 + 32);
      v12 = [v11 currentPacketTransactionIdentifier];
      [v10 fragmentationStream:v11 didReceiveData:0 transactionIdentifier:objc_msgSend(v12 error:{"unsignedCharValue"), v9}];
    }
  }

  [*(a1 + 32) __addFragmentationPacket:*(a1 + 40)];
  v13 = [*(a1 + 32) __isTransactionCompleteWithTransactionIdentifier:{objc_msgSend(*(a1 + 40), "transactionIdentifier")}];
  v14 = *(a1 + 32);
  if (v13)
  {
    v15 = [v14 __transactionDataWithTransactionIdentifier:{objc_msgSend(*(a1 + 40), "transactionIdentifier")}];
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = [NSError errorWithDomain:@"HAPErrorDomain" code:-6732 userInfo:0];
    }

    v16 = [*(a1 + 32) delegate];
    [v16 fragmentationStream:*(a1 + 32) didReceiveData:v15 transactionIdentifier:objc_msgSend(*(a1 + 40) error:{"transactionIdentifier"), v17}];

    [*(a1 + 32) setCurrentPacketTransactionIdentifier:0];
    [*(a1 + 32) __removeAllPendingPacketsWithTransactionIdentifier:{objc_msgSend(*(a1 + 40), "transactionIdentifier")}];
  }

  else
  {
    v17 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [*(a1 + 40) transactionIdentifier]);
    [v14 setCurrentPacketTransactionIdentifier:?];
  }
}

void sub_100006DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006DEC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [*(a1 + 32) transactionIdentifier];
  if (v7 == [v9 transactionIdentifier] && (v8 = objc_msgSend(*(a1 + 32), "offset"), v8 < objc_msgSend(v9, "offset")))
  {
    *a4 = 1;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a3 + 1;
  }
}

__CFString *HAPDiagnosticsSnapshotFormatAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"HAPDiagnosticsSnapshotFormatText";
    }

    else
    {
      v2 = [NSString stringWithFormat:@"Unknown HAPDiagnosticsSnapshotFormat %ld", a1];
    }
  }

  else
  {
    v2 = @"HAPDiagnosticsSnapshotFormatZip";
  }

  return v2;
}

uint64_t sub_10000FD2C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[HAPMetadata getSharedInstance];
  v7 = v6;
  if (!a1)
  {
    v9 = sub_10007FAA0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_10007FAFC(0);
      v16 = 138543362;
      v17 = v11;
      v13 = "%{public}@### Characteristic has nil properties";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v13, &v16, 0xCu);
LABEL_13:
    }

LABEL_14:
    v14 = 0;
    goto LABEL_20;
  }

  if ((a1 & 0xF) == 0)
  {
    v9 = sub_10007FAA0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_10007FAFC(0);
      v16 = 138543362;
      v17 = v11;
      v13 = "%{public}@### Characteristic is missing valid properties";
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v8 = [v6 getDefaultCharacteristicProperties:v5];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_19;
  }

  v10 = [v8 unsignedIntegerValue];
  if ((a1 & 2) == 0 && (v10 & 2) != 0)
  {
    v11 = sub_10007FAA0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = sub_10007FAFC(0);
      v16 = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@### HomeKit Characteristic '%@' does not support secureRead.", &v16, 0x16u);
    }

    goto LABEL_13;
  }

  if ((a1 & 0x80) != 0 || (v10 & 0x80) == 0 || (v14 = 0, (a1 & 4) != 0) && a2)
  {
LABEL_19:
    v14 = 1;
  }

LABEL_20:

  return v14;
}

id sub_100010C10(unint64_t a1)
{
  v2 = [NSMutableData dataWithCapacity:a1];
  if (a1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 4;
    do
    {
      if (a1 >= v5)
      {
        v6 = v5;
      }

      else
      {
        v6 = a1;
      }

      v8 = arc4random();
      v4 += 4;
      [v2 appendBytes:&v8 length:v6 + v3];
      v5 += 4;
      v3 -= 4;
    }

    while (v4 < a1);
  }

  return v2;
}

uint64_t sub_100010CB8()
{
  bytes = 0;
  if (SecRandomCopyBytes(kSecRandomDefault, 4uLL, &bytes))
  {
    return arc4random();
  }

  else
  {
    return bytes;
  }
}

void sub_100010D7C(id a1)
{
  v3 = [@"hds" stringByReplacingOccurrencesOfString:@"_" withString:@"."];
  v1 = HMFCreateOSLogHandle();
  v2 = qword_1002ACBA0;
  qword_1002ACBA0 = v1;
}

void sub_100012390(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 72);
    v4 = *(*(a1 + 72) + 16);

    v4();
  }

  else
  {
    v5 = [[DataStreamPendingRequest alloc] initWithIdentifier:*(a1 + 32) protocol:*(a1 + 40) topic:*(a1 + 48) payload:*(a1 + 56) callback:*(a1 + 72)];
    v6 = [*(a1 + 64) pendingRequests];
    [v6 addObject:v5];

    v7 = *(a1 + 64);
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = sub_10007FAFC(v7);
      v10 = 138543618;
      v11 = v9;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}@DataStream pending the request: %@", &v10, 0x16u);
    }
  }
}

id sub_100014728(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (v3)
  {
    v7 = @".";
  }

  else
  {
    v7 = &stru_10027BDA0;
  }

  if (v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = &stru_10027BDA0;
  }

  v9 = [v4 hash];

  v10 = [NSString stringWithFormat:@"com.apple.CoreHAP.%@%@%@.%tu", v6, v7, v8, v9];

  v11 = [v10 UTF8String];
  return v11;
}

id sub_100014808(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = 0;
  if (a1 && a2 && v5)
  {
    v8 = a1;
    v9 = [a2 uppercaseString];
    v10 = [v6 stringByAppendingString:v9];
    v11 = [v10 dataUsingEncoding:{4, 0, 0, 0, 0, 0, 0, 0, 0}];
    if (CC_SHA512([v11 bytes], objc_msgSend(v11, "length"), &v14))
    {
      v12 = [NSData dataWithBytes:&v14 length:4];
    }

    else
    {
      v12 = 0;
    }

    v7 = [v12 isEqual:v8];
  }

  return v7;
}

BOOL sub_100014954()
{
  v0 = +[HMFProductInfo productInfo];
  v1 = [v0 productVariant] == 3;

  return v1;
}

void sub_10001B4C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_10007FAFC(v2);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = 138543874;
    v9 = v4;
    v10 = 2048;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@Traffic class changed from %lu -> %lu, notifying protocol", &v8, 0x20u);
  }

  v7 = [*(a1 + 32) streamProtocol];
  [v7 evaluateOptionsForSocket:*(a1 + 32)];
}

void sub_10001B7E8(uint64_t a1)
{
  v2 = [*(a1 + 32) streamProtocol];
  [v2 sendData:*(a1 + 40) socket:*(a1 + 32) completion:*(a1 + 48)];
}

void sub_10001B994(uint64_t a1)
{
  v2 = [*(a1 + 32) streamProtocol];
  [v2 unregisterSocket:*(a1 + 32)];

  v3 = [*(a1 + 32) delegate];
  v4 = *(a1 + 32);
  v5 = v3;
  if (*(a1 + 40))
  {
    [v3 socket:v4 didFailWithError:?];
  }

  else
  {
    [v3 socketDidClose:v4];
  }
}

void sub_10001BAE4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 socketDidReceiveData:*(a1 + 32)];
}

id sub_10001C9B4(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if ([v7 length] > 2)
  {
    [v7 getBytes:a2 length:1];
    v11 = [v7 subdataWithRange:{1, objc_msgSend(v7, "length") - 1}];

    if ((*a2 & 2) != 0)
    {
      [v11 getBytes:a3 length:1];
      v15 = [v11 subdataWithRange:{1, objc_msgSend(v11, "length") - 1}];

      [v15 getBytes:a4 length:1];
      v16 = [v15 subdataWithRange:{1, objc_msgSend(v15, "length") - 1}];

      v7 = v16;
      v10 = v7;
    }

    else
    {
      v12 = sub_10007FAA0();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = sub_10007FAFC(0);
        v14 = *a2;
        v18 = 138543618;
        v19 = v13;
        v20 = 1024;
        LODWORD(v21) = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@Unexpected PDU Type in controlfield 0x%02x - expecting a response", &v18, 0x12u);
      }

      v10 = 0;
      v7 = v11;
    }
  }

  else
  {
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_10007FAFC(0);
      v18 = 138543618;
      v19 = v9;
      v20 = 2048;
      v21 = [v7 length];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@Insufficient length %tu - dropping", &v18, 0x16u);
    }

    v10 = 0;
  }

  return v10;
}

void sub_10001DECC(id a1)
{
  v1 = sub_10007F9D4(@"HAPHAPProtocolMessages", @"com.apple.dockaccessoryd");
  v2 = qword_1002ACBB0;
  qword_1002ACBB0 = v1;
}

void sub_10001E7C4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = [v3 delegate];
    v5 = objc_opt_respondsToSelector();

    v6 = *(a1 + 32);
    if (v5)
    {
      v13 = [v6 delegate];
      v7 = *(a1 + 32);
      v8 = [v7 provisionUUID];
      v9 = [*(a1 + 32) token1];
      [v13 authSession:v7 authenticateUUID:v8 token:v9];
    }

    else
    {
      v10 = v6;
      v11 = sub_10007FAA0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = sub_10007FAFC(v10);
        *buf = 138543362;
        v15 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement authenticateUUID:token1:token2:", buf, 0xCu);
      }

      [*(a1 + 32) _reportAuthFailure];
    }
  }

  else
  {

    [v3 _reportAuthFailure];
  }
}

void sub_10001F36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001F39C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001F3B4(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 56));
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 72));
  *(*(a1[7] + 8) + 24) = 1;
}

void sub_10001F6A4(id a1)
{
  v1 = sub_10007F9D4(@"HAPAuthSession", @"com.apple.dockaccessoryd");
  v2 = qword_1002ACBC0;
  qword_1002ACBC0 = v1;
}

const __CFString *sub_10001F978(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"HAPAuthMethodUnknown";
  }

  else
  {
    return off_100273510[a1];
  }
}

uint64_t sub_10001F99C(int a1)
{
  v1 = 2;
  v2 = 4;
  v3 = 5;
  if ((a1 & 0x10) != 0)
  {
    v3 = 6;
  }

  if ((a1 & 8) == 0)
  {
    v2 = v3;
  }

  if ((a1 & 2) == 0)
  {
    v1 = v2;
  }

  v4 = 1;
  if ((a1 & 5) == 0)
  {
    v4 = v1;
  }

  if (a1)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100021484(unsigned __int8 *a1, uint64_t a2, int *a3)
{
  result = 0;
  v5 = -6743;
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      v5 = 0;
      result = *a1;
    }

    else if (a2 == 2)
    {
      v5 = 0;
      result = (a1[1] << 8) | *a1;
      if (!a3)
      {
        return result;
      }

      goto LABEL_12;
    }

LABEL_11:
    if (!a3)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (a2 != 4)
  {
    if (a2 == 8)
    {
      v5 = 0;
      result = *a1;
      if (!a3)
      {
        return result;
      }

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v5 = 0;
  result = *a1;
  if (!a3)
  {
    return result;
  }

LABEL_12:
  *a3 = v5;
  return result;
}

id sub_10002155C(uint64_t a1)
{
  if (a1 == a1)
  {
    LOBYTE(v4) = a1;
    v1 = 1;
  }

  else
  {
    v4 = a1;
    v1 = 8;
  }

  v2 = [NSData dataWithBytes:&v4 length:v1];

  return v2;
}

uint64_t sub_100021790(unsigned __int8 *a1, uint64_t a2, int *a3)
{
  result = 0;
  v5 = -6743;
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      v5 = 0;
      result = *a1;
    }

    else if (a2 == 2)
    {
      v5 = 0;
      result = *a1;
      if (!a3)
      {
        return result;
      }

      goto LABEL_12;
    }

LABEL_11:
    if (!a3)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (a2 != 4)
  {
    if (a2 == 8)
    {
      v5 = 0;
      result = *a1;
      if (!a3)
      {
        return result;
      }

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v5 = 0;
  result = *a1;
  if (!a3)
  {
    return result;
  }

LABEL_12:
  *a3 = v5;
  return result;
}

id sub_100021858(unint64_t a1)
{
  if (a1 > 0xFF)
  {
    if (a1 >> 16)
    {
      v4 = a1;
      if (HIDWORD(a1))
      {
        v5 = BYTE4(a1);
        v6 = BYTE5(a1);
        v7 = BYTE6(a1);
        v8 = HIBYTE(a1);
        v1 = 8;
      }

      else
      {
        v1 = 4;
      }
    }

    else
    {
      LOWORD(v4) = a1;
      v1 = 2;
    }
  }

  else
  {
    LOBYTE(v4) = a1;
    v1 = 1;
  }

  v2 = [NSData dataWithBytes:&v4 length:v1];

  return v2;
}

id sub_100021B74(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4, void *a5)
{
  if (a2 >= a3)
  {
    goto LABEL_4;
  }

  Next = TLV8GetNext();
  if (Next)
  {
    if (a5)
    {
      sub_100041618(Next);
      v10 = 0;
      *a5 = v9 = 0;
      goto LABEL_5;
    }

    v10 = 0;
    goto LABEL_14;
  }

  v12 = [NSError hmfErrorWithCode:3];
  if (!v12)
  {
LABEL_4:
    *a4 = a2;
    v9 = 0;
    v10 = 0;
    goto LABEL_5;
  }

  v10 = v12;
  if (a5)
  {
    v13 = v12;
    v9 = 0;
    *a5 = v10;
    goto LABEL_5;
  }

LABEL_14:
  v9 = 0;
LABEL_5:

  return v9;
}

uint64_t sub_100021F5C()
{
  result = TLV8BufferAppendUInt64();
  if (!result)
  {

    return TLV8BufferAppendUInt64();
  }

  return result;
}

const __CFString *sub_100023350(int a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"response";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"request";
  }
}

__CFString *HAPDataStreamTransportCommandAsString(uint64_t a1)
{
  if (a1)
  {
    v2 = [NSString stringWithFormat:@"Unknown HAPDataStreamTransportCommand %ld", a1];
  }

  else
  {
    v2 = @"HAPDataStreamTransportCommandStartSession";
  }

  return v2;
}

__CFString *HAPDataStreamTransportCommandStatusAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [NSString stringWithFormat:@"Unknown HAPDataStreamTransportCommandStatus %ld", a1];
  }

  else
  {
    v2 = off_1002735B8[a1];
  }

  return v2;
}

__CFString *HAPDataStreamTransportProtocolAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"HAPDataStreamTransportProtocolHAP";
    }

    else
    {
      v2 = [NSString stringWithFormat:@"Unknown HAPDataStreamTransportProtocol %ld", a1];
    }
  }

  else
  {
    v2 = @"HAPDataStreamTransportProtocolTCP";
  }

  return v2;
}

id sub_10002587C(__int16 a1)
{
  v2 = +[NSMutableString string];
  v3 = v2;
  if ((a1 & 0x40) != 0)
  {
    v6 = [v2 stringByAppendingString:@": Hidden"];

    v3 = v6;
    if ((a1 & 1) == 0)
    {
LABEL_3:
      if ((a1 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((a1 & 1) == 0)
  {
    goto LABEL_3;
  }

  v7 = [v3 stringByAppendingString:@": Notify"];

  v3 = v7;
  if ((a1 & 8) == 0)
  {
LABEL_4:
    if ((a1 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = [v3 stringByAppendingString:@": Broadcast"];

  v3 = v8;
  if ((a1 & 2) == 0)
  {
LABEL_5:
    if ((a1 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = [v3 stringByAppendingString:@": Read"];

  v3 = v9;
  if ((a1 & 4) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = [v3 stringByAppendingString:@": Write"];

  v3 = v10;
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = [v3 stringByAppendingString:@": Timed Write"];

  v3 = v11;
  if ((a1 & 0x10) == 0)
  {
LABEL_8:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  v12 = [v3 stringByAppendingString:@": AAD"];

  v3 = v12;
  if ((a1 & 0x100) != 0)
  {
LABEL_9:
    v4 = [v3 stringByAppendingString:@": ENC"];

    v3 = v4;
  }

LABEL_10:

  return v3;
}

id sub_100026500(char a1)
{
  v2 = +[NSMutableString string];
  v3 = v2;
  if (a1)
  {
    v6 = [v2 stringByAppendingString:@": Primary"];

    v3 = v6;
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = [v3 stringByAppendingString:@": Hidden"];

  v3 = v7;
  if ((a1 & 4) != 0)
  {
LABEL_4:
    v4 = [v3 stringByAppendingString:@": Configurable"];

    v3 = v4;
  }

LABEL_5:

  return v3;
}

void sub_100027B74(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1002ACBC8;
  qword_1002ACBC8 = v1;
}

id sub_1000296E0(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 32);
    v3 = sub_10007FAA0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_10007FAFC(v2);
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@Received EOF from accessory.", &v7, 0xCu);
    }

    *(*(a1 + 32) + 9) = 1;
  }

  if (*(a1 + 40))
  {
    v5 = [*(a1 + 32) pendingReads];
    [v5 hmf_enqueueMultiple:*(a1 + 40)];
  }

  return [*(a1 + 32) _pumpReadDataIfPossible];
}

id sub_1000298A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_10007FAFC(v2);
    v5 = *(a1 + 40);
    v7 = 138543618;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@Received remote close with error: %@", &v7, 0x16u);
  }

  *(*(a1 + 32) + 9) = 1;
  [*(a1 + 32) setPendingError:*(a1 + 40)];
  return [*(a1 + 32) _pumpReadDataIfPossible];
}

void sub_10002AD80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002ADAC(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained workQueue];
    dispatch_assert_queue_V2(v6);

    [v5 _stopWithError:v7];
  }
}

void sub_10002AF50(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = *(a1 + 32);
        v10 = sub_10007FAA0();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = sub_10007FAFC(v9);
          *buf = 138543362;
          v19 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@Handling characteristics value updated", buf, 0xCu);
        }

        v12 = *(a1 + 32);
        v13 = [v8 value];
        [v12 _handleInterruptCharacteristicValue:v13];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v5);
  }
}

void sub_10002B178(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transportDidOpen:*(a1 + 32)];
}

void sub_10002B254(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transportDidClose:*(a1 + 32)];
}

void sub_10002B35C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transport:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

void sub_10002B464(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transport:*(a1 + 32) didReceiveRawFrame:*(a1 + 40)];
}

void sub_10002BE54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002BE80(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained workQueue];
    dispatch_assert_queue_V2(v5);

    [v4 _handleCompletionWithResponseTuples:v6];
  }
}

void sub_10002DB30(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dataStreamSetupOperation:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

void sub_10002DC5C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dataStreamSetupOperation:*(a1 + 32) didSucceedWithTransport:*(a1 + 40) sessionEncryption:*(a1 + 48)];
}

void sub_10002ECF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002ED20(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___DataStreamHAPSetupOperationDelegate])
  {
    v2 = [*(a1 + 32) delegate];

    if (!v2)
    {
      return;
    }

    [v2 dataStreamInitializationSetupOperation:*(a1 + 32) didCompleteSupportReadWithStatus:0];
    v3 = v2;
  }

  else
  {
    v3 = v4;
  }
}

void sub_10002EDC0(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v5 = [WeakRetained delegate];
    if ([v5 conformsToProtocol:&OBJC_PROTOCOL___DataStreamHAPSetupOperationDelegate])
    {
      v6 = [v7 delegate];

      v4 = v7;
      if (!v6)
      {
        goto LABEL_6;
      }

      [v6 dataStreamInitializationSetupOperation:v7 didCompleteSupportReadWithStatus:a2 != 0];
      v5 = v6;
    }

    v4 = v7;
  }

LABEL_6:
}

void sub_10002F1AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002F1D8(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained continueStreamSetupWithResponse:v5];
  }
}

uint64_t sub_1000300B0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

__CFString *HAPStagingNotReadyReasonsAsString(unint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  if (!a1)
  {
    goto LABEL_14;
  }

  v3 = 1;
  v4 = a1;
  do
  {
    if ((v3 & a1) == 0)
    {
      goto LABEL_11;
    }

    switch(v3)
    {
      case 1:
        v5 = @"HAPStagingNotReadyReasonOther";
        break;
      case 4:
        v5 = @"HAPStagingNotReadyReasonConnectivity";
        break;
      case 2:
        v5 = @"HAPStagingNotReadyReasonLowBattery";
        break;
      default:
        goto LABEL_11;
    }

    v4 &= ~v3;
    [v2 addObject:v5];
LABEL_11:
    v3 *= 2;
  }

  while (v3 - 1 < a1);
  if (v4)
  {
    v6 = [NSString stringWithFormat:@"Unknown options %lu", v4];
    [v2 addObject:v6];
  }

LABEL_14:
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

__CFString *HAPUpdateNotReadyReasonsAsString(unint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  if (a1)
  {
    v3 = 1;
    v4 = a1;
    do
    {
      if ((v3 & a1) != 0)
      {
        v5 = v3 - 1;
        if (v3 - 1) <= 7 && ((0x8Bu >> v5))
        {
          v4 &= ~v3;
          [v2 addObject:*(&off_1002737B0 + v5)];
        }
      }

      v3 *= 2;
    }

    while (v3 - 1 < a1);
    if (v4)
    {
      v6 = [NSString stringWithFormat:@"Unknown options %lu", v4];
      [v2 addObject:v6];
    }
  }

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

void sub_100031E9C(id a1)
{
  v1 = sub_10007F9D4(@"hms.transport", @"com.apple.dockaccessoryd");
  v2 = qword_1002ACBE0;
  qword_1002ACBE0 = v1;
}

__CFString *sub_10003DAFC(uint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [NSString stringWithFormat:@"<unknown status: %d>", a1];
  }

  else
  {
    v2 = off_100273900[a1];
  }

  return v2;
}

__CFString *HAPOperatingStateAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [NSString stringWithFormat:@"Unknown HAPOperatingState %ld", a1];
  }

  else
  {
    v2 = off_100273938[a1];
  }

  return v2;
}

uint64_t sub_10003E594(uint64_t a1, char **a2, void *a3, void *a4, void *a5)
{
  v33 = 0;
  v8 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_17;
  }

  v9 = [v8 _handleLocalPairingIdentityRequestWithStatus:&v33];
  v10 = v9;
  if (v33)
  {
    goto LABEL_15;
  }

  if (a2)
  {
    v11 = [v9 identifier];
    v12 = [v11 lengthOfBytesUsingEncoding:4];

    if (!v12)
    {
      goto LABEL_18;
    }

    v13 = malloc_type_calloc(v12 + 1, 1uLL, 0x100004077774924uLL);
    if (!v13)
    {
      v32 = -6728;
      goto LABEL_20;
    }

    v14 = v13;
    v15 = [v10 identifier];
    strlcpy(v14, [v15 UTF8String], v12 + 1);

    *a2 = v14;
  }

  if (!a3)
  {
    goto LABEL_11;
  }

  v16 = [v10 publicKey];

  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = [v10 publicKey];
  v18 = [v17 data];
  v19 = [v18 length];
  v20 = HMFPairingKeyLength;

  if (v19 != v20)
  {
LABEL_18:
    v32 = -6743;
    goto LABEL_20;
  }

  v21 = [v10 publicKey];
  v22 = [v21 data];
  memcpy(a3, [v22 bytes], v19);

LABEL_11:
  if (a4)
  {
    v23 = [v10 privateKey];

    if (v23)
    {
      v24 = [v10 privateKey];
      v25 = [v24 data];
      v26 = [v25 length];
      v27 = HMFPairingKeyLength;

      if (v26 == v27)
      {
        v28 = [v10 privateKey];
        v29 = [v28 data];
        memcpy(a4, [v29 bytes], v26);

        goto LABEL_15;
      }

      goto LABEL_18;
    }

LABEL_17:
    v32 = -6727;
LABEL_20:
    v33 = v32;
  }

LABEL_15:
  v30 = v33;

  return v30;
}

uint64_t sub_10003E7FC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v23 = 0;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    v8 = 0;
    goto LABEL_11;
  }

  v8 = [[NSString alloc] initWithBytes:a1 length:a2 encoding:4];
  if (!v8)
  {
    v10 = 0;
    v22 = -6705;
    goto LABEL_15;
  }

  v9 = [v7 _handlePeerPairingIdentityRequestWithIdentifier:v8 status:&v23];
  v10 = v9;
  if (!v23)
  {
    v11 = [v9 identifier];
    v12 = [v8 isEqualToString:v11];

    if ((v12 & 1) == 0)
    {
      v22 = -6748;
      goto LABEL_15;
    }

    if (a3)
    {
      v13 = [v10 publicKey];

      if (v13)
      {
        v14 = [v10 publicKey];
        v15 = [v14 data];
        v16 = [v15 length];
        v17 = HMFPairingKeyLength;

        if (v16 == v17)
        {
          v18 = [v10 publicKey];
          v19 = [v18 data];
          memcpy(a3, [v19 bytes], v16);

          goto LABEL_9;
        }

        v22 = -6743;
LABEL_15:
        v23 = v22;
        goto LABEL_9;
      }

LABEL_11:
      v22 = -6727;
      goto LABEL_15;
    }
  }

LABEL_9:
  v20 = v23;

  return v20;
}

void sub_10003F0A4(uint64_t a1)
{
  if (*(a1 + 32) || *(a1 + 40))
  {
    v2 = *(a1 + 48);
    v3 = sub_10007FAA0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = sub_10007FAFC(v2);
      v10 = 138543362;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@Handling setup exchange data", &v10, 0xCu);
    }

    [*(a1 + 48) _processSetupExchangeData:*(a1 + 40) error:*(a1 + 32)];
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = sub_10007FAA0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = sub_10007FAFC(v5);
      v8 = *(a1 + 40);
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@Invalid setup exchange data: %@", &v10, 0x16u);
    }

    v9 = [NSError errorWithDomain:@"HAPErrorDomain" code:-6705 userInfo:0];
    [*(a1 + 48) _closeWithError:v9];
  }
}

void sub_10003F328(uint64_t a1)
{
  if ([*(a1 + 32) state] != 1)
  {
    v7 = *(a1 + 32);
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_10007FAFC(v7);
      v10 = [*(a1 + 32) state];
      if (v10 > 3)
      {
        v11 = @"unknown";
      }

      else
      {
        v11 = off_1002739C0[v10];
      }

      *buf = 138543618;
      v20 = v9;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to handle setup exchange data in state '%@'", buf, 0x16u);
    }

    goto LABEL_16;
  }

  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v3 = v2;
    v4 = sub_10007FAA0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = sub_10007FAFC(v3);
      v6 = *(a1 + 40);
      *buf = 138543618;
      v20 = v5;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@Closing security session due to setup exchange error: %@", buf, 0x16u);
    }

    [*(a1 + 32) _closeWithError:*(a1 + 40)];
    return;
  }

  [v2 pairingSession];
  [*(a1 + 48) bytes];
  [*(a1 + 48) length];
  v12 = PairingSessionExchange();
  if (!v12)
  {
    v7 = [[NSData alloc] initWithBytesNoCopy:0 length:0];
    if (![v7 length])
    {
      goto LABEL_17;
    }

    v8 = [*(a1 + 32) delegate];
    [v8 securitySession:*(a1 + 32) didReceiveSetupExchangeData:v7];
LABEL_16:

LABEL_17:
    return;
  }

  if (v12 != -6767)
  {
    v7 = [NSError errorWithOSStatus:v12];
    v8 = [NSError hapErrorWithcode:2 description:@"Operation Cancelled." reason:@"Failed to get the pairing exchange data." suggestion:0 underlyingError:v7];
    v16 = *(a1 + 32);
    v17 = sub_10007FAA0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = sub_10007FAFC(v16);
      *buf = 138543618;
      v20 = v18;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to process exchange data with error: %@", buf, 0x16u);
    }

    [*(a1 + 32) _closeWithError:v8];
    goto LABEL_16;
  }

  v13 = *(a1 + 32);
  v14 = sub_10007FAA0();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = sub_10007FAFC(v13);
    *buf = 138543362;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@Session lookup failed, reset resumeSessionID, and retrying", buf, 0xCu);
  }

  [*(a1 + 32) _initializeSetupSession:0];
  [*(a1 + 32) setState:0];
  [*(a1 + 32) open];
}

void sub_10003FE68(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) pairingSession];
  v4 = [v3 saltData];
  [v4 bytes];
  v5 = [v3 saltData];
  [v5 length];
  v6 = [v3 infoData];
  [v6 bytes];
  v7 = [v3 infoData];
  [v7 length];
  v8 = PairingSessionDeriveKey();

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = sub_10007FAA0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_10007FAFC(v9);
      v12 = [v3 name];
      v14 = 138543874;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2048;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to derive addional key '%@' with error: %ld", &v14, 0x20u);
    }
  }

  else
  {
    v9 = [NSData dataWithBytes:v20 length:32];
    v13 = *(a1 + 40);
    v10 = [v3 name];
    [v13 setObject:v9 forKeyedSubscript:v10];
  }
}

id sub_1000402AC(uint64_t a1)
{
  mach_absolute_time();
  *(*(a1 + 32) + 48) = UpTicksToMilliseconds();
  result = [*(a1 + 32) role];
  if (result == 1)
  {
    v4 = *(a1 + 32);

    return [v4 _notifyOpening];
  }

  else if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 _initiateClientSessionSetupExchange];
  }

  return result;
}

void sub_10004088C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000408A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000408BC(uint64_t a1)
{
  if ([*(a1 + 32) state] == 2)
  {
    v5 = [*(a1 + 32) encryption];
    v2 = [v5 encrypt:*(a1 + 40) additionalAuthenticatedData:*(a1 + 48)];
    v3 = *(*(a1 + 56) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  else if (*(a1 + 64))
  {
    **(a1 + 64) = [NSError errorWithDomain:@"HAPErrorDomain" code:-6709 userInfo:0];
  }
}

void sub_100040C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100040C34(uint64_t a1)
{
  if ([*(a1 + 32) state] == 2)
  {
    v2 = [*(a1 + 32) encryption];
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v10 = 0;
    v5 = [v2 decrypt:v3 additionalAuthenticatedData:v4 error:&v10];
    v6 = v10;
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v5;

    if (v6 && [v6 code] != -6764)
    {
      if (*(a1 + 64))
      {
        v9 = v6;
        **(a1 + 64) = v6;
      }

      [*(a1 + 32) _closeWithError:v6];
    }
  }

  else if (*(a1 + 64))
  {
    **(a1 + 64) = [NSError errorWithDomain:@"HAPErrorDomain" code:-6709 userInfo:0];
  }
}

void sub_100040D80(id a1)
{
  v1 = sub_10007F9D4(@"Security.Session", @"com.apple.dockaccessoryd");
  v2 = qword_1002ACBF0;
  qword_1002ACBF0 = v1;
}

id sub_100041618(uint64_t a1)
{
  if (a1)
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    DebugGetErrorString();
    v16[0] = NSLocalizedDescriptionKey;
    v2 = [NSString stringWithFormat:@"Failed with OSStatus code %d (%s)", a1, v18];
    v17[0] = v2;
    v16[1] = NSUnderlyingErrorKey;
    v3 = [NSError errorWithOSStatus:a1];
    v17[1] = v3;
    v4 = 2;
    v5 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];

    if (a1 > -6761)
    {
      switch(a1)
      {
        case 0xFFFFE598:
        case 0xFFFFE599:
        case 0xFFFFE59A:
        case 0xFFFFE59F:
        case 0xFFFFE5A0:
        case 0xFFFFE5BB:
        case 0xFFFFE5BC:
        case 0xFFFFE5BD:
        case 0xFFFFE5BE:
          v4 = 33;
          break;
        case 0xFFFFE59B:
        case 0xFFFFE59C:
        case 0xFFFFE59D:
        case 0xFFFFE5A3:
        case 0xFFFFE5A5:
        case 0xFFFFE5A6:
        case 0xFFFFE5A7:
        case 0xFFFFE5A8:
        case 0xFFFFE5AA:
        case 0xFFFFE5AB:
        case 0xFFFFE5AC:
        case 0xFFFFE5AD:
        case 0xFFFFE5AE:
        case 0xFFFFE5AF:
        case 0xFFFFE5B0:
        case 0xFFFFE5B1:
        case 0xFFFFE5B4:
        case 0xFFFFE5B5:
        case 0xFFFFE5B6:
        case 0xFFFFE5B7:
        case 0xFFFFE5B8:
        case 0xFFFFE5B9:
        case 0xFFFFE5BA:
        case 0xFFFFE5BF:
        case 0xFFFFE5C0:
        case 0xFFFFE5C1:
        case 0xFFFFE5C2:
        case 0xFFFFE5C3:
        case 0xFFFFE5C5:
        case 0xFFFFE5C6:
        case 0xFFFFE5C8:
        case 0xFFFFE5C9:
        case 0xFFFFE5CD:
        case 0xFFFFE5CE:
        case 0xFFFFE5D1:
          goto LABEL_15;
        case 0xFFFFE59E:
          v4 = 37;
          break;
        case 0xFFFFE5A1:
        case 0xFFFFE5A2:
        case 0xFFFFE5A9:
          v4 = 44;
          break;
        case 0xFFFFE5A4:
        case 0xFFFFE5B3:
        case 0xFFFFE5C4:
        case 0xFFFFE5C7:
        case 0xFFFFE5CC:
          goto LABEL_6;
        case 0xFFFFE5B2:
          v4 = 32;
          break;
        case 0xFFFFE5CA:
        case 0xFFFFE5CF:
        case 0xFFFFE5D0:
          break;
        case 0xFFFFE5CB:
          goto LABEL_14;
        case 0xFFFFE5D2:
          v4 = 4;
          break;
        default:
          if ((a1 - 35) > 0x1E || ((1 << (a1 - 35)) & 0x42010001) == 0)
          {
            goto LABEL_15;
          }

LABEL_14:
          v4 = 30;
          break;
      }
    }

    else
    {
      switch(a1)
      {
        case 0xFFFEEA18:
          v4 = 43;
          break;
        case 0xFFFFE58B:
          v4 = 41;
          break;
        case 0xFFFFE590:
LABEL_6:
          v4 = 42;
          break;
        default:
LABEL_15:
          if ((a1 - 200400) >= 0x64)
          {
            if ((a1 - 200500) >= 0x64)
            {
              if ((a1 + 25298) <= 0xFFFFFFFD)
              {
                v7 = sub_10007FAA0();
                if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
                {
                  v8 = sub_10007FAFC(0);
                  *buf = 138543874;
                  v11 = v8;
                  v12 = 1024;
                  v13 = a1;
                  v14 = 2080;
                  v15 = v18;
                  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@Treating OSStatus %d (%s) as Generic error", buf, 0x1Cu);
                }
              }

              v4 = 10;
            }

            else
            {
              v4 = 46;
            }
          }

          else
          {
            v4 = 45;
          }

          break;
      }
    }

    v6 = [NSError errorWithDomain:@"DKErrorDomain" code:v4 userInfo:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_100042CB8(int a1)
{
  result = 3;
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0;
      case 1:
        return result;
      case 2:
        return 5;
    }

    return 1;
  }

  if (a1 <= 4)
  {
    if (a1 == 3)
    {
      return 16;
    }

    else
    {
      return 9;
    }
  }

  if (a1 == 5)
  {
    return 17;
  }

  if (a1 != 6)
  {
    return 1;
  }

  return result;
}

__CFString *HAPOperatingStateAbnormalReasonsAsString(unint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  if (!a1)
  {
    goto LABEL_14;
  }

  v3 = 1;
  v4 = a1;
  do
  {
    if ((v3 & a1) == 0)
    {
      goto LABEL_11;
    }

    switch(v3)
    {
      case 1:
        v5 = @"HAPOperatingStateAbnormalReasonOther";
        break;
      case 4:
        v5 = @"HAPOperatingStateAbnormalReasonHighTemperature";
        break;
      case 2:
        v5 = @"HAPOperatingStateAbnormalReasonLowTemperature";
        break;
      default:
        goto LABEL_11;
    }

    v4 &= ~v3;
    [v2 addObject:v5];
LABEL_11:
    v3 *= 2;
  }

  while (v3 - 1 < a1);
  if (v4)
  {
    v6 = [NSString stringWithFormat:@"Unknown options %lu", v4];
    [v2 addObject:v6];
  }

LABEL_14:
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

id sub_100044374(uint64_t a1)
{
  result = [*(a1 + 32) isOpen];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setOpen:1];
    v3 = [*(a1 + 32) delegate];
    [v3 controlOutputStreamDidOpen:*(a1 + 32)];

    v4 = *(a1 + 32);

    return [v4 sendNextPayloadFragment];
  }

  return result;
}

void sub_1000446C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1000446F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000447A4;
    v5[3] = &unk_1002739F0;
    v6 = v3;
    [v4 _sendNextPayloadFragmentWithCompletionHandler:v5];
  }
}

id sub_1000447A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 cancelWithError:a2];
  }

  else
  {
    return [v2 finish];
  }
}

void sub_1000447B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) clientQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100044874;
  v6[3] = &unk_100273370;
  v4 = *(a1 + 32);
  v7 = WeakRetained;
  v8 = v4;
  v5 = WeakRetained;
  dispatch_async(v3, v6);
}

void sub_100044874(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  v3 = *(a1 + 40);
  if (v2)
  {
    v6 = [*(a1 + 32) error];
    [v3 _closeWithError:v6];
  }

  else
  {
    v4 = [*(a1 + 40) remainingControlPayloadLength];
    v5 = *(a1 + 40);
    if (v4)
    {

      [v5 sendNextPayloadFragment];
    }

    else
    {

      [v5 _complete];
    }
  }
}

void sub_100044A00(uint64_t a1)
{
  v2 = *(a1 + 32);
  v18 = 0;
  v3 = [v2 _nextPacketWithMaximumLength:objc_msgSend(v2 error:{"mtuLength"), &v18}];
  v4 = v18;
  if (v3)
  {
    v5 = [*(a1 + 32) delegate];
    if (v5)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100044CB4;
      v16[3] = &unk_100273A40;
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v16[4] = *(a1 + 32);
      v17 = v7;
      [v5 controlOutputStream:v6 didReceiveRequestToSendControlPacket:v3 completionHandler:v16];
      v8 = v17;
    }

    else
    {
      v13 = sub_10007FAA0();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = sub_10007FAFC(0);
        v15 = [*(a1 + 32) shortDescription];
        *buf = 138543618;
        v20 = v14;
        v21 = 2112;
        v22 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] The stream delegate is missing, closing session", buf, 0x16u);
      }

      if (!*(a1 + 40))
      {
        goto LABEL_13;
      }

      v8 = [NSError hapErrorWithcode:3 description:@"Operation not supported." reason:@"The stream delegate is missing." suggestion:0 underlyingError:0];
      (*(*(a1 + 40) + 16))();
    }

LABEL_13:
    goto LABEL_14;
  }

  v9 = sub_10007FAA0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = sub_10007FAFC(0);
    v11 = [*(a1 + 32) shortDescription];
    *buf = 138543874;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to get the next control packet with error: %@", buf, 0x20u);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v4);
  }

LABEL_14:
}

void sub_100044CB4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) clientQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100044D80;
    v5[3] = &unk_100273720;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

DataStreamBulkSendPendingSessionContext *__cdecl sub_1000453F4(id a1, id a2)
{
  v2 = a2;
  v3 = [[HMFTimer alloc] initWithTimeInterval:0 options:5.0];
  v4 = [[HMFTimer alloc] initWithTimeInterval:0 options:10.0];
  v5 = [[DataStreamBulkSendPendingSessionContext alloc] initWithSessionStartCallback:v2 handleOpenRequestResponseTimer:v3 sendCloseEventTimer:v4];

  return v5;
}

void sub_100046E14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = sub_10007FAA0();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = sub_10007FAFC(v4);
      v12 = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v3;
      v8 = "%{public}@Failed to send open response: %@";
      v9 = v6;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, v10, v8, &v12, v11);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = sub_10007FAFC(v4);
    v12 = 138543362;
    v13 = v7;
    v8 = "%{public}@Sent open response";
    v9 = v6;
    v10 = OS_LOG_TYPE_INFO;
    v11 = 12;
    goto LABEL_6;
  }
}

void sub_100048844(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v10);

  v11 = [*(a1 + 32) pendingBulkSendSessionContextBySessionIdentifier];
  v12 = [v11 objectForKey:*(a1 + 40)];

  v13 = *(a1 + 32);
  v14 = sub_10007FAA0();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v15)
    {
      v16 = sub_10007FAFC(v13);
      v17 = *(a1 + 40);
      *buf = 138543874;
      v52 = v16;
      v53 = 2112;
      v54 = v17;
      v55 = 2112;
      v56 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%{public}@Received bulk send open response for session with identifier: %@ error: %@", buf, 0x20u);
    }

    v18 = [*(a1 + 32) pendingBulkSendSessionContextBySessionIdentifier];
    [v18 removeObjectForKey:*(a1 + 40)];

    if ([v12 shouldCloseSessionWithTimeoutReason])
    {
      v19 = *(a1 + 32);
      v20 = sub_10007FAA0();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = sub_10007FAFC(v19);
        v22 = *(a1 + 40);
        *buf = 138543618;
        v52 = v21;
        v53 = 2112;
        v54 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%{public}@Session with identifier: %@ has timed out, sending close event to accessory", buf, 0x16u);
      }

      [*(a1 + 32) _sendCloseMessageWithIdentifier:*(a1 + 40) reason:6 completion:&stru_100273B60];
      v23 = [NSError errorWithDomain:@"DKErrorDomain" code:12 userInfo:0];
      (*(*(a1 + 56) + 16))();
    }

    else if (v7)
    {
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v26 = [v8 hmf_numberForKey:@"status"];
      v27 = v26;
      if (v26)
      {
        v50 = v26;
        v28 = [v26 integerValue];
        if (v28)
        {
          v29 = v28;
          v30 = [v9 hmf_numberForKey:@"status"];
          v31 = v30;
          if (v30)
          {
            if ([(DataStreamBulkSendSession *)v30 integerValue]== 2)
            {
              v32 = 29;
            }

            else
            {
              v32 = 11;
            }

            if ([(DataStreamBulkSendSession *)v31 integerValue]== 9)
            {
              v33 = 3;
            }

            else
            {
              v33 = v32;
            }
          }

          else
          {
            v33 = 11;
          }

          v44 = [NSError errorWithDomain:@"DKErrorDomain" code:v33 userInfo:0];
          v45 = *(a1 + 32);
          v46 = sub_10007FAA0();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            sub_10007FAFC(v45);
            v47 = v49 = v44;
            v48 = sub_10003DAFC(v29);
            *buf = 138544130;
            v52 = v47;
            v53 = 2112;
            v54 = v48;
            v55 = 2112;
            v56 = v31;
            v57 = 2112;
            v58 = v49;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%{public}@Received non-success status in header: %@ payload status: %@. Mapped to error: %@", buf, 0x2Au);

            v44 = v49;
          }

          (*(*(a1 + 56) + 16))();
        }

        else
        {
          v37 = [DataStreamBulkSendSession alloc];
          v38 = *(a1 + 32);
          v39 = *(a1 + 40);
          v40 = *(a1 + 48);
          v41 = [v38 logIdentifier];
          v31 = [(DataStreamBulkSendSession *)v37 initWithProtocol:v38 sessionIdentifier:v39 queue:v40 logIdentifier:v41];

          v42 = [*(a1 + 32) activeBulkSendSessions];
          [v42 setObject:v31 forKey:*(a1 + 40)];

          v43 = [[DataStreamBulkSendOpenSessionResult alloc] initWithSession:v31 payload:v9];
          (*(*(a1 + 56) + 16))();
        }

        v27 = v50;
      }

      else
      {
        v34 = *(a1 + 32);
        v35 = sub_10007FAA0();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = sub_10007FAFC(v34);
          *buf = 138543362;
          v52 = v36;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}@Could not find a status in header", buf, 0xCu);
        }

        v31 = [NSError errorWithDomain:@"DKErrorDomain" code:24 userInfo:0];
        (*(*(a1 + 56) + 16))();
      }
    }
  }

  else
  {
    if (v15)
    {
      v24 = sub_10007FAFC(v13);
      v25 = *(a1 + 40);
      *buf = 138543618;
      v52 = v24;
      v53 = 2112;
      v54 = v25;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%{public}@Could not find pending bulk send session context for session identifier: %@", buf, 0x16u);
    }

    [*(a1 + 32) _sendCloseMessageWithIdentifier:*(a1 + 40) reason:6 completion:&stru_100273B40];
  }
}

void sub_10004AAC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_10004AAEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained browser];
  v2 = [WeakRetained accessoryCache];
  [v1 saveCacheToDisk:v2];
}

void sub_10004B9D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = sub_10007FAA0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = sub_10007FAFC(v4);
    v10 = 138543618;
    v11 = v6;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Removed accessory server that its pairing was cancelled post pair-setup with error %@", &v10, 0x16u);
  }

  [*(a1 + 32) setPendingRemovePairing:2];
  v7 = [*(a1 + 32) browser];
  v8 = [v7 isPerformingGeneralScan];

  if ((v8 & 1) == 0)
  {
    v9 = [*(a1 + 32) browser];
    [v9 stopDiscoveringAccessoryServers];
  }
}

uint64_t sub_10004BB04(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_10004BBD8(uint64_t a1)
{
  v2 = (a1 + 32);
  objc_initWeak(&location, *(a1 + 32));
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10004BFB8;
  v23[3] = &unk_100273BD8;
  objc_copyWeak(&v24, &location);
  v3 = objc_retainBlock(v23);
  if ([*v2 isPaired])
  {
    if (*(a1 + 40))
    {
      v4 = [*(a1 + 32) discoveredAccessoryCharacteriticsPendingRead];
      [v4 addObjectsFromArray:*(a1 + 40)];
    }

    v5 = [*(a1 + 32) discoveryContext];
    v6 = [v5 isDiscovering];

    v7 = *(a1 + 32);
    if (v6)
    {
      v8 = v7;
      v9 = sub_10007FAA0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = sub_10007FAFC(v8);
        v11 = [*(a1 + 32) discoveryContext];
        v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v11 discoveryType]);
        v13 = *(a1 + 40);
        *buf = 138543874;
        v27 = v10;
        v28 = 2112;
        v29 = v12;
        v30 = 2112;
        v31 = v13;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@Discovering in progress for type: %@. Pending characteristic types to read: %@", buf, 0x20u);
      }
    }

    else
    {
      v18 = [v7 connectReason];
      v19 = *(a1 + 32);
      if (v18 == 2)
      {
        [*(a1 + 32) setHasBeenDiscovered:1];
        [*(a1 + 32) _discoverWithType:3 completionHandler:0];
      }

      else
      {
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_10004C180;
        v20[3] = &unk_100273C28;
        objc_copyWeak(&v22, &location);
        v21 = v3;
        [v19 _discoverWithType:2 completionHandler:v20];

        objc_destroyWeak(&v22);
      }
    }
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = sub_10007FAA0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = sub_10007FAFC(v14);
      *buf = 138543618;
      v27 = v16;
      v28 = 2112;
      v29 = @"Discovery on an unpaired accessory is not allowed";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@%@", buf, 0x16u);
    }

    v17 = [NSError hapErrorWithcode:3 description:@"Discovery on an unpaired accessory is not allowed" reason:0 suggestion:0 underlyingError:0];
    (v3[2])(v3, 0, v17);
  }

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void sub_10004BF70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004BFB8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained pendingRemovePairing] == 1)
  {
    [WeakRetained _removePairingOfAccessoryServerCancelledMidPairing];
  }

  else
  {
    [WeakRetained setHasBeenDiscovered:v5 == 0];
    if ([WeakRetained _delegateRespondsToSelector:"accessoryServer:didDiscoverAccessories:transaction:error:"])
    {
      v7 = [WeakRetained delegateQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10004C0C0;
      block[3] = &unk_100273480;
      v10 = a2;
      block[4] = WeakRetained;
      v9 = v5;
      dispatch_async(v7, block);
    }
  }
}

void sub_10004C0C0(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) delegate];
    [v2 accessoryServer:*(a1 + 32) didDiscoverAccessories:0 transaction:0 error:*(a1 + 40)];
  }

  v6 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [v3 accessories];
  v5 = [v4 copy];
  [v6 accessoryServer:v3 didDiscoverAccessories:v5 transaction:0 error:*(a1 + 40)];
}

void sub_10004C180(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v5 = [NSError hapErrorWithcode:1 description:@"Discovery failed" reason:0 suggestion:0 underlyingError:v3];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004C2AC;
    v6[3] = &unk_100273C28;
    objc_copyWeak(&v8, (a1 + 40));
    v7 = *(a1 + 32);
    [WeakRetained _discoverWithType:0 completionHandler:v6];

    objc_destroyWeak(&v8);
  }
}

void sub_10004C2AC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v5 = [NSError hapErrorWithcode:1 description:@"Discovery failed" reason:0 suggestion:0 underlyingError:v3];
    (*(*(a1 + 32) + 16))(*(a1 + 32), [WeakRetained isIncompatibleUpdate], v5);
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10004C3E8;
    v7[3] = &unk_100273C00;
    objc_copyWeak(&v10, (a1 + 40));
    v6 = *(a1 + 32);
    v8 = 0;
    v9 = v6;
    [WeakRetained _readPendingDiscoveredCharacteritiscTypesWithCompletion:v7];

    objc_destroyWeak(&v10);
  }
}

void sub_10004C3E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained primaryAccessory];
  [v2 updateForAccessoryInformationService];

  (*(*(a1 + 40) + 16))(*(a1 + 40), [WeakRetained isIncompatibleUpdate], *(a1 + 32));
}

id sub_10004C82C(uint64_t a1)
{
  [*(a1 + 32) removeObject:*(a1 + 40)];
  result = [*(a1 + 32) count];
  if (!result)
  {
    v3 = *(*(a1 + 48) + 16);

    return v3();
  }

  return result;
}

void sub_10004CB84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004CBB4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = +[NSDate date];
  [v5 timeIntervalSinceDate:*(a1 + 32)];
  v7 = v6;

  v8 = [v3 userInfo];
  v9 = [v8 objectForKeyedSubscript:NSUnderlyingErrorKey];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (!v11)
  {
    v9 = v3;
  }

  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10004CD5C;
  v20 = &unk_100273C78;
  v12 = *(a1 + 56);
  v21 = WeakRetained;
  v23 = v12;
  v24 = v7;
  v13 = v9;
  v22 = v13;
  sub_10004CD5C(&v17);
  v14 = [WeakRetained discoveryContext];
  [v14 setDiscovering:0];

  v15 = objc_retainBlock(*(a1 + 40));
  v16 = v15;
  if (v15)
  {
    (*(v15 + 2))(v15, v3);
  }

  [WeakRetained incrementHAPBTLEMetricsDiscoveryCount];
}

void sub_10004CD5C(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = sub_10007FAA0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_10007FAFC(0);
      v5 = [NSNumber numberWithInteger:*(a1 + 48)];
      v6 = [NSNumber numberWithDouble:*(a1 + 56)];
      v7 = [*(a1 + 40) domain];
      v8 = [*(a1 + 40) code];
      v9 = 138544386;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      v17 = 2048;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@Discovered BTLE accessory with type: %{key:discoveryType}@,                                              %{key:duration}@, error: %{key:errorDomain}@ %{key:errorCode}ld", &v9, 0x34u);
    }
  }
}

void sub_10004CEC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = v4;
    v6 = sub_10007FAA0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = sub_10007FAFC(v5);
      v8 = [NSNumber numberWithInteger:*(a1 + 48)];
      *buf = 138543874;
      v22 = v7;
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to connect to the accessory during discovery type: %@ with error: %@", buf, 0x20u);
    }

    v9 = [*(a1 + 40) completionHandler];
    if (v9)
    {
      v10 = [*(a1 + 32) clientQueue];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10004D188;
      v18[3] = &unk_100273268;
      v19 = v3;
      v20 = v9;
      dispatch_async(v10, v18);
    }
  }

  else
  {
    [v4 setDiscoveryContext:*(a1 + 40)];
    v11 = *(a1 + 48);
    v12 = *(a1 + 32);
    v13 = sub_10007FAA0();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (v11 == 3)
    {
      if (v14)
      {
        v15 = sub_10007FAFC(v12);
        *buf = 138543362;
        v22 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{public}@Ack-ed accessory notification", buf, 0xCu);
      }

      [*(a1 + 32) _cancelDiscoveryWithError:0];
      [*(a1 + 32) disconnectWithCompletionHandler:0];
    }

    else
    {
      if (v14)
      {
        v16 = sub_10007FAFC(v12);
        v17 = *(a1 + 48);
        *buf = 138543618;
        v22 = v16;
        v23 = 2048;
        v24 = v17;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{public}@Starting attribute database discovery type: %tu", buf, 0x16u);
      }

      [*(a1 + 32) _discoverServices];
    }
  }
}

void sub_10004D188(uint64_t a1)
{
  v2 = [NSError hapErrorWithcode:8 description:@"Discovery failed." reason:@"Failed to connect." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void sub_10004D79C(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = sub_10007FAA0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_10007FAFC(0);
      v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) discoveryRetries]);
      v6 = 138543618;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@Rediscovering BTLE accessory with retries: %{key:retries}@", &v6, 0x16u);
    }
  }
}

uint64_t sub_10004FE54(void *a1)
{
  v1 = a1;
  v2 = [v1 UUID];
  v3 = [CBUUID UUIDWithString:@"E604E95D-A759-4817-87D3-AA005083A0D1"];
  if ([v2 isEqual:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v1 UUID];
    v6 = [CBUUID UUIDWithString:@"00000051-0000-1000-8000-4D69736D6574"];
    v4 = [v5 isEqual:v6];
  }

  return v4;
}

id sub_100051018(void *a1)
{
  v1 = [a1 UUID];
  v2 = [CBUUID UUIDWithString:@"000000A5-0000-1000-8000-4D69736D6574"];
  v3 = [v1 isEqual:v2];

  return v3;
}

id sub_100051250(void *a1, void *a2)
{
  v3 = a1;
  v4 = +[HAPDataValueTransformer defaultDataValueTransformer];
  v5 = [v3 value];

  v9 = 0;
  v6 = [v4 reverseTransformedValue:v5 format:2 error:&v9];
  v7 = v9;

  if (a2 && !v6)
  {
    *a2 = [NSError hapErrorWithcode:12 description:@"Invalid Characteristic Instance ID value." reason:0 suggestion:0 underlyingError:v7];
  }

  return v6;
}

id sub_100051504(void *a1, void *a2)
{
  v3 = a1;
  v4 = +[HAPDataValueTransformer defaultDataValueTransformer];
  v5 = [v3 value];

  v9 = 0;
  v6 = [v4 reverseTransformedValue:v5 format:2 error:&v9];
  v7 = v9;

  if (a2 && !v6)
  {
    *a2 = [NSError hapErrorWithcode:12 description:@"Invalid Service Instance ID value." reason:0 suggestion:0 underlyingError:v7];
  }

  return v6;
}

void sub_10005217C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_10007FAFC(v7);
      *buf = 138543618;
      v23 = v9;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get signature from characteristic with error: %@", buf, 0x16u);
    }

    [*(a1 + 32) _handleReadCharacteristicSignature:*(a1 + 40) error:v6];
  }

  else
  {
    v21 = 0;
    v10 = [objc_opt_class() parseSignatureResponse:v5 error:&v21];
    v11 = v21;
    v12 = *(a1 + 32);
    if (v10)
    {
      v13 = [v12 discoveryContext];
      v14 = [v13 characteristicSignatures];
      [v14 setObject:v10 forKey:*(a1 + 40)];

      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v17 = 0;
    }

    else
    {
      v18 = v12;
      v19 = sub_10007FAA0();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = sub_10007FAFC(v18);
        *buf = 138543618;
        v23 = v20;
        v24 = 2112;
        v25 = v11;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse characteristic signature response with error: %@", buf, 0x16u);
      }

      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v17 = v11;
    }

    [v15 _handleReadCharacteristicSignature:v16 error:v17];
  }
}

void sub_100052FB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 && *(a1 + 32))
  {
    v7 = *(a1 + 40);
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_10007FAFC(v7);
      *buf = 138543618;
      v26 = v9;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get signature from service with error: %@", buf, 0x16u);
    }

    [*(a1 + 40) _handleReadServiceSignature:*(a1 + 32) error:v6];
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = objc_opt_class();
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v24 = 0;
    v14 = [v11 parseServiceSignatureResponse:v5 serviceInstanceID:v12 serviceType:v13 error:&v24];
    v15 = v24;
    if (v14 || !*(a1 + 32))
    {
      v16 = *(a1 + 40);
      v17 = sub_10007FAA0();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = sub_10007FAFC(v16);
        v19 = [v14 description];
        *buf = 138543618;
        v26 = v18;
        v27 = 2112;
        v28 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);
      }

      v20 = [*(a1 + 40) discoveryContext];
      v21 = [v20 serviceSignatures];
      [v21 setObject:v14 forKey:*(a1 + 32)];
      v22 = 0;
    }

    else
    {
      v20 = *(a1 + 40);
      v21 = sub_10007FAA0();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v23 = sub_10007FAFC(v20);
        *buf = 138543618;
        v26 = v23;
        v27 = 2112;
        v28 = v15;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse service signature response with error: %@", buf, 0x16u);
      }

      v22 = v15;
    }

    [*(a1 + 40) _handleReadServiceSignature:*(a1 + 32) error:v22];
  }
}

uint64_t sub_100053D98(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  if ([v5 length] > 6)
  {
    if (!a2)
    {
      goto LABEL_11;
    }

    [v5 getBytes:&v11 length:7];
    *a2 = v11;
    v7 = v12;
    *(a2 + 1) = v12;
    *(a2 + 2) = v13;
    v8 = v14;
    *(a2 + 4) = v14;
    v9 = v15;
    *(a2 + 6) = v15;
    if (!v7 && v8 == 1 && !v9)
    {
LABEL_11:
      v6 = 1;
      goto LABEL_12;
    }

    if (a3)
    {
      *a3 = [NSError hapErrorWithcode:12 description:@"Invalid characteristic format descriptor value." reason:0 suggestion:0 underlyingError:0];
    }

    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_12;
  }

  [NSError hapErrorWithcode:12 description:@"Invalid characteristic format descriptor value length." reason:0 suggestion:0 underlyingError:0];
  *a3 = v6 = 0;
LABEL_12:

  return v6;
}

uint64_t sub_100053EB0(unsigned __int8 a1, void *a2, void *a3)
{
  if (a1 - 1) < 0x1Bu && ((0x50AAAA9u >> (a1 - 1)))
  {
    if (a2)
    {
      *a2 = qword_10023A7E0[(a1 - 1)];
    }

    return 1;
  }

  else
  {
    if (a3)
    {
      v5 = [NSString stringWithFormat:@"Invalid characteristic format type, %u", a1];
      *a3 = [NSError hapErrorWithcode:12 description:v5 reason:0 suggestion:0 underlyingError:0];
    }

    return 0;
  }
}

uint64_t sub_100053F74(int a1, uint64_t *a2, void *a3)
{
  if (HIWORD(a1) > 0x2730u)
  {
    switch(HIWORD(a1))
    {
      case 0x2731u:
        v4 = 5;
        if (!a2)
        {
          return 1;
        }

        break;
      case 0x2763u:
        v4 = 2;
        if (!a2)
        {
          return 1;
        }

        break;
      case 0x27ADu:
        v4 = 4;
        if (!a2)
        {
          return 1;
        }

        break;
      default:
        goto LABEL_16;
    }

LABEL_22:
    *a2 = v4;
    return 1;
  }

  switch(HIWORD(a1))
  {
    case 0x2700u:
      v4 = 0;
      if (!a2)
      {
        return 1;
      }

      goto LABEL_22;
    case 0x2703u:
      v4 = 1;
      if (!a2)
      {
        return 1;
      }

      goto LABEL_22;
    case 0x272Fu:
      v4 = 3;
      if (!a2)
      {
        return 1;
      }

      goto LABEL_22;
  }

LABEL_16:
  if (a3)
  {
    v5 = [NSString stringWithFormat:@"Invalid characteristic unit type, %04x", HIWORD(a1)];
    *a3 = [NSError hapErrorWithcode:12 description:v5 reason:0 suggestion:0 underlyingError:0];
  }

  return 0;
}

BOOL sub_10005409C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  if (![v7 length] || (objc_msgSend(v7, "length") & 1) != 0)
  {
    if (!a4)
    {
LABEL_9:
      v11 = 0;
      goto LABEL_10;
    }

    [NSError hapErrorWithcode:12 description:@"The characteristic valid range value length must be a multiple of 2." reason:0 suggestion:0 underlyingError:0];
    *a4 = v11 = 0;
  }

  else
  {
    if ((a2 - 12) < 4 || a2 == 9)
    {
      if (a4)
      {
        v9 = sub_10007685C(a2);
        v10 = [NSString stringWithFormat:@"Characteristics with format type '%@' do not support valid ranges", v9];

        *a4 = [NSError hapErrorWithcode:12 description:v10 reason:0 suggestion:0 underlyingError:0];
      }

      goto LABEL_9;
    }

    v13 = [v7 length] >> 1;
    v14 = [v7 length] >> 1;
    v15 = [v7 subdataWithRange:{0, v13}];
    v16 = [v7 subdataWithRange:{v13, v14}];
    v31 = a2 - 11;
    if ((a2 - 11) >= 3)
    {
      v17 = a2;
    }

    else
    {
      v17 = 2;
    }

    v18 = +[HAPDataValueTransformer defaultDataValueTransformer];
    v34 = 0;
    v19 = [v18 reverseTransformedValue:v15 format:v17 error:&v34];
    v20 = v34;

    v32 = v19;
    if (v19)
    {
      v30 = v15;
      v21 = +[HAPDataValueTransformer defaultDataValueTransformer];
      v33 = v20;
      v29 = v16;
      v22 = [v21 reverseTransformedValue:v16 format:v17 error:&v33];
      v23 = v33;

      v11 = v22 != 0;
      if (v22)
      {
        v24 = v32;
        if (v31 > 2)
        {
          [v8 setMinimumValue:v32];
          [v8 setMaximumValue:v22];
        }

        else
        {
          if ([v32 longLongValue] >= 1)
          {
            [v8 setMinLength:v32];
          }

          [v8 setMaxLength:v22];
        }
      }

      else
      {
        v27 = sub_10007FAA0();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = sub_10007FAFC(0);
          *buf = 138543618;
          v36 = v28;
          v37 = 2112;
          v38 = v23;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}@[HAPBTLE] Failed to transform upper value with error: %@", buf, 0x16u);
        }

        v16 = v29;
        v24 = v32;
        if (a4)
        {
          *a4 = [NSError hapErrorWithcode:12 description:@"Failed to parse upper value" reason:0 suggestion:0 underlyingError:v23];
        }
      }

      v15 = v30;
    }

    else
    {
      v25 = sub_10007FAA0();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = sub_10007FAFC(0);
        *buf = 138543618;
        v36 = v26;
        v37 = 2112;
        v38 = v20;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@[HAPBTLE] Failed to transform lower value with error: %@", buf, 0x16u);
      }

      v24 = 0;
      if (a4)
      {
        [NSError hapErrorWithcode:12 description:@"Failed to parse lower value" reason:0 suggestion:0 underlyingError:v20];
        *a4 = v11 = 0;
      }

      else
      {
        v11 = 0;
      }

      v23 = v20;
    }
  }

LABEL_10:

  return v11;
}

BOOL sub_1000544F0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  if (![v7 length])
  {
    if (a4)
    {
      [NSError hapErrorWithcode:12 description:@"The characteristic step value length must be greater than 0." reason:0 suggestion:0 underlyingError:0];
      *a4 = v11 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  if ((a2 - 11) < 5 || a2 == 9)
  {
    if (a4)
    {
      v9 = sub_10007685C(a2);
      v10 = [NSString stringWithFormat:@"Characteristics with format type '%@' do not support step value", v9];

      *a4 = [NSError hapErrorWithcode:12 description:v10 reason:0 suggestion:0 underlyingError:0];
    }

    goto LABEL_7;
  }

  v13 = +[HAPDataValueTransformer defaultDataValueTransformer];
  v18 = 0;
  v14 = [v13 reverseTransformedValue:v7 format:a2 error:&v18];
  v15 = v18;

  v11 = v14 != 0;
  if (v14)
  {
    [v8 setStepValue:v14];
  }

  else
  {
    v16 = sub_10007FAA0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = sub_10007FAFC(0);
      *buf = 138543618;
      v20 = v17;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@[HAPBTLE] Failed to transform step value with error: %@", buf, 0x16u);
    }

    if (a4)
    {
      *a4 = [NSError hapErrorWithcode:12 description:@"Failed to parse step value" reason:0 suggestion:0 underlyingError:v15];
    }
  }

LABEL_8:
  return v11;
}

BOOL sub_100054760(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  if (![v7 length])
  {
    if (a4)
    {
      v10 = @"The characteristic valid values length must be greater than 0.";
      v11 = 0;
LABEL_15:
      [NSError hapErrorWithcode:12 description:v10 reason:v11 suggestion:0 underlyingError:0];
      *a4 = v16 = 0;
      goto LABEL_17;
    }

LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  if ((a2 - 16) >= 0xFFFFFFFFFFFFFFF5)
  {
    if (a4)
    {
      v12 = sub_10007685C(a2);
      v13 = [NSString stringWithFormat:@"Characteristics with format type '%@' do not support valid values", v12];

      *a4 = [NSError hapErrorWithcode:12 description:v13 reason:0 suggestion:0 underlyingError:0];
    }

    goto LABEL_16;
  }

  if ((a2 - 1) > 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = qword_10023A8B8[a2 - 1];
  }

  if (([v7 length] & v9) != 0)
  {
    v14 = sub_10007FAA0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = sub_10007FAFC(0);
      *buf = 138543362;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@[HAPBTLE] Failed to extract valid values, total size is not a multiple of the format size", buf, 0xCu);
    }

    if (a4)
    {
      v10 = @"Failed to extract valid values";
      v11 = @"Total size is not a multiple of the format's size";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v18 = sub_100057C50(v7, a2);
  v19 = [v18 count];
  v16 = v19 != 0;
  if (v19)
  {
    [v18 sortUsingComparator:&stru_100273D58];
    v20 = sub_10007FAA0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = sub_10007FAFC(0);
      *buf = 138543618;
      v25 = v21;
      v26 = 2112;
      v27 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%{public}@[HAPBTLE] Setting valid values to : %@", buf, 0x16u);
    }

    [v8 setValidValues:v18];
  }

  else
  {
    v22 = sub_10007FAA0();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = sub_10007FAFC(0);
      *buf = 138543362;
      v25 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@[HAPBTLE] Failed to extract valid values", buf, 0xCu);
    }

    if (a4)
    {
      *a4 = [NSError hapErrorWithcode:12 description:@"Failed to extract valid values" reason:0 suggestion:0 underlyingError:0];
    }
  }

LABEL_17:
  return v16;
}

uint64_t sub_100054ACC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  if ([v7 length] && (objc_msgSend(v7, "length") & 1) == 0)
  {
    if ((a2 - 16) < 0xFFFFFFFFFFFFFFF5)
    {
      v9 = [v8 validValues];
      v10 = [NSMutableArray arrayWithArray:v9];

      if ((a2 - 1) > 3)
      {
        v11 = -1;
      }

      else
      {
        v11 = qword_10023A8B8[a2 - 1];
      }

      if (([v7 length] & v11) != 0)
      {
        v15 = sub_10007FAA0();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = sub_10007FAFC(0);
          *buf = 138543362;
          v36 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@[HAPBTLE] Failed to extract valid value range, total size is not a multiple of the format's size", buf, 0xCu);
        }

        if (a4)
        {
          [NSError hapErrorWithcode:12 description:@"Failed to extract valid value range" reason:@"Total size is not a multiple of the format's size" suggestion:0 underlyingError:0];
          *a4 = v12 = 0;
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_40;
      }

      v17 = sub_100057C50(v7, a2);
      if ([v17 count])
      {
        v28 = sub_10007FAA0();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = sub_10007FAFC(0);
          *buf = 138543362;
          v36 = v29;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@[HAPBTLE] Failed to extract valid value range, valid value ranges are not pairs", buf, 0xCu);
        }

        if (a4)
        {
          [NSError hapErrorWithcode:12 description:@"Failed to extract valid value range" reason:@"Valid value ranges are not pairs" suggestion:0 underlyingError:0];
          *a4 = v12 = 0;
LABEL_39:

LABEL_40:
          goto LABEL_41;
        }
      }

      else
      {
        v33 = a4;
        v34 = v8;
        if ([v17 count])
        {
          v18 = 0;
          do
          {
            v19 = [v17 objectAtIndex:v18];
            v20 = [v17 objectAtIndex:v18 | 1];
            v21 = [v19 integerValue];
            if (v21 <= [v20 integerValue])
            {
              do
              {
                v22 = [NSNumber numberWithInteger:v21];
                v23 = [v10 containsObject:v22];

                if ((v23 & 1) == 0)
                {
                  v24 = [NSNumber numberWithInteger:v21];
                  [v10 addObject:v24];
                }
              }

              while (v21++ < [v20 integerValue]);
            }

            v18 += 2;
          }

          while (v18 < [v17 count]);
        }

        if ([v10 count])
        {
          [v10 sortUsingComparator:&stru_100274518];
          v26 = sub_10007FAA0();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v27 = sub_10007FAFC(0);
            *buf = 138543618;
            v36 = v27;
            v37 = 2112;
            v38 = v10;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%{public}@[HAPBTLE] Setting valid values to : %@", buf, 0x16u);
          }

          v8 = v34;
          [v34 setValidValues:v10];
          v12 = 1;
          goto LABEL_39;
        }

        v30 = sub_10007FAA0();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = sub_10007FAFC(0);
          *buf = 138543362;
          v36 = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@[HAPBTLE] Failed to extract valid values", buf, 0xCu);
        }

        if (v33)
        {
          [NSError hapErrorWithcode:12 description:@"Failed to extract valid values" reason:0 suggestion:0 underlyingError:0];
          *v33 = v12 = 0;
          goto LABEL_39;
        }
      }

      v12 = 0;
      goto LABEL_39;
    }

    if (a4)
    {
      v13 = sub_10007685C(a2);
      v14 = [NSString stringWithFormat:@"Characteristics with format type '%@' do not support valid values", v13];

      *a4 = [NSError hapErrorWithcode:12 description:v14 reason:0 suggestion:0 underlyingError:0];
    }

    goto LABEL_10;
  }

  if (!a4)
  {
LABEL_10:
    v12 = 0;
    goto LABEL_41;
  }

  [NSError hapErrorWithcode:12 description:@"The characteristic valid values range length must be even" reason:0 suggestion:0 underlyingError:0];
  *a4 = v12 = 0;
LABEL_41:

  return v12;
}

BOOL sub_100055360(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [v5 length];
  if (v6 <= 1)
  {
    if (a3)
    {
      *a3 = [NSError hapErrorWithcode:12 description:@"The service properties value is missing." reason:0 suggestion:0 underlyingError:0];
    }
  }

  else
  {
    v8 = 0;
    [v5 getBytes:&v8 length:2];
    if (a2)
    {
      *a2 = v8 & 7;
    }
  }

  return v6 > 1;
}

uint64_t sub_100055418(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if ([v5 length] < 2 || (objc_msgSend(v5, "length") & 1) != 0)
  {
    if (a3)
    {
      [NSError hapErrorWithcode:12 description:@"Linked services has invalid value field." reason:0 suggestion:0 underlyingError:0];
      *a3 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if ([v5 length] >= 2)
    {
      do
      {
        v7 = v5;
        v11 = 0;
        [v5 getBytes:&v11 length:2];
        v8 = [NSNumber numberWithUnsignedShort:v11];
        [v6 addObject:v8];

        v5 = [v7 subdataWithRange:{2, objc_msgSend(v7, "length") - 2}];
      }

      while ([v5 length] > 1);
    }

    v9 = 1;
  }

  return v9;
}

void sub_100055694(id *a1)
{
  v2 = [a1[4] pairingActivity];
  if (v2)
  {
    v3 = sub_10007FAA0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_10007FAFC(0);
      v5 = [a1[5] UUID];
      v6 = [v5 UUIDString];
      v7 = [a1[6] domain];
      v8 = [a1[6] code];
      v9 = 138544130;
      v10 = v4;
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2048;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to read characteristic signature: %{key:type}@,                                              error: %{key:errorDomain}@ %{key:errorCode}ld", &v9, 0x2Au);
    }
  }
}

void sub_100055924(id *a1)
{
  v2 = [a1[4] pairingActivity];
  if (v2)
  {
    v3 = sub_10007FAA0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_10007FAFC(0);
      v5 = [a1[5] UUID];
      v6 = [v5 UUIDString];
      v7 = [a1[6] domain];
      v8 = [a1[6] code];
      v9 = 138544130;
      v10 = v4;
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2048;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to read service signature: %{key:type}@,                                              error: %{key:errorDomain}@ %{key:errorCode}ld", &v9, 0x2Au);
    }
  }
}

id sub_100057C50(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 length]);
  if ((a2 - 1) > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_10023A8D8[a2 - 1];
  }

  if ([v3 length])
  {
    v6 = 0;
    do
    {
      v7 = [v3 subdataWithRange:{v6, v5}];
      v8 = +[HAPDataValueTransformer defaultDataValueTransformer];
      v12 = 0;
      v9 = [v8 reverseTransformedValue:v7 format:a2 error:&v12];
      v10 = v12;

      if (!v10 && ([v4 containsObject:v9] & 1) == 0)
      {
        [v4 addObject:v9];
      }

      v6 += v5;
    }

    while (v6 < [v3 length]);
  }

  return v4;
}

void sub_100057F40(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [*(a1 + 32) count]);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = *v2;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v5)
  {
    v6 = *v26;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        if ([v3 containsObject:v8])
        {
          v16 = *(a1 + 40);
          v17 = sub_10007FAA0();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = sub_10007FAFC(v16);
            *buf = 138543618;
            v30 = v18;
            v31 = 2112;
            v32 = v8;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@Not sending requests due to duplicate characteristic: %@", buf, 0x16u);
          }

          [*(a1 + 48) markWithReason:@"Calling completion handler"];
          if (*(a1 + 64))
          {
            v19 = [NSString stringWithFormat:@"Duplicate characteristic read of %@.", v8];
            v20 = [NSError hapErrorWithcode:11 description:v19 reason:@"Client requested to read characteristic twice." suggestion:0 underlyingError:0];

            (*(*(a1 + 64) + 16))();
          }

          [*(a1 + 48) end];
          [*(a1 + 48) invalidate];

          goto LABEL_19;
        }

        [v3 addObject:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  if (*(a1 + 72) > 0.0)
  {
    v9 = *(a1 + 40);
    v10 = sub_10007FAA0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = sub_10007FAFC(v9);
      v12 = *(a1 + 72);
      *buf = 138543618;
      v30 = v11;
      v31 = 2048;
      v32 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@Request timeouts are not supported, request may not timeout within %f seconds", buf, 0x16u);
    }
  }

  objc_initWeak(buf, *(a1 + 40));
  v13 = *(a1 + 40);
  v14 = *(a1 + 32);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100058310;
  v21[3] = &unk_100273D80;
  v15 = *(a1 + 56);
  v22 = *(a1 + 48);
  objc_copyWeak(&v24, buf);
  v23 = *(a1 + 64);
  [v13 _readCharacteristicValues:v14 queue:v15 completionHandler:v21];

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
LABEL_19:
}

void sub_1000582EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100058310(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v22 = a3;
  [*(a1 + 32) begin];
  v23 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    v24 = v7;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v12 error];

        if (!v13)
        {
          v14 = WeakRetained;
          v15 = sub_10007FAA0();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = sub_10007FAFC(v14);
            v17 = [v12 characteristic];
            [v17 value];
            v19 = v18 = WeakRetained;
            v20 = [v12 characteristic];
            *buf = 138543874;
            v30 = v16;
            v31 = 2112;
            v32 = v19;
            v33 = 2112;
            v34 = v20;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%{public}@Read value '%@' for characteristic %@", buf, 0x20u);

            WeakRetained = v18;
            v7 = v24;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v9);
  }

  [*(v23 + 32) markWithReason:@"Calling completion handler"];
  v21 = *(v23 + 40);
  if (v21)
  {
    (*(v21 + 16))(v21, v7, v22);
  }

  [*(v23 + 32) end];
  [*(v23 + 32) invalidate];
}

void sub_1000588CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_10007FAFC(v7);
      v10 = [v5 instanceID];
      v11 = [v5 type];
      v13 = 138544130;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Read response for characteristic %@/%@ with error: %@", &v13, 0x2Au);
    }
  }

  v12 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v5 error:v6];
  [*(a1 + 40) addObject:v12];
  dispatch_group_leave(*(a1 + 48));
}

void sub_100058A44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(v2);
    *buf = 138543362;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@Completed multiple read requests", buf, 0xCu);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100058B98;
      v7[3] = &unk_100273720;
      v9 = v6;
      v8 = *(a1 + 48);
      dispatch_async(v5, v7);
    }
  }
}

void sub_100059034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, uint64_t a20, char a21)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_100059068(void *a1, void *a2, char a3, void *a4, void *a5)
{
  v18 = a1;
  v9 = a2;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    v13 = v18;
    if (v10 | v11)
    {
      v14 = a3 - 1;
      v15 = qword_10023A8F8[v14];
      v16 = [NSString stringWithFormat:off_100274538[v14], v18];
      v17 = [NSError hapErrorWithcode:v15 description:v16 reason:v12 suggestion:0 underlyingError:v10];

      v13 = v18;
    }

    else
    {
      v17 = 0;
    }

    (v9)[2](v9, v13, v17);
  }
}

void sub_100059188(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (v6)
  {
    [a1[4] setValue:0];
    v8 = WeakRetained;
    v9 = sub_10007FAA0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = sub_10007FAFC(v8);
      *buf = 138543618;
      v44 = v10;
      v45 = 2112;
      v46 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to read from characteristic with error: %@", buf, 0x16u);
    }

    v11 = sub_10007FAA0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = sub_10007FAFC(0);
      v13 = [a1[4] instanceID];
      v14 = [v6 domain];
      v15 = [v6 code];
      *buf = 138544130;
      v44 = v12;
      v45 = 2112;
      v46 = v13;
      v47 = 2112;
      v48 = v14;
      v49 = 2048;
      v50 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Read failed for characteristic %{key:characteristicId}@ with error: %{key:errorDomain}@ %{key:errorCode}ld", buf, 0x2Au);
    }

    sub_100059068(a1[4], a1[5], 1, v6, @"Read request failed.");
  }

  else
  {
    v41 = 0;
    v42 = 0;
    v40 = 0;
    v16 = [objc_opt_class() parseReadResponse:v5 value:&v42 notificationContext:&v41 error:&v40];
    v17 = v42;
    v18 = v41;
    v19 = v40;
    v20 = a1[4];
    if (v16)
    {
      [v20 setValue:v17];
      [a1[4] setNotificationContext:v18];
      v21 = sub_10007FAA0();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        sub_10007FAFC(0);
        v23 = v22 = v17;
        v24 = [a1[4] instanceID];
        v25 = [v5 statusCode];
        *buf = 138543874;
        v44 = v23;
        v45 = 2112;
        v46 = v24;
        v47 = 2048;
        v48 = v25;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Received response for characteristic %{key:characteristicId}@: status %{key:hapStatusCode}lu", buf, 0x20u);

        v17 = v22;
      }

      [WeakRetained _updatePropertiesFromCharacteristic:a1[4]];
      v26 = a1[4];
      v27 = a1[5];
      v28 = 0;
      v29 = 0;
    }

    else
    {
      [v20 setValue:0];
      [a1[4] setNotificationContext:0];
      v30 = WeakRetained;
      v31 = sub_10007FAA0();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = sub_10007FAFC(v30);
        *buf = 138543618;
        v44 = v32;
        v45 = 2112;
        v46 = v19;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse characteristic read response with error: %@", buf, 0x16u);
      }

      v33 = sub_10007FAA0();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = sub_10007FAFC(0);
        v35 = [a1[4] instanceID];
        [v19 domain];
        v39 = v18;
        v37 = v36 = v17;
        v38 = [v19 code];
        *buf = 138544130;
        v44 = v34;
        v45 = 2112;
        v46 = v35;
        v47 = 2112;
        v48 = v37;
        v49 = 2048;
        v50 = v38;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse response for characteristic %{key:characteristicId}@ with error: %{key:errorDomain}@ %{key:errorCode}ld", buf, 0x2Au);

        v17 = v36;
        v18 = v39;
      }

      v26 = a1[4];
      v27 = a1[5];
      v29 = @"Read response invalid.";
      v28 = v19;
    }

    sub_100059068(v26, v27, 1, v28, v29);
  }
}

void sub_100059EE0(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 72) > 0.0)
  {
    v2 = *(a1 + 32);
    v3 = sub_10007FAA0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = sub_10007FAFC(v2);
      v5 = *(v1 + 72);
      *buf = 138543618;
      v50 = v4;
      v51 = 2048;
      v52 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@Request timeouts are not supported, request may not timeout within %f seconds", buf, 0x16u);
    }
  }

  v31 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(v1 + 40) count]);
  group = dispatch_group_create();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = *(v1 + 40);
  v32 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  v7 = 0;
  if (v32)
  {
    v30 = *v45;
    *&v6 = 138543618;
    v28 = v6;
    do
    {
      for (i = 0; i != v32; i = i + 1)
      {
        v9 = v1;
        if (*v45 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v44 + 1) + 8 * i);
        dispatch_group_enter(group);
        v11 = [v10 writeType] == 1;
        if ([v10 includeResponseValue])
        {
          v12 = 3;
        }

        else
        {
          v12 = 1;
        }

        if ([v10 timedWrite])
        {
          v13 = v12 | 4;
        }

        else
        {
          v13 = v12;
        }

        v14 = sub_10007FAA0();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = sub_10007FAFC(0);
          v16 = [v10 characteristic];
          v17 = [v16 instanceID];
          *buf = v28;
          v50 = v15;
          v51 = 2112;
          v52 = v17;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Sending write for characteristic %{key:characteristicId}@", buf, 0x16u);
        }

        v7 |= v11;

        v1 = v9;
        v18 = *(v9 + 32);
        v19 = [v10 value];
        v20 = [v10 characteristic];
        v21 = [v10 authorizationData];
        v22 = [v10 contextData];
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_10005A36C;
        v41[3] = &unk_100273DD0;
        v41[4] = *(v9 + 32);
        v42 = v31;
        v43 = group;
        [v18 _writeValue:v19 toCharacteristic:v20 authorizationData:v21 contextData:v22 options:v13 completionHandler:v41];
      }

      v32 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v32);
  }

  v23 = [*(v1 + 32) clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005A4E4;
  block[3] = &unk_100273E48;
  v24 = *(v1 + 48);
  v25 = *(v1 + 32);
  v35 = v24;
  v36 = v25;
  v37 = *(v1 + 56);
  v26 = *(v1 + 64);
  v38 = v31;
  v39 = v26;
  v40 = v7 & 1;
  v27 = v31;
  dispatch_group_notify(group, v23, block);
}

void sub_10005A36C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_10007FAFC(v7);
      v10 = [v5 instanceID];
      v11 = [v5 type];
      v13 = 138544130;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Write response for characteristic %@/%@ with error: %@", &v13, 0x2Au);
    }
  }

  v12 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v5 error:v6];
  [*(a1 + 40) addObject:v12];
  dispatch_group_leave(*(a1 + 48));
}

id sub_10005A4E4(uint64_t a1)
{
  [*(a1 + 32) begin];
  v2 = *(a1 + 40);
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(v2);
    *buf = 138543362;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@Completed multiple write requests", buf, 0xCu);
  }

  [*(a1 + 32) markWithReason:@"Calling completion handler"];
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *(a1 + 64);
    if (v6)
    {
      v11 = _NSConcreteStackBlock;
      v12 = 3221225472;
      v13 = sub_10005A700;
      v14 = &unk_100273720;
      v16 = v6;
      v15 = *(a1 + 56);
      dispatch_async(v5, &v11);
    }
  }

  if (*(a1 + 72) == 1)
  {
    [*(a1 + 32) markWithReason:@"Disconnecting"];
    v7 = *(a1 + 40);
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = sub_10007FAFC(v7);
      *buf = 138543362;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@Finished writes for short action, Disconnecting", buf, 0xCu);
    }

    [*(a1 + 40) _suspendConnectionIdleTimer];
    [*(a1 + 40) _handleConnectionIdleTimeout];
  }

  [*(a1 + 32) end];
  return [*(a1 + 32) invalidate];
}

void sub_10005AD68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, char a26)
{
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak(&location);
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_10005ADA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (!v6)
  {
    v17 = *(a1 + 40);
    v18 = v17;
    if ((*(a1 + 64) & 2) != 0)
    {
      v35 = 0;
      v36 = v17;
      v20 = [objc_opt_class() parseWriteResponse:v5 value:&v36 error:&v35];
      v19 = v36;

      v21 = v35;
      v22 = v21;
      if ((v20 & 1) == 0)
      {
        v27 = v8;
        v28 = sub_10007FAA0();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = sub_10007FAFC(v27);
          *buf = 138543618;
          v38 = v29;
          v39 = 2112;
          v40 = v22;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse characteristic write response with error: %@", buf, 0x16u);
        }

        v30 = sub_10007FAA0();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = sub_10007FAFC(0);
          v32 = [*(a1 + 32) instanceID];
          v33 = [v22 domain];
          v34 = [v22 code];
          *buf = 138544130;
          v38 = v31;
          v39 = 2112;
          v40 = v32;
          v41 = 2112;
          v42 = v33;
          v43 = 2048;
          v44 = v34;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse response for characteristic %{key:characteristicId}@ with error: %{key:errorDomain}@ %{key:errorCode}ld", buf, 0x2Au);
        }

        sub_100059068(*(a1 + 32), *(a1 + 48), 2, v22, @"Write response failed.");
        goto LABEL_19;
      }
    }

    else
    {
      v19 = v17;
    }

    [*(a1 + 32) setValue:v19];
    v23 = sub_10007FAA0();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = sub_10007FAFC(0);
      v25 = [*(a1 + 32) instanceID];
      v26 = [v5 statusCode];
      *buf = 138543874;
      v38 = v24;
      v39 = 2112;
      v40 = v25;
      v41 = 2048;
      v42 = v26;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Received response for characteristic %{key:characteristicId}@: status %{key:hapStatusCode}lu", buf, 0x20u);
    }

    sub_100059068(*(a1 + 32), *(a1 + 48), 2, 0, 0);
LABEL_19:

    goto LABEL_20;
  }

  v9 = WeakRetained;
  v10 = sub_10007FAA0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = sub_10007FAFC(v9);
    *buf = 138543618;
    v38 = v11;
    v39 = 2112;
    v40 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to write to characteristic with error: %@", buf, 0x16u);
  }

  v12 = sub_10007FAA0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = sub_10007FAFC(0);
    v14 = [*(a1 + 32) instanceID];
    v15 = [v6 domain];
    v16 = [v6 code];
    *buf = 138544130;
    v38 = v13;
    v39 = 2112;
    v40 = v14;
    v41 = 2112;
    v42 = v15;
    v43 = 2048;
    v44 = v16;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Write failed for characteristic %{key:characteristicId}@ with error: %{key:errorDomain}@ %{key:errorCode}ld", buf, 0x2Au);
  }

  sub_100059068(*(a1 + 32), *(a1 + 48), 2, v6, @"Write request failed.");
LABEL_20:
}

void sub_10005B35C(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) clientQueue];
  dispatch_assert_queue_V2(v6);

  if (v5)
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      (*(v7 + 16))(v7, *(a1 + 40), v5);
    }
  }

  else
  {
    [*(a1 + 32) _performTimedWriteExecuteForCharacteristic:v10 value:*(a1 + 48) options:*(a1 + 64) completionHandler:*(a1 + 56)];
  }

  v8 = [*(a1 + 32) requestOperationQueue];
  v9 = [v8 isSuspended];

  if (v9)
  {
    [*(a1 + 32) _resumeAllOperations];
  }
}

void sub_10005B7E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_10007FAFC(v7);
      v29 = 138543618;
      v30 = v9;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to prepare timed write to characteristic with error: %@", &v29, 0x16u);
    }

    v10 = sub_10007FAA0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_10007FAFC(0);
      v12 = [*(a1 + 40) instanceID];
      v13 = [v6 domain];
      v14 = [v6 code];
      v29 = 138544130;
      v30 = v11;
      v31 = 2112;
      v32 = v12;
      v33 = 2112;
      v34 = v13;
      v35 = 2048;
      v36 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Prepare timed write for characteristic %{key:characteristicId}@, failed with error: %{key:errorDomain}@, %{key:errorCode}ld", &v29, 0x2Au);
    }

    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = @"Prepare timed write request failed.";
    v18 = v6;
    goto LABEL_7;
  }

  if (![v5 statusCode])
  {
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v18 = 0;
    v17 = 0;
LABEL_7:
    sub_100059068(v15, v16, 2, v18, v17);
    goto LABEL_14;
  }

  v19 = *(a1 + 32);
  v20 = sub_10007FAA0();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = sub_10007FAFC(v19);
    v29 = 138543618;
    v30 = v21;
    v31 = 1024;
    LODWORD(v32) = [v5 statusCode];
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@Received response to prepare write with status code: 0x%02x", &v29, 0x12u);
  }

  v22 = sub_10007FAA0();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = sub_10007FAFC(0);
    v24 = [*(a1 + 40) instanceID];
    v25 = [v5 statusCode];
    v29 = 138543874;
    v30 = v23;
    v31 = 2112;
    v32 = v24;
    v33 = 2048;
    v34 = v25;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Prepare timed write for characteristic %{key:characteristicId}@, failed with HAP error: %{key:errorCode}lu", &v29, 0x20u);
  }

  v27 = *(a1 + 40);
  v26 = *(a1 + 48);
  v28 = +[NSError hapErrorWithcode:](NSError, "hapErrorWithcode:", sub_100042CB8([v5 statusCode]));
  sub_100059068(v27, v26, 2, v28, @"Prepare timed write response returned non-zero status code.");

LABEL_14:
}

void sub_10005BE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  __HMFActivityScopeLeave();
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10005BE64(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (v6)
  {
    v9 = WeakRetained;
    v10 = sub_10007FAA0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_10007FAFC(v9);
      *buf = 138543618;
      v44 = v11;
      v45 = 2112;
      v46 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to execute write to characteristic with error: %@", buf, 0x16u);
    }

    v12 = sub_10007FAA0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = sub_10007FAFC(0);
      v14 = [*(a1 + 32) instanceID];
      v15 = [v6 domain];
      v16 = [v6 code];
      *buf = 138544130;
      v44 = v13;
      v45 = 2112;
      v46 = v14;
      v47 = 2112;
      v48 = v15;
      v49 = 2048;
      v50 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Timed write for characteristic %{key:characteristicId}@, failed with error: %{key:errorDomain}@, %{key:errorCode}ld", buf, 0x2Au);
    }

    sub_100059068(*(a1 + 32), *(a1 + 48), 2, v6, @"Execute timed write request failed.");
    goto LABEL_24;
  }

  if (![v5 statusCode])
  {
    v23 = *(a1 + 40);
    v24 = v23;
    if ((*(a1 + 64) & 2) != 0)
    {
      v41 = 0;
      v42 = v23;
      v26 = [objc_opt_class() parseWriteResponse:v5 value:&v42 error:&v41];
      v25 = v42;

      v27 = v41;
      v28 = v27;
      if ((v26 & 1) == 0)
      {
        v33 = v8;
        v34 = sub_10007FAA0();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = sub_10007FAFC(v33);
          *buf = 138543618;
          v44 = v35;
          v45 = 2112;
          v46 = v28;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse characteristic execute response with error: %@", buf, 0x16u);
        }

        v36 = sub_10007FAA0();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = sub_10007FAFC(0);
          v38 = [*(a1 + 32) instanceID];
          v39 = [v28 domain];
          v40 = [v28 code];
          *buf = 138544130;
          v44 = v37;
          v45 = 2112;
          v46 = v38;
          v47 = 2112;
          v48 = v39;
          v49 = 2048;
          v50 = v40;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse response for characteristic %{key:characteristicId}@ with error: %{key:errorDomain}@ %{key:errorCode}ld", buf, 0x2Au);
        }

        sub_100059068(*(a1 + 32), *(a1 + 48), 2, v28, @"Execute timed write response invalid.");
        goto LABEL_23;
      }
    }

    else
    {
      v25 = v23;
    }

    [*(a1 + 32) setValue:v25];
    v29 = sub_10007FAA0();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = sub_10007FAFC(0);
      v31 = [*(a1 + 32) instanceID];
      v32 = [v5 statusCode];
      *buf = 138543874;
      v44 = v30;
      v45 = 2112;
      v46 = v31;
      v47 = 2048;
      v48 = v32;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Received response for characteristic %{key:characteristicId}@: status %{key:hapStatusCode}lu", buf, 0x20u);
    }

    sub_100059068(*(a1 + 32), *(a1 + 48), 2, 0, 0);
LABEL_23:

    goto LABEL_24;
  }

  v17 = sub_10007FAA0();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = sub_10007FAFC(0);
    v19 = [*(a1 + 32) instanceID];
    *buf = 138543874;
    v44 = v18;
    v45 = 2112;
    v46 = v19;
    v47 = 2048;
    v48 = [v5 statusCode];
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Prepare timed write for characteristic %{key:characteristicId}@, failed with HAP error: %{key:errorCode}lu", buf, 0x20u);
  }

  v20 = *(a1 + 32);
  v21 = *(a1 + 48);
  v22 = +[NSError hapErrorWithcode:](NSError, "hapErrorWithcode:", sub_100042CB8([v5 statusCode]));
  sub_100059068(v20, v21, 2, v22, @"Execute response returned non-zero status code.");

LABEL_24:
}

uint64_t sub_10005DBD4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10005DBEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [v5 setEventNotificationsEnabled:(*(a1 + 56) & 1) == 0];
    v7 = [v5 service];
    v8 = [v7 accessory];

    v9 = *(a1 + 32);
    v10 = sub_10007FAA0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_10007FAFC(v9);
      v12 = [v8 instanceID];
      v13 = [v5 instanceID];
      v14 = [v5 type];
      v16 = 138544386;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Enable event response for characteristic %@/%@/%@ with error: %@", &v16, 0x34u);
    }
  }

  v15 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v5 error:v6];
  if (v15)
  {
    [*(a1 + 40) addObject:v15];
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_10005DDC4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005DEBC;
  v8[3] = &unk_100273F60;
  v12 = *(a1 + 72);
  v7 = *(a1 + 32);
  v3 = *(&v7 + 1);
  v11 = *(a1 + 64);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v7 _readCharacteristicValues:v3 queue:v2 completionHandler:v8];
}

void sub_10005DEBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v12 = [v5 countByEnumeratingWithState:&v40 objects:v50 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v41;
      v34 = a1;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v41 != v14)
          {
            objc_enumerationMutation(v5);
          }

          v16 = *(*(&v40 + 1) + 8 * i);
          v17 = [v16 error];

          if (v17)
          {
            v18 = *(a1 + 32);
            v19 = sub_10007FAA0();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              sub_10007FAFC(v18);
              v21 = v20 = v5;
              [v16 characteristic];
              v23 = v22 = v14;
              v24 = [v16 error];
              *buf = 138543874;
              v45 = v21;
              v46 = 2112;
              v47 = v23;
              v48 = 2112;
              v49 = v24;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to read value for characteristic, %@, with error: %@", buf, 0x20u);

              v14 = v22;
              v5 = v20;
              a1 = v34;
            }

            v25 = [v16 error];
            v26 = *(*(a1 + 72) + 8);
            v27 = *(v26 + 40);
            *(v26 + 40) = v25;
          }
        }

        v13 = [v5 countByEnumeratingWithState:&v40 objects:v50 count:16];
      }

      while (v13);
    }

    v28 = *(a1 + 32);
    v29 = sub_10007FAA0();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = sub_10007FAFC(v28);
      v31 = [v5 count];
      *buf = 138543618;
      v45 = v30;
      v46 = 2048;
      v47 = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%{public}@Read values for %lu Characteristics supporting Events", buf, 0x16u);
    }

    v6 = 0;
    if ([*(a1 + 40) count] && objc_msgSend(*(a1 + 32), "_delegateRespondsToSelector:", "accessoryServer:didUpdateValuesForCharacteristics:stateNumber:broadcast:"))
    {
      v32 = [*(a1 + 32) delegateQueue];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_10005E31C;
      v38[3] = &unk_100273370;
      v33 = *(a1 + 40);
      v38[4] = *(a1 + 32);
      v39 = v33;
      dispatch_async(v32, v38);
    }
  }

  v7 = *(a1 + 32);
  v8 = sub_10007FAA0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = sub_10007FAFC(v7);
    *buf = 138543362;
    v45 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@Completed multiple enable event requests", buf, 0xCu);
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    v11 = *(a1 + 48);
    if (v11)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10005E3A8;
      block[3] = &unk_100273720;
      v37 = v10;
      v36 = *(a1 + 56);
      dispatch_async(v11, block);
    }
  }
}

id sub_10005E31C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [v3 stateNumber];
  [v2 accessoryServer:v3 didUpdateValuesForCharacteristics:v4 stateNumber:v5 broadcast:0];

  v6 = *(a1 + 32);

  return [v6 setStateChanged:0];
}

void sub_10005E8C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_10007FAFC(v7);
      *buf = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to enable events on characteristic with error %@", buf, 0x16u);
    }
  }

  else
  {
    [v5 setEventNotificationsEnabled:*(a1 + 56)];
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10005EA6C;
      block[3] = &unk_1002736A8;
      v15 = v10;
      v13 = v5;
      v14 = v6;
      dispatch_async(v11, block);
    }
  }
}

uint64_t sub_10005EBBC(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), a2);
  }

  return result;
}

void sub_10005F094(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 error];

        if (!v11)
        {
          v12 = [v10 characteristic];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  if ([v4 count] && objc_msgSend(*(a1 + 32), "_delegateRespondsToSelector:", "accessoryServer:didUpdateValuesForCharacteristics:stateNumber:broadcast:"))
  {
    v13 = [*(a1 + 32) delegateQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10005F284;
    v14[3] = &unk_100273370;
    v14[4] = *(a1 + 32);
    v15 = v4;
    dispatch_async(v13, v14);
  }
}

void sub_10005F284(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [v3 stateNumber];
  [v5 accessoryServer:v3 didUpdateValuesForCharacteristics:v2 stateNumber:v4 broadcast:0];
}

void sub_10005F894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10005F8C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_loadWeakRetained((a1 + 48));
  v8 = sub_10007FAA0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = sub_10007FAFC(v7);
    v10 = [NSNumber numberWithUnsignedChar:*(a1 + 56)];
    *buf = 138543874;
    v34 = v9;
    v35 = 2112;
    v36 = v10;
    v37 = 2112;
    v38 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@Did configure for broadcast key generation type: %@ with error: %@", buf, 0x20u);
  }

  if (v6)
  {
    if (*(a1 + 40))
    {
      v11 = [NSString stringWithFormat:@"Failed to configure for broadcast key"];
      v12 = @"Protocol config request failed.";
      v13 = v11;
      v14 = v6;
LABEL_11:
      v19 = [NSError hapErrorWithcode:1 description:v13 reason:v12 suggestion:0 underlyingError:v14];

      (*(*(a1 + 40) + 16))(0.0);
LABEL_20:
    }
  }

  else
  {
    if (![v5 statusCode])
    {
      v31 = 0;
      v32 = 0;
      v30 = 0;
      v20 = [objc_opt_class() parseProtocolConfigurationResponse:v5 key:&v32 stateNumber:&v31 error:&v30];
      v21 = v32;
      v22 = v31;
      v19 = v30;
      if (v20)
      {
        v23 = *(a1 + 40);
        if (v23)
        {
          Current = CFAbsoluteTimeGetCurrent();
          (*(v23 + 16))(v23, v21, v22, 1, 0, Current);
        }
      }

      else
      {
        v25 = v7;
        v26 = sub_10007FAA0();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = sub_10007FAFC(v25);
          *buf = 138543618;
          v34 = v27;
          v35 = 2112;
          v36 = v19;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse protocol configuration response with error: %@", buf, 0x16u);
        }

        if (*(a1 + 40))
        {
          v28 = [NSString stringWithFormat:@"Failed to configure service %@.", *(a1 + 32)];
          v29 = [NSError hapErrorWithcode:12 description:v28 reason:@"Protocol config response was invalid." suggestion:0 underlyingError:v19];

          (*(*(a1 + 40) + 16))(0.0);
        }
      }

      goto LABEL_20;
    }

    v15 = v7;
    v16 = sub_10007FAA0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = sub_10007FAFC(v15);
      v18 = [v5 statusCode];
      *buf = 138543618;
      v34 = v17;
      v35 = 1024;
      LODWORD(v36) = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@Protocol Config failed with status: %d", buf, 0x12u);
    }

    if (*(a1 + 40))
    {
      v11 = [NSString stringWithFormat:@"Protocol Config failed"];
      v12 = @"Response with failure status code";
      v13 = v11;
      v14 = 0;
      goto LABEL_11;
    }
  }
}

void sub_10005FFE4(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000600D4;
  v5[3] = &unk_100274028;
  objc_copyWeak(&v7, &location);
  v6 = *(a1 + 56);
  [v2 _configureCharacteristics:v3 queue:v4 withCompletionHandler:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void sub_1000600B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000600D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v19 = a1;
  v20 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v12 error];

        if (!v13)
        {
          v14 = WeakRetained;
          v15 = sub_10007FAA0();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = sub_10007FAFC(v14);
            v17 = [v12 characteristic];
            *buf = 138543618;
            v26 = v16;
            v27 = 2112;
            v28 = v17;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%{public}@Configured characteristic %@", buf, 0x16u);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v9);
  }

  v18 = *(v19 + 32);
  if (v18)
  {
    (*(v18 + 16))(v18, v7, v20);
  }
}

void sub_1000606A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_10007FAFC(v7);
      v10 = [v5 instanceID];
      v11 = [v5 type];
      v13 = 138544130;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Enable event response for characteristic %@/%@ with error: %@", &v13, 0x2Au);
    }
  }

  v12 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v5 error:v6];
  [*(a1 + 40) addObject:v12];
  dispatch_group_leave(*(a1 + 48));
}

void sub_10006081C(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 56));
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(v2);
    *buf = 138543362;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@Completed multiple broadcast enable requests", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10006097C;
      v7[3] = &unk_100273720;
      v9 = v6;
      v8 = *(a1 + 40);
      dispatch_async(v5, v7);
    }
  }
}

void sub_100060CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100060CF8(void **a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = WeakRetained;
  if (v6)
  {
    v9 = WeakRetained;
    v10 = sub_10007FAA0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_10007FAFC(v9);
      *buf = 138543618;
      v28 = v11;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to configure characteristic with error: %@", buf, 0x16u);
    }

    sub_100059068(a1[4], a1[5], 3, v6, @"Configure Characteristic request failed.");
  }

  else if ([v5 statusCode])
  {
    v12 = v8;
    v13 = sub_10007FAA0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = sub_10007FAFC(v12);
      *buf = 138543618;
      v28 = v14;
      v29 = 1024;
      LODWORD(v30) = [v5 statusCode];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@Configure characteristic failed with status: %d", buf, 0x12u);
    }

    v16 = a1[4];
    v15 = a1[5];
    v17 = +[NSError hapErrorWithcode:](NSError, "hapErrorWithcode:", sub_100042CB8([v5 statusCode]));
    sub_100059068(v16, v15, 3, v17, @"Response with failure status code");
  }

  else
  {
    v26 = 0;
    v18 = [objc_opt_class() parseCharacteristicConfigurationResponse:v5 error:&v26];
    v19 = v26;
    if (v18)
    {
      sub_100059068(a1[4], a1[5], 3, 0, 0);
    }

    else
    {
      v20 = v8;
      v21 = sub_10007FAA0();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = sub_10007FAFC(v20);
        *buf = 138543618;
        v28 = v22;
        v29 = 2112;
        v30 = v19;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse characteristic configuration response with error: %@", buf, 0x16u);
      }

      v24 = a1[4];
      v23 = a1[5];
      v25 = [NSError hapErrorWithcode:12];
      sub_100059068(v24, v23, 3, v25, @"Configure characteristic response invalid.");
    }
  }
}

void sub_100061154(uint64_t a1)
{
  [*(a1 + 32) setPairingActivity:*(a1 + 40)];
  [*(a1 + 32) setPairingRequest:*(a1 + 48)];
  if ([*(a1 + 32) isPaired])
  {
    v2 = @"Pairing not supported on paired accessory.";
    v3 = [NSError hapErrorWithcode:18 description:@"Pairing not supported on paired accessory." reason:0 suggestion:0 underlyingError:0];
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  if ([*(a1 + 32) isPairing])
  {
    v2 = @"An existing pairing session is already in progress.";
    v4 = [NSError hapErrorWithcode:4 description:@"An existing pairing session is already in progress." reason:0 suggestion:0 underlyingError:0];

    v3 = v4;
  }

  v5 = *(a1 + 32);
  v6 = sub_10007FAA0();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_10007FAFC(v5);
      *buf = 138543618;
      v17 = v8;
      v18 = 2112;
      v19 = v2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@%@", buf, 0x16u);
    }

    [*(a1 + 32) _notifyDelegatesPairingStopped:v3];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = sub_10007FAFC(v5);
      *buf = 138543362;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@Starting Pair Setup", buf, 0xCu);
    }

    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1000613E4;
    v13 = &unk_100273370;
    v14 = *(a1 + 32);
    v15 = *(a1 + 48);
    sub_1000613E4(&v10);
    [*(a1 + 32) setPairingDisconnectionError:{0, v10, v11}];
    [*(a1 + 32) setPairing:1];
    [*(a1 + 32) _checkForAuthPrompt:{objc_msgSend(*(a1 + 48), "requiresUserConsent")}];
  }
}

void sub_1000613E4(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = sub_10007FAA0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_10007FAFC(0);
      [*(a1 + 40) requiresUserConsent];
      v5 = HMFBooleanToString();
      v6 = 138543874;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      v10 = 2048;
      v11 = 2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@Start pairing with BTLE accessory that needsConsent: %{key:needsConsent}@, protocolVersion: %{key:protocolVersion}ld", &v6, 0x20u);
    }
  }
}

void sub_100061568(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isPairing])
  {
    v4 = *(a1 + 32);
    v5 = sub_10007FAA0();
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = sub_10007FAFC(v4);
        *buf = 138543618;
        v19 = v7;
        v20 = 2112;
        v21 = v3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@Pairing failed, failed to discover the accessory with error: %@", buf, 0x16u);
      }

      v8 = [NSError hapErrorWithcode:2 description:@"Pairing Failed." reason:@"Failed to discovery the accessory." suggestion:0 underlyingError:v3];
      [*(a1 + 32) _pairingCompletedWithError:v8];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v12 = sub_10007FAFC(v4);
        v13 = *(a1 + 40);
        v14 = HMFBooleanToString();
        *buf = 138543618;
        v19 = v12;
        v20 = 2112;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Determining if MFi Pair Setup is supported, consentRequired: %@", buf, 0x16u);
      }

      v15 = *(a1 + 32);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000617FC;
      v16[3] = &unk_1002740A0;
      v16[4] = v15;
      v17 = *(a1 + 40);
      [v15 _getPairingFeaturesWithCompletionHandler:v16];
    }
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = sub_10007FAA0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = sub_10007FAFC(v9);
      *buf = 138543362;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@No active pairing session, bailing!", buf, 0xCu);
    }
  }
}

void sub_1000617FC(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = sub_10007FAA0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sub_10007FAFC(v6);
      *buf = 138543618;
      v44 = v8;
      v45 = 2112;
      v46 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@Pairing failed, failed to get the pairing features with error: %@", buf, 0x16u);
    }

    v9 = @"Failed to get the pairing features.";
    v10 = 2;
    v11 = v5;
    goto LABEL_5;
  }

  if (a2 != 5 && a2)
  {
    v25 = *(a1 + 32);
    if (a2 != 1 || (*(a1 + 40) & 1) == 0)
    {
      [v25 continuePairingAfterAuthPrompt];
      goto LABEL_6;
    }

    if ([v25 _delegateRespondsToSelector:"accessoryServer:requestUserPermission:accessoryInfo:error:"])
    {
      v26 = [HAPAccessoryInfo alloc];
      v27 = [*(a1 + 32) name];
      v28 = [*(a1 + 32) category];
      v29 = [(HAPAccessoryInfo *)v26 initWithName:v27 manufacturer:0 modelName:0 category:v28 certificationStatus:0 denylisted:0 ppid:0];

      v30 = [*(a1 + 32) delegateQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100061DC0;
      block[3] = &unk_100273370;
      block[4] = *(a1 + 32);
      v39 = v29;
      v31 = v29;
      dispatch_async(v30, block);

      v32 = v39;
LABEL_27:

      goto LABEL_6;
    }

    v22 = *(a1 + 32);
    v23 = sub_10007FAA0();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = sub_10007FAFC(v22);
      *buf = 138543362;
      v44 = v24;
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = sub_10007FAA0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = sub_10007FAFC(v13);
      v16 = sub_10001F978(a2);
      *buf = 138543618;
      v44 = v15;
      v45 = 2112;
      v46 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%{public}@Incompatible auth %@, prompting user", buf, 0x16u);
    }

    if ([*(a1 + 32) _delegateRespondsToSelector:"accessoryServer:requestUserPermission:accessoryInfo:error:"])
    {
      v17 = [HAPAccessoryInfo alloc];
      v18 = [*(a1 + 32) name];
      v19 = [*(a1 + 32) category];
      v20 = [(HAPAccessoryInfo *)v17 initWithName:v18 manufacturer:0 modelName:0 category:v19 certificationStatus:0 denylisted:0 ppid:0];

      if (a2)
      {
        v21 = 4;
      }

      else
      {
        v33 = *(a1 + 32);
        v34 = sub_10007FAA0();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = sub_10007FAFC(v33);
          *buf = 138543362;
          v44 = v35;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%{public}@The accessory does not support pair setup auth, prompting for user permission to pair the accessory", buf, 0xCu);
        }

        v21 = 0;
      }

      [*(a1 + 32) setWaitingForAuth:1];
      v36 = [*(a1 + 32) delegateQueue];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100061D64;
      v40[3] = &unk_100274078;
      v37 = *(a1 + 32);
      v41 = v20;
      v42 = v21;
      v40[4] = v37;
      v31 = v20;
      dispatch_async(v36, v40);

      v32 = v41;
      goto LABEL_27;
    }

    v22 = *(a1 + 32);
    v23 = sub_10007FAA0();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = sub_10007FAFC(v22);
      *buf = 138543362;
      v44 = v24;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@Pairing failed, the pairing requires additional authentication and the delegate does not support additional authentication requests", buf, 0xCu);
    }
  }

  v9 = @"The delegate is missing.";
  v10 = 9;
  v11 = 0;
LABEL_5:
  v12 = [NSError hapErrorWithcode:v10 description:@"Pairing Failed." reason:v9 suggestion:0 underlyingError:v11];
  [*(a1 + 32) _pairingCompletedWithError:v12];

LABEL_6:
}

void sub_100061D64(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) requestUserPermission:*(a1 + 48) accessoryInfo:*(a1 + 40) error:0];
}

void sub_100061DC0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) requestUserPermission:3 accessoryInfo:*(a1 + 40) error:0];
}

void sub_1000620B0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:NSUnderlyingErrorKey];

  if (!v7)
  {
    v7 = v5;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000621BC;
  v10[3] = &unk_100274078;
  v10[4] = *(a1 + 32);
  v12 = a2;
  v8 = v7;
  v11 = v8;
  sub_1000621BC(v10);
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }
}

void sub_1000621BC(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = sub_10007FAA0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_10007FAFC(0);
      v5 = sub_10001F978(*(a1 + 48));
      v6 = [*(a1 + 40) domain];
      v7 = [*(a1 + 40) code];
      v8 = 138544130;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      v14 = 2048;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@Received pairing features of BTLE accessory with authMethod: %{key:authMethod}@,                                              error: %{key:errorDomain}@ %{key:errorCode}ld", &v8, 0x2Au);
    }
  }
}

void sub_1000622F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = sub_10007FAA0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = sub_10007FAFC(v5);
      *buf = 138543362;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@Pairing failed, failed to read the Pairing Features characteristic", buf, 0xCu);
    }

    v8 = [NSError hapErrorWithcode:1 description:@"Pairing Failed." reason:@"Failed to read the Pairing Features characteristic" suggestion:0 underlyingError:v4];
    v9 = *(*(a1 + 48) + 16);
  }

  else
  {
    v10 = 0;
    *buf = 0;
    [*(a1 + 32) _parsePairingFeaturesCharacteristic:*(a1 + 40) authMethod:buf error:&v10];
    v8 = v10;
    v9 = *(*(a1 + 48) + 16);
  }

  v9();
}

id sub_100062688(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000626F8;
  v3[3] = &unk_1002739F0;
  v3[4] = v1;
  return [v1 connectWithCompletionHandler:v3];
}

void sub_1000626F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = v4;
    v6 = sub_10007FAA0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = sub_10007FAFC(v5);
      *buf = 138543618;
      v18 = v7;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@Pairing failed, failed to connect to the accessory with error: %@", buf, 0x16u);
    }

    v8 = [NSError hapErrorWithcode:2 description:@"Failed to connect to accessory." reason:0 suggestion:0 underlyingError:v3];
    [*(a1 + 32) _pairingCompletedWithError:v8];
  }

  else
  {
    [v4 setWaitingForAuth:0];
    v9 = *(a1 + 32);
    v10 = sub_10007FAA0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = sub_10007FAFC(v9);
      v12 = sub_10001F978([*(a1 + 32) authMethod]);
      *buf = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@Starting the Pair Setup session with authMethods: %@", buf, 0x16u);
    }

    [*(a1 + 32) setBadPairSetupCode:0];
    v13 = [*(a1 + 32) _getPairSetupType];
    v14 = [*(a1 + 32) browser];
    v8 = [v14 pairSetupSession:*(a1 + 32) pairSetupType:v13 enhancedEncryption:{objc_msgSend(*(a1 + 32), "enhancedEncryption")}];

    v15 = [*(a1 + 32) browser];
    [v15 pauseScans];

    [*(a1 + 32) setPairSetupSession:v8];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000629A0;
    v16[3] = &unk_100273348;
    v16[4] = *(a1 + 32);
    sub_1000629A0(v16);
    [v8 start];
  }
}

void sub_1000629A0(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = sub_10007FAA0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_10007FAFC(0);
      v5 = [*(a1 + 32) _getPairSetupType];
      v6 = 138543618;
      v7 = v4;
      v8 = 2048;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@Starting pair setup session with BTLE accessory pairSetupType: %{key:pairSetupType}ld", &v6, 0x16u);
    }
  }
}

void sub_100062B1C(uint64_t a1)
{
  [*(a1 + 32) setWaitingForAuth:0];
  if ([*(a1 + 32) isPairing])
  {
    v12 = [NSError hapErrorWithcode:2 description:@"Pairing cancelled." reason:0 suggestion:0 underlyingError:0];
    v2 = [*(a1 + 32) pairSetupSession];

    v3 = *(a1 + 32);
    if (v2)
    {
      v4 = [v3 pairSetupSession];
      [v4 stopWithError:v12];
    }

    else
    {
      [v3 _pairingCompletedWithError:v12];
    }
  }

  else if (![*(a1 + 32) pendingRemovePairing])
  {
    if ([*(a1 + 32) isPaired])
    {
      goto LABEL_12;
    }

    v5 = [*(a1 + 32) keyStore];
    v6 = [*(a1 + 32) identifier];
    v7 = [v5 readControllerPairingKeyForAccessory:v6 error:0];

    if (v7)
    {
LABEL_12:
      [*(a1 + 32) setPendingRemovePairing:1];
      v8 = [*(a1 + 32) discoveryContext];
      if (!v8 || (v9 = v8, v10 = [*(a1 + 32) isSecuritySessionOpen], v9, v10))
      {
        v11 = *(a1 + 32);

        [v11 _removePairingOfAccessoryServerCancelledMidPairing];
      }
    }
  }
}

void sub_100062F04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100088B40(*(a1 + 32));
  v5 = [v3 userInfo];
  v6 = [v5 objectForKeyedSubscript:NSUnderlyingErrorKey];

  if (!v6)
  {
    v6 = v3;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100063014;
  v9[3] = &unk_100273748;
  v9[4] = *(a1 + 40);
  v10 = v4;
  v11 = v6;
  v7 = v6;
  v8 = v4;
  sub_100063014(v9);
}

void sub_100063014(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = sub_10007FAA0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_10007FAFC(0);
      v5 = *(a1 + 40);
      v6 = [*(a1 + 48) domain];
      v7 = [*(a1 + 48) code];
      v8 = 138544130;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      v14 = 2048;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@Pair Setup operation failed for accessory in state: %{key:pairingState}@                                              with error: %{key:errorDomain}@ %{key:errorCode}ld", &v8, 0x2Au);
    }
  }
}

void sub_100063134(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 value];
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_10007FAFC(v7);
      v15 = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to send Pair Setup exchange data with error: %@", &v15, 0x16u);
    }

    v10 = v5;
LABEL_5:
    (*(*(a1 + 48) + 16))();
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = 0;
    goto LABEL_11;
  }

  v11 = *(a1 + 32);
  v12 = sub_10007FAA0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = sub_10007FAFC(v11);
    v15 = 138543618;
    v16 = v13;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@The Pair Setup exchange response value, %@, is invalid", &v15, 0x16u);
  }

  v10 = [NSError hapErrorWithcode:12 description:@"Pairing Failed." reason:@"Invalid Pair Setup exchange response." suggestion:0 underlyingError:0];
  if (v10)
  {
    goto LABEL_5;
  }

LABEL_11:
  v14 = [*(a1 + 32) pairSetupSession];
  [v14 receivedSetupExchangeData:v6 error:v10];

  [*(a1 + 40) setValue:0];
}

void sub_1000635B8(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  [v2 pairSetupBackoffTimeInterval];
  [v4 accessoryServer:v2 didReceiveBadPasswordThrottleAttemptsWithDelay:v3];
}

void sub_100063620(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) promptUserForPasswordWithType:1];
}

void sub_100063730(uint64_t a1)
{
  v4 = [*(a1 + 32) setupCodeCompletionHandler];
  if (v4)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = 0;
    }

    else
    {
      v3 = [NSError hapErrorWithcode:9 description:@"Invalid setup code." reason:@"The setup code is nil" suggestion:0 underlyingError:0];
      v2 = *(a1 + 40);
    }

    v4[2](v4, v2, v3);
    [*(a1 + 32) setSetupCodeCompletionHandler:0];
  }

  [*(a1 + 32) _resumeConnectionIdleTimer];
}

void sub_100063B3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:*(a1 + 32)];
  v6 = v5;

  v7 = v3;
  v8 = [v7 userInfo];
  v9 = [v8 objectForKeyedSubscript:NSUnderlyingErrorKey];

  v10 = v7;
  if (v9)
  {
    v11 = [v7 userInfo];
    v10 = [v11 objectForKeyedSubscript:NSUnderlyingErrorKey];
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100063CC0;
  v15[3] = &unk_100274078;
  v15[4] = *(a1 + 40);
  v17 = v6;
  v12 = v10;
  v16 = v12;
  sub_100063CC0(v15);
  v13 = *(a1 + 40);
  if (v7)
  {
    v14 = [v13 authSession];
    [v13 authSession:v14 authComplete:v7];
  }

  else
  {
    [v13 authenticateAccessory];
  }
}

void sub_100063CC0(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = sub_10007FAA0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_10007FAFC(0);
      v5 = [NSNumber numberWithDouble:*(a1 + 48)];
      v6 = [*(a1 + 40) domain];
      v7 = [*(a1 + 40) code];
      v8 = 138544130;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      v14 = 2048;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@Received accessory info for accessory with duration: %{key:duration}@,                                                  error: %{key:errorDomain}@ %{key:errorCode}ld", &v8, 0x2Au);
    }
  }
}

void sub_100063DFC(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [v3 authenticatedProtocolInfo];
  v5 = [v4 modelName];
  [v6 accessoryServer:v3 validateCert:v2 model:v5];
}

void sub_10006422C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v22 = 0;
  v3 = [HAPPairingUtilities createAddPairingRequestForPairingIdentity:v2 error:&v22];
  v4 = v22;
  if (v3)
  {
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_1000644DC;
    v15 = &unk_100274168;
    v5 = *(a1 + 48);
    v16 = *(a1 + 40);
    v17 = v5;
    v18 = *(a1 + 56);
    v6 = objc_retainBlock(&v12);
    [*(a1 + 40) _sendPairingRequestData:v3 completionHandler:{v6, v12, v13, v14, v15, v16}];

    v7 = v17;
LABEL_3:

    goto LABEL_4;
  }

  v8 = *(a1 + 40);
  v9 = sub_10007FAA0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = sub_10007FAFC(v8);
    *buf = 138543618;
    v24 = v10;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to create add pairing request payload with error: %@", buf, 0x16u);
  }

  v11 = *(a1 + 48);
  if (v11 && *(a1 + 56))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006445C;
    block[3] = &unk_100273268;
    v20 = v4;
    v21 = *(a1 + 56);
    dispatch_async(v11, block);

    v7 = v20;
    goto LABEL_3;
  }

LABEL_4:
}

void sub_10006445C(uint64_t a1)
{
  v2 = [NSError hapErrorWithcode:12 description:@"Add pairing failed." reason:@"Failed to create add pairing request payload." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void sub_1000644DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v25 = 0;
    v12 = [HAPPairingUtilities parseAddPairingResponse:v5 error:&v25];
    v11 = v25;
    if (v12)
    {
      v13 = *(a1 + 40);
      if (!v13)
      {
        goto LABEL_17;
      }

      v14 = *(a1 + 48);
      if (!v14)
      {
        goto LABEL_17;
      }

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100064920;
      v20[3] = &unk_100273660;
      v15 = &v21;
      v21 = v14;
      dispatch_async(v13, v20);
    }

    else
    {
      v16 = *(a1 + 32);
      v17 = sub_10007FAA0();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = sub_10007FAFC(v16);
        *buf = 138543618;
        v30 = v18;
        v31 = 2112;
        v32 = v11;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to add pairing, peer responded with error: %@", buf, 0x16u);
      }

      v19 = *(a1 + 40);
      if (!v19 || !*(a1 + 48))
      {
        goto LABEL_17;
      }

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000648A0;
      v22[3] = &unk_100273268;
      v15 = &v23;
      v23 = v11;
      v24 = *(a1 + 48);
      dispatch_async(v19, v22);
    }

LABEL_17:
    goto LABEL_18;
  }

  v7 = *(a1 + 32);
  v8 = sub_10007FAA0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = sub_10007FAFC(v7);
    *buf = 138543618;
    v30 = v9;
    v31 = 2112;
    v32 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to add pairing with error: %@", buf, 0x16u);
  }

  v10 = *(a1 + 40);
  if (v10 && *(a1 + 48))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100064820;
    block[3] = &unk_100273268;
    v27 = v6;
    v28 = *(a1 + 48);
    dispatch_async(v10, block);

    v11 = v27;
    goto LABEL_17;
  }

LABEL_18:
}

void sub_100064820(uint64_t a1)
{
  v2 = [NSError hapErrorWithcode:12 description:@"Add pairing failed." reason:@"Add pairing write failed." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void sub_1000648A0(uint64_t a1)
{
  v2 = [NSError hapErrorWithcode:12 description:@"Add pairing failed." reason:@"The peer failed to add the pairing." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void sub_100064A34(uint64_t a1)
{
  v2 = [*(a1 + 32) accessoryCache];
  v3 = [v2 peripheralInfo];
  [v3 resetBroadcastKeyConfig];

  v4 = *(a1 + 40);
  v23 = 0;
  v5 = [HAPPairingUtilities createRemovePairingRequestForPairingIdentity:v4 error:&v23];
  v6 = v23;
  if (v5)
  {
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100064D10;
    v16 = &unk_100274168;
    v17 = *(a1 + 32);
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v7 = objc_retainBlock(&v13);
    [*(a1 + 32) _sendPairingRequestData:v5 completionHandler:{v7, v13, v14, v15, v16, v17}];

    v8 = v18;
LABEL_3:

    goto LABEL_4;
  }

  v9 = *(a1 + 32);
  v10 = sub_10007FAA0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = sub_10007FAFC(v9);
    *buf = 138543618;
    v25 = v11;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to create remove pairing request payload with error: %@", buf, 0x16u);
  }

  v12 = *(a1 + 48);
  if (v12 && *(a1 + 56))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100064C90;
    block[3] = &unk_100273268;
    v21 = v6;
    v22 = *(a1 + 56);
    dispatch_async(v12, block);

    v8 = v21;
    goto LABEL_3;
  }

LABEL_4:
}

void sub_100064C90(uint64_t a1)
{
  v2 = [NSError hapErrorWithcode:12 description:@"Remove pairing failed." reason:@"Failed to create remove pairing request payload." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void sub_100064D10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v25 = 0;
    v12 = [HAPPairingUtilities parseRemovePairingResponse:v5 error:&v25];
    v11 = v25;
    if (v12)
    {
      v13 = *(a1 + 40);
      if (!v13)
      {
        goto LABEL_17;
      }

      v14 = *(a1 + 48);
      if (!v14)
      {
        goto LABEL_17;
      }

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100065154;
      v20[3] = &unk_100273660;
      v15 = &v21;
      v21 = v14;
      dispatch_async(v13, v20);
    }

    else
    {
      v16 = *(a1 + 32);
      v17 = sub_10007FAA0();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = sub_10007FAFC(v16);
        *buf = 138543618;
        v30 = v18;
        v31 = 2112;
        v32 = v11;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove pairing, peer responded with error: %@", buf, 0x16u);
      }

      v19 = *(a1 + 40);
      if (!v19 || !*(a1 + 48))
      {
        goto LABEL_17;
      }

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000650D4;
      v22[3] = &unk_100273268;
      v15 = &v23;
      v23 = v11;
      v24 = *(a1 + 48);
      dispatch_async(v19, v22);
    }

LABEL_17:
    goto LABEL_18;
  }

  v7 = *(a1 + 32);
  v8 = sub_10007FAA0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = sub_10007FAFC(v7);
    *buf = 138543618;
    v30 = v9;
    v31 = 2112;
    v32 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove pairing with error: %@", buf, 0x16u);
  }

  v10 = *(a1 + 40);
  if (v10 && *(a1 + 48))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100065054;
    block[3] = &unk_100273268;
    v27 = v6;
    v28 = *(a1 + 48);
    dispatch_async(v10, block);

    v11 = v27;
    goto LABEL_17;
  }

LABEL_18:
}

void sub_100065054(uint64_t a1)
{
  v2 = [NSError hapErrorWithcode:12 description:@"Remove pairing failed." reason:@"Remove pairing write failed." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void sub_1000650D4(uint64_t a1)
{
  v2 = [NSError hapErrorWithcode:12 description:@"Remove pairing failed." reason:@"The peer failed to remove the pairing." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void sub_10006549C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1000654EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = sub_10007FAA0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = sub_10007FAFC(v4);
    *buf = 138543618;
    v38 = v6;
    v39 = 2112;
    v40 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%{public}@Request to remove current controller completed with error %@", buf, 0x16u);
  }

  v7 = v3;
  v8 = [v4 browser];
  v9 = [v4 identifier];
  [v8 deRegisterAccessoryWithIdentifier:v9];

  v10 = [v4 keyStore];
  v11 = [v4 identifier];
  v36 = 0;
  v12 = [v10 removeAccessoryKeyForName:v11 error:&v36];
  v13 = v36;

  if ((v12 & 1) == 0)
  {
    v14 = v4;
    v15 = sub_10007FAA0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = sub_10007FAFC(v14);
      *buf = 138543618;
      v38 = v16;
      v39 = 2112;
      v40 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%{public}@Failed to remove the current controller keychain entry with error: %@", buf, 0x16u);
    }
  }

  v17 = [v4 keyStore];
  v18 = [v4 identifier];
  v35 = v13;
  v19 = [v17 deletePeripheralIdentifierForAccessoryIdentifier:v18 error:&v35];
  v20 = v35;

  if ((v19 & 1) == 0)
  {
    v21 = v4;
    v22 = sub_10007FAA0();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = sub_10007FAFC(v21);
      v24 = [v21 identifier];
      *buf = 138543874;
      v38 = v23;
      v39 = 2112;
      v40 = v24;
      v41 = 2112;
      v42 = v20;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%{public}@Failed to remove the peripheral keychain entry for %@ with error: %@", buf, 0x20u);
    }
  }

  v25 = *(a1 + 32);
  if (v25)
  {
    v26 = *(a1 + 40);
    if (v26)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000658E0;
      block[3] = &unk_100273660;
      v34 = v26;
      dispatch_async(v25, block);

      v25 = *(a1 + 32);
    }
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000658F4;
  v29[3] = &unk_100274190;
  v30 = v25;
  v27 = *(a1 + 48);
  v31 = v7;
  v32 = v27;
  v28 = v7;
  [v4 disconnectWithCompletionHandler:v29];
}

void sub_1000658F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_1000659A0;
      v4[3] = &unk_100273720;
      v6 = v3;
      v5 = *(a1 + 40);
      dispatch_async(v1, v4);
    }
  }
}

void sub_100065A8C(id *a1)
{
  v21 = 0;
  v2 = [HAPPairingUtilities createListPairingsRequest:&v21];
  v3 = v21;
  if (v2)
  {
    v4 = a1 + 4;
    objc_initWeak(location, a1[4]);
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100065D1C;
    v14 = &unk_1002741E0;
    objc_copyWeak(&v17, location);
    v15 = a1[5];
    v16 = a1[6];
    v5 = objc_retainBlock(&v11);
    [*v4 _sendPairingRequestData:v2 completionHandler:{v5, v11, v12, v13, v14}];

    objc_destroyWeak(&v17);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = a1[4];
    v7 = sub_10007FAA0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sub_10007FAFC(v6);
      *location = 138543618;
      *&location[4] = v8;
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to create list pairings request payload with error: %@", location, 0x16u);
    }

    v9 = a1[5];
    if (v9)
    {
      v10 = a1[6];
      if (v10)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100065D04;
        block[3] = &unk_100273720;
        v20 = v10;
        v19 = v3;
        dispatch_async(v9, block);
      }
    }
  }
}

void sub_100065CE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_100065D1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (!v6)
  {
    v24 = 0;
    v14 = [HAPPairingUtilities parseListPairingsResponse:v5 error:&v24];
    v13 = v24;
    if (!v14)
    {
      v15 = v8;
      v16 = sub_10007FAA0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = sub_10007FAFC(v15);
        *buf = 138543618;
        v29 = v17;
        v30 = 2112;
        v31 = v13;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to list pairings, peer responded with error: %@", buf, 0x16u);
      }
    }

    v18 = *(a1 + 32);
    if (v18)
    {
      v19 = *(a1 + 40);
      if (v19)
      {
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100066088;
        v20[3] = &unk_1002736A8;
        v23 = v19;
        v21 = v14;
        v22 = v13;
        dispatch_async(v18, v20);
      }
    }

    goto LABEL_15;
  }

  v9 = WeakRetained;
  v10 = sub_10007FAA0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = sub_10007FAFC(v9);
    *buf = 138543618;
    v29 = v11;
    v30 = 2112;
    v31 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get pairings with error: %@", buf, 0x16u);
  }

  v12 = *(a1 + 32);
  if (v12 && *(a1 + 40))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100066004;
    block[3] = &unk_100273268;
    v26 = v6;
    v27 = *(a1 + 40);
    dispatch_async(v12, block);

    v13 = v26;
LABEL_15:
  }
}

void sub_100066004(uint64_t a1)
{
  v2 = [NSError hapErrorWithcode:12 description:@"List pairings failed." reason:@"List pairings write failed." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void sub_1000662A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000662CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (!v6)
  {
    v12 = [v5 value];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = v8;
      v16 = sub_10007FAA0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = sub_10007FAFC(v15);
        v19 = 138543362;
        v20 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@Pairing operation failed, the response value is invalid", &v19, 0xCu);
      }

      if (*(a1 + 32))
      {
        v18 = [NSError hapErrorWithcode:12 description:@"Pairing operation failed." reason:@"Pairing response is invalid." suggestion:0 underlyingError:0];
        (*(*(a1 + 32) + 16))();
      }

      goto LABEL_10;
    }

    v14 = *(a1 + 32);
    if (!v14)
    {
LABEL_10:

      goto LABEL_11;
    }

    v13 = *(v14 + 16);
LABEL_9:
    v13();
    goto LABEL_10;
  }

  v9 = WeakRetained;
  v10 = sub_10007FAA0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = sub_10007FAFC(v9);
    v19 = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to write pairing request data with error: %@", &v19, 0x16u);
  }

  if (*(a1 + 32))
  {
    v12 = [NSError hapErrorWithcode:12 description:@"Pairing operation failed." reason:@"Pairing write failed." suggestion:0 underlyingError:v6];
    v13 = *(*(a1 + 32) + 16);
    goto LABEL_9;
  }

LABEL_11:
}

void sub_1000666F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100066714(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!v3)
  {
    v10 = [WeakRetained identifyCharacteristic];
    if (v10)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100066B50;
      v18[3] = &unk_100274230;
      v11 = &v19;
      v12 = *(a1 + 32);
      v18[4] = v5;
      v19 = v12;
      v13 = objc_retainBlock(v18);
      [v5 _writeValue:&__kCFBooleanTrue toCharacteristic:v10 authorizationData:0 contextData:0 options:0 completionHandler:v13];
    }

    else
    {
      v14 = v5;
      v15 = sub_10007FAA0();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = sub_10007FAFC(v14);
        *buf = 138543362;
        v26 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@Identify failed, missing the Identify characteristic", buf, 0xCu);
      }

      if (!*(a1 + 32))
      {
        goto LABEL_13;
      }

      v17 = [v14 clientQueue];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100066AD0;
      v20[3] = &unk_100273660;
      v11 = &v21;
      v21 = *(a1 + 32);
      dispatch_async(v17, v20);
    }

LABEL_13:
    goto LABEL_14;
  }

  v6 = WeakRetained;
  v7 = sub_10007FAA0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = sub_10007FAFC(v6);
    *buf = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@Cancelling operation, identity discovery failed with error: %@", buf, 0x16u);
  }

  if (*(a1 + 32))
  {
    v9 = [v6 clientQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100066A50;
    block[3] = &unk_100273268;
    v23 = v3;
    v24 = *(a1 + 32);
    dispatch_async(v9, block);

    v10 = v23;
    goto LABEL_13;
  }

LABEL_14:
}

void sub_100066A50(uint64_t a1)
{
  v2 = [NSError hapErrorWithcode:2 description:@"Identify failed." reason:@"Discovery of the Identify characteristic failed." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void sub_100066AD0(uint64_t a1)
{
  v2 = [NSError hapErrorWithcode:9 description:@"Identify failed." reason:@"Missing Identify characteristic." suggestion:0 underlyingError:0];
  (*(*(a1 + 32) + 16))();
}

void sub_100066B50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (*(a1 + 40))
  {
    v5 = [*(a1 + 32) clientQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100066C1C;
    v6[3] = &unk_100273720;
    v8 = *(a1 + 40);
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

void sub_10006724C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v27 + 56));
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak((v28 - 128));
  _Unwind_Resume(a1);
}

void sub_10006729C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100067398;
    v6[3] = &unk_100274258;
    objc_copyWeak(&v9, (a1 + 56));
    v7 = v3;
    v8 = *(a1 + 40);
    [v4 _reallySendRequest:v5 completionHandler:v6];

    objc_destroyWeak(&v9);
  }
}

void sub_100067398(id *a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (v7)
  {
    [a1[4] cancelWithError:v7];
  }

  else
  {
    v4 = [HMFTimer alloc];
    [a1[5] timeoutInterval];
    v5 = [v4 initWithTimeInterval:1 options:?];
    [v5 setDelegate:WeakRetained];
    v6 = [WeakRetained clientQueue];
    [v5 setDelegateQueue:v6];

    [a1[5] setResponseTimer:v5];
    [WeakRetained _requestResponseForRequest:a1[5]];
  }
}

void sub_100067478(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = objc_loadWeakRetained(a1 + 7);
  v4 = [WeakRetained clientQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100067568;
  v7[3] = &unk_100273DF8;
  v7[4] = WeakRetained;
  v8 = a1[4];
  v5 = a1[5];
  v9 = v3;
  v10 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_100067568(uint64_t a1)
{
  v2 = [*(a1 + 32) _pendingResponseForRequest:*(a1 + 40)];
  v3 = [*(a1 + 32) pendingRequests];
  [v3 removeObject:*(a1 + 40)];

  v4 = [*(a1 + 32) pendingResponses];
  [v4 removeObject:v2];

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = [*(a1 + 48) error];
    (*(v5 + 16))(v5, v2, v6);
  }

  if (![*(a1 + 32) _outstandingRequests])
  {
    v7 = *(a1 + 32);
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = sub_10007FAFC(v7);
      *buf = 138543362;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}@Resuming connection idle timer as there are no outstanding requests", buf, 0xCu);
    }

    [*(a1 + 32) _resumeConnectionIdleTimer];
  }

  v10 = [*(a1 + 48) error];
  if (v10 && ([*(a1 + 32) _shouldIgnoreRetryDiscoveryError:v10] & 1) == 0)
  {
    v11 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10006776C;
    v12[3] = &unk_100274140;
    v12[4] = v11;
    v13 = *(a1 + 48);
    [v11 disconnectWithCompletionHandler:v12];
  }
}

void sub_10006776C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = sub_10007FAA0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = sub_10007FAFC(v3);
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to disconnect from the accessory, resetting the server", &v8, 0xCu);
    }

    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) error];
    [v6 _resetWithError:v7];
  }
}

void sub_100067938(id *a1)
{
  v2 = a1[4];
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(v2);
    v5 = a1[5];
    *buf = 138543618;
    v33 = v4;
    v34 = 2112;
    v35 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@Sending request: %@", buf, 0x16u);
  }

  v6 = a1[4];
  v7 = sub_10007FAA0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = sub_10007FAFC(v6);
    v9 = [a1[5] characteristic];
    v10 = [v9 type];
    v11 = [a1[5] characteristic];
    v12 = [v11 instanceID];
    v13 = [a1[5] serialize];
    *buf = 138544130;
    v33 = v8;
    v34 = 2112;
    v35 = v10;
    v36 = 2112;
    v37 = v12;
    v38 = 2112;
    v39 = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@Serialized Request '%@/%@' -> %@", buf, 0x2Au);
  }

  v14 = [a1[4] _maximumControlWriteLengthForRequest:a1[5]];
  if (v14)
  {
    v15 = v14;
    v16 = [HAPBTLETransactionIdentifier alloc];
    v17 = [a1[5] identifier];
    v18 = -[HAPBTLETransactionIdentifier initWithUnsignedCharValue:](v16, "initWithUnsignedCharValue:", [v17 unsignedCharValue]);

    v19 = [HAPBTLEControlOutputStream alloc];
    v20 = [a1[5] serialize];
    v21 = [(HAPBTLEControlOutputStream *)v19 initWithControlType:0 transactionIdentifier:v18 controlPayload:v20 mtuLength:v15 timeoutInterval:4.0];

    [(HAPBTLEControlOutputStream *)v21 setDelegate:a1[4]];
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_100067D24;
    v29 = &unk_1002742D0;
    v30 = a1[4];
    v31 = a1[6];
    [(HAPBTLEControlOutputStream *)v21 setCompletionHandler:&v26];
    [a1[4] _suspendConnectionIdleTimer];
    [a1[5] setControlOutputStream:v21];
    v22 = [a1[4] pendingRequests];
    [v22 addObject:a1[5]];

    [(HAPBTLEControlOutputStream *)v21 open];
LABEL_11:

    return;
  }

  v23 = a1[4];
  v24 = sub_10007FAA0();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = sub_10007FAFC(v23);
    *buf = 138543362;
    v33 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine the control write length", buf, 0xCu);
  }

  if (a1[6])
  {
    v18 = [NSError hapErrorWithcode:1 description:@"Control write failed." reason:@"Failed to determine the control write length" suggestion:0 underlyingError:0];
    (*(a1[6] + 2))();
    goto LABEL_11;
  }
}

void sub_100067D24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100067DE8;
  v7[3] = &unk_100273720;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_1000681D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v13 = 0;
  v4 = [v2 _encryptDataAndGenerateAuthTag:v3 error:&v13];
  v5 = v13;
  if (v4)
  {
    v6 = [*(a1 + 48) cbCharacteristic];
    v7 = *(a1 + 32);
    if (v6)
    {
      v8 = [v7 peripheral];
      [v8 writeValue:v4 forCharacteristic:v6 type:1];
    }

    else
    {
      v8 = v7;
      v10 = sub_10007FAA0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = sub_10007FAFC(v8);
        v12 = *(a1 + 48);
        *buf = 138543618;
        v15 = v11;
        v16 = 2112;
        v17 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@Missing mapped characteristic for characteristic: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_10007FAFC(v6);
      *buf = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to encrypt raw data payload with error: %@", buf, 0x16u);
    }
  }
}

void sub_100069404(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didUpdateValuesForCharacteristic:*(a1 + 40) value:*(a1 + 48)];
}

void sub_10006A310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006A33C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (v6)
  {
    v9 = WeakRetained;
    v10 = sub_10007FAA0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_10007FAFC(v9);
      v18 = 138543618;
      v19 = v11;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to send Protocol Exchange error: %@", &v18, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if ([v5 statusCode])
    {
      v12 = v8;
      v13 = sub_10007FAA0();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = sub_10007FAFC(v12);
        v18 = 138543618;
        v19 = v14;
        v20 = 1024;
        LODWORD(v21) = [v5 statusCode];
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@Protocol Exchange failed with status: %d", &v18, 0x12u);
      }

      v15 = *(a1 + 32);
      v16 = [NSError errorWithDomain:@"HAPErrorDomain" code:8 userInfo:0];
      (*(v15 + 16))(v15, v16, 0);
    }

    else
    {
      v17 = *(a1 + 32);
      v16 = [v5 body];
      (*(v17 + 16))(v17, 0, v16);
    }
  }
}

void sub_10006B348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006B36C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [v6 value];

  if (v5)
  {
    v9 = WeakRetained;
    v10 = sub_10007FAA0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_10007FAFC(v9);
      v18 = 138543618;
      v19 = v11;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to send security session exchange data with error: %@", &v18, 0x16u);
    }

    v12 = v5;
LABEL_10:
    v13 = v12;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = WeakRetained;
    v15 = sub_10007FAA0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = sub_10007FAFC(v14);
      v18 = 138543618;
      v19 = v16;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@The security session exchange response value, %@, is invalid", &v18, 0x16u);
    }

    v12 = [NSError hapErrorWithcode:12 description:@"Security session setup exchange failed." reason:@"Invalid Pair Verify exchange response." suggestion:0 underlyingError:0];
    goto LABEL_10;
  }

  v13 = 0;
LABEL_11:
  v17 = [WeakRetained securitySession];
  [v17 receivedSetupExchangeData:v8 error:v13];

  [*(a1 + 32) setValue:0];
}

void sub_10006BB54(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionState];
  +[NSDate date];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_10006BE70;
  v21 = &unk_100274348;
  v3 = v25 = v2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v22 = v3;
  v23 = v4;
  v24 = v5;
  v6 = objc_retainBlock(&v18);
  if (v2)
  {
    if ((v2 & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v7 = *(a1 + 32);
      v8 = sub_10007FAA0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = sub_10007FAFC(v7);
        *buf = 138543874;
        v27 = v9;
        v28 = 2112;
        v29 = @"Trying to connect but a connection is already in progress";
        v30 = 2048;
        v31 = v2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@%@ %ld", buf, 0x20u);
      }

      v10 = [NSError hapErrorWithcode:4 description:@"Trying to connect but a connection is already in progress" reason:0 suggestion:0 underlyingError:0, v18, v19, v20, v21, v22, v23];
    }

    else
    {
      v10 = 0;
    }

    (v6[2])(v6, v10);
  }

  else
  {
    [*(a1 + 32) setConnectionCompletionHandler:{v6, v18, v19, v20, v21, v22, v23}];
    v11 = *(a1 + 32);
    v12 = sub_10007FAA0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = sub_10007FAFC(v11);
      v14 = [*(a1 + 32) blePeripheral];
      v15 = [v14 shortDescription];
      v16 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [*(a1 + 32) connectReason]);
      *buf = 138543874;
      v27 = v13;
      v28 = 2112;
      v29 = v15;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@Connecting to the peripheral: %@. Connection Reason: %@", buf, 0x20u);
    }

    v17 = [*(a1 + 32) browser];
    [v17 connectToBTLEAccessoryServer:*(a1 + 32)];

    [*(a1 + 32) _restartConnectionIdleTimer:2.0];
    [*(a1 + 32) setConnectionState:1];
  }
}

void sub_10006BE70(void *a1, void *a2)
{
  v3 = a2;
  if (a1[7] != 2)
  {
    v4 = +[NSDate date];
    [v4 timeIntervalSinceDate:a1[4]];
    v6 = v5;

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10006BF68;
    v8[3] = &unk_100274078;
    v8[4] = a1[5];
    v10 = v6;
    v9 = v3;
    sub_10006BF68(v8);
  }

  v7 = a1[6];
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

void sub_10006BF68(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = sub_10007FAA0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_10007FAFC(0);
      v5 = [NSNumber numberWithDouble:*(a1 + 48)];
      v6 = [*(a1 + 40) domain];
      v7 = [*(a1 + 40) code];
      v8 = 138544130;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      v14 = 2048;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@Connected to BTLE accessory with duration: %{key:duration}@,                                                      error: %{key:errorDomain}@ %{key:errorCode}ld", &v8, 0x2Au);
    }
  }
}

void sub_10006C310(uint64_t a1)
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
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@Disconnecting from BTLE accessory with duration:                                              error: %{key:errorDomain}@ %{key:errorCode}ld", &v7, 0x20u);
    }
  }
}

void sub_10006C508(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionState];
  if (v2 == 2)
  {
    [*(a1 + 32) setConnectionCompletionHandler:*(a1 + 48)];
    v3 = *(a1 + 32);
    v4 = sub_10007FAA0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = sub_10007FAFC(v3);
      v6 = [*(a1 + 32) blePeripheral];
      v7 = [v6 shortDescription];
      *buf = 138543618;
      v22 = v5;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%{public}@Disconnecting from the peripheral: %@", buf, 0x16u);
    }

    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_10006C7AC;
    v18 = &unk_100273370;
    v8 = *(a1 + 40);
    v19 = *(a1 + 32);
    v20 = v8;
    sub_10006C7AC(&v15);
    [*(a1 + 32) _suspendConnectionIdleTimer];
    v9 = [*(a1 + 32) browser];
    [v9 disconnectFromBTLEAccessoryServer:*(a1 + 32)];

    [*(a1 + 32) setConnectionState:3];
  }

  else
  {
    if ((v2 & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v10 = *(a1 + 32);
      v11 = sub_10007FAA0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = sub_10007FAFC(v10);
        *buf = 138543618;
        v22 = v12;
        v23 = 2112;
        v24 = @"Trying to disconnect but a connection is already in progress";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
      }

      v13 = [NSError hapErrorWithcode:4 description:@"Trying to disconnect but a connection is already in progress" reason:0 suggestion:0 underlyingError:0];
    }

    else
    {
      v13 = 0;
    }

    v14 = *(a1 + 48);
    if (v14)
    {
      (*(v14 + 16))(v14, v13);
    }
  }
}

void sub_10006C7AC(uint64_t a1)
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
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@Disconnecting from BTLE accessory with duration:                                              error: %{key:errorDomain}@ %{key:errorCode}ld", &v7, 0x20u);
    }
  }
}

id sub_10006CC18(uint64_t a1)
{
  v2 = [*(a1 + 32) peripheral];
  [v2 setDelegate:0];

  [*(a1 + 32) updatePeripheral:*(a1 + 40)];
  v3 = [*(a1 + 32) peripheral];
  [v3 setDelegate:*(a1 + 32)];

  v4 = *(a1 + 32);
  v5 = *(a1 + 48);

  return [v4 _handleConnectionWithError:v5];
}

void sub_10006CF80(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = sub_10007FAA0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = sub_10007FAFC(v3);
    v6 = *(a1 + 56);
    *buf = 138543874;
    v29 = v5;
    v30 = 2112;
    v31 = v2;
    v32 = 2048;
    v33 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%{public}@The connection disconnected with error = %@ duration = %.3f seconds", buf, 0x20u);
  }

  if ([*(a1 + 40) connectionState] == 1 && !v2)
  {
    v7 = *(a1 + 40);
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = sub_10007FAFC(v7);
      *buf = 138543362;
      v29 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@Received a disconnection while a connection was in progress", buf, 0xCu);
    }

    v2 = [NSError hapErrorWithcode:2 description:@"Connection failed." reason:@"Connection was cancelled." suggestion:0 underlyingError:0];
  }

  [*(a1 + 40) setConnectionState:0];
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_10006D2F8;
  v26 = &unk_100273370;
  v22 = *(a1 + 32);
  v10 = v22.i64[0];
  v27 = vextq_s8(v22, v22, 8uLL);
  sub_10006D2F8(&v23);
  v11 = [*(a1 + 40) connectionCompletionHandler];
  v12 = objc_retainBlock(v11);
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, v2);
  }

  [*(a1 + 40) setConnectionCompletionHandler:0];
  v14 = [*(a1 + 40) discoveryContext];

  v15 = *(a1 + 40);
  if (v14)
  {
    if ([v15 _cancelDiscoveryWithError:v2])
    {
      v16 = 0;
      goto LABEL_17;
    }
  }

  else if (([v15 isPaired] & 1) == 0 && (objc_msgSend(*(a1 + 40), "isPairing") & 1) == 0)
  {
    v19 = *(a1 + 40);
    v20 = sub_10007FAA0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = sub_10007FAFC(v19);
      *buf = 138543362;
      v29 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%{public}@The accessory is unpaired and no pairing operation is in progress, not removing server on disconnection", buf, 0xCu);
    }

    v16 = 0;
    goto LABEL_16;
  }

  v16 = 1;
LABEL_16:
  [*(a1 + 40) _resetWithError:{v2, *&v22, v23, v24}];
LABEL_17:
  v17 = objc_retainBlock(*(a1 + 48));
  v18 = v17;
  if (v17)
  {
    (*(v17 + 2))(v17, v16);
  }
}

void sub_10006D2F8(uint64_t a1)
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
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@Disconnected from BTLE accessory with error: %{key:errorDomain}@ %{key:errorCode}ld", &v7, 0x20u);
    }
  }
}

void sub_10006D954(uint64_t a1)
{
  v2 = [*(a1 + 32) _getProtocolInfoService];
  if (([v2 serviceProperties] & 4) != 0)
  {
    v5 = *(a1 + 56) == 2;
    v6 = [*(a1 + 32) accessoryCache];
    v7 = [v6 peripheralInfo];
    v4 = [v7 broadcastKey];

    v8 = [*(a1 + 32) accessoryCache];
    v9 = [v8 peripheralInfo];
    v10 = [v9 keyUpdatedStateNumber];

    v11 = [*(a1 + 32) accessoryCache];
    v12 = [v11 peripheralInfo];
    [v12 keyUpdatedTime];
    v14 = v13;

    Current = CFAbsoluteTimeGetCurrent();
    v16 = 0;
    v17 = Current - v14;
    if (!*(a1 + 56) && v14 > 0.0 && v17 <= 604800.0)
    {
      if ([*(a1 + 32) connectReason] == 3)
      {
        v16 = 0;
      }

      else
      {
        v5 = v4 == 0;
        v18 = *(a1 + 32);
        v19 = sub_10007FAA0();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = sub_10007FAFC(v18);
          v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 length]);
          *buf = 138544130;
          v36 = v20;
          v37 = 2112;
          v38 = v21;
          v39 = 2112;
          v40 = v10;
          v41 = 2048;
          v42 = v17;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@Rate limiting BC key generation. BC Key Info: %@ / %@ / %.2fs", buf, 0x2Au);
        }

        v16 = 1;
      }
    }

    if (*(a1 + 56) == 1 && v14 > 0.0 && v17 <= 86400.0)
    {
      v5 = v4 == 0;
      v22 = *(a1 + 32);
      v23 = sub_10007FAA0();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = sub_10007FAFC(v22);
        v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 length]);
        *buf = 138544130;
        v36 = v24;
        v37 = 2112;
        v38 = v25;
        v39 = 2112;
        v40 = v10;
        v41 = 2048;
        v42 = v17;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@Rate limiting BC key refresh. BC Key Info: %@ / %@ / %.2fs", buf, 0x2Au);
      }

      v16 = 1;
    }

    if (!v16 || v5)
    {
      if (v5)
      {
        v27 = 2;
      }

      else
      {
        v27 = *(a1 + 56);
      }

      [*(a1 + 32) _generateBroadcastKey:v27 queue:*(a1 + 40) withCompletionHandler:*(a1 + 48)];
    }

    else
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10006DDC0;
      v28[3] = &unk_1002743C0;
      v26 = *(a1 + 40);
      v31 = *(a1 + 48);
      v29 = v4;
      v30 = v10;
      v32 = v14;
      dispatch_async(v26, v28);
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006DD9C;
    block[3] = &unk_100273660;
    v3 = *(a1 + 40);
    v34 = *(a1 + 48);
    dispatch_async(v3, block);
    v4 = v34;
  }
}

void sub_10006DDC0(uint64_t a1)
{
  v4 = [NSError hapErrorWithcode:28 description:@"Not generating BC Keys" reason:@"Key generated in recent past" suggestion:@"Report the faulty accessory" underlyingError:0];
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  (*(*(a1 + 48) + 16))(*(a1 + 56));
}

void sub_10006DF40(uint64_t a1, void *a2, void *a3, double a4, uint64_t a5, void *a6)
{
  v10 = a2;
  v11 = a3;
  v12 = a6;
  v13 = v12;
  if (!v12)
  {
    if (v11)
    {
      [*(a1 + 32) setStateNumber:v11];
      v18 = [*(a1 + 32) browser];
      v19 = [*(a1 + 32) identifier];
      [v18 updateCachedStateForIdentifier:v19 stateNumber:v11];
    }

    if (v10)
    {
      v20 = *(a1 + 32);
      if (*(a1 + 56) == 2)
      {
        v21 = [v20 accessoryCache];
        v22 = [v21 peripheralInfo];
        [v22 keyUpdatedTime];
        v24 = v23;

        Current = 1.0;
        if (v24 <= 0.0)
        {
          Current = CFAbsoluteTimeGetCurrent();
        }

        v26 = [*(a1 + 32) browser];
        v27 = [*(a1 + 32) identifier];
        [v26 updateBroadcastKeyForIdentifer:v27 key:v10 keyUpdatedStateNumber:v11 keyUpdatedTime:Current];

        v14 = *(a1 + 32);
        v15 = sub_10007FAA0();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v28 = sub_10007FAFC(v14);
          *buf = 138544130;
          v47 = v28;
          v48 = 2112;
          v49 = v10;
          v50 = 2112;
          v51 = v11;
          v52 = 2048;
          v53 = Current;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%{public}@Saving the read broadcast key: %@, S#: %@ time: %f", buf, 0x2Au);
        }

        v13 = 0;
        goto LABEL_13;
      }

      if ([v20 _validateGeneratedBroadcastKey:v10])
      {
        v35 = CFAbsoluteTimeGetCurrent();
        v36 = [*(a1 + 32) browser];
        v37 = [*(a1 + 32) identifier];
        [v36 updateBroadcastKeyForIdentifer:v37 key:v10 keyUpdatedStateNumber:v11 keyUpdatedTime:v35];

        v14 = *(a1 + 32);
        v15 = sub_10007FAA0();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v38 = sub_10007FAFC(v14);
          *buf = 138544130;
          v47 = v38;
          v48 = 2112;
          v49 = v10;
          v50 = 2112;
          v51 = v11;
          v52 = 2048;
          v53 = v35;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%{public}@Saving the read broadcast key: %@, S#: %@ time: %f", buf, 0x2Au);
        }

        v13 = 0;
        v29 = 1;
        goto LABEL_14;
      }
    }

    v13 = [NSError hapErrorWithcode:9];
    if (!v13)
    {
      v29 = 0;
      goto LABEL_15;
    }
  }

  v14 = *(a1 + 32);
  v15 = sub_10007FAA0();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = sub_10007FAFC(v14);
    v17 = [NSNumber numberWithUnsignedChar:*(a1 + 56)];
    *buf = 138543874;
    v47 = v16;
    v48 = 2112;
    v49 = v17;
    v50 = 2112;
    v51 = v13;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to generate broadcast key with type: %@. Error: %@", buf, 0x20u);
  }

LABEL_13:
  v29 = 0;
LABEL_14:

LABEL_15:
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10006E3C8;
  v39[3] = &unk_100274410;
  v30 = *(a1 + 40);
  v31 = *(a1 + 48);
  v40 = v10;
  v41 = v11;
  v44 = a4;
  v45 = v29;
  v42 = v13;
  v43 = v31;
  v32 = v10;
  v33 = v11;
  v34 = v13;
  dispatch_async(v30, v39);
}

void sub_10006E7B4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBTLE:*(a1 + 32) didReceiveEncryptedAndAuthenticatedPayload:*(a1 + 40) forCharacteristic:*(a1 + 48)];
}

void sub_10006E92C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBTLE:*(a1 + 32) didReceivePlaintextPayload:*(a1 + 40) forCharacteristic:*(a1 + 48)];
}

void sub_10006EAA4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBTLE:*(a1 + 32) willSendEncryptedAndAuthenticatedPayload:*(a1 + 40) forCharacteristic:*(a1 + 48)];
}

void sub_10006EC1C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBTLE:*(a1 + 32) willSendPlaintextPayload:*(a1 + 40) forCharacteristic:*(a1 + 48)];
}

id sub_10006EE2C(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result == 2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 _handleDiscoveredServices:v4 error:v5];
  }

  return result;
}

id sub_10006EF58(id *a1)
{
  result = [a1[4] state];
  if (result == 2)
  {
    result = [a1[5] count];
    if (result)
    {
      v3 = a1[6];
      v4 = sub_10007FAA0();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = sub_10007FAFC(v3);
        v6 = a1[5];
        *buf = 138543618;
        v16 = v5;
        v17 = 2112;
        v18 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@Disconnecting on services changed: %@", buf, 0x16u);
      }

      if ([a1[6] isPairing])
      {
        v7 = [NSError errorWithDomain:@"HAPErrorDomain" code:24 userInfo:0];
        v9 = _NSConcreteStackBlock;
        v10 = 3221225472;
        v11 = sub_10006F10C;
        v12 = &unk_100273370;
        v13 = a1[6];
        v14 = v7;
        v8 = v7;
        sub_10006F10C(&v9);
        [a1[6] setPairingDisconnectionError:{v8, v9, v10, v11, v12, v13}];
      }

      return [a1[6] disconnectWithCompletionHandler:0 disconnectionError:0];
    }
  }

  return result;
}

void sub_10006F10C(uint64_t a1)
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
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@BTLE accessory modified its services with error: %{key:errorDomain}@ %{key:errorCode}ld", &v7, 0x20u);
    }
  }
}

id sub_10006F324(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result == 2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 _handleDiscoveredCharacteristicsForService:v4 error:v5];
  }

  return result;
}

id sub_10006F478(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result == 2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 _handleDiscoveredCharactersitic:v4 error:v5];
  }

  return result;
}

id sub_10006F5CC(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result == 2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 _handleReadDescriptorValue:v4 error:v5];
  }

  return result;
}

id sub_10006F720(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result == 2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 _handleUpdateValueForCharacteristic:v4 error:v5];
  }

  return result;
}

void sub_10006F874(uint64_t a1)
{
  if ([*(a1 + 32) state] == 2)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v2 = [*(a1 + 40) characteristicWriteCompletionHandlers];
    v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v18;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v18 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v17 + 1) + 8 * i);
          v8 = [v7 cbCharacteristic];
          v9 = [v8 isEqual:*(a1 + 48)];

          if (v9)
          {
            [*(a1 + 40) _handleWriteCompletionForCharacteristic:v7 error:*(a1 + 56)];
            goto LABEL_17;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v2 = *(a1 + 40);
    v10 = sub_10007FAA0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = sub_10007FAFC(v2);
      v12 = *(a1 + 48);
      *buf = 138543618;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      v13 = "%{public}@Received characteristic write confirmation from unmapped characteristic: %@";
      v14 = v10;
      v15 = OS_LOG_TYPE_INFO;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v14, v15, v13, buf, 0x16u);
    }
  }

  else
  {
    v2 = *(a1 + 40);
    v10 = sub_10007FAA0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = sub_10007FAFC(v2);
      v16 = *(a1 + 32);
      *buf = 138543618;
      v23 = v11;
      v24 = 2112;
      v25 = v16;
      v13 = "%{public}@Received characteristic write for invalid peripheral: %@";
      v14 = v10;
      v15 = OS_LOG_TYPE_DEBUG;
      goto LABEL_14;
    }
  }

LABEL_17:
}

void sub_10006FBB8(uint64_t a1)
{
  if ([*(a1 + 32) state] == 2)
  {
    v2 = *(a1 + 40);
    v3 = sub_10007FAA0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = sub_10007FAFC(v2);
      v5 = *(a1 + 48);
      v11 = 138543618;
      v12 = v4;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@Received Notification updated confirmation for characteristics %@", &v11, 0x16u);
    }

    if (*(a1 + 56))
    {
      v6 = *(a1 + 40);
      v7 = sub_10007FAA0();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = sub_10007FAFC(v6);
        v9 = *(a1 + 56);
        v11 = 138543618;
        v12 = v8;
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@Notification Update failed with error: %@", &v11, 0x16u);
      }
    }

    v10 = [*(a1 + 40) _characteristicForCBCharacteristic:*(a1 + 48)];
    if (v10)
    {
      [*(a1 + 40) _handleHAPNotificationStateUpdateForCharacteristic:v10 error:*(a1 + 56)];
    }
  }
}

void sub_10006FE5C(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(a1 + 32) pendingRequests];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [v7 controlOutputStream];

        if (v8 == v9)
        {
          [*(a1 + 32) _sendControlPacket:*(a1 + 48) forRequest:v7 completionHandler:*(a1 + 56)];
          goto LABEL_14;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = *(a1 + 32);
  v11 = sub_10007FAA0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = sub_10007FAFC(v10);
    v13 = *(a1 + 40);
    *buf = 138543618;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%{public}@No matching request for control output stream: %@", buf, 0x16u);
  }

  if (*(a1 + 56))
  {
    v2 = [NSError hapErrorWithcode:9 description:@"Invalid parameter." reason:@"No matching request for control output stream." suggestion:0 underlyingError:0];
    (*(*(a1 + 56) + 16))();
LABEL_14:
  }
}