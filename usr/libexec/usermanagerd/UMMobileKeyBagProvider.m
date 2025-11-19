@interface UMMobileKeyBagProvider
- (int)createPersonaKeyForUser:(unsigned int)a3 personaUUID:(id)a4 passcode:(id)a5 homeDir:(id)a6;
- (int)removePersonaKeyForUser:(unsigned int)a3 personaUUID:(id)a4 volumeUUID:(id)a5;
- (int)setVolumePath:(id)a3 forPersona:(id)a4;
@end

@implementation UMMobileKeyBagProvider

- (int)createPersonaKeyForUser:(unsigned int)a3 personaUUID:(id)a4 passcode:(id)a5 homeDir:(id)a6
{
  v7 = a4;
  v8 = a6;
  PersonaKeyForUser = MKBUserSessionCreatePersonaKeyForUser();
  if (PersonaKeyForUser)
  {
    if (qword_1000EB4D8 != -1)
    {
      sub_1000986D4();
    }

    v10 = qword_1000EB4D0;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_1000011A8(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
LABEL_17:
        v15 = _os_log_send_and_compose_impl();
        v16 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }

        goto LABEL_20;
      }

LABEL_19:
      v16 = 0;
LABEL_20:
      free(v16);
    }
  }

  else
  {
    if (qword_1000EB4D8 != -1)
    {
      sub_1000986D4();
    }

    v10 = qword_1000EB4D0;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }

  return PersonaKeyForUser;
}

- (int)removePersonaKeyForUser:(unsigned int)a3 personaUUID:(id)a4 volumeUUID:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = v7;
  if (v7)
  {
    v19 = @"MKBUserSessionVolumeUUID";
    v20 = v7;
    v9 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = MKBUserSessionRemovePersonaKeyForUser();
  if (v10)
  {
    if (qword_1000EB4D8 != -1)
    {
      sub_1000986E8();
    }

    v11 = qword_1000EB4D0;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = sub_1000011A8(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
LABEL_20:
        v16 = _os_log_send_and_compose_impl();
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }

        goto LABEL_23;
      }

LABEL_22:
      v17 = 0;
LABEL_23:
      free(v17);
    }
  }

  else
  {
    if (qword_1000EB4D8 != -1)
    {
      sub_1000986E8();
    }

    v11 = qword_1000EB4D0;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }
  }

  return v10;
}

- (int)setVolumePath:(id)a3 forPersona:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MKBUserSessionSetVolumeToPersona();
  if (v7)
  {
    if (qword_1000EB4D8 != -1)
    {
      sub_1000986D4();
    }

    v8 = qword_1000EB4D0;
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
LABEL_17:
        v13 = _os_log_send_and_compose_impl();
        v14 = v13;
        if (v13)
        {
          sub_100002A8C(v13);
        }

        goto LABEL_20;
      }

LABEL_19:
      v14 = 0;
LABEL_20:
      free(v14);
    }
  }

  else
  {
    if (qword_1000EB4D8 != -1)
    {
      sub_1000986D4();
    }

    v8 = qword_1000EB4D0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = sub_1000011A8(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }

  return v7;
}

@end