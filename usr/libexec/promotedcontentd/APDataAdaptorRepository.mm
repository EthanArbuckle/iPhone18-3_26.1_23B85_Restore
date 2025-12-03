@interface APDataAdaptorRepository
+ (id)sharedRepository;
- (APDataAdaptorRepository)init;
- (APDataAdaptorRepository)initWithCoder:(id)coder;
- (id)adaptorWithIdentifier:(id)identifier;
- (id)registerAdaptorClass:(Class)class;
- (void)encodeWithCoder:(id)coder;
- (void)unregisterAdaptorClass:(Class)class;
@end

@implementation APDataAdaptorRepository

+ (id)sharedRepository
{
  if (qword_1004DF630 != -1)
  {
    sub_10039392C();
  }

  v3 = qword_1004DF628;

  return v3;
}

- (APDataAdaptorRepository)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = APDataAdaptorRepository;
  v5 = [(APDataAdaptorRepository *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"registeredAdaptors"];
    registeredAdaptors = v5->_registeredAdaptors;
    v5->_registeredAdaptors = v6;

    v8 = +[NSMutableDictionary dictionary];
    adaptors = v5->_adaptors;
    v5->_adaptors = v8;

    v10 = [[APUnfairLock alloc] initWithOptions:1];
    lock = v5->_lock;
    v5->_lock = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  registeredAdaptors = [(APDataAdaptorRepository *)self registeredAdaptors];
  [coderCopy encodeObject:registeredAdaptors forKey:@"registeredAdaptors"];
}

- (APDataAdaptorRepository)init
{
  v11.receiver = self;
  v11.super_class = APDataAdaptorRepository;
  v2 = [(APDataAdaptorRepository *)&v11 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    registeredAdaptors = v2->_registeredAdaptors;
    v2->_registeredAdaptors = v3;

    v5 = +[NSMutableDictionary dictionary];
    adaptors = v2->_adaptors;
    v2->_adaptors = v5;

    v7 = [[APUnfairLock alloc] initWithOptions:1];
    lock = v2->_lock;
    v2->_lock = v7;

    v9 = v2;
  }

  return v2;
}

- (id)adaptorWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  lock = [(APDataAdaptorRepository *)self lock];
  [lock lock];

  v6 = [(NSMutableDictionary *)self->_adaptors valueForKey:identifierCopy];
  if (!v6)
  {
    v7 = [(NSMutableDictionary *)self->_registeredAdaptors valueForKey:identifierCopy];
    if (v7 && (v8 = v7, [(objc_class *)v7 isSubclassOfClass:objc_opt_class()]))
    {
      v6 = objc_alloc_init(v8);
      if (v6)
      {
        [(NSMutableDictionary *)self->_adaptors setValue:v6 forKey:identifierCopy];
      }
    }

    else
    {
      v9 = APLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 138543362;
        v13 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Adaptor %{public}@ is not a subclass of APDataAdaptor.", &v12, 0xCu);
      }

      v6 = 0;
    }
  }

  lock2 = [(APDataAdaptorRepository *)self lock];
  [lock2 unlock];

  return v6;
}

- (id)registerAdaptorClass:(Class)class
{
  if (!class || ([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v16 = NSStringFromClass(class);
    identifier = [NSString stringWithFormat:@"Adaptor is of type '%@' must be of type 'APDataAdaptor'", v16];;

    v21 = NSLocalizedDescriptionKey;
    v22 = identifier;
    lock2 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v15 = [NSError errorWithDomain:@"com.apple.ap.dataadaptors" code:5203 userInfo:lock2];
    goto LABEL_10;
  }

  lock = [(APDataAdaptorRepository *)self lock];
  [lock lock];

  identifier = [(objc_class *)class identifier];
  v7 = [(NSMutableDictionary *)self->_registeredAdaptors objectForKeyedSubscript:identifier];
  if (!v7)
  {
    [(NSMutableDictionary *)self->_registeredAdaptors setObject:class forKey:identifier];
    goto LABEL_8;
  }

  v8 = v7;
  v9 = NSStringFromClass(v7);
  v10 = NSStringFromClass(class);
  v11 = [v9 isEqualToString:v10];

  if (v11)
  {
LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  v12 = NSStringFromClass(v8);
  v13 = [NSString stringWithFormat:@"Data adaptor '%@' is already registered for class %@", identifier, v12];

  v19 = NSLocalizedDescriptionKey;
  v20 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v15 = [NSError errorWithDomain:@"com.apple.ap.dataadaptors" code:5204 userInfo:v14];

LABEL_9:
  lock2 = [(APDataAdaptorRepository *)self lock];
  [lock2 unlock];
LABEL_10:

  return v15;
}

- (void)unregisterAdaptorClass:(Class)class
{
  lock = [(APDataAdaptorRepository *)self lock];
  [lock lock];

  registeredAdaptors = self->_registeredAdaptors;
  identifier = [(objc_class *)class identifier];
  [(NSMutableDictionary *)registeredAdaptors removeObjectForKey:identifier];

  adaptors = self->_adaptors;
  identifier2 = [(objc_class *)class identifier];
  [(NSMutableDictionary *)adaptors removeObjectForKey:identifier2];

  lock2 = [(APDataAdaptorRepository *)self lock];
  [lock2 unlock];
}

@end