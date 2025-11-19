@interface SEProxyAdapter
- (id)transceive:(id)a3 outError:(id *)a4;
- (id)transceive:(id)a3 toOS:(int64_t)a4 outError:(id *)a5;
@end

@implementation SEProxyAdapter

- (id)transceive:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1000510F4;
  v24 = sub_100051104;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1000510F4;
  v18 = sub_100051104;
  v19 = 0;
  proxy = self->_proxy;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10005110C;
  v13[3] = &unk_1004C2AD8;
  v13[4] = &v20;
  v13[5] = &v14;
  [(SEProxyInterface *)proxy transceive:v6 callback:v13];
  if (!v21[5] && !v15[5])
  {
    v8 = SESDefaultLogObject();
    v9 = SESCreateAndLogError();
    v10 = v15[5];
    v15[5] = v9;
  }

  if (a4)
  {
    *a4 = v15[5];
  }

  v11 = v21[5];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v11;
}

- (id)transceive:(id)a3 toOS:(int64_t)a4 outError:(id *)a5
{
  if (a5)
  {
    v6 = SESDefaultLogObject();
    *a5 = SESCreateAndLogError();
  }

  return 0;
}

@end