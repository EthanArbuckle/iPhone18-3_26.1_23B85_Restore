@interface DIVerifyParams
- (BOOL)shouldValidateShadows;
- (BOOL)verifyWithError:(id *)a3;
- (DIVerifyParams)initWithURL:(id)a3 error:(id *)a4;
- (DIVerifyParams)initWithURL:(id)a3 shadowURLs:(id)a4 error:(id *)a5;
@end

@implementation DIVerifyParams

- (DIVerifyParams)initWithURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[NSArray array];
  v8 = [(DIVerifyParams *)self initWithURL:v6 shadowURLs:v7 error:a4];

  return v8;
}

- (DIVerifyParams)initWithURL:(id)a3 shadowURLs:(id)a4 error:(id *)a5
{
  v8 = a4;
  v15.receiver = self;
  v15.super_class = DIVerifyParams;
  v9 = [(DIBaseParams *)&v15 initWithURL:a3 error:a5];
  v10 = v9;
  if (!v9 || -[DIBaseParams openExistingImageWithError:](v9, "openExistingImageWithError:", a5) && (-[DIBaseParams shadowChain](v10, "shadowChain"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 addShadowURLs:v8 error:a5], v11, v12))
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)shouldValidateShadows
{
  v2 = [(DIBaseParams *)self shadowChain];
  v3 = [v2 shouldValidate];

  return v3;
}

- (BOOL)verifyWithError:(id *)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000AAFC4;
  v17 = sub_1000AAFD4;
  v18 = objc_alloc_init(DIClient2Controller_XPCHandler);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v12[5] = 0;
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    *buf = 68158210;
    v20 = 34;
    v21 = 2080;
    v22 = "[DIVerifyParams verifyWithError:]";
    v23 = 2114;
    v24 = self;
    v7 = _os_log_send_and_compose_impl();

    if (v7)
    {
      fprintf(__stderrp, "%s\n", v7);
      free(v7);
    }
  }

  else
  {
    v8 = sub_1000E957C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v20 = 34;
      v21 = 2080;
      v22 = "[DIVerifyParams verifyWithError:]";
      v23 = 2114;
      v24 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%.*s: entry: %{public}@", buf, 0x1Cu);
    }
  }

  *__error() = v5;
  if (([v14[5] connectWithError:a3] & 1) != 0 && -[DIBaseParams prepareImageWithXpcHandler:fileMode:error:](self, "prepareImageWithXpcHandler:fileMode:error:", v14[5], 2, a3))
  {
    v9 = [v14[5] remoteProxy];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000AAFDC;
    v12[3] = &unk_100208AE8;
    v12[4] = &v13;
    [v9 verifyWithParams:self reply:v12];

    v10 = [v14[5] completeCommandWithError:a3];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v13, 8);

  return v10;
}

@end