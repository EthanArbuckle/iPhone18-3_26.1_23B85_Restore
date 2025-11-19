@interface NFSecureElementHandle
- (BOOL)hasSentRAPDU;
- (BOOL)hasTransactionEnded;
- (BOOL)isFieldPresent;
- (BOOL)setAlwaysOn:(BOOL)a3;
- (NFSecureElementHandle)initWithID:(int)a3 driverWrapper:(id)a4 seInfo:(id)a5;
- (id)transceive:(id)a3 toOS:(int64_t)a4 redact:(BOOL)a5 error:(id *)a6;
@end

@implementation NFSecureElementHandle

- (NFSecureElementHandle)initWithID:(int)a3 driverWrapper:(id)a4 seInfo:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = NFSecureElementHandle;
  v11 = [(NFSecureElementHandle *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_identifier = a3;
    objc_storeStrong(&v11->_driver, a4);
    objc_storeStrong(&v12->_info, a5);
  }

  return v12;
}

- (id)transceive:(id)a3 toOS:(int64_t)a4 redact:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v11 = a3;
  driver = self->_driver;
  if (!driver)
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"NFSecureElementHandle.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"_driver != nil"}];

    driver = self->_driver;
  }

  v13 = sub_100016888(driver, self->_identifier, v11, a4, 0, v7, a6);

  return v13;
}

- (BOOL)setAlwaysOn:(BOOL)a3
{
  driver = self->_driver;
  if (!driver)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"NFSecureElementHandle.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"_driver != nil"}];

    driver = self->_driver;
  }

  identifier = self->_identifier;

  return sub_100015B4C(driver);
}

- (BOOL)isFieldPresent
{
  driver = self->_driver;
  if (driver)
  {
    [(NSLock *)driver->_fieldPresentLock lock];
    fieldPresent = driver->_fieldPresent;
    [(NSLock *)driver->_fieldPresentLock unlock];
  }

  else
  {
    return 0;
  }

  return fieldPresent;
}

- (BOOL)hasTransactionEnded
{
  driver = self->_driver;
  if (driver)
  {
    LOBYTE(driver) = driver->_hasTransactionEnded;
  }

  return driver & 1;
}

- (BOOL)hasSentRAPDU
{
  driver = self->_driver;
  if (driver)
  {
    LOBYTE(driver) = driver->_hasSentRAPDU;
  }

  return driver & 1;
}

@end