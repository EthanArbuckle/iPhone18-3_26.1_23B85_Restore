@interface UMDVolumeHelper
- (BOOL)createVolumeWithSession:(id)session size:(int64_t)size userName:(id)name error:(int *)error forPersona:(BOOL)persona userDataVolume:(BOOL)volume;
- (BOOL)deleteVolumeWithSession:(id)session error:(int *)error;
- (BOOL)isVolumeMountedWithSession:(id)session fsid:(fsid *)fsid;
- (BOOL)mountVolumeWithSession:(id)session mountPath:(id)path error:(int *)error forPersona:(BOOL)persona;
- (BOOL)unmountVolumeWithSession:(id)session mountPath:(id)path error:(int *)error;
- (BOOL)unmountVolumeWithSession:(id)session mountPath:(id)path error:(int *)error force:(BOOL)force;
- (void)createVolumeMountsDir:(id)dir;
@end

@implementation UMDVolumeHelper

- (void)createVolumeMountsDir:(id)dir
{
  dirCopy = dir;
  v5 = [(UMDVolumeHelper *)self se];
  v6 = sub_1000013A0(v5);
  v7 = [v6 fileExistsAtPath:dirCopy isDirectory:0];

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
    v13 = [v12 makePath:dirCopy mode:511 error:0];

    if (v13)
    {
      v14 = [(UMDVolumeHelper *)self se];
      v15 = sub_1000013A0(v14);
      v16 = [v15 chmodPath:dirCopy withMode:511 error:0];

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

- (BOOL)unmountVolumeWithSession:(id)session mountPath:(id)path error:(int *)error
{
  sessionCopy = session;
  pathCopy = path;
  v29 = 0;
  if (error)
  {
    *error = 0;
  }

  v10 = pathCopy;
  v11 = v10;
  if (!v10)
  {
    v11 = sub_100098ECC(sessionCopy, @"MKBUserSessionHomeDir");
  }

  if ([(UMDVolumeHelper *)self unmountVolumeWithSession:sessionCopy mountPath:v10 error:&v29 force:0])
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

  if ([(UMDVolumeHelper *)self unmountVolumeWithSession:sessionCopy mountPath:v10 error:&v29 force:1])
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
    if (error)
    {
      *error = v29;
    }
  }

  return v27;
}

- (BOOL)createVolumeWithSession:(id)session size:(int64_t)size userName:(id)name error:(int *)error forPersona:(BOOL)persona userDataVolume:(BOOL)volume
{
  sessionCopy = session;
  nameCopy = name;
  result = _os_crash();
  __break(1u);
  return result;
}

- (BOOL)deleteVolumeWithSession:(id)session error:(int *)error
{
  sessionCopy = session;
  result = _os_crash();
  __break(1u);
  return result;
}

- (BOOL)mountVolumeWithSession:(id)session mountPath:(id)path error:(int *)error forPersona:(BOOL)persona
{
  sessionCopy = session;
  pathCopy = path;
  result = _os_crash();
  __break(1u);
  return result;
}

- (BOOL)unmountVolumeWithSession:(id)session mountPath:(id)path error:(int *)error force:(BOOL)force
{
  sessionCopy = session;
  pathCopy = path;
  result = _os_crash();
  __break(1u);
  return result;
}

- (BOOL)isVolumeMountedWithSession:(id)session fsid:(fsid *)fsid
{
  sessionCopy = session;
  result = _os_crash();
  __break(1u);
  return result;
}

@end