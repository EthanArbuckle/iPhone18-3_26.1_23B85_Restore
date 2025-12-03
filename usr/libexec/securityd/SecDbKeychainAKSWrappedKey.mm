@interface SecDbKeychainAKSWrappedKey
- (SecDbKeychainAKSWrappedKey)initWithData:(id)data;
- (id)initRefKeyWrappedKeyWithData:(id)data refKeyBlob:(id)blob;
- (id)initRegularWrappedKeyWithData:(id)data;
@end

@implementation SecDbKeychainAKSWrappedKey

- (SecDbKeychainAKSWrappedKey)initWithData:(id)data
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = SecDbKeychainAKSWrappedKey;
  v5 = [(SecDbKeychainAKSWrappedKey *)&v12 init];
  if (v5)
  {
    v6 = [[SecDbKeychainSerializedAKSWrappedKey alloc] initWithData:dataCopy];
    serializedHolder = v5->_serializedHolder;
    v5->_serializedHolder = v6;

    wrappedKey = [(SecDbKeychainSerializedAKSWrappedKey *)v5->_serializedHolder wrappedKey];
    if (!wrappedKey)
    {
      goto LABEL_5;
    }

    v9 = wrappedKey;
    if ([(SecDbKeychainSerializedAKSWrappedKey *)v5->_serializedHolder type]!= 1)
    {
LABEL_6:

      goto LABEL_7;
    }

    refKeyBlob = [(SecDbKeychainSerializedAKSWrappedKey *)v5->_serializedHolder refKeyBlob];

    if (!refKeyBlob)
    {
LABEL_5:
      v9 = v5;
      v5 = 0;
      goto LABEL_6;
    }
  }

LABEL_7:

  return v5;
}

- (id)initRefKeyWrappedKeyWithData:(id)data refKeyBlob:(id)blob
{
  dataCopy = data;
  blobCopy = blob;
  v12.receiver = self;
  v12.super_class = SecDbKeychainAKSWrappedKey;
  v8 = [(SecDbKeychainAKSWrappedKey *)&v12 init];
  if (v8)
  {
    v9 = objc_alloc_init(SecDbKeychainSerializedAKSWrappedKey);
    serializedHolder = v8->_serializedHolder;
    v8->_serializedHolder = v9;

    [(SecDbKeychainSerializedAKSWrappedKey *)v8->_serializedHolder setWrappedKey:dataCopy];
    [(SecDbKeychainSerializedAKSWrappedKey *)v8->_serializedHolder setRefKeyBlob:blobCopy];
    [(SecDbKeychainSerializedAKSWrappedKey *)v8->_serializedHolder setType:1];
  }

  return v8;
}

- (id)initRegularWrappedKeyWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = SecDbKeychainAKSWrappedKey;
  v5 = [(SecDbKeychainAKSWrappedKey *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(SecDbKeychainSerializedAKSWrappedKey);
    serializedHolder = v5->_serializedHolder;
    v5->_serializedHolder = v6;

    [(SecDbKeychainSerializedAKSWrappedKey *)v5->_serializedHolder setWrappedKey:dataCopy];
    [(SecDbKeychainSerializedAKSWrappedKey *)v5->_serializedHolder setType:0];
  }

  return v5;
}

@end