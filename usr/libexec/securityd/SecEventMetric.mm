@interface SecEventMetric
+ (id)supportedAttributeClasses;
- (SecEventMetric)initWithCoder:(id)coder;
- (SecEventMetric)initWithEventName:(id)name;
- (id)generateError:(id)error;
- (id)genericEvent;
- (void)encodeWithCoder:(id)coder;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation SecEventMetric

- (id)generateError:(id)error
{
  errorCopy = error;
  v5 = objc_alloc_init(SECC2MPError);
  domain = [errorCopy domain];
  [(SECC2MPError *)v5 setErrorDomain:domain];

  -[SECC2MPError setErrorCode:](v5, "setErrorCode:", [errorCopy code]);
  if (+[SecC2DeviceInfo isAppleInternal])
  {
    userInfo = [errorCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:NSLocalizedDescriptionKey];
    [(SECC2MPError *)v5 setErrorDescription:v8];
  }

  userInfo2 = [errorCopy userInfo];
  v10 = [userInfo2 objectForKeyedSubscript:NSUnderlyingErrorKey];

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
  eventName = [(SecEventMetric *)self eventName];
  [(SECC2MPGenericEvent *)v3 setName:eventName];

  [(SECC2MPGenericEvent *)v3 setType:201];
  [(SECC2MPGenericEvent *)v3 setTimestampStart:0];
  [(SECC2MPGenericEvent *)v3 setTimestampEnd:0];
  attributes = [(SecEventMetric *)self attributes];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001FC184;
  v10[3] = &unk_100344B88;
  v10[4] = self;
  v6 = v3;
  v11 = v6;
  [attributes enumerateKeysAndObjectsUsingBlock:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  objectCopy = object;
  subscriptCopy = subscript;
  if (subscriptCopy)
  {
    if (objectCopy)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      supportedAttributeClasses = [objc_opt_class() supportedAttributeClasses];
      v9 = [supportedAttributeClasses countByEnumeratingWithState:&v17 objects:v25 count:16];
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
              objc_enumerationMutation(supportedAttributeClasses);
            }

            v12 = *(*(&v17 + 1) + 8 * v11);
            if (objc_opt_isKindOfClass())
            {

              goto LABEL_14;
            }

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [supportedAttributeClasses countByEnumeratingWithState:&v17 objects:v25 count:16];
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
        v22 = subscriptCopy;
        v23 = 2114;
        v24 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "genericMetric  %{public}@ with unhandled metric type: %{public}@", buf, 0x16u);
      }
    }

    else
    {
LABEL_14:
      selfCopy = self;
      objc_sync_enter(selfCopy);
      attributes = [(SecEventMetric *)selfCopy attributes];
      [attributes setObject:objectCopy forKeyedSubscript:subscriptCopy];

      objc_sync_exit(selfCopy);
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  eventName = [(SecEventMetric *)self eventName];
  [coderCopy encodeObject:eventName forKey:@"eventName"];

  attributes = [(SecEventMetric *)self attributes];
  [coderCopy encodeObject:attributes forKey:@"attributes"];
}

- (SecEventMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = SecEventMetric;
  v5 = [(SecEventMetric *)&v14 init];
  if (v5)
  {
    supportedAttributeClasses = [objc_opt_class() supportedAttributeClasses];
    v7 = [supportedAttributeClasses mutableCopy];

    [v7 addObject:objc_opt_class()];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventName"];
    eventName = v5->_eventName;
    v5->_eventName = v8;

    v10 = [coderCopy decodeObjectOfClasses:v7 forKey:@"attributes"];
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

- (SecEventMetric)initWithEventName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = SecEventMetric;
  v5 = [(SecEventMetric *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(SecEventMetric *)v5 setEventName:nameCopy];
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