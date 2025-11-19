@interface MSDHubSession
- (void)authenticate:(id)a3 forTask:(id)a4 completion:(id)a5;
@end

@implementation MSDHubSession

- (void)authenticate:(id)a3 forTask:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 info];
  v11 = [v10 endpoint];

  v12 = [v11 isEqualToString:@"/Register"];
  v13 = off_100168E28;
  if (!v12)
  {
    v13 = off_100168E30;
  }

  v14 = objc_alloc_init(*v13);
  v15 = [v7 protectionSpace];
  v16 = [v14 trustServer:objc_msgSend(v15 isRedirect:{"serverTrust"), objc_msgSend(v8, "redirected")}];

  if (v16)
  {
    v17 = [v7 protectionSpace];
    v18 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [v17 serverTrust]);

    v9[2](v9, 0, v18);
  }

  else
  {
    v19 = sub_100063A54();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000CC3FC(v8, v19);
    }

    v9[2](v9, 2, 0);
  }
}

@end