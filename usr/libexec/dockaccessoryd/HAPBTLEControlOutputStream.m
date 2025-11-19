@interface HAPBTLEControlOutputStream
+ (id)shortDescription;
- (HAPBTLEControlOutputStream)init;
- (HAPBTLEControlOutputStream)initWithControlType:(unsigned __int8)a3 transactionIdentifier:(id)a4 controlPayload:(id)a5 mtuLength:(unint64_t)a6 timeoutInterval:(double)a7;
- (HAPBTLEControlOutputStreamDelegate)delegate;
- (id)_nextPacketWithMaximumLength:(unint64_t)a3 error:(id *)a4;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)shortDescription;
- (unint64_t)remainingControlPayloadLength;
- (void)_closeWithError:(id)a3;
- (void)_complete;
- (void)_sendNextPayloadFragmentWithCompletionHandler:(id)a3;
- (void)close;
- (void)open;
- (void)sendNextPayloadFragment;
- (void)setCompletionHandler:(id)a3;
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

- (HAPBTLEControlOutputStream)initWithControlType:(unsigned __int8)a3 transactionIdentifier:(id)a4 controlPayload:(id)a5 mtuLength:(unint64_t)a6 timeoutInterval:(double)a7
{
  v13 = a4;
  v14 = a5;
  v15 = v14;
  if (!v13)
  {
    v28 = sub_10007FAA0();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  if (![v14 length])
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

  if (!a6)
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

  if (a7 <= 0.0)
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

    v27 = 0;
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

    v17->_type = a3;
    objc_storeStrong(&v17->_transactionIdentifier, a4);
    v22 = [v15 copy];
    payload = v17->_payload;
    v17->_payload = v22;

    v17->_mtuLength = a6;
    v17->_timeoutInterval = a7;
    v24 = objc_alloc_init(NSOperationQueue);
    v25 = [NSString stringWithFormat:@"%s", sub_100014728(v17, @"operationQueue")];
    [(NSOperationQueue *)v24 setName:v25];

    [(NSOperationQueue *)v24 setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v24 setQualityOfService:25];
    operationQueue = v17->_operationQueue;
    v17->_operationQueue = v24;
  }

  self = v17;
  v27 = self;
LABEL_18:

  return v27;
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

- (id)descriptionWithPointer:(BOOL)a3
{
  v3 = a3;
  v5 = [(HAPBTLEControlOutputStream *)self shortDescription];
  if (v3)
  {
    v6 = [NSString stringWithFormat:@" %p", self];
  }

  else
  {
    v6 = &stru_10027BDA0;
  }

  v7 = sub_100023350([(HAPBTLEControlOutputStream *)self type]);
  v8 = [(HAPBTLEControlOutputStream *)self transactionIdentifier];
  v9 = [v8 unsignedCharValue];
  [(HAPBTLEControlOutputStream *)self isComplete];
  v10 = HMFBooleanToString();
  v11 = [(HAPBTLEControlOutputStream *)self payload];
  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@%@, Type = %@, Transaction Identifier = 0x%02x, Completed = %@, Payload Length = %tu, Remaining Payload Length = %tu>", v5, v6, v7, v9, v10, [v11 length], -[HAPBTLEControlOutputStream remainingControlPayloadLength](self, "remainingControlPayloadLength"));

  if (v3)
  {
  }

  return v12;
}

- (unint64_t)remainingControlPayloadLength
{
  v3 = [(HAPBTLEControlOutputStream *)self payload];
  v4 = [v3 length];
  v5 = v4 - [(HAPBTLEControlOutputStream *)self controlPayloadWrittenLength];

  return v5;
}

- (void)open
{
  v3 = [(HAPBTLEControlOutputStream *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100044374;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)close
{
  v3 = [(HAPBTLEControlOutputStream *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100044470;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_closeWithError:(id)a3
{
  v5 = a3;
  if ([(HAPBTLEControlOutputStream *)self isOpen])
  {
    [(HAPBTLEControlOutputStream *)self setOpen:0];
    v4 = [(HAPBTLEControlOutputStream *)self delegate];
    [v4 controlOutputStream:self didCloseWithError:v5];
  }
}

- (void)_complete
{
  if (![(HAPBTLEControlOutputStream *)self isComplete])
  {
    [(HAPBTLEControlOutputStream *)self setComplete:1];
    v3 = [(HAPBTLEControlOutputStream *)self delegate];
    [v3 controlOutputStreamDidComplete:self];
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
  v5 = [(HAPBTLEControlOutputStream *)self operationQueue];
  [v5 addOperation:v4];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_sendNextPayloadFragmentWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HAPBTLEControlOutputStream *)self clientQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100044A00;
  v7[3] = &unk_100273268;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)_nextPacketWithMaximumLength:(unint64_t)a3 error:(id *)a4
{
  if ([(HAPBTLEControlOutputStream *)self isComplete])
  {
    v7 = sub_10007FAA0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sub_10007FAFC(0);
      v9 = [(HAPBTLEControlOutputStream *)self shortDescription];
      v26 = 138543618;
      v27 = v8;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@[%@] The control output stream is complete", &v26, 0x16u);
    }

    if (a4)
    {
      [NSError hapErrorWithcode:1 description:@"Invalid operation." reason:@"The control output stream is complete" suggestion:0 underlyingError:0];
      *a4 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = [(HAPBTLEControlOutputStream *)self controlPayloadWrittenLength]!= 0;
    v12 = [(HAPBTLEControlOutputStream *)self payload];
    v13 = [(HAPBTLEControlOutputStream *)self controlPayloadWrittenLength];
    v14 = [(HAPBTLEControlOutputStream *)self payload];
    v15 = [v12 subdataWithRange:{v13, objc_msgSend(v14, "length") - -[HAPBTLEControlOutputStream controlPayloadWrittenLength](self, "controlPayloadWrittenLength")}];

    v16 = [HAPBTLEControlPacket alloc];
    v17 = [(HAPBTLEControlOutputStream *)self type];
    v18 = [(HAPBTLEControlOutputStream *)self transactionIdentifier];
    v10 = [(HAPBTLEControlPacket *)v16 initWithControlType:v17 transactionIdentifier:v18 continuationPacket:v11 packetPayload:v15 maximumLength:a3];

    if (v10)
    {
      v19 = [(HAPBTLEControlOutputStream *)self controlPayloadWrittenLength];
      v20 = [(HAPBTLEControlPacket *)v10 payload];
      -[HAPBTLEControlOutputStream setControlPayloadWrittenLength:](self, "setControlPayloadWrittenLength:", [v20 length] + v19);

      v21 = v10;
    }

    else
    {
      v22 = sub_10007FAA0();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = sub_10007FAFC(0);
        v24 = [(HAPBTLEControlOutputStream *)self shortDescription];
        v26 = 138543618;
        v27 = v23;
        v28 = 2112;
        v29 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to create control packet", &v26, 0x16u);
      }

      if (a4)
      {
        *a4 = [NSError hapErrorWithcode:1 description:@"Failed to create control packet." reason:0 suggestion:0 underlyingError:0];
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

- (void)setCompletionHandler:(id)a3
{
  v4 = objc_retainBlock(a3);
  objc_setAssociatedObject(self, "completionHandler", v4, 3);
}

@end