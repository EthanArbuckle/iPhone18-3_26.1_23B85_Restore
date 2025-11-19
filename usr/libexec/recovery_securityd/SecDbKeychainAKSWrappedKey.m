@interface SecDbKeychainAKSWrappedKey
- (SecDbKeychainAKSWrappedKey)initWithData:(id)a3;
- (id)initRefKeyWrappedKeyWithData:(id)a3 refKeyBlob:(id)a4;
- (id)initRegularWrappedKeyWithData:(id)a3;
@end

@implementation SecDbKeychainAKSWrappedKey

- (id)initRegularWrappedKeyWithData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SecDbKeychainAKSWrappedKey;
  v5 = [(SecDbKeychainAKSWrappedKey *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(SecDbKeychainSerializedAKSWrappedKey);
    serializedHolder = v5->_serializedHolder;
    v5->_serializedHolder = v6;

    [(SecDbKeychainSerializedAKSWrappedKey *)v5->_serializedHolder setWrappedKey:v4];
    [(SecDbKeychainSerializedAKSWrappedKey *)v5->_serializedHolder setType:0];
  }

  return v5;
}

- (id)initRefKeyWrappedKeyWithData:(id)a3 refKeyBlob:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SecDbKeychainAKSWrappedKey;
  v8 = [(SecDbKeychainAKSWrappedKey *)&v12 init];
  if (v8)
  {
    v9 = objc_alloc_init(SecDbKeychainSerializedAKSWrappedKey);
    serializedHolder = v8->_serializedHolder;
    v8->_serializedHolder = v9;

    [(SecDbKeychainSerializedAKSWrappedKey *)v8->_serializedHolder setWrappedKey:v6];
    [(SecDbKeychainSerializedAKSWrappedKey *)v8->_serializedHolder setRefKeyBlob:v7];
    [(SecDbKeychainSerializedAKSWrappedKey *)v8->_serializedHolder setType:1];
  }

  return v8;
}

- (SecDbKeychainAKSWrappedKey)initWithData:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SecDbKeychainAKSWrappedKey;
  v5 = [(SecDbKeychainAKSWrappedKey *)&v12 init];
  if (v5)
  {
    v6 = [[SecDbKeychainSerializedAKSWrappedKey alloc] initWithData:v4];
    serializedHolder = v5->_serializedHolder;
    v5->_serializedHolder = v6;

    v8 = [(SecDbKeychainSerializedAKSWrappedKey *)v5->_serializedHolder wrappedKey];
    if (!v8)
    {
      goto LABEL_5;
    }

    v9 = v8;
    if ([(SecDbKeychainSerializedAKSWrappedKey *)v5->_serializedHolder type]!= 1)
    {
LABEL_6:

      goto LABEL_7;
    }

    v10 = [(SecDbKeychainSerializedAKSWrappedKey *)v5->_serializedHolder refKeyBlob];

    if (!v10)
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

@end