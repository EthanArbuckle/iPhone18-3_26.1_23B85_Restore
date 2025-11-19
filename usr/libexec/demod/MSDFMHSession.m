@interface MSDFMHSession
- (void)authenticate:(id)a3 forTask:(id)a4 completion:(id)a5;
@end

@implementation MSDFMHSession

- (void)authenticate:(id)a3 forTask:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (os_variant_has_internal_content())
  {
    v10 = [v8 info];
    v11 = [(MSDSessionFMHTrustEvaluate *)v10 fmhURLOverride];

    if (v11)
    {
      v12 = [v7 protectionSpace];
      v13 = [v12 host];
      v14 = [(MSDSessionFMHTrustEvaluate *)v10 fmhURLOverride];
      v15 = [v14 host];
      v16 = [v13 isEqualToString:v15];

      if (v16)
      {
        goto LABEL_6;
      }
    }
  }

  v10 = objc_alloc_init(MSDSessionFMHTrustEvaluate);
  v17 = [v7 protectionSpace];
  v18 = -[MSDSessionFMHTrustEvaluate trustServer:isRedirect:](v10, "trustServer:isRedirect:", [v17 serverTrust], objc_msgSend(v8, "redirected"));

  if (v18)
  {
LABEL_6:
    v19 = [v7 protectionSpace];
    v20 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [v19 serverTrust]);

    v9[2](v9, 0, v20);
    goto LABEL_10;
  }

  v21 = sub_100063A54();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_1000CC3FC(v8, v21);
  }

  v9[2](v9, 2, 0);
LABEL_10:
}

@end