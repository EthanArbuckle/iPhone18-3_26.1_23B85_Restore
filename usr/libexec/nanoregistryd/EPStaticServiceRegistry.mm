@interface EPStaticServiceRegistry
- (EPStaticServiceRegistry)init;
- (EPStaticServiceRegistry)initWithQueue:(id)queue;
- (id)instantiateServiceByClass:(Class)class;
- (id)optionalServiceFromClass:(Class)class;
- (id)optionalServiceFromProtocol:(id)protocol;
- (void)_removeService:(id)service;
- (void)addService:(id)service;
- (void)removeService:(id)service;
@end

@implementation EPStaticServiceRegistry

- (EPStaticServiceRegistry)init
{
  v9.receiver = self;
  v9.super_class = EPStaticServiceRegistry;
  v2 = [(EPStaticServiceRegistry *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = +[NSMutableDictionary dictionary];
    servicesByProtocol = v3->_servicesByProtocol;
    v3->_servicesByProtocol = v4;

    v6 = +[NSMutableDictionary dictionary];
    servicesByClass = v3->_servicesByClass;
    v3->_servicesByClass = v6;
  }

  return v3;
}

- (EPStaticServiceRegistry)initWithQueue:(id)queue
{
  queueCopy = queue;
  v6 = [(EPStaticServiceRegistry *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

- (id)optionalServiceFromClass:(Class)class
{
  v4 = [NSValue valueWithNonretainedObject:?];
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_servicesByClass objectForKeyedSubscript:v4];
  if (!v5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    allValues = [(NSMutableDictionary *)self->_servicesByClass allValues];
    v7 = [allValues copy];

    v5 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            v5 = v10;
            [(NSMutableDictionary *)self->_servicesByClass setObject:v5 forKeyedSubscript:v4];
            goto LABEL_12;
          }
        }

        v5 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)optionalServiceFromProtocol:(id)protocol
{
  protocolCopy = protocol;
  v5 = [NSValue valueWithNonretainedObject:protocolCopy];
  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSMutableDictionary *)self->_servicesByProtocol objectForKeyedSubscript:v5];
  if (!v6)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    allValues = [(NSMutableDictionary *)self->_servicesByClass allValues];
    v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([v10 conformsToProtocol:protocolCopy])
          {
            v6 = v10;
            [(NSMutableDictionary *)self->_servicesByProtocol setObject:v6 forKeyedSubscript:v5];
            goto LABEL_12;
          }
        }

        v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)addService:(id)service
{
  serviceCopy = service;
  v5 = sub_1000034AC();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = sub_1000034AC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v17 = 136315650;
      v18 = "[EPStaticServiceRegistry addService:]";
      v19 = 2112;
      v20 = v9;
      v21 = 2048;
      v22 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Request to add class %@[%p] to service registry", &v17, 0x20u);
    }
  }

  os_unfair_lock_lock(&self->_lock);
  v10 = [NSValue valueWithNonretainedObject:objc_opt_class()];
  v11 = [(NSMutableDictionary *)self->_servicesByClass objectForKeyedSubscript:v10];
  if (v11 != serviceCopy)
  {
    [(EPStaticServiceRegistry *)self _removeService:v11];
    v12 = sub_1000034AC();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = sub_1000034AC();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = 138412546;
        v18 = v16;
        v19 = 2048;
        v20 = serviceCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Adding class %@[%p] to service registry", &v17, 0x16u);
      }
    }

    [(NSMutableDictionary *)self->_servicesByClass setObject:serviceCopy forKeyedSubscript:v10];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeService:(id)service
{
  serviceCopy = service;
  os_unfair_lock_lock(&self->_lock);
  [(EPStaticServiceRegistry *)self _removeService:serviceCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_removeService:(id)service
{
  serviceCopy = service;
  v5 = sub_1000034AC();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = sub_1000034AC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 136315650;
      v41 = "[EPStaticServiceRegistry _removeService:]";
      v42 = 2112;
      v43 = v9;
      v44 = 2048;
      v45 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Request to remove class %@[%p] to service registry", buf, 0x20u);
    }
  }

  if (serviceCopy)
  {
    v10 = sub_1000034AC();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = sub_1000034AC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138412546;
        v41 = v14;
        v42 = 2048;
        v43 = serviceCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Removing class %@[%p] from service registry", buf, 0x16u);
      }
    }

    v15 = [NSValue valueWithNonretainedObject:objc_opt_class()];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v16 = [(NSMutableDictionary *)self->_servicesByClass copy];
    v17 = [v16 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v35;
      do
      {
        v20 = 0;
        v21 = v15;
        do
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v15 = *(*(&v34 + 1) + 8 * v20);

          v22 = [(NSMutableDictionary *)self->_servicesByClass objectForKeyedSubscript:v15];
          if (v22 == serviceCopy)
          {
            [(NSMutableDictionary *)self->_servicesByClass removeObjectForKey:v15];
          }

          v20 = v20 + 1;
          v21 = v15;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v18);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v23 = [(NSMutableDictionary *)self->_servicesByProtocol copy];
    v24 = [v23 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v31;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v31 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v30 + 1) + 8 * i);
          v29 = [(NSMutableDictionary *)self->_servicesByProtocol objectForKeyedSubscript:v28];
          if (v29 == serviceCopy)
          {
            [(NSMutableDictionary *)self->_servicesByProtocol removeObjectForKey:v28];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v25);
    }
  }
}

- (id)instantiateServiceByClass:(Class)class
{
  if ([(objc_class *)class conformsToProtocol:&OBJC_PROTOCOL___EPService]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [(objc_class *)class newService:self];
    [(EPStaticServiceRegistry *)self addService:v5];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end