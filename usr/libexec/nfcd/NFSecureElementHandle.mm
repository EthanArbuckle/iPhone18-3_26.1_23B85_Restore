@interface NFSecureElementHandle
- (BOOL)hasSentRAPDU;
- (BOOL)hasTransactionEnded;
- (BOOL)isFieldPresent;
- (BOOL)setAlwaysOn:(BOOL)on;
- (NFSecureElementHandle)initWithID:(int)d driverWrapper:(id)wrapper seInfo:(id)info;
- (id)transceive:(id)transceive toOS:(int64_t)s redact:(BOOL)redact error:(id *)error;
@end

@implementation NFSecureElementHandle

- (NFSecureElementHandle)initWithID:(int)d driverWrapper:(id)wrapper seInfo:(id)info
{
  wrapperCopy = wrapper;
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = NFSecureElementHandle;
  v11 = [(NFSecureElementHandle *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_identifier = d;
    objc_storeStrong(&v11->_driver, wrapper);
    objc_storeStrong(&v12->_info, info);
  }

  return v12;
}

- (id)transceive:(id)transceive toOS:(int64_t)s redact:(BOOL)redact error:(id *)error
{
  redactCopy = redact;
  transceiveCopy = transceive;
  driver = self->_driver;
  if (!driver)
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"NFSecureElementHandle.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"_driver != nil"}];

    driver = self->_driver;
  }

  v13 = sub_100016888(driver, self->_identifier, transceiveCopy, s, 0, redactCopy, error);

  return v13;
}

- (BOOL)setAlwaysOn:(BOOL)on
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