@interface OTLAContextActualAdapter
- (BOOL)setCredential:(id)a3 type:(int64_t)a4 laContext:(id *)a5 error:(id *)a6;
- (void)discardPasscodeStashSecret:(unsigned __int8)a3;
@end

@implementation OTLAContextActualAdapter

- (void)discardPasscodeStashSecret:(unsigned __int8)a3
{
  v3 = a3;
  v5 = +[NSData data];
  v15 = 0;
  v16 = 0;
  v6 = [(OTLAContextActualAdapter *)self setCredential:v5 type:-12 laContext:&v16 error:&v15];
  v7 = v16;
  v8 = v15;

  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = sub_100006274("octagon");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "failed to discard passcode stash: %@", buf, 0xCu);
    }
  }

  if ((v3 - 1) <= 1)
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "enabling cache flow after discarding passcode stash", buf, 2u);
    }

    v12 = aks_enable_cache_flow();
    if (v12)
    {
      v13 = v12;
      v14 = sub_100006274("octagon");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v18) = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "aks_enable_cache_flow failed: %x", buf, 8u);
      }
    }
  }
}

- (BOOL)setCredential:(id)a3 type:(int64_t)a4 laContext:(id *)a5 error:(id *)a6
{
  v9 = a3;
  v10 = objc_alloc_init(LAContext);
  v11 = v10;
  if (a5)
  {
    v12 = v10;
    *a5 = v11;
  }

  v13 = [v11 setCredential:v9 type:a4 error:a6];

  return v13;
}

@end