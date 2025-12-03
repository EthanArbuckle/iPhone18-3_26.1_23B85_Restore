@interface HAPBTLEResponse
- (BOOL)isBodyComplete;
- (BOOL)isComplete;
- (BOOL)isEncrypted;
- (BOOL)isValid;
- (HAPBTLEResponse)init;
- (HAPBTLEResponse)initWithRequest:(id)request;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)shortDescription;
- (unint64_t)_deserializeHeaderBodyLengthWithData:(id)data error:(id *)error;
- (unint64_t)_deserializeHeaderWithData:(id)data error:(id *)error;
- (unint64_t)_remainingBodyLength;
- (unint64_t)appendData:(id)data error:(id *)error;
@end

@implementation HAPBTLEResponse

- (HAPBTLEResponse)init
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"%@ is unavailable", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (HAPBTLEResponse)initWithRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = HAPBTLEResponse;
  v6 = [(HAPBTLEResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
  }

  return v7;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  shortDescription = [(HAPBTLEResponse *)self shortDescription];
  if (pointerCopy)
  {
    v6 = [NSString stringWithFormat:@" %p", self];
  }

  else
  {
    v6 = &stru_10027BDA0;
  }

  if ([(HAPBTLEResponse *)self isEncrypted])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  identifier = [(HAPBTLEResponse *)self identifier];
  bodyLength = [(HAPBTLEResponse *)self bodyLength];
  request = [(HAPBTLEResponse *)self request];
  body = [(HAPBTLEResponse *)self body];
  v12 = [NSString stringWithFormat:@"<%@%@, Encrypted = %@, Response Identifier = %@, Body Length = %tu, Request = %@> <Body: %@>", shortDescription, v6, v7, identifier, bodyLength, request, body];

  if (pointerCopy)
  {
  }

  return v12;
}

- (BOOL)isEncrypted
{
  request = [(HAPBTLEResponse *)self request];
  isEncrypted = [request isEncrypted];

  return isEncrypted;
}

- (BOOL)isComplete
{
  isHeaderComplete = [(HAPBTLEResponse *)self isHeaderComplete];
  if (isHeaderComplete)
  {

    LOBYTE(isHeaderComplete) = [(HAPBTLEResponse *)self isBodyComplete];
  }

  return isHeaderComplete;
}

- (BOOL)isBodyComplete
{
  if (![(HAPBTLEResponse *)self isHeaderComplete])
  {
    return 0;
  }

  bodyLength = [(HAPBTLEResponse *)self bodyLength];
  body = [(HAPBTLEResponse *)self body];
  v5 = bodyLength == [body length];

  return v5;
}

- (BOOL)isValid
{
  isComplete = [(HAPBTLEResponse *)self isComplete];
  if (isComplete)
  {
    identifier = [(HAPBTLEResponse *)self identifier];
    request = [(HAPBTLEResponse *)self request];
    identifier2 = [request identifier];
    v7 = [identifier isEqual:identifier2];

    LOBYTE(isComplete) = v7;
  }

  return isComplete;
}

- (unint64_t)_remainingBodyLength
{
  body = [(HAPBTLEResponse *)self body];

  if (body)
  {
    return 0;
  }

  bodyLength = [(HAPBTLEResponse *)self bodyLength];
  _internalBody = [(HAPBTLEResponse *)self _internalBody];
  v4 = bodyLength - [_internalBody length];

  return v4;
}

- (unint64_t)appendData:(id)data error:(id *)error
{
  dataCopy = data;
  if ([(HAPBTLEResponse *)self isComplete])
  {
    v7 = sub_10007FAA0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_10007FAFC(0);
      shortDescription = [(HAPBTLEResponse *)self shortDescription];
      v24 = 138543618;
      v25 = v8;
      v26 = 2112;
      v27 = shortDescription;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Not appending data, the response is complete", &v24, 0x16u);
    }

    if (error)
    {
      v10 = @"Response is complete.";
LABEL_6:
      [NSError hapErrorWithcode:3 description:@"Failed to parse response." reason:v10 suggestion:0 underlyingError:0];
      *error = v11 = 0;
      goto LABEL_27;
    }

    goto LABEL_14;
  }

  if ([(HAPBTLEResponse *)self isHeaderComplete])
  {
    v11 = 0;
  }

  else
  {
    if ([dataCopy length] <= 1)
    {
      v12 = sub_10007FAA0();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = sub_10007FAFC(0);
        shortDescription2 = [(HAPBTLEResponse *)self shortDescription];
        v24 = 138543874;
        v25 = v13;
        v26 = 2112;
        v27 = shortDescription2;
        v28 = 2112;
        v29 = dataCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@[%@] The data, %@, does not contain the entire response header", &v24, 0x20u);
      }

      if (error)
      {
        v10 = @"The entire header was not present.";
        goto LABEL_6;
      }

LABEL_14:
      v11 = 0;
      goto LABEL_27;
    }

    v11 = [(HAPBTLEResponse *)self _deserializeHeaderWithData:dataCopy error:error];
    if (!v11)
    {
      goto LABEL_27;
    }
  }

  v15 = [dataCopy length];
  if (![(HAPBTLEResponse *)self isBodyComplete]&& v15 != v11)
  {
    _remainingBodyLength = [(HAPBTLEResponse *)self _remainingBodyLength];
    if (_remainingBodyLength)
    {
      if (_remainingBodyLength >= &v15[-v11])
      {
        v17 = &v15[-v11];
      }

      else
      {
        v17 = _remainingBodyLength;
      }

      _internalBody = [(HAPBTLEResponse *)self _internalBody];

      if (!_internalBody)
      {
        v19 = [NSMutableData dataWithCapacity:[(HAPBTLEResponse *)self bodyLength]];
        [(HAPBTLEResponse *)self _setInternalBody:v19];
      }

      _internalBody2 = [(HAPBTLEResponse *)self _internalBody];
      v21 = [dataCopy subdataWithRange:{v11, v17}];
      [_internalBody2 appendData:v21];

      v11 += v17;
    }

    if (![(HAPBTLEResponse *)self _remainingBodyLength])
    {
      _internalBody3 = [(HAPBTLEResponse *)self _internalBody];
      [(HAPBTLEResponse *)self setBody:_internalBody3];

      [(HAPBTLEResponse *)self _setInternalBody:0];
    }
  }

LABEL_27:

  return v11;
}

- (unint64_t)_deserializeHeaderWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = 2;
  [dataCopy getBytes:v14 length:2];
  v8 = [HAPBTLETransactionIdentifier alloc];
  v9 = [(HAPBTLETransactionIdentifier *)v8 initWithUnsignedCharValue:v14[0]];
  identifier = self->_identifier;
  self->_identifier = v9;

  self->_statusCode = v14[1];
  if ([dataCopy length] >= 3)
  {
    v11 = [dataCopy subdataWithRange:{2, objc_msgSend(dataCopy, "length") - 2}];
    v12 = [(HAPBTLEResponse *)self _deserializeHeaderBodyLengthWithData:v11 error:error];

    if (!v12)
    {
      v7 = 0;
      goto LABEL_5;
    }

    v7 = v12 + 2;
  }

  [(HAPBTLEResponse *)self setHeaderComplete:1];
LABEL_5:

  return v7;
}

- (unint64_t)_deserializeHeaderBodyLengthWithData:(id)data error:(id *)error
{
  dataCopy = data;
  if ([dataCopy length] > 1)
  {
    LOWORD(v12) = 0;
    v10 = 2;
    [dataCopy getBytes:&v12 range:{0, 2}];
    self->_bodyLength = v12;
  }

  else
  {
    v7 = sub_10007FAA0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sub_10007FAFC(0);
      shortDescription = [(HAPBTLEResponse *)self shortDescription];
      v12 = 138543874;
      v13 = v8;
      v14 = 2112;
      v15 = shortDescription;
      v16 = 2112;
      v17 = dataCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to parse header body length with control body: %@", &v12, 0x20u);
    }

    if (error)
    {
      [NSError hapErrorWithcode:15 description:@"Failed to parse response." reason:@"Failed to parse header body length." suggestion:0 underlyingError:0];
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end