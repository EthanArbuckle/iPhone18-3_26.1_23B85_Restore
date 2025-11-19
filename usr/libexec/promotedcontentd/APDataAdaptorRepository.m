@interface APDataAdaptorRepository
+ (id)sharedRepository;
- (APDataAdaptorRepository)init;
- (APDataAdaptorRepository)initWithCoder:(id)a3;
- (id)adaptorWithIdentifier:(id)a3;
- (id)registerAdaptorClass:(Class)a3;
- (void)encodeWithCoder:(id)a3;
- (void)unregisterAdaptorClass:(Class)a3;
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

- (APDataAdaptorRepository)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = APDataAdaptorRepository;
  v5 = [(APDataAdaptorRepository *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"registeredAdaptors"];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(APDataAdaptorRepository *)self registeredAdaptors];
  [v4 encodeObject:v5 forKey:@"registeredAdaptors"];
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

- (id)adaptorWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(APDataAdaptorRepository *)self lock];
  [v5 lock];

  v6 = [(NSMutableDictionary *)self->_adaptors valueForKey:v4];
  if (!v6)
  {
    v7 = [(NSMutableDictionary *)self->_registeredAdaptors valueForKey:v4];
    if (v7 && (v8 = v7, [(objc_class *)v7 isSubclassOfClass:objc_opt_class()]))
    {
      v6 = objc_alloc_init(v8);
      if (v6)
      {
        [(NSMutableDictionary *)self->_adaptors setValue:v6 forKey:v4];
      }
    }

    else
    {
      v9 = APLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 138543362;
        v13 = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Adaptor %{public}@ is not a subclass of APDataAdaptor.", &v12, 0xCu);
      }

      v6 = 0;
    }
  }

  v10 = [(APDataAdaptorRepository *)self lock];
  [v10 unlock];

  return v6;
}

- (id)registerAdaptorClass:(Class)a3
{
  if (!a3 || ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v16 = NSStringFromClass(a3);
    v6 = [NSString stringWithFormat:@"Adaptor is of type '%@' must be of type 'APDataAdaptor'", v16];;

    v21 = NSLocalizedDescriptionKey;
    v22 = v6;
    v17 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v15 = [NSError errorWithDomain:@"com.apple.ap.dataadaptors" code:5203 userInfo:v17];
    goto LABEL_10;
  }

  v5 = [(APDataAdaptorRepository *)self lock];
  [v5 lock];

  v6 = [(objc_class *)a3 identifier];
  v7 = [(NSMutableDictionary *)self->_registeredAdaptors objectForKeyedSubscript:v6];
  if (!v7)
  {
    [(NSMutableDictionary *)self->_registeredAdaptors setObject:a3 forKey:v6];
    goto LABEL_8;
  }

  v8 = v7;
  v9 = NSStringFromClass(v7);
  v10 = NSStringFromClass(a3);
  v11 = [v9 isEqualToString:v10];

  if (v11)
  {
LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  v12 = NSStringFromClass(v8);
  v13 = [NSString stringWithFormat:@"Data adaptor '%@' is already registered for class %@", v6, v12];

  v19 = NSLocalizedDescriptionKey;
  v20 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v15 = [NSError errorWithDomain:@"com.apple.ap.dataadaptors" code:5204 userInfo:v14];

LABEL_9:
  v17 = [(APDataAdaptorRepository *)self lock];
  [v17 unlock];
LABEL_10:

  return v15;
}

- (void)unregisterAdaptorClass:(Class)a3
{
  v5 = [(APDataAdaptorRepository *)self lock];
  [v5 lock];

  registeredAdaptors = self->_registeredAdaptors;
  v7 = [(objc_class *)a3 identifier];
  [(NSMutableDictionary *)registeredAdaptors removeObjectForKey:v7];

  adaptors = self->_adaptors;
  v9 = [(objc_class *)a3 identifier];
  [(NSMutableDictionary *)adaptors removeObjectForKey:v9];

  v10 = [(APDataAdaptorRepository *)self lock];
  [v10 unlock];
}

@end