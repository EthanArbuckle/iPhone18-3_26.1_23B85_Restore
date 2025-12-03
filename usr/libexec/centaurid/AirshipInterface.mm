@interface AirshipInterface
- (BOOL)start:(id *)start;
- (BOOL)write:(id)write;
- (id)read:(unint64_t)read;
- (void)dealloc;
- (void)stop;
@end

@implementation AirshipInterface

- (void)dealloc
{
  if (self->_interface)
  {
    v2 = sub_10002B2E4(self);
    [(AirshipInterface *)v2 start:v3, v4];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = AirshipInterface;
    [(AirshipInterface *)&v5 dealloc];
  }
}

- (BOOL)start:(id *)start
{
  if (self->_interface)
  {
    *start = @"alreadyStarted";
    v19 = sub_100025204();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10002B394();
    }

    goto LABEL_17;
  }

  v6 = sub_100025204();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    *buf = 138543618;
    v24 = v7;
    v25 = 2114;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: creating interface", buf, 0x16u);
  }

  v9 = airship_ch_interface_create();
  self->_interface = v9;
  if (!v9)
  {
    *start = @"createFailure";
    v19 = sub_100025204();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10002B434();
    }

    goto LABEL_17;
  }

  airship_ch_interface_set_ring_sizes();
  v10 = sub_100025204();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(a2);
    *buf = 138543618;
    v24 = v11;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: opening interface", buf, 0x16u);
  }

  interface = self->_interface;
  v14 = airship_ch_interface_open();
  if (v14)
  {
    v20 = v14;
    *start = [NSString stringWithFormat:@"openFailure:0x%08x", v14];
    v19 = sub_100025204();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = [objc_opt_class() description];
      v22 = NSStringFromSelector(a2);
      *buf = 138543874;
      v24 = v21;
      v25 = 2114;
      v26 = v22;
      v27 = 1024;
      v28 = v20;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to open interface: 0x%x", buf, 0x1Cu);
    }

LABEL_17:

    [(AirshipInterface *)self stop];
    return 0;
  }

  v15 = sub_100025204();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [objc_opt_class() description];
    v17 = NSStringFromSelector(a2);
    *buf = 138543618;
    v24 = v16;
    v25 = 2114;
    v26 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: success", buf, 0x16u);
  }

  return 1;
}

- (void)stop
{
  if (self->_interface)
  {
    v4 = sub_100025204();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [objc_opt_class() description];
      v6 = NSStringFromSelector(a2);
      v15 = 138543618;
      v16 = v5;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: closing interface", &v15, 0x16u);
    }

    interface = self->_interface;
    airship_ch_interface_close();
    v8 = sub_100025204();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [objc_opt_class() description];
      v10 = NSStringFromSelector(a2);
      v15 = 138543618;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: destroying interface", &v15, 0x16u);
    }

    v11 = self->_interface;
    airship_ch_interface_destroy();
    self->_interface = 0;
    v12 = sub_100025204();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [objc_opt_class() description];
      v14 = NSStringFromSelector(a2);
      v15 = 138543618;
      v16 = v13;
      v17 = 2114;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: interface destroyed", &v15, 0x16u);
    }
  }
}

- (BOOL)write:(id)write
{
  writeCopy = write;
  v6 = writeCopy;
  if (!self->_interface)
  {
    v13 = sub_100025204();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10002B4D4();
    }

    goto LABEL_16;
  }

  if (![writeCopy length] || objc_msgSend(v6, "length") >> 32)
  {
    v13 = sub_100025204();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_16:
      v17 = 0;
      goto LABEL_10;
    }

    v19 = [objc_opt_class() description];
    v20 = NSStringFromSelector(a2);
    v24 = 138543874;
    v25 = v19;
    v26 = 2114;
    v27 = v20;
    v28 = 2048;
    v29 = [v6 length];
    v21 = "%{public}@::%{public}@: invalid data length %lu";
    v22 = v13;
    v23 = 32;
LABEL_18:
    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v21, &v24, v23);

    goto LABEL_16;
  }

  v7 = sub_100025204();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [objc_opt_class() description];
    v9 = NSStringFromSelector(a2);
    v24 = 138543874;
    v25 = v8;
    v26 = 2114;
    v27 = v9;
    v28 = 2048;
    v29 = [v6 length];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: writing %lu bytes", &v24, 0x20u);
  }

  interface = self->_interface;
  [v6 bytes];
  [v6 length];
  v11 = airship_ch_interface_write();
  v12 = sub_100025204();
  v13 = v12;
  if (v11)
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v19 = [objc_opt_class() description];
    v20 = NSStringFromSelector(a2);
    v24 = 138543874;
    v25 = v19;
    v26 = 2114;
    v27 = v20;
    v28 = 1024;
    LODWORD(v29) = v11;
    v21 = "%{public}@::%{public}@: failed to write: 0x%x";
    v22 = v13;
    v23 = 28;
    goto LABEL_18;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [objc_opt_class() description];
    v15 = NSStringFromSelector(a2);
    v16 = [v6 length];
    v24 = 138543874;
    v25 = v14;
    v26 = 2114;
    v27 = v15;
    v28 = 2048;
    v29 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: wrote %lu bytes", &v24, 0x20u);
  }

  v17 = 1;
LABEL_10:

  return v17;
}

- (id)read:(unint64_t)read
{
  if (self->_interface)
  {
    v6 = read - 0x100000000;
    v7 = sub_100025204();
    v8 = v7;
    if (v6 <= 0xFFFFFFFF00000000)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v24 = [objc_opt_class() description];
        v25 = NSStringFromSelector(a2);
        *buf = 138543874;
        v27 = v24;
        v28 = 2114;
        v29 = v25;
        v30 = 2048;
        readCopy2 = read;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: invalid maximum size %lu", buf, 0x20u);
      }
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [objc_opt_class() description];
        v10 = NSStringFromSelector(a2);
        *buf = 138543874;
        v27 = v9;
        v28 = 2114;
        v29 = v10;
        v30 = 2048;
        readCopy2 = read;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: reading up to %lu bytes", buf, 0x20u);
      }

      v11 = malloc_type_calloc(1uLL, read, 0xB72CCBCuLL);
      if (v11)
      {
        v12 = v11;
        interface = self->_interface;
        v14 = airship_ch_interface_read();
        if (v14)
        {
          v20 = v14;
          v21 = sub_100025204();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = [objc_opt_class() description];
            v23 = NSStringFromSelector(a2);
            *buf = 138543874;
            v27 = v22;
            v28 = 2114;
            v29 = v23;
            v30 = 1024;
            LODWORD(readCopy2) = v20;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to read: 0x%x", buf, 0x1Cu);
          }
        }

        else
        {
          v15 = sub_100025204();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [objc_opt_class() description];
            v17 = NSStringFromSelector(a2);
            *buf = 138543874;
            v27 = v16;
            v28 = 2114;
            v29 = v17;
            v30 = 1024;
            LODWORD(readCopy2) = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: received %u bytes", buf, 0x1Cu);
          }

          v18 = [NSData dataWithBytes:v12 length:0];
          if (v18)
          {
            goto LABEL_10;
          }

          v21 = sub_100025204();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_10002B574();
          }
        }

        v18 = 0;
LABEL_10:
        free(v12);
        goto LABEL_11;
      }

      sub_10002B614(self);
    }
  }

  else
  {
    sub_10002B6DC(self);
  }

  v18 = 0;
LABEL_11:

  return v18;
}

@end