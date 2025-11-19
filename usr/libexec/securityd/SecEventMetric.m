@interface SecEventMetric
+ (id)supportedAttributeClasses;
- (SecEventMetric)initWithCoder:(id)a3;
- (SecEventMetric)initWithEventName:(id)a3;
- (id)generateError:(id)a3;
- (id)genericEvent;
- (void)encodeWithCoder:(id)a3;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
@end

@implementation SecEventMetric

- (id)generateError:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SECC2MPError);
  v6 = [v4 domain];
  [(SECC2MPError *)v5 setErrorDomain:v6];

  -[SECC2MPError setErrorCode:](v5, "setErrorCode:", [v4 code]);
  if (+[SecC2DeviceInfo isAppleInternal])
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:NSLocalizedDescriptionKey];
    [(SECC2MPError *)v5 setErrorDescription:v8];
  }

  v9 = [v4 userInfo];
  v10 = [v9 objectForKeyedSubscript:NSUnderlyingErrorKey];

  if (v10)
  {
    v11 = [(SecEventMetric *)self generateError:v10];
    [(SECC2MPError *)v5 setUnderlyingError:v11];
  }

  return v5;
}

- (id)genericEvent
{
  v3 = objc_alloc_init(SECC2MPGenericEvent);
  v4 = [(SecEventMetric *)self eventName];
  [(SECC2MPGenericEvent *)v3 setName:v4];

  [(SECC2MPGenericEvent *)v3 setType:201];
  [(SECC2MPGenericEvent *)v3 setTimestampStart:0];
  [(SECC2MPGenericEvent *)v3 setTimestampEnd:0];
  v5 = [(SecEventMetric *)self attributes];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001FC184;
  v10[3] = &unk_100344B88;
  v10[4] = self;
  v6 = v3;
  v11 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = [objc_opt_class() supportedAttributeClasses];
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v9)
      {
        v10 = *v18;
        while (2)
        {
          v11 = 0;
          do
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v17 + 1) + 8 * v11);
            if (objc_opt_isKindOfClass())
            {

              goto LABEL_14;
            }

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138543618;
        v22 = v7;
        v23 = 2114;
        v24 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "genericMetric  %{public}@ with unhandled metric type: %{public}@", buf, 0x16u);
      }
    }

    else
    {
LABEL_14:
      v15 = self;
      objc_sync_enter(v15);
      v16 = [(SecEventMetric *)v15 attributes];
      [v16 setObject:v6 forKeyedSubscript:v7];

      objc_sync_exit(v15);
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SecEventMetric *)self eventName];
  [v4 encodeObject:v5 forKey:@"eventName"];

  v6 = [(SecEventMetric *)self attributes];
  [v4 encodeObject:v6 forKey:@"attributes"];
}

- (SecEventMetric)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SecEventMetric;
  v5 = [(SecEventMetric *)&v14 init];
  if (v5)
  {
    v6 = [objc_opt_class() supportedAttributeClasses];
    v7 = [v6 mutableCopy];

    [v7 addObject:objc_opt_class()];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventName"];
    eventName = v5->_eventName;
    v5->_eventName = v8;

    v10 = [v4 decodeObjectOfClasses:v7 forKey:@"attributes"];
    attributes = v5->_attributes;
    v5->_attributes = v10;

    if (!v5->_eventName || !v5->_attributes)
    {

      v12 = 0;
      goto LABEL_7;
    }
  }

  v12 = v5;
LABEL_7:

  return v12;
}

- (SecEventMetric)initWithEventName:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SecEventMetric;
  v5 = [(SecEventMetric *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(SecEventMetric *)v5 setEventName:v4];
    v7 = +[NSMutableDictionary dictionary];
    [(SecEventMetric *)v6 setAttributes:v7];

    v8 = v6;
  }

  return v6;
}

+ (id)supportedAttributeClasses
{
  if (qword_10039E320 != -1)
  {
    dispatch_once(&qword_10039E320, &stru_100344B60);
  }

  v3 = qword_10039E318;

  return v3;
}

@end