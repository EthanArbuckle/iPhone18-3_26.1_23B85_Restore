@interface HAPBTLEControlOutputStream
+ (id)shortDescription;
- (HAPBTLEControlOutputStream)init;
- (HAPBTLEControlOutputStream)initWithControlType:(unsigned __int8)type transactionIdentifier:(id)identifier controlPayload:(id)payload mtuLength:(unint64_t)length timeoutInterval:(double)interval;
- (HAPBTLEControlOutputStreamDelegate)delegate;
- (id)_nextPacketWithMaximumLength:(unint64_t)length error:(id *)error;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)shortDescription;
- (unint64_t)remainingControlPayloadLength;
- (void)_closeWithError:(id)error;
- (void)_complete;
- (void)_sendNextPayloadFragmentWithCompletionHandler:(id)handler;
- (void)close;
- (void)open;
- (void)sendNextPayloadFragment;
- (void)setCompletionHandler:(id)handler;
@end

@implementation HAPBTLEControlOutputStream

- (HAPBTLEControlOutputStream)init
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"%@ is unavailable", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (HAPBTLEControlOutputStream)initWithControlType:(unsigned __int8)type transactionIdentifier:(id)identifier controlPayload:(id)payload mtuLength:(unint64_t)length timeoutInterval:(double)interval
{
  identifierCopy = identifier;
  payloadCopy = payload;
  v15 = payloadCopy;
  if (!identifierCopy)
  {
    v28 = sub_10007FAA0();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  if (![payloadCopy length])
  {
    v28 = sub_10007FAA0();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

LABEL_9:
    v29 = sub_10007FAFC(0);
    v30 = +[HAPBTLEControlOutputStream shortDescription];
    *buf = 138543618;
    v35 = v29;
    v36 = 2112;
    v37 = v30;
    v31 = "%{public}@[%@] Invalid control payload data.";
    goto LABEL_16;
  }

  if (!length)
  {
    v28 = sub_10007FAA0();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v29 = sub_10007FAFC(0);
    v30 = +[HAPBTLEControlOutputStream shortDescription];
    *buf = 138543618;
    v35 = v29;
    v36 = 2112;
    v37 = v30;
    v31 = "%{public}@[%@] Invalid MTU length.";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, v31, buf, 0x16u);

    goto LABEL_17;
  }

  if (interval <= 0.0)
  {
    v28 = sub_10007FAA0();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = sub_10007FAFC(0);
      v30 = +[HAPBTLEControlOutputStream shortDescription];
      *buf = 138543618;
      v35 = v29;
      v36 = 2112;
      v37 = v30;
      v31 = "%{public}@[%@] Invalid timeout for write.";
      goto LABEL_16;
    }

LABEL_17:

    selfCopy = 0;
    goto LABEL_18;
  }

  v33.receiver = self;
  v33.super_class = HAPBTLEControlOutputStream;
  v16 = [(HAPBTLEControlOutputStream *)&v33 init];
  v17 = v16;
  if (v16)
  {
    v18 = sub_100014728(v16, 0);
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create(v18, v19);
    clientQueue = v17->_clientQueue;
    v17->_clientQueue = v20;

    v17->_type = type;
    objc_storeStrong(&v17->_transactionIdentifier, identifier);
    v22 = [v15 copy];
    payload = v17->_payload;
    v17->_payload = v22;

    v17->_mtuLength = length;
    v17->_timeoutInterval = interval;
    v24 = objc_alloc_init(NSOperationQueue);
    v25 = [NSString stringWithFormat:@"%s", sub_100014728(v17, @"operationQueue")];
    [(NSOperationQueue *)v24 setName:v25];

    [(NSOperationQueue *)v24 setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v24 setQualityOfService:25];
    operationQueue = v17->_operationQueue;
    v17->_operationQueue = v24;
  }

  self = v17;
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  shortDescription = [(HAPBTLEControlOutputStream *)self shortDescription];
  if (pointerCopy)
  {
    v6 = [NSString stringWithFormat:@" %p", self];
  }

  else
  {
    v6 = &stru_10027BDA0;
  }

  v7 = sub_100023350([(HAPBTLEControlOutputStream *)self type]);
  transactionIdentifier = [(HAPBTLEControlOutputStream *)self transactionIdentifier];
  unsignedCharValue = [transactionIdentifier unsignedCharValue];
  [(HAPBTLEControlOutputStream *)self isComplete];
  v10 = HMFBooleanToString();
  payload = [(HAPBTLEControlOutputStream *)self payload];
  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@%@, Type = %@, Transaction Identifier = 0x%02x, Completed = %@, Payload Length = %tu, Remaining Payload Length = %tu>", shortDescription, v6, v7, unsignedCharValue, v10, [payload length], -[HAPBTLEControlOutputStream remainingControlPayloadLength](self, "remainingControlPayloadLength"));

  if (pointerCopy)
  {
  }

  return v12;
}

- (unint64_t)remainingControlPayloadLength
{
  payload = [(HAPBTLEControlOutputStream *)self payload];
  v4 = [payload length];
  v5 = v4 - [(HAPBTLEControlOutputStream *)self controlPayloadWrittenLength];

  return v5;
}

- (void)open
{
  clientQueue = [(HAPBTLEControlOutputStream *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100044374;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

- (void)close
{
  clientQueue = [(HAPBTLEControlOutputStream *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100044470;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

- (void)_closeWithError:(id)error
{
  errorCopy = error;
  if ([(HAPBTLEControlOutputStream *)self isOpen])
  {
    [(HAPBTLEControlOutputStream *)self setOpen:0];
    delegate = [(HAPBTLEControlOutputStream *)self delegate];
    [delegate controlOutputStream:self didCloseWithError:errorCopy];
  }
}

- (void)_complete
{
  if (![(HAPBTLEControlOutputStream *)self isComplete])
  {
    [(HAPBTLEControlOutputStream *)self setComplete:1];
    delegate = [(HAPBTLEControlOutputStream *)self delegate];
    [delegate controlOutputStreamDidComplete:self];
  }
}

- (void)sendNextPayloadFragment
{
  v3 = [HMFBlockOperation alloc];
  [(HAPBTLEControlOutputStream *)self timeoutInterval];
  v4 = [v3 initWithTimeout:?];
  objc_initWeak(&location, v4);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000446F8;
  v8[3] = &unk_100273A18;
  objc_copyWeak(&v9, &location);
  v8[4] = self;
  [v4 addExecutionBlock:v8];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000447B8;
  v6[3] = &unk_100273A18;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  [v4 setCompletionBlock:v6];
  operationQueue = [(HAPBTLEControlOutputStream *)self operationQueue];
  [operationQueue addOperation:v4];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_sendNextPayloadFragmentWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  clientQueue = [(HAPBTLEControlOutputStream *)self clientQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100044A00;
  v7[3] = &unk_100273268;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(clientQueue, v7);
}

- (id)_nextPacketWithMaximumLength:(unint64_t)length error:(id *)error
{
  if ([(HAPBTLEControlOutputStream *)self isComplete])
  {
    v7 = sub_10007FAA0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sub_10007FAFC(0);
      shortDescription = [(HAPBTLEControlOutputStream *)self shortDescription];
      v26 = 138543618;
      v27 = v8;
      v28 = 2112;
      v29 = shortDescription;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@[%@] The control output stream is complete", &v26, 0x16u);
    }

    if (error)
    {
      [NSError hapErrorWithcode:1 description:@"Invalid operation." reason:@"The control output stream is complete" suggestion:0 underlyingError:0];
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = [(HAPBTLEControlOutputStream *)self controlPayloadWrittenLength]!= 0;
    payload = [(HAPBTLEControlOutputStream *)self payload];
    controlPayloadWrittenLength = [(HAPBTLEControlOutputStream *)self controlPayloadWrittenLength];
    payload2 = [(HAPBTLEControlOutputStream *)self payload];
    v15 = [payload subdataWithRange:{controlPayloadWrittenLength, objc_msgSend(payload2, "length") - -[HAPBTLEControlOutputStream controlPayloadWrittenLength](self, "controlPayloadWrittenLength")}];

    v16 = [HAPBTLEControlPacket alloc];
    type = [(HAPBTLEControlOutputStream *)self type];
    transactionIdentifier = [(HAPBTLEControlOutputStream *)self transactionIdentifier];
    v10 = [(HAPBTLEControlPacket *)v16 initWithControlType:type transactionIdentifier:transactionIdentifier continuationPacket:v11 packetPayload:v15 maximumLength:length];

    if (v10)
    {
      controlPayloadWrittenLength2 = [(HAPBTLEControlOutputStream *)self controlPayloadWrittenLength];
      payload3 = [(HAPBTLEControlPacket *)v10 payload];
      -[HAPBTLEControlOutputStream setControlPayloadWrittenLength:](self, "setControlPayloadWrittenLength:", [payload3 length] + controlPayloadWrittenLength2);

      v21 = v10;
    }

    else
    {
      v22 = sub_10007FAA0();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = sub_10007FAFC(0);
        shortDescription2 = [(HAPBTLEControlOutputStream *)self shortDescription];
        v26 = 138543618;
        v27 = v23;
        v28 = 2112;
        v29 = shortDescription2;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to create control packet", &v26, 0x16u);
      }

      if (error)
      {
        *error = [NSError hapErrorWithcode:1 description:@"Failed to create control packet." reason:0 suggestion:0 underlyingError:0];
      }
    }
  }

  return v10;
}

- (HAPBTLEControlOutputStreamDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setCompletionHandler:(id)handler
{
  v4 = objc_retainBlock(handler);
  objc_setAssociatedObject(self, "completionHandler", v4, 3);
}

@end