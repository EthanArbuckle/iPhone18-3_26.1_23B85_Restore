@interface UMDPersonaManifestEmbedded
+ (id)manifest;
+ (id)manifestFromData:(id)data;
- (id)dataValue;
@end

@implementation UMDPersonaManifestEmbedded

+ (id)manifest
{
  v3 = objc_alloc_init(self);
  [v3 setVersion:{objc_msgSend(self, "currentVersion")}];

  return v3;
}

+ (id)manifestFromData:(id)data
{
  dataCopy = data;
  v5 = sub_10009950C(dataCopy);
  v6 = v5;
  if (!v5)
  {
    if (qword_1000EB3D8 != -1)
    {
      sub_10008BDB0();
    }

    v7 = qword_1000EB3D0;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = sub_1000011A8(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v12 = _os_log_send_and_compose_impl();
        v13 = v12;
        if (v12)
        {
          sub_100002A8C(v12);
        }
      }

      else
      {
        v13 = 0;
      }

      free(v13);
    }

    goto LABEL_40;
  }

  v7 = [v5 objectForKeyedSubscript:@"UsePersonaManifestVersion"];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (qword_1000EB3D8 != -1)
      {
        sub_10008BDB0();
      }

      v14 = qword_1000EB3D0;
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      v15 = sub_1000011A8(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        v17 = _os_log_send_and_compose_impl();
        if (!v17)
        {
          goto LABEL_38;
        }

        goto LABEL_34;
      }

LABEL_37:
      v17 = 0;
      goto LABEL_38;
    }
  }

  unsignedIntValue = [v7 unsignedIntValue];
  if (unsignedIntValue == 1)
  {
    v9 = sub_100055B28(self, v6);
    goto LABEL_26;
  }

  if (!unsignedIntValue)
  {
    v9 = sub_1000557E4(self, dataCopy);
LABEL_26:
    v18 = v9;
    goto LABEL_41;
  }

  if (qword_1000EB3D8 != -1)
  {
    sub_10008BDB0();
  }

  v14 = qword_1000EB3D0;
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_39;
  }

  v19 = sub_1000011A8(0);
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v19 &= ~1u;
  }

  if (!v19)
  {
    goto LABEL_37;
  }

  v20 = v14;
  [v7 unsignedIntValue];
  v17 = _os_log_send_and_compose_impl();

  if (v17)
  {
LABEL_34:
    sub_100002A8C(v17);
  }

LABEL_38:
  free(v17);
LABEL_39:

LABEL_40:
  v18 = 0;
LABEL_41:

  return v18;
}

- (id)dataValue
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:&off_1000E1678 forKeyedSubscript:@"UsePersonaManifestVersion"];
  v4 = [NSNumber numberWithUnsignedLongLong:[(UMDPersonaManifest *)self generation]];
  [v3 setObject:v4 forKeyedSubscript:@"UsePersonaGenerationID"];

  users = [(UMDPersonaManifest *)self users];
  v6 = [UMDPersonaManifest dictForUserSet:users];

  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:@"UserPersonaDictionary"];
    v7 = sub_100099294(v3);
  }

  else
  {
    if (qword_1000EB3D8 != -1)
    {
      sub_10008BDB0();
    }

    v8 = qword_1000EB3D0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_1000011A8(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v11 = _os_log_send_and_compose_impl();
        v12 = v11;
        if (v11)
        {
          sub_100002A8C(v11);
        }
      }

      else
      {
        v12 = 0;
      }

      free(v12);
    }

    v7 = 0;
  }

  return v7;
}

@end