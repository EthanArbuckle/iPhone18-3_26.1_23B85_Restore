@interface HAPFragmentationPacket
- (BOOL)isEqual:(id)a3;
- (HAPFragmentationPacket)init;
- (HAPFragmentationPacket)initWithData:(id)a3 transactionIdentifier:(unsigned __int16)a4 length:(unsigned int)a5 offset:(unsigned int)a6;
- (HAPFragmentationPacket)initWithFragmentedPacketData:(id)a3;
- (id)debugDescription;
- (id)description;
- (id)serialize;
@end

@implementation HAPFragmentationPacket

- (HAPFragmentationPacket)init
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"You must override %@ in a subclass", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (HAPFragmentationPacket)initWithFragmentedPacketData:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v6 = sub_10007FAA0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = sub_10007FAFC(0);
      *buf = 138543362;
      *&buf[4] = v7;
      v8 = "%{public}@[HAPFragmentationPacket] Invalid paramter 'data'";
      v9 = v6;
      v10 = 12;
      goto LABEL_7;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_20;
  }

  if ([v4 length] <= 0xB)
  {
    v6 = sub_10007FAA0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = sub_10007FAFC(0);
      *buf = 138543618;
      *&buf[4] = v7;
      v29 = 2048;
      v30 = 12;
      v8 = "%{public}@[HAPFragmentationPacket] Fragmented data must have a length of at least %lu bytes";
      v9 = v6;
      v10 = 22;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v12 = v5;
  memset(v26, 0, 12);
  v13 = [v12 length];
  if (v13 <= 0xB)
  {
    v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Invalid serialized data length %tu", [v12 length]);
    v19 = sub_10007FAA0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = sub_10007FAFC(0);
      *buf = 138543618;
      *&buf[4] = v20;
      v29 = 2112;
      v30 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@[HAPFragmentationPacket] %@", buf, 0x16u);
    }

    v27 = NSLocalizedDescriptionKey;
    *buf = v18;
    v21 = [NSDictionary dictionaryWithObjects:buf forKeys:&v27 count:1];
    v14 = [NSError errorWithDomain:@"HAPErrorDomain" code:-6743 userInfo:v21];
    v22 = v14;

    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    [v12 getBytes:v26 length:12];
    v14 = 0;
    v15 = LOWORD(v26[0]);
    v16 = *(v26 + 2);
    v17 = *(v26 + 6);
  }

  v6 = v14;
  if (v13 <= 0xB)
  {
    v23 = sub_10007FAA0();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = sub_10007FAFC(0);
      *buf = 138543618;
      *&buf[4] = v24;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@[HAPFragmentationPacket] Failed to deserialize packet header with erorr: %@", buf, 0x16u);
    }

    v11 = 0;
  }

  else
  {
    v23 = [v12 subdataWithRange:{12, objc_msgSend(v12, "length") - 12}];
    self = [(HAPFragmentationPacket *)self initWithData:v23 transactionIdentifier:v15 length:v16 offset:v17];
    v11 = self;
  }

LABEL_20:
  return v11;
}

- (HAPFragmentationPacket)initWithData:(id)a3 transactionIdentifier:(unsigned __int16)a4 length:(unsigned int)a5 offset:(unsigned int)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = HAPFragmentationPacket;
  v12 = [(HAPFragmentationPacket *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_data, a3);
    v13->_transactionIdentifier = a4;
    v13->_length = a5;
    v13->_offset = a6;
  }

  return v13;
}

- (id)debugDescription
{
  v3 = [(HAPFragmentationPacket *)self shortDescription];
  v4 = [(HAPFragmentationPacket *)self transactionIdentifier];
  v5 = [(HAPFragmentationPacket *)self length];
  v6 = [(HAPFragmentationPacket *)self offset];
  v7 = [(HAPFragmentationPacket *)self data];
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@ %p, Transaction Identifier = %u, Transaction Length = %u, Offset = %u, Data Length = %tu>", v3, self, v4, v5, v6, [v7 length]);

  return v8;
}

- (id)description
{
  v3 = [(HAPFragmentationPacket *)self shortDescription];
  v4 = [(HAPFragmentationPacket *)self transactionIdentifier];
  v5 = [(HAPFragmentationPacket *)self length];
  v6 = [(HAPFragmentationPacket *)self offset];
  v7 = [(HAPFragmentationPacket *)self data];
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@, Transaction Identifier = %u, Transaction Length = %u, Offset = %u, Data Length = %tu>", v3, v4, v5, v6, [v7 length]);

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = 1;
  if (v4 != self)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v5 = [(HAPFragmentationPacket *)self transactionIdentifier], v5 != [(HAPFragmentationPacket *)v4 transactionIdentifier]) || (v6 = [(HAPFragmentationPacket *)self offset], v6 != [(HAPFragmentationPacket *)v4 offset]))
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)serialize
{
  LOWORD(v8) = [(HAPFragmentationPacket *)self transactionIdentifier];
  *(&v8 + 2) = [(HAPFragmentationPacket *)self length];
  *(&v8 + 6) = [(HAPFragmentationPacket *)self offset];
  v9 = v8;
  v10 = WORD4(v8);
  v3 = [NSData dataWithBytes:&v9 length:12];
  v4 = [(HAPFragmentationPacket *)self data];
  v5 = +[NSMutableData dataWithCapacity:](NSMutableData, "dataWithCapacity:", [v4 length] + 12);

  [v5 appendData:v3];
  v6 = [(HAPFragmentationPacket *)self data];
  [v5 appendData:v6];

  return v5;
}

@end