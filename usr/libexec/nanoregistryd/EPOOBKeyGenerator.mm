@interface EPOOBKeyGenerator
- (void)clear;
- (void)setKey:(id)key;
@end

@implementation EPOOBKeyGenerator

- (void)setKey:(id)key
{
  keyCopy = key;
  key = self->_key;
  if (key != keyCopy && ([(NSData *)key isEqual:keyCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_key, key);
    ownerDelegate = [(EPResource *)self ownerDelegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = sub_1000A98C0();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

      if (v10)
      {
        v11 = sub_1000A98C0();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          ownerDelegate2 = [(EPResource *)self ownerDelegate];
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          ownerDelegate3 = [(EPResource *)self ownerDelegate];
          v16 = ownerDelegate3;
          v17 = @"present";
          *v19 = 138412802;
          *&v19[4] = v14;
          if (!keyCopy)
          {
            v17 = @"nil";
          }

          *&v19[12] = 2048;
          *&v19[14] = ownerDelegate3;
          v20 = 2112;
          v21 = v17;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calling generatorUpdatedKey: on %@[%p] with key %@", v19, 0x20u);
        }
      }

      ownerDelegate4 = [(EPResource *)self ownerDelegate];
      [ownerDelegate4 generatorUpdatedKey:self];
    }
  }
}

- (void)clear
{
  ownerDelegate = [(EPResource *)self ownerDelegate];
  [ownerDelegate clear];
}

@end