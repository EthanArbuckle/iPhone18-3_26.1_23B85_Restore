@interface UMDVolumeHelper
- (BOOL)createVolumeWithSession:(id)a3 size:(int64_t)a4 userName:(id)a5 error:(int *)a6 forPersona:(BOOL)a7 userDataVolume:(BOOL)a8;
- (BOOL)deleteVolumeWithSession:(id)a3 error:(int *)a4;
- (BOOL)isVolumeMountedWithSession:(id)a3 fsid:(fsid *)a4;
- (BOOL)mountVolumeWithSession:(id)a3 mountPath:(id)a4 error:(int *)a5 forPersona:(BOOL)a6;
- (BOOL)unmountVolumeWithSession:(id)a3 mountPath:(id)a4 error:(int *)a5;
- (BOOL)unmountVolumeWithSession:(id)a3 mountPath:(id)a4 error:(int *)a5 force:(BOOL)a6;
- (void)createVolumeMountsDir:(id)a3;
@end

@implementation UMDVolumeHelper

- (void)createVolumeMountsDir:(id)a3
{
  v4 = a3;
  v5 = [(UMDVolumeHelper *)self se];
  v6 = sub_1000013A0(v5);
  v7 = [v6 fileExistsAtPath:v4 isDirectory:0];

  if (v7)
  {
    if (qword_1000EB498 != -1)
    {
      sub_10009865C();
    }

    v8 = qword_1000EB490;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = sub_1000011A8(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
LABEL_35:
        v23 = _os_log_send_and_compose_impl();
        v24 = v23;
        if (v23)
        {
          sub_100002A8C(v23);
        }

        goto LABEL_38;
      }

LABEL_37:
      v24 = 0;
LABEL_38:
      free(v24);
    }
  }

  else
  {
    v11 = [(UMDVolumeHelper *)self se];
    v12 = sub_1000013A0(v11);
    v13 = [v12 makePath:v4 mode:511 error:0];

    if (v13)
    {
      v14 = [(UMDVolumeHelper *)self se];
      v15 = sub_1000013A0(v14);
      v16 = [v15 chmodPath:v4 withMode:511 error:0];

      if (v16)
      {
        if (qword_1000EB498 != -1)
        {
          sub_10009865C();
        }

        v8 = qword_1000EB490;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v17 = sub_1000011A8(0);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v18 = v17;
          }

          else
          {
            v18 = v17 & 0xFFFFFFFE;
          }

          if (v18)
          {
            goto LABEL_35;
          }

          goto LABEL_37;
        }
      }

      else
      {
        if (qword_1000EB498 != -1)
        {
          sub_10009865C();
        }

        v8 = qword_1000EB490;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v21 = sub_1000011A8(0);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v22 = v21;
          }

          else
          {
            v22 = v21 & 0xFFFFFFFE;
          }

          if (v22)
          {
            goto LABEL_35;
          }

          goto LABEL_37;
        }
      }
    }

    else
    {
      if (qword_1000EB498 != -1)
      {
        sub_10009865C();
      }

      v8 = qword_1000EB490;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v19 = sub_1000011A8(0);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v20 = v19;
        }

        else
        {
          v20 = v19 & 0xFFFFFFFE;
        }

        if (v20)
        {
          goto LABEL_35;
        }

        goto LABEL_37;
      }
    }
  }
}

- (BOOL)unmountVolumeWithSession:(id)a3 mountPath:(id)a4 error:(int *)a5
{
  v8 = a3;
  v9 = a4;
  v29 = 0;
  if (a5)
  {
    *a5 = 0;
  }

  v10 = v9;
  v11 = v10;
  if (!v10)
  {
    v11 = sub_100098ECC(v8, @"MKBUserSessionHomeDir");
  }

  if ([(UMDVolumeHelper *)self unmountVolumeWithSession:v8 mountPath:v10 error:&v29 force:0])
  {
    goto LABEL_18;
  }

  if (qword_1000EB498 != -1)
  {
    sub_100098670();
  }

  v12 = qword_1000EB490;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = sub_1000011A8(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFE;
    }

    if (v14)
    {
      v30 = 138412546;
      v31 = v11;
      v32 = 1024;
      v33 = v29;
      v15 = _os_log_send_and_compose_impl();
      v16 = v15;
      if (v15)
      {
        sub_100002A8C(v15);
      }
    }

    else
    {
      v16 = 0;
    }

    free(v16);
  }

  if ([(UMDVolumeHelper *)self unmountVolumeWithSession:v8 mountPath:v10 error:&v29 force:1])
  {
LABEL_18:
    if (qword_1000EB498 != -1)
    {
      sub_100098670();
    }

    v17 = qword_1000EB490;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = sub_1000011A8(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v30 = 138412290;
        v31 = v11;
        v20 = _os_log_send_and_compose_impl();
        v21 = v20;
        if (v20)
        {
          sub_100002A8C(v20);
        }
      }

      else
      {
        v21 = 0;
      }

      free(v21);
    }

    v27 = 1;
  }

  else
  {
    if (qword_1000EB498 != -1)
    {
      sub_100098670();
    }

    v22 = qword_1000EB490;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = sub_1000011A8(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
      }

      else
      {
        v24 = v23 & 0xFFFFFFFE;
      }

      if (v24)
      {
        v30 = 138412546;
        v31 = v11;
        v32 = 1024;
        v33 = v29;
        v25 = _os_log_send_and_compose_impl();
        v26 = v25;
        if (v25)
        {
          sub_100002A8C(v25);
        }
      }

      else
      {
        v26 = 0;
      }

      free(v26);
    }

    v27 = 0;
    if (a5)
    {
      *a5 = v29;
    }
  }

  return v27;
}

- (BOOL)createVolumeWithSession:(id)a3 size:(int64_t)a4 userName:(id)a5 error:(int *)a6 forPersona:(BOOL)a7 userDataVolume:(BOOL)a8
{
  v9 = a3;
  v10 = a5;
  result = _os_crash();
  __break(1u);
  return result;
}

- (BOOL)deleteVolumeWithSession:(id)a3 error:(int *)a4
{
  v4 = a3;
  result = _os_crash();
  __break(1u);
  return result;
}

- (BOOL)mountVolumeWithSession:(id)a3 mountPath:(id)a4 error:(int *)a5 forPersona:(BOOL)a6
{
  v7 = a3;
  v8 = a4;
  result = _os_crash();
  __break(1u);
  return result;
}

- (BOOL)unmountVolumeWithSession:(id)a3 mountPath:(id)a4 error:(int *)a5 force:(BOOL)a6
{
  v7 = a3;
  v8 = a4;
  result = _os_crash();
  __break(1u);
  return result;
}

- (BOOL)isVolumeMountedWithSession:(id)a3 fsid:(fsid *)a4
{
  v4 = a3;
  result = _os_crash();
  __break(1u);
  return result;
}

@end