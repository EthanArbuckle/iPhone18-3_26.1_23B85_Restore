@interface DIImageInfoParams
+ (BOOL)isDiskImageWithURL:(id)a3;
- (BOOL)retrieveWithError:(id *)a3;
- (DIImageInfoParams)initWithExistingParams:(id)a3 error:(id *)a4;
- (DIImageInfoParams)initWithURL:(id)a3 error:(id *)a4;
@end

@implementation DIImageInfoParams

- (DIImageInfoParams)initWithURL:(id)a3 error:(id *)a4
{
  v5.receiver = self;
  v5.super_class = DIImageInfoParams;
  return [(DIBaseParams *)&v5 initWithURL:a3 error:a4];
}

- (DIImageInfoParams)initWithExistingParams:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 inputURL];
  v16.receiver = self;
  v16.super_class = DIImageInfoParams;
  v8 = [(DIBaseParams *)&v16 initWithURL:v7 error:a4];

  if (!v8)
  {
    goto LABEL_3;
  }

  v9 = [v6 diskImageParamsXPC];
  [(DIBaseParams *)v8 setDiskImageParamsXPC:v9];

  v10 = [(DIBaseParams *)v8 shadowChain];
  v11 = [v6 shadowChain];
  v12 = [v11 nodes];
  v13 = [v10 addShadowNodes:v12 wrapReadOnly:1 error:a4];

  if ((v13 & 1) == 0)
  {
    v14 = 0;
  }

  else
  {
LABEL_3:
    v14 = v8;
  }

  return v14;
}

- (BOOL)retrieveWithError:(id *)a3
{
  if ([(DIBaseParams *)self openExistingImageWithError:?])
  {
    v24 = 0;
    if ([(DIImageInfoParams *)self encryptionInfoOnly])
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v14[0] = off_100218958;
      v14[1] = off_1002189A0;
      v14[2] = off_1002189E8;
      v15 = off_100218A30;
      v16 = off_100218A78;
      v17 = off_100218AC0;
      v18 = off_100218B08;
      v19 = off_100218B68;
      v20 = 0;
      if (*[(DIBaseParams *)self cryptoHeader])
      {
        sub_100180704(*[(DIBaseParams *)self cryptoHeader], v14 + *(v14[0] - 104));
      }

      sub_10012C120(v14, &v13);
      if (v24)
      {
        CFRelease(v24);
      }

      v24 = v13;
      v13 = 0;
      sub_10000E950(&v13);
      v19 = off_100219030;
      v15 = off_100219088;
      sub_1000283C8(&v23);
    }

    else
    {
      v8 = objc_alloc_init(DIClient2Controller_XPCHandler);
      if (![(DIClient2Controller_XPCHandler *)v8 connectWithError:a3]|| ![(DIBaseParams *)self prepareImageWithXpcHandler:v8 fileMode:2 error:a3])
      {
        goto LABEL_21;
      }

      v9 = [(DIBaseParams *)self diskImageParamsXPC];
      v10 = [(DIImageInfoParams *)self extraInfo];
      if (v9)
      {
        [v9 getImageInfoWithExtra:v10 error:a3];
      }

      else
      {
        v14[0] = 0;
      }

      if (!v14[0])
      {
LABEL_21:

        v7 = 0;
        goto LABEL_22;
      }

      (*(*(v14[0] + *(*v14[0] - 96)) + 16))(&v13);
      if (v24)
      {
        CFRelease(v24);
      }

      v24 = v13;
      v13 = 0;
      sub_10000E950(&v13);
      v11 = v14[0];
      v14[0] = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }

    v5 = CFRetain(v24);
    imageInfo = self->_imageInfo;
    self->_imageInfo = v5;

    v7 = 1;
LABEL_22:
    sub_10000E950(&v24);
    return v7;
  }

  return 0;
}

+ (BOOL)isDiskImageWithURL:(id)a3
{
  v3 = a3;
  if (![v3 isFileURL])
  {
    goto LABEL_5;
  }

  v10 = 0;
  v4 = +[NSFileManager defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5 isDirectory:&v10];

  if (!v6 || v10 == 1 && ![SparseBundleBackendXPC isSparseBundleWithURL:v3])
  {
    v8 = 0;
  }

  else
  {
LABEL_5:
    v7 = [[DIImageInfoParams alloc] initWithURL:v3 error:0];
    v8 = v7 != 0;
  }

  return v8;
}

@end