@interface NESMPathControllerSSIDWatcher
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation NESMPathControllerSSIDWatcher

- (void)dealloc
{
  sub_1000A7D7C(&self->super.isa, a2);
  v3.receiver = self;
  v3.super_class = NESMPathControllerSSIDWatcher;
  [(NESMPathControllerSSIDWatcher *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (self)
  {
    Property = objc_getProperty(self, v11, 16, 1);
  }

  else
  {
    Property = 0;
  }

  if (Property == objectCopy && [pathCopy isEqualToString:@"status"])
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      if (self)
      {
        v28 = objc_getProperty(self, v15, 16, 1);
      }

      else
      {
        v28 = 0;
      }

      status = [v28 status];
      v30 = @"Invalid";
      if (status == 2)
      {
        v30 = @"Not Available";
      }

      if (status == 1)
      {
        v30 = @"Available";
      }

      v31 = v30;
      v32 = 138412290;
      v33 = v31;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "SSID status changed to %@", &v32, 0xCu);
    }

    if (self)
    {
      v17 = objc_getProperty(self, v16, 16, 1);
    }

    else
    {
      v17 = 0;
    }

    if ([v17 status] == 1)
    {
      if (self)
      {
        self->_hasBeenAssociated = 1;
        WeakRetained = objc_loadWeakRetained(&self->_parentSession);
        v21 = objc_getProperty(self, v20, 24, 1);
      }

      else
      {
        WeakRetained = 0;
        v21 = 0;
      }

      sub_1000A80D8(WeakRetained, v21, 1);
LABEL_12:

      goto LABEL_13;
    }

    if (self)
    {
      v22 = objc_getProperty(self, v18, 16, 1);
    }

    else
    {
      v22 = 0;
    }

    if ([v22 status] == 2 && self && self->_hasBeenAssociated)
    {
      WeakRetained = objc_loadWeakRetained(&self->_parentSession);
      v24 = objc_getProperty(self, v23, 24, 1);
      sub_1000A80D8(WeakRetained, v24, 0);
      sub_1000A7D7C(&self->super.isa, v25);
      if (WeakRetained)
      {
        v27 = objc_getProperty(WeakRetained, v26, 400, 1);
      }

      else
      {
        v27 = 0;
      }

      [v27 removeObject:self];
      goto LABEL_12;
    }
  }

LABEL_13:
}

@end