@interface UMDPersonaManifest
+ (id)dataForPersonaSet:(id)set;
+ (id)dictForUserSet:(id)set;
+ (id)manifest;
+ (id)manifestFromData:(id)data;
+ (id)personaSetFromData:(id)data;
+ (id)userSetFromDict:(id)dict;
+ (unsigned)currentVersion;
- (NSData)dataValue;
- (UMDPersonaManifest)init;
@end

@implementation UMDPersonaManifest

+ (unsigned)currentVersion
{
  platformClass = [self platformClass];

  return [platformClass currentVersion];
}

+ (id)manifest
{
  platformClass = [self platformClass];

  return [platformClass manifest];
}

+ (id)manifestFromData:(id)data
{
  dataCopy = data;
  v5 = [objc_msgSend(self "platformClass")];

  return v5;
}

- (UMDPersonaManifest)init
{
  v7.receiver = self;
  v7.super_class = UMDPersonaManifest;
  v2 = [(UMDPersonaManifest *)&v7 init];
  if (!v2)
  {
    sub_100088DDC();
  }

  v3 = v2;
  v4 = +[NSSet set];
  users = v3->_users;
  v3->_users = v4;

  return v3;
}

- (NSData)dataValue
{
  if (qword_1000EB458 != -1)
  {
    sub_100097EE8();
  }

  v2 = qword_1000EB450;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = sub_1000011A8(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = _os_log_send_and_compose_impl();
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  return 0;
}

+ (id)personaSetFromData:(id)data
{
  v3 = sub_10009950C(data);
  v4 = v3;
  if (!v3)
  {
    if (qword_1000EB458 != -1)
    {
      sub_100097EE8();
    }

    v5 = qword_1000EB450;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v51 = 0;
      v24 = sub_1000011A8(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        LOWORD(v49) = 0;
        v26 = _os_log_send_and_compose_impl();
        v27 = v26;
        if (v26)
        {
          sub_100002A8C(v26);
        }
      }

      else
      {
        v27 = 0;
      }

      free(v27);
    }

    v19 = 0;
    goto LABEL_98;
  }

  v5 = [v3 objectForKeyedSubscript:@"NUMENT"];
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (qword_1000EB458 != -1)
    {
      sub_100097EE8();
    }

    v6 = qword_1000EB450;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v51 = 0;
      v20 = sub_1000011A8(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v21 = v20;
      }

      else
      {
        v21 = v20 & 0xFFFFFFFE;
      }

      if (v21)
      {
        LOWORD(v49) = 0;
        v22 = _os_log_send_and_compose_impl();
        v23 = v22;
        if (v22)
        {
          sub_100002A8C(v22);
        }
      }

      else
      {
        v23 = 0;
      }

      free(v23);
    }

    v19 = 0;
    goto LABEL_97;
  }

  v6 = [v4 objectForKeyedSubscript:@"BLOB"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (qword_1000EB458 != -1)
    {
      sub_100097EE8();
    }

    v8 = qword_1000EB450;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v51 = 0;
      v28 = sub_1000011A8(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v29 = v28;
      }

      else
      {
        v29 = v28 & 0xFFFFFFFE;
      }

      if (v29)
      {
        LOWORD(v49) = 0;
        v30 = _os_log_send_and_compose_impl();
        v31 = v30;
        if (v30)
        {
          sub_100002A8C(v30);
        }
      }

      else
      {
        v31 = 0;
      }

      free(v31);
    }

    v19 = 0;
    goto LABEL_96;
  }

  v7 = sub_100099704(v6);
  v8 = v7;
  if (!v7)
  {
    if (qword_1000EB458 != -1)
    {
      sub_100097EE8();
    }

    v10 = qword_1000EB450;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_94;
    }

    *v51 = 0;
    v32 = sub_1000011A8(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v33 = v32;
    }

    else
    {
      v33 = v32 & 0xFFFFFFFE;
    }

    if (v33)
    {
      LOWORD(v49) = 0;
      v34 = _os_log_send_and_compose_impl();
      if (!v34)
      {
        goto LABEL_82;
      }

      goto LABEL_70;
    }

LABEL_81:
    v34 = 0;
    goto LABEL_82;
  }

  v9 = [v7 count];
  if (v9 != [v5 unsignedLongValue])
  {
    if (qword_1000EB458 != -1)
    {
      sub_100097EE8();
    }

    v10 = qword_1000EB450;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_94;
    }

    v49 = 0;
    v35 = sub_1000011A8(0);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v35 &= ~1u;
    }

    if (v35)
    {
      v36 = v10;
      *v51 = 134218240;
      *&v51[4] = [v8 count];
      v52 = 2048;
      unsignedLongValue = [v5 unsignedLongValue];
      v34 = _os_log_send_and_compose_impl();

      if (!v34)
      {
LABEL_82:
        free(v34);
LABEL_94:
        v19 = 0;
        goto LABEL_95;
      }

LABEL_70:
      sub_100002A8C(v34);
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  v10 = +[NSMutableSet set];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (!v12)
  {
    goto LABEL_17;
  }

  v13 = v12;
  v14 = *v46;
  while (2)
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v46 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v45 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (qword_1000EB458 != -1)
        {
          sub_100097EFC();
        }

        v37 = qword_1000EB450;
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_93;
        }

        *v51 = 0;
        v38 = sub_1000011A8(0);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v39 = v38;
        }

        else
        {
          v39 = v38 & 0xFFFFFFFE;
        }

        if (v39)
        {
          LOWORD(v49) = 0;
          goto LABEL_79;
        }

LABEL_91:
        v41 = 0;
LABEL_92:
        free(v41);
LABEL_93:

        goto LABEL_94;
      }

      v17 = sub_100096310(UMDPersonaManifestPersona, v16);
      if (!v17)
      {
        if (qword_1000EB458 != -1)
        {
          sub_100097EFC();
        }

        v37 = qword_1000EB450;
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_93;
        }

        *v51 = 0;
        v42 = sub_1000011A8(0);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v43 = v42;
        }

        else
        {
          v43 = v42 & 0xFFFFFFFE;
        }

        if (v43)
        {
          LOWORD(v49) = 0;
LABEL_79:
          v40 = _os_log_send_and_compose_impl();
          v41 = v40;
          if (v40)
          {
            sub_100002A8C(v40);
          }

          goto LABEL_92;
        }

        goto LABEL_91;
      }

      v18 = v17;
      [v10 addObject:v17];
    }

    v13 = [v11 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_17:

  v10 = v10;
  v19 = v10;
LABEL_95:

LABEL_96:
LABEL_97:

LABEL_98:

  return v19;
}

+ (id)dataForPersonaSet:(id)set
{
  setCopy = set;
  v4 = +[NSMutableDictionary dictionary];
  v5 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = setCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = sub_100096838(*(*(&v16 + 1) + 8 * i));
        [v5 addObject:{v11, v16}];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 count]);
  [v4 setObject:v12 forKeyedSubscript:@"NUMENT"];

  v13 = sub_1000993D0(v5);
  [v4 setObject:v13 forKeyedSubscript:@"BLOB"];

  v14 = sub_100099294(v4);

  return v14;
}

+ (id)userSetFromDict:(id)dict
{
  dictCopy = dict;
  v5 = +[NSMutableSet set];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v6 = dictCopy;
  v7 = [v6 countByEnumeratingWithState:&v63 objects:v71 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v64;
    v10 = &MGCopyAnswer_ptr;
    v11 = &MGCopyAnswer_ptr;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v64 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v63 + 1) + 8 * v12);
      v14 = sub_100016954(v10[439], v13);
      if (!v14)
      {
        break;
      }

      v15 = v14;
      v16 = [v6 objectForKeyedSubscript:v13];
      v17 = v11[411];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (qword_1000EB458 != -1)
        {
          sub_100097EFC();
        }

        v43 = qword_1000EB450;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *v67 = 0;
          v44 = sub_1000011A8(0);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v45 = v44;
          }

          else
          {
            v45 = v44 & 0xFFFFFFFE;
          }

          if (v45)
          {
            LOWORD(v62) = 0;
            v46 = _os_log_send_and_compose_impl();
            v47 = v46;
            if (v46)
            {
              sub_100002A8C(v46);
            }
          }

          else
          {
            v47 = 0;
          }

          free(v47);
        }

        goto LABEL_37;
      }

      v18 = [self personaSetFromData:v16];
      v19 = v18;
      if (!v18)
      {
        if (qword_1000EB458 != -1)
        {
          sub_100097EFC();
        }

        v20 = qword_1000EB450;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *v67 = 0;
          v48 = sub_1000011A8(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v49 = v48;
          }

          else
          {
            v49 = v48 & 0xFFFFFFFE;
          }

          if (v49)
          {
            LOWORD(v62) = 0;
            v50 = _os_log_send_and_compose_impl();
            v51 = v50;
            if (v50)
            {
              sub_100002A8C(v50);
            }
          }

          else
          {
            v51 = 0;
          }

          free(v51);
        }

LABEL_36:

LABEL_37:
LABEL_38:

        v31 = 0;
        goto LABEL_39;
      }

      v52 = v12;
      v53 = v9;
      selfCopy = self;
      v55 = v16;
      v56 = v6;
      v57 = v5;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v20 = v18;
      v21 = [v20 countByEnumeratingWithState:&v58 objects:v70 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v59;
        while (2)
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v59 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v58 + 1) + 8 * i);
            if (v25)
            {
              v26 = *(v25 + 128);
              if (v26)
              {
                v27 = v26;
                v28 = [*(v25 + 128) isEqual:v15];

                if ((v28 & 1) == 0)
                {
                  if (qword_1000EB458 != -1)
                  {
                    sub_100097EFC();
                  }

                  v6 = v56;
                  v5 = v57;
                  v16 = v55;
                  v32 = qword_1000EB450;
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                  {
                    v62 = 0;
                    v33 = sub_1000011A8(0);
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                    {
                      v34 = v33;
                    }

                    else
                    {
                      v34 = v33 & 0xFFFFFFFE;
                    }

                    if (v34)
                    {
                      v35 = *(v25 + 128);
                      *v67 = 138543618;
                      *&v67[4] = v35;
                      v68 = 2114;
                      v69 = v15;
                      v36 = v32;
                      v37 = _os_log_send_and_compose_impl();

                      if (v37)
                      {
                        sub_100002A8C(v37);
                      }
                    }

                    else
                    {
                      v37 = 0;
                    }

                    free(v37);
                  }

                  goto LABEL_36;
                }
              }
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v58 objects:v70 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      v29 = objc_alloc_init(UMDPersonaManifestUser);
      sub_1000897B8(v29, v15);
      if (v29)
      {
        objc_setProperty_nonatomic_copy(v29, v30, v20, 16);
      }

      v5 = v57;
      [v57 addObject:v29];

      v9 = v53;
      v12 = v52 + 1;
      v6 = v56;
      self = selfCopy;
      v10 = &MGCopyAnswer_ptr;
      v11 = &MGCopyAnswer_ptr;
      if ((v52 + 1) == v8)
      {
        v8 = [v56 countByEnumeratingWithState:&v63 objects:v71 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_23;
      }
    }

    if (qword_1000EB458 != -1)
    {
      sub_100097EFC();
    }

    v15 = qword_1000EB450;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v62 = 0;
      v39 = sub_1000011A8(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v40 = v39;
      }

      else
      {
        v40 = v39 & 0xFFFFFFFE;
      }

      if (v40)
      {
        *v67 = 138543362;
        *&v67[4] = v13;
        v41 = _os_log_send_and_compose_impl();
        v42 = v41;
        if (v41)
        {
          sub_100002A8C(v41);
        }
      }

      else
      {
        v42 = 0;
      }

      free(v42);
    }

    goto LABEL_38;
  }

LABEL_23:

  v31 = v5;
LABEL_39:

  return v31;
}

+ (id)dictForUserSet:(id)set
{
  setCopy = set;
  v4 = +[NSMutableDictionary dictionary];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v5 = setCopy;
  v6 = [v5 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v6)
  {
    v7 = *v45;
    v38 = v5;
    v39 = v4;
    v36 = *v45;
    while (2)
    {
      v37 = v6;
      for (i = 0; i != v37; i = i + 1)
      {
        if (*v45 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v44 + 1) + 8 * i);
        if (!v9 || !*(v9 + 24))
        {
          if (qword_1000EB458 != -1)
          {
            sub_100097EFC();
          }

          v10 = qword_1000EB450;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *v48 = 0;
            v32 = sub_1000011A8(0);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              v33 = v32;
            }

            else
            {
              v33 = v32 & 0xFFFFFFFE;
            }

            if (v33)
            {
              v34 = _os_log_send_and_compose_impl();
              v35 = v34;
              if (v34)
              {
                sub_100002A8C(v34);
              }
            }

            else
            {
              v35 = 0;
            }

            free(v35);
          }

LABEL_34:

          v23 = 0;
          goto LABEL_35;
        }

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v10 = *(v9 + 16);
        v11 = [v10 countByEnumeratingWithState:&v40 objects:v51 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v41;
          while (2)
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v41 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v40 + 1) + 8 * j);
              if (v15)
              {
                v16 = *(v15 + 128);
                if (v16)
                {
                  v17 = v16;
                  v18 = *(v9 + 24);
                  v19 = *(v15 + 128);
                  LOBYTE(v18) = [v19 isEqual:v18];

                  if ((v18 & 1) == 0)
                  {
                    if (qword_1000EB458 != -1)
                    {
                      sub_100097EFC();
                    }

                    v5 = v38;
                    v24 = qword_1000EB450;
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                    {
                      v25 = sub_1000011A8(0);
                      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                      {
                        v25 &= ~1u;
                      }

                      if (v25)
                      {
                        v26 = *(v15 + 128);
                        v27 = *(v9 + 24);
                        *v48 = 138543618;
                        *&v48[4] = v26;
                        v49 = 2114;
                        v50 = v27;
                        v28 = v26;
                        v29 = v24;
                        v30 = _os_log_send_and_compose_impl();

                        if (v30)
                        {
                          sub_100002A8C(v30);
                        }
                      }

                      else
                      {
                        v30 = 0;
                      }

                      free(v30);
                    }

                    v4 = v39;
                    goto LABEL_34;
                  }
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v40 objects:v51 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v5 = v38;
        v4 = v39;
        v20 = *(v9 + 16);
        v21 = [UMDPersonaManifest dataForPersonaSet:v20];
        uUIDString = [*(v9 + 24) UUIDString];
        [v39 setObject:v21 forKeyedSubscript:uUIDString];

        v7 = v36;
      }

      v6 = [v38 countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v23 = v4;
LABEL_35:

  return v23;
}

@end