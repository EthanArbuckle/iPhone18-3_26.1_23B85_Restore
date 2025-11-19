uint64_t sub_100027E10(__CFDictionary *a1, CFDictionaryRef theDict, void *key, uint64_t a4)
{
  result = CFDictionaryContainsKey(theDict, key);
  if (result)
  {
    Value = CFDictionaryGetValue(theDict, key);
    if (CFGetTypeID(Value) == a4)
    {
      if (CFDictionaryContainsKey(a1, key))
      {
        CFDictionaryReplaceValue(a1, key, Value);
      }

      else
      {
        CFDictionarySetValue(a1, key, Value);
      }

      return 1;
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v10 = qword_1000EB308;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = sub_1000011A8(1);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v11;
        }

        else
        {
          v12 = v11 & 0xFFFFFFFE;
        }

        if (v12)
        {
          v13 = _os_log_send_and_compose_impl();
          v14 = v13;
          if (v13)
          {
            sub_100002A8C(v13);
          }
        }

        else
        {
          v14 = 0;
        }

        free(v14);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_100027FB0()
{
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  valuePtr = 0;
  v0 = qword_1000EB308;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = sub_1000011A8(1);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v2 = v1;
    }

    else
    {
      v2 = v1 & 0xFFFFFFFE;
    }

    if (v2)
    {
      LOWORD(v38) = 0;
      v3 = _os_log_send_and_compose_impl();
      v4 = v3;
      if (v3)
      {
        sub_100002A8C(v3);
      }
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }

  if (!qword_1000EB5C8)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v11 = qword_1000EB308;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        LOWORD(v38) = 0;
        v14 = _os_log_send_and_compose_impl();
        v15 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    return 0;
  }

  if (CFArrayGetCount(qword_1000EB5C8) < 1)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5C8, v5);
    if (!ValueAtIndex)
    {
      goto LABEL_21;
    }

    v7 = ValueAtIndex;
    v8 = CFGetTypeID(ValueAtIndex);
    if (v8 != CFNumberGetTypeID())
    {
      goto LABEL_21;
    }

    if (!CFNumberGetValue(v7, kCFNumberIntType, &valuePtr))
    {
      goto LABEL_21;
    }

    v9 = sub_10008A2F4(qword_1000EB2E0, valuePtr);
    if (!v9)
    {
      goto LABEL_21;
    }

    v10 = v9;
    if (!sub_100002454(v9, kUMUserSessionDirtyKey))
    {
      break;
    }

    CFRelease(v10);
LABEL_21:
    if (CFArrayGetCount(qword_1000EB5C8) <= ++v5)
    {
      return 0;
    }
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v18 = qword_1000EB308;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = sub_1000011A8(1);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 & 0xFFFFFFFE;
    }

    if (v20)
    {
      v38 = 67109120;
      v39 = valuePtr;
      v21 = _os_log_send_and_compose_impl();
      v22 = v21;
      if (v21)
      {
        sub_100002A8C(v21);
      }
    }

    else
    {
      v22 = 0;
    }

    free(v22);
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v23 = qword_1000EB308;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = sub_1000011A8(1);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 & 0xFFFFFFFE;
    }

    if (v25)
    {
      v38 = 67109120;
      v39 = valuePtr;
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

  if (sub_10002AB94(v10) == 1)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v28 = qword_1000EB308;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = sub_1000011A8(1);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v29;
      }

      else
      {
        v30 = v29 & 0xFFFFFFFE;
      }

      if (v30)
      {
        v38 = 67109120;
        v39 = valuePtr;
        v31 = _os_log_send_and_compose_impl();
        v32 = v31;
        if (v31)
        {
          sub_100002A8C(v31);
        }
      }

      else
      {
        v32 = 0;
      }

      free(v32);
    }

    v16 = 1;
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v28 = qword_1000EB308;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v33 = sub_1000011A8(1);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v33;
      }

      else
      {
        v34 = v33 & 0xFFFFFFFE;
      }

      if (v34)
      {
        v38 = 67109120;
        v39 = valuePtr;
        v35 = _os_log_send_and_compose_impl();
        v36 = v35;
        if (v35)
        {
          sub_100002A8C(v35);
        }
      }

      else
      {
        v36 = 0;
      }

      free(v36);
    }

    v16 = 0;
  }

  CFRelease(v10);
  return v16;
}

BOOL sub_100028584(const __CFDictionary *a1, uint64_t a2)
{
  v4 = sub_100079590(a1, kUMUserSessionUUIDKey);
  v5 = sub_1000023E8(a1, kMKBUserSessionIDKey);
  if (v4)
  {
    v6 = v5;
    v7 = sub_100016954(NSUUID, v4);
    if (v7)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v8 = qword_1000EB308;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v62 = 0;
        v9 = sub_1000011A8(1);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
        }

        else
        {
          v10 = v9 & 0xFFFFFFFE;
        }

        if (v10)
        {
          LOWORD(v61) = 0;
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

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v23 = qword_1000EB308;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v61 = 0;
        v24 = sub_1000011A8(1);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v25 = v24;
        }

        else
        {
          v25 = v24 & 0xFFFFFFFE;
        }

        if (v25)
        {
          *v62 = 138412546;
          *&v62[4] = v7;
          v63 = 1024;
          v64 = v6;
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

      v28 = _os_feature_enabled_impl();
      v29 = sub_100089A80(qword_1000EB608);
      v30 = v29;
      if (v28)
      {
        v60 = 0;
        v31 = [v29 createIdentityWithUUID:v7 passcode:0 existingSession:sub_10008A58C(qword_1000EB2E0) existingSessionPasscode:a2 isACMCredential:0 error:&v60];
        v32 = v60;
      }

      else
      {
        v59 = 0;
        v31 = [v29 createIdentityWithUUID:v7 passcode:a2 existingSession:502 existingSessionPasscode:0 isACMCredential:0 error:&v59];
        v32 = v59;
      }

      v13 = v32;

      if (v31)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v33 = qword_1000EB308;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *v62 = 0;
          v34 = sub_1000011A8(1);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v35 = v34;
          }

          else
          {
            v35 = v34 & 0xFFFFFFFE;
          }

          if (v35)
          {
            LOWORD(v61) = 0;
            v36 = _os_log_send_and_compose_impl();
            v37 = v36;
            if (v36)
            {
              sub_100002A8C(v36);
            }
          }

          else
          {
            v37 = 0;
          }

          free(v37);
        }

        if (_os_feature_enabled_impl())
        {
          v44 = 0;
        }

        else
        {
          v44 = a2;
        }

        v45 = sub_100028D8C(a1, v44);
        if (v45)
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v46 = qword_1000EB308;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            *v62 = 0;
            v47 = sub_1000011A8(1);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              v48 = v47;
            }

            else
            {
              v48 = v47 & 0xFFFFFFFE;
            }

            if (v48)
            {
              LOWORD(v61) = 0;
              v49 = _os_log_send_and_compose_impl();
              v50 = v49;
              if (v49)
              {
                sub_100002A8C(v49);
              }
            }

            else
            {
              v50 = 0;
            }

            free(v50);
          }
        }

        else
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v51 = qword_1000EB308;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            *v62 = 0;
            v52 = sub_1000011A8(1);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              v53 = v52;
            }

            else
            {
              v53 = v52 & 0xFFFFFFFE;
            }

            if (v53)
            {
              LOWORD(v61) = 0;
              v54 = _os_log_send_and_compose_impl();
              v55 = v54;
              if (v54)
              {
                sub_100002A8C(v54);
              }
            }

            else
            {
              v55 = 0;
            }

            free(v55);
          }

          v46 = sub_100089A80(qword_1000EB608);
          v58 = v13;
          [v46 deleteIdentity:v7 error:&v58];
          v56 = v58;

          v13 = v56;
        }

        v43 = v45 != 0;

        goto LABEL_104;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v38 = qword_1000EB308;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v61 = 0;
        v39 = sub_1000011A8(1);
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 &= ~1u;
        }

        if (v39)
        {
          v40 = v38;
          v41 = [v13 code];
          *v62 = 138412802;
          *&v62[4] = v7;
          v63 = 1024;
          v64 = v6;
          v65 = 2048;
          v66 = v41;
          v42 = _os_log_send_and_compose_impl();

          if (v42)
          {
            sub_100002A8C(v42);
          }
        }

        else
        {
          v42 = 0;
        }

        free(v42);
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v18 = qword_1000EB308;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v62 = 0;
        v19 = sub_1000011A8(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
        }

        else
        {
          v20 = v19 & 0xFFFFFFFE;
        }

        if (v20)
        {
          LOWORD(v61) = 0;
          v21 = _os_log_send_and_compose_impl();
          v22 = v21;
          if (v21)
          {
            sub_100002A8C(v21);
          }
        }

        else
        {
          v22 = 0;
        }

        free(v22);
      }

      v13 = 0;
    }

    v43 = 0;
LABEL_104:

    goto LABEL_105;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v13 = qword_1000EB308;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v62 = 0;
    v14 = sub_1000011A8(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      LOWORD(v61) = 0;
      v16 = _os_log_send_and_compose_impl();
      v17 = v16;
      if (v16)
      {
        sub_100002A8C(v16);
      }
    }

    else
    {
      v17 = 0;
    }

    free(v17);
  }

  v43 = 0;
LABEL_105:

  return v43;
}

uint64_t sub_100028D8C(const __CFDictionary *a1, uint64_t a2)
{
  v4 = sub_100079590(a1, kUMUserSessionUUIDKey);
  v5 = sub_1000023E8(a1, kMKBUserSessionIDKey);
  if (v5 != sub_10008A58C(qword_1000EB2E0))
  {
    if (v4)
    {
      v11 = sub_100079590(a1, kUMUserSessionVolumeDeviceNodeKey);
      if (v11)
      {
        v12 = v11;
        v13 = sub_100016954(NSUUID, v4);
        if (v13)
        {
          v14 = v13;
          if (qword_1000EB310 != -1)
          {
            sub_100089D14();
          }

          v15 = qword_1000EB308;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *v85 = 0;
            v16 = sub_1000011A8(1);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v17 = v16;
            }

            else
            {
              v17 = v16 & 0xFFFFFFFE;
            }

            if (v17)
            {
              LOWORD(v86) = 0;
              v18 = _os_log_send_and_compose_impl();
              v19 = v18;
              if (v18)
              {
                sub_100002A8C(v18);
              }
            }

            else
            {
              v19 = 0;
            }

            free(v19);
          }

          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v37 = qword_1000EB308;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *v85 = 0;
            v38 = sub_1000011A8(1);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v39 = v38;
            }

            else
            {
              v39 = v38 & 0xFFFFFFFE;
            }

            if (v39)
            {
              LODWORD(v86) = 67109120;
              HIDWORD(v86) = v5;
              v40 = _os_log_send_and_compose_impl();
              v41 = v40;
              if (v40)
              {
                sub_100002A8C(v40);
              }
            }

            else
            {
              v41 = 0;
            }

            free(v41);
          }

          v42 = sub_100089A80(qword_1000EB608);
          v83 = 0;
          v43 = [v42 loginIdentity:v14 intoSession:v5 passcode:a2 isACMCredential:0 error:&v83];
          v44 = v83;

          if (!v43)
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v50 = qword_1000EB308;
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              v86 = 0;
              v51 = sub_1000011A8(1);
              if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
              {
                v51 &= ~1u;
              }

              if (v51)
              {
                v52 = v50;
                v53 = [v44 code];
                *v85 = 134217984;
                *&v85[4] = v53;
                v54 = _os_log_send_and_compose_impl();

                if (v54)
                {
                  sub_100002A8C(v54);
                }
              }

              else
              {
                v54 = 0;
              }

              free(v54);
            }

            v27 = 0;
            v26 = v44;
            goto LABEL_67;
          }

          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v45 = qword_1000EB308;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *v85 = 0;
            v46 = sub_1000011A8(1);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v47 = v46;
            }

            else
            {
              v47 = v46 & 0xFFFFFFFE;
            }

            if (v47)
            {
              LOWORD(v86) = 0;
              v48 = _os_log_send_and_compose_impl();
              v49 = v48;
              if (v48)
              {
                sub_100002A8C(v48);
              }
            }

            else
            {
              v49 = 0;
            }

            free(v49);
          }

          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v55 = qword_1000EB308;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v86 = 0;
            v56 = sub_1000011A8(1);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              v57 = v56;
            }

            else
            {
              v57 = v56 & 0xFFFFFFFE;
            }

            if (v57)
            {
              *v85 = 138412546;
              *&v85[4] = v12;
              *&v85[12] = 1024;
              *&v85[14] = v5;
              v58 = _os_log_send_and_compose_impl();
              v59 = v58;
              if (v58)
              {
                sub_100002A8C(v58);
              }
            }

            else
            {
              v59 = 0;
            }

            free(v59);
          }

          v60 = sub_100089A80(qword_1000EB608);
          v82 = v44;
          v61 = [v60 mapVolume:v12 toSession:v5 withPersona:0 error:&v82];
          v26 = v82;

          if (v61)
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v62 = qword_1000EB308;
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              *v85 = 0;
              v63 = sub_1000011A8(1);
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
              {
                v64 = v63;
              }

              else
              {
                v64 = v63 & 0xFFFFFFFE;
              }

              if (v64)
              {
                LOWORD(v86) = 0;
                v65 = _os_log_send_and_compose_impl();
                v66 = v65;
                if (v65)
                {
                  sub_100002A8C(v65);
                }
              }

              else
              {
                v66 = 0;
              }

              free(v66);
            }

            v27 = 1;
            goto LABEL_67;
          }

          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v67 = qword_1000EB308;
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            v86 = 0;
            v68 = sub_1000011A8(1);
            if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              v68 &= ~1u;
            }

            if (v68)
            {
              v69 = v67;
              v70 = [v26 code];
              *v85 = 134217984;
              *&v85[4] = v70;
              v71 = _os_log_send_and_compose_impl();

              if (v71)
              {
                sub_100002A8C(v71);
              }
            }

            else
            {
              v71 = 0;
            }

            free(v71);
          }

          v72 = sub_100089A80(qword_1000EB608);
          v81 = 0;
          v73 = [v72 unloadIdentityFromSession:v5 error:&v81];
          v26 = v81;

          if (v73)
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v74 = qword_1000EB308;
            if (!os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_159;
            }

            *v85 = 0;
            v75 = sub_1000011A8(1);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              v76 = v75;
            }

            else
            {
              v76 = v75 & 0xFFFFFFFE;
            }

            if (v76)
            {
              LOWORD(v86) = 0;
              v77 = _os_log_send_and_compose_impl();
              if (!v77)
              {
                goto LABEL_158;
              }

              goto LABEL_156;
            }
          }

          else
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v74 = qword_1000EB308;
            if (!os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_159;
            }

            v86 = 0;
            v78 = sub_1000011A8(1);
            if (!os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              v78 &= ~1u;
            }

            if (v78)
            {
              v79 = v74;
              v80 = [v26 code];
              *v85 = 134217984;
              *&v85[4] = v80;
              v77 = _os_log_send_and_compose_impl();

              if (!v77)
              {
LABEL_158:
                free(v77);
LABEL_159:

                goto LABEL_66;
              }

LABEL_156:
              sub_100002A8C(v77);
              goto LABEL_158;
            }
          }

          v77 = 0;
          goto LABEL_158;
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089D14();
        }

        v14 = qword_1000EB308;
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
LABEL_63:
          v26 = 0;
LABEL_66:
          v27 = 0;
LABEL_67:

          goto LABEL_68;
        }

        *v85 = 0;
        v32 = sub_1000011A8(1);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v33 = v32;
        }

        else
        {
          v33 = v32 & 0xFFFFFFFE;
        }

        if (v33)
        {
          LOWORD(v86) = 0;
LABEL_59:
          v34 = _os_log_send_and_compose_impl();
          v35 = v34;
          if (v34)
          {
            sub_100002A8C(v34);
          }

          goto LABEL_62;
        }
      }

      else
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089D14();
        }

        v14 = qword_1000EB308;
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_63;
        }

        *v85 = 0;
        v22 = sub_1000011A8(1);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
        }

        else
        {
          v23 = v22 & 0xFFFFFFFE;
        }

        if (v23)
        {
          LOWORD(v86) = 0;
          goto LABEL_59;
        }
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v14 = qword_1000EB308;
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_63;
      }

      *v85 = 0;
      v20 = sub_1000011A8(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
      }

      else
      {
        v21 = v20 & 0xFFFFFFFE;
      }

      if (v21)
      {
        LOWORD(v86) = 0;
        goto LABEL_59;
      }
    }

    v35 = 0;
LABEL_62:
    free(v35);
    goto LABEL_63;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v6 = qword_1000EB308;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v85 = 0;
    v7 = sub_1000011A8(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      LOWORD(v86) = 0;
      v9 = _os_log_send_and_compose_impl();
      v10 = v9;
      if (v9)
      {
        sub_100002A8C(v9);
      }
    }

    else
    {
      v10 = 0;
    }

    free(v10);
  }

  v24 = sub_100089A80(qword_1000EB608);
  v84 = 0;
  v25 = [v24 unlockIdentityInSession:v5 passcode:a2 isACMCredential:0 error:&v84];
  v26 = v84;

  if ((v25 & 1) == 0)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v14 = qword_1000EB308;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v86 = 0;
      v28 = sub_1000011A8(1);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v28 &= ~1u;
      }

      if (v28)
      {
        v29 = v14;
        v30 = [v26 code];
        *v85 = 67109376;
        *&v85[4] = -v5;
        *&v85[8] = 2048;
        *&v85[10] = v30;
        v31 = _os_log_send_and_compose_impl();

        if (v31)
        {
          sub_100002A8C(v31);
        }
      }

      else
      {
        v31 = 0;
      }

      free(v31);
    }

    goto LABEL_66;
  }

  v27 = 1;
LABEL_68:

  return v27;
}

uint64_t sub_1000299FC(const __CFDictionary *a1)
{
  if (sub_100002454(a1, kUMUserSessionHasSyncBagKey))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v2 = qword_1000EB308;
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

  if (!MKBUserSessionCreateSyncBagForUser())
  {
    CFDictionarySetValue(a1, kUMUserSessionHasSyncBagKey, kCFBooleanTrue);
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v2 = qword_1000EB308;
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v11 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 0xFFFFFFFE;
    }

    if (v12)
    {
LABEL_9:
      v5 = _os_log_send_and_compose_impl();
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }

      goto LABEL_29;
    }

LABEL_28:
    v6 = 0;
LABEL_29:
    free(v6);
LABEL_30:
    v13 = 0;
    goto LABEL_34;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v2 = qword_1000EB308;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      v9 = _os_log_send_and_compose_impl();
      v10 = v9;
      if (v9)
      {
        sub_100002A8C(v9);
      }
    }

    else
    {
      v10 = 0;
    }

    free(v10);
  }

  v13 = 0xFFFFFFFFLL;
LABEL_34:

  return v13;
}

uint64_t sub_100029CC8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = -1;
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2020000000;
  v3[3] = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100029D98;
  v2[3] = &unk_1000DD458;
  v2[4] = v3;
  v2[5] = &v4;
  dispatch_sync(qword_1000EB610, v2);
  v0 = *(v5 + 6);
  _Block_object_dispose(v3, 8);
  _Block_object_dispose(&v4, 8);
  return v0;
}

void sub_100029D98(uint64_t a1)
{
  dispatch_assert_queue_V2(qword_1000EB610);
  if (byte_1000EB2F0 == 1)
  {
    if (qword_1000EB320 != -1)
    {
      sub_100089D90();
    }

    v2 = qword_1000EB318;
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_56;
    }

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
      goto LABEL_52;
    }

    goto LABEL_54;
  }

  *(*(*(a1 + 32) + 8) + 24) = sub_10008A2F4(qword_1000EB2E0, 502);
  v5 = *(*(*(a1 + 32) + 8) + 24);
  if (dword_1000EB5B0 == 1)
  {
    if (v5)
    {
LABEL_14:
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v6 = qword_1000EB308;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = sub_1000011A8(1);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v7;
        }

        else
        {
          v8 = v7 & 0xFFFFFFFE;
        }

        if (v8)
        {
          v9 = _os_log_send_and_compose_impl();
          v10 = v9;
          if (v9)
          {
            sub_100002A8C(v9);
          }
        }

        else
        {
          v10 = 0;
        }

        free(v10);
      }

      goto LABEL_35;
    }

    sub_100089DA4();
  }

  if (v5)
  {
    goto LABEL_14;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v11 = qword_1000EB308;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = sub_1000011A8(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFE;
    }

    if (v13)
    {
      v14 = _os_log_send_and_compose_impl();
      v15 = v14;
      if (v14)
      {
        sub_100002A8C(v14);
      }
    }

    else
    {
      v15 = 0;
    }

    free(v15);
  }

  *(*(*(a1 + 32) + 8) + 24) = sub_10001D4F4(-1, 0);
LABEL_35:
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v2 = qword_1000EB308;
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    v21 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 & 0xFFFFFFFE;
    }

    if (v22)
    {
LABEL_52:
      v23 = _os_log_send_and_compose_impl();
      v24 = v23;
      if (v23)
      {
        sub_100002A8C(v23);
      }

      goto LABEL_55;
    }

LABEL_54:
    v24 = 0;
LABEL_55:
    free(v24);
LABEL_56:

    return;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v16 = qword_1000EB308;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = sub_1000011A8(1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 & 0xFFFFFFFE;
    }

    if (v18)
    {
      v27 = *(*(*(a1 + 32) + 8) + 24);
      v19 = _os_log_send_and_compose_impl();
      v20 = v19;
      if (v19)
      {
        sub_100002A8C(v19);
      }
    }

    else
    {
      v20 = 0;
    }

    free(v20);
  }

  v25 = +[RDServer sharedServer];
  [v25 switchToUser:*(*(*(a1 + 32) + 8) + 24)];

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v26 = *(*(*(a1 + 32) + 8) + 24);
  if (v26)
  {
    CFRelease(v26);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_10002A280()
{
  v0 = sub_100018360();
  if (v0)
  {
    v1 = v0;
    v2 = sub_1000023E8(v0, kUMUserSessionIDKey);
    Current = CFAbsoluteTimeGetCurrent();
    v4 = CFDateCreate(kCFAllocatorDefault, Current);
    if (v4)
    {
      v5 = v4;
      if (v2 == 502)
      {
        v6 = sub_1000023E8(v1, kUMUserSessionPreviousLoggedinIDKey);
        if (v6 != -1)
        {
          v7 = sub_10008A2F4(qword_1000EB2E0, v6);
          if (v7)
          {
            v8 = v7;
            CFDictionarySetValue(v7, kUMUserSessionLogoutEndTimeKey, v5);
            CFRelease(v8);
          }
        }
      }

      else
      {
        if (CFDictionaryContainsKey(v1, kUMUserSessionFirstLoginEndTimeKey))
        {
          v9 = kUMUserSessionCachedLoginEndTimeKey;
        }

        else
        {
          v9 = kUMUserSessionFirstLoginEndTimeKey;
        }

        CFDictionarySetValue(v1, v9, v5);
      }

      CFRelease(v5);
    }

    CFRelease(v1);
  }
}

void sub_10002A3A4()
{
  v0 = sub_100018360();
  if (v0)
  {
    v1 = v0;
    Current = CFAbsoluteTimeGetCurrent();
    v3 = CFDateCreate(kCFAllocatorDefault, Current);
    if (v3)
    {
      v4 = v3;
      CFDictionarySetValue(v1, kUMUserSessionLogoutStartTimeKey, v3);
      if (CFDictionaryContainsKey(v1, kUMUserSessionLogoutEndTimeKey))
      {
        CFDictionaryRemoveValue(v1, kUMUserSessionLogoutEndTimeKey);
      }

      CFRelease(v4);
    }

    CFRelease(v1);
  }
}

void sub_10002A458()
{
  v0 = sub_10008A58C(qword_1000EB2E0);
  if (v0 == 502)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v1 = qword_1000EB308;
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v2 = sub_1000011A8(1);
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        v3 = v2;
      }

      else
      {
        v3 = v2 & 0xFFFFFFFE;
      }

      if (v3)
      {
        v4 = _os_log_send_and_compose_impl();
        v5 = v4;
        if (v4)
        {
          sub_100002A8C(v4);
        }
      }

      else
      {
        v5 = 0;
      }

      free(v5);
    }

    return;
  }

  v6 = v0;
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v7 = qword_1000EB308;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_1000011A8(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      v10 = _os_log_send_and_compose_impl();
      v11 = v10;
      if (v10)
      {
        sub_100002A8C(v10);
      }
    }

    else
    {
      v11 = 0;
    }

    free(v11);
  }

  v12 = sub_100018360();
  if (v12)
  {
    v13 = v12;
    if (CFDictionaryContainsKey(v12, kUMUserSessionSyncMachServicesKey) || CFDictionaryContainsKey(v13, kUMUserSessionHasSyncBagKey) != 1)
    {
      goto LABEL_49;
    }

    if (sub_10002A804(v13, v6, 0))
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v14 = qword_1000EB308;
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      v15 = sub_1000011A8(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v14 = qword_1000EB308;
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      v17 = sub_1000011A8(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 & 0xFFFFFFFE;
      }

      if (v18)
      {
LABEL_44:
        v19 = _os_log_send_and_compose_impl();
        v20 = v19;
        if (v19)
        {
          sub_100002A8C(v19);
        }

        goto LABEL_47;
      }
    }

    v20 = 0;
LABEL_47:
    free(v20);
LABEL_48:

LABEL_49:
    CFRelease(v13);
  }
}

uint64_t sub_10002A804(const __CFDictionary *a1, uint64_t a2, int a3)
{
  if (sub_100002454(a1, kUMUserSessionHasSyncBagKey))
  {
    if (!a3 || sub_100032DF8(a1, a2))
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v6 = qword_1000EB308;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v14 = sub_1000011A8(1);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
        }

        else
        {
          v15 = v14 & 0xFFFFFFFE;
        }

        if (v15)
        {
LABEL_28:
          v16 = _os_log_send_and_compose_impl();
          v17 = v16;
          if (v16)
          {
            sub_100002A8C(v16);
          }

          goto LABEL_31;
        }

LABEL_30:
        v17 = 0;
LABEL_31:
        free(v17);
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v6 = qword_1000EB308;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = sub_1000011A8(1);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v7;
        }

        else
        {
          v8 = v7 & 0xFFFFFFFE;
        }

        if (v8)
        {
          goto LABEL_28;
        }

        goto LABEL_30;
      }
    }

    result = MKBUserSessionRemoveSyncBagForUser();
    if (result)
    {
      return result;
    }

    goto LABEL_37;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v9 = qword_1000EB308;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sub_1000011A8(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
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

LABEL_37:
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v19 = qword_1000EB308;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = sub_1000011A8(1);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
    }

    else
    {
      v21 = v20 & 0xFFFFFFFE;
    }

    if (v21)
    {
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

  CFDictionarySetValue(a1, kUMUserSessionHasSyncBagKey, kCFBooleanFalse);
  return 0;
}

uint64_t sub_10002AB94(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v2 = qword_1000EB308;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
    v3 = sub_1000011A8(1);
    v4 = v2;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v3;
    }

    else
    {
      v5 = v3 & 0xFFFFFFFE;
    }

    if (v5)
    {
      LODWORD(__from.__pn_.__r_.__value_.__l.__data_) = 138412290;
      *(__from.__pn_.__r_.__value_.__r.__words + 4) = v1;
      LODWORD(v163) = 12;
      p_from = &__from;
      v6 = _os_log_send_and_compose_impl();

      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {

      v6 = 0;
    }

    free(v6);
  }

  v7 = sub_100002454(v1, kUMUserSessionForegroundKey);
  v8 = sub_100002454(v1, @"MKBUserSessionFileSystemSet");
  v9 = sub_1000023E8(v1, kUMUserSessionIDKey);
  v10 = sub_100002454(v1, kUMUserSessionDirtyKey);
  v11 = sub_100002454(v1, kUMUserSessionisPrimaryKey);
  if (dword_1000EB5B0 == 1)
  {
    if (v9 == 502)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v12 = qword_1000EB308;
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_56;
      }

      __from.__pn_.__r_.__value_.__r.__words[0] = 0;
      v13 = sub_1000011A8(1);
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
        LOWORD(__str[0].__pn_.__r_.__value_.__l.__data_) = 0;
        goto LABEL_52;
      }

LABEL_54:
      v24 = 0;
LABEL_55:
      free(v24);
LABEL_56:

      return 0;
    }

LABEL_43:
    bzero(&__from, 0x400uLL);
    sub_1000795D4(v1, kUMUserSessionHomeDirKey, &__from, 1024);
    if (v7)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v12 = qword_1000EB308;
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_56;
      }

      __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
      v21 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
      }

      else
      {
        v22 = v21 & 0xFFFFFFFE;
      }

      if (!v22)
      {
        goto LABEL_54;
      }

      *v164 = 0;
      goto LABEL_52;
    }

    if (v10)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v25 = qword_1000EB308;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
        v26 = sub_1000011A8(1);
        v25 = v25;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v26;
        }

        else
        {
          v27 = v26 & 0xFFFFFFFE;
        }

        if (v27)
        {
          *v164 = 67109120;
          *&v164[4] = v9;
          LODWORD(v163) = 8;
          p_from = v164;
          goto LABEL_76;
        }

        goto LABEL_87;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v25 = qword_1000EB308;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
        v28 = sub_1000011A8(1);
        v25 = v25;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v28;
        }

        else
        {
          v29 = v28 & 0xFFFFFFFE;
        }

        if (v29)
        {
          *v164 = 67109120;
          *&v164[4] = v9;
          LODWORD(v163) = 8;
          p_from = v164;
LABEL_76:
          v30 = _os_log_send_and_compose_impl();

          if (v30)
          {
            sub_100002A8C(v30);
          }

          goto LABEL_88;
        }

LABEL_87:

        v30 = 0;
LABEL_88:
        free(v30);
      }
    }

    sub_10001BEFC(v9);
    sub_10001C244(v9);
    sub_10002C904(v9, 0);
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v36 = qword_1000EB308;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
      v37 = sub_1000011A8(1);
      v38 = v36;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v37;
      }

      else
      {
        v39 = v37 & 0xFFFFFFFE;
      }

      if (v39)
      {
        *v164 = 0;
        LODWORD(v163) = 2;
        p_from = v164;
        v40 = _os_log_send_and_compose_impl();

        if (v40)
        {
          sub_100002A8C(v40);
        }
      }

      else
      {

        v40 = 0;
      }

      free(v40);
    }

    sleep(1u);
    CFDictionarySetValue(v1, kUMUserSessionForegroundKey, kCFBooleanFalse);
    if (!byte_1000EA3D8 || v9 == 502)
    {
LABEL_183:
      if (!v8)
      {
        goto LABEL_239;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v72 = qword_1000EB308;
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        *v164 = 0;
        v73 = sub_1000011A8(1);
        v74 = v72;
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          v75 = v73;
        }

        else
        {
          v75 = v73 & 0xFFFFFFFE;
        }

        if (v75)
        {
          LODWORD(__str[0].__pn_.__r_.__value_.__l.__data_) = 136315394;
          *(__str[0].__pn_.__r_.__value_.__r.__words + 4) = &__from;
          WORD2(__str[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&__str[0].__pn_.__r_.__value_.__r.__words[1] + 6) = v9;
          v76 = _os_log_send_and_compose_impl();

          if (v76)
          {
            sub_100002A8C(v76);
          }
        }

        else
        {

          v76 = 0;
        }

        free(v76);
      }

      if (sub_10002D62C(&__from))
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v77 = qword_1000EB308;
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
          v78 = sub_1000011A8(1);
          v79 = v77;
          if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
          {
            v80 = v78;
          }

          else
          {
            v80 = v78 & 0xFFFFFFFE;
          }

          if (v80)
          {
            *v164 = 0;
            v81 = _os_log_send_and_compose_impl();

            if (v81)
            {
              sub_100002A8C(v81);
            }
          }

          else
          {

            v81 = 0;
          }

          free(v81);
        }

        goto LABEL_238;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v82 = qword_1000EB308;
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
        v83 = sub_1000011A8(1);
        v84 = v82;
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          v85 = v83;
        }

        else
        {
          v85 = v83 & 0xFFFFFFFE;
        }

        if (v85)
        {
          *v164 = 0;
          v86 = _os_log_send_and_compose_impl();

          if (v86)
          {
            sub_100002A8C(v86);
          }
        }

        else
        {

          v86 = 0;
        }

        free(v86);
      }

      mkpath_np("/private/var/DELETED", 0x1C0u);
      snprintf(__str, 0x400uLL, "/private/var/DELETED/euser_%d", v9);
      rename(&__from, __str, v87);
      if (v88)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v77 = qword_1000EB308;
        if (!os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_238;
        }

        v169 = 0;
        v89 = sub_1000011A8(1);
        v77 = v77;
        if (!os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          v89 &= ~1u;
        }

        if (v89)
        {
          v90 = __error();
          v91 = strerror(*v90);
          *v164 = 136315650;
          *&v164[4] = &__from;
          v165 = 2080;
          v166 = __str;
          v167 = 2080;
          v168 = v91;
          goto LABEL_234;
        }
      }

      else
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v77 = qword_1000EB308;
        if (!os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_238;
        }

        v169 = 0;
        v92 = sub_1000011A8(1);
        v77 = v77;
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          v93 = v92;
        }

        else
        {
          v93 = v92 & 0xFFFFFFFE;
        }

        if (v93)
        {
          *v164 = 136315394;
          *&v164[4] = &__from;
          v165 = 2080;
          v166 = __str;
LABEL_234:
          v94 = _os_log_send_and_compose_impl();

          if (v94)
          {
            sub_100002A8C(v94);
          }

          goto LABEL_237;
        }
      }

      v94 = 0;
LABEL_237:
      free(v94);
LABEL_238:

      CFDictionarySetValue(v1, @"MKBUserSessionFileSystemSet", kCFBooleanFalse);
LABEL_239:
      if (_SecSyncDeleteUserViews())
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v95 = qword_1000EB308;
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
        {
          __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
          v96 = sub_1000011A8(1);
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
          {
            v97 = v96;
          }

          else
          {
            v97 = v96 & 0xFFFFFFFE;
          }

          if (v97)
          {
            *v164 = 0;
            v98 = _os_log_send_and_compose_impl();
            v99 = v98;
            if (v98)
            {
              sub_100002A8C(v98);
            }
          }

          else
          {
            v99 = 0;
          }

          free(v99);
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v105 = qword_1000EB308;
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
        {
          __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
          v106 = sub_1000011A8(1);
          v105 = v105;
          if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
          {
            v107 = v106;
          }

          else
          {
            v107 = v106 & 0xFFFFFFFE;
          }

          if (v107)
          {
            *v164 = 0;
            goto LABEL_278;
          }

          goto LABEL_280;
        }
      }

      else
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v100 = qword_1000EB308;
        if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
        {
          __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
          v101 = sub_1000011A8(1);
          if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
          {
            v102 = v101;
          }

          else
          {
            v102 = v101 & 0xFFFFFFFE;
          }

          if (v102)
          {
            *v164 = 0;
            v103 = _os_log_send_and_compose_impl();
            v104 = v103;
            if (v103)
            {
              sub_100002A8C(v103);
            }
          }

          else
          {
            v104 = 0;
          }

          free(v104);
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v105 = qword_1000EB308;
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
        {
          __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
          v108 = sub_1000011A8(1);
          v105 = v105;
          if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
          {
            v109 = v108;
          }

          else
          {
            v109 = v108 & 0xFFFFFFFE;
          }

          if (v109)
          {
            *v164 = 0;
LABEL_278:
            v110 = _os_log_send_and_compose_impl();

            if (v110)
            {
              sub_100002A8C(v110);
            }

            goto LABEL_281;
          }

LABEL_280:

          v110 = 0;
LABEL_281:
          free(v110);
        }
      }

      *v164 = 0;
      if ([qword_1000EB2D8 splitUserVolumeEnabled])
      {
        if (sub_10002DA80(v1))
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v111 = qword_1000EB308;
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
          {
            __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
            v112 = sub_1000011A8(1);
            v113 = v111;
            if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
            {
              v114 = v112;
            }

            else
            {
              v114 = v112 & 0xFFFFFFFE;
            }

            if (v114)
            {
              LODWORD(v169) = 67109120;
              HIDWORD(v169) = v9;
              v115 = _os_log_send_and_compose_impl();

              if (v115)
              {
                sub_100002A8C(v115);
              }
            }

            else
            {

              v115 = 0;
            }

            free(v115);
          }

          goto LABEL_318;
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v118 = qword_1000EB308;
        if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
        {
          __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
          v121 = sub_1000011A8(1);
          v118 = v118;
          if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
          {
            v122 = v121;
          }

          else
          {
            v122 = v121 & 0xFFFFFFFE;
          }

          if (v122)
          {
            LODWORD(v169) = 67109120;
            HIDWORD(v169) = v9;
LABEL_310:
            v123 = _os_log_send_and_compose_impl();

            if (v123)
            {
              sub_100002A8C(v123);
            }

            goto LABEL_313;
          }

          goto LABEL_312;
        }
      }

      else
      {
        v116 = MKBUserSessionDeleteKeybagForUser();
        if (!v116)
        {
LABEL_318:
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v124 = qword_1000EB308;
          if (!os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_330;
          }

          __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
          v125 = sub_1000011A8(1);
          v126 = v124;
          if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
          {
            v127 = v125;
          }

          else
          {
            v127 = v125 & 0xFFFFFFFE;
          }

          if (v127)
          {
            LOWORD(v169) = 0;
            v128 = _os_log_send_and_compose_impl();

            if (v128)
            {
              sub_100002A8C(v128);
            }
          }

          else
          {

            v128 = 0;
          }

          v129 = v128;
LABEL_329:
          free(v129);
LABEL_330:

          goto LABEL_357;
        }

        v117 = v116;
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v118 = qword_1000EB308;
        if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
        {
          v169 = 0;
          v119 = sub_1000011A8(1);
          v118 = v118;
          if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
          {
            v120 = v119;
          }

          else
          {
            v120 = v119 & 0xFFFFFFFE;
          }

          if (v120)
          {
            LODWORD(__str[0].__pn_.__r_.__value_.__l.__data_) = 67109376;
            HIDWORD(__str[0].__pn_.__r_.__value_.__r.__words[0]) = v9;
            LOWORD(__str[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
            *(&__str[0].__pn_.__r_.__value_.__r.__words[1] + 2) = v117;
            goto LABEL_310;
          }

LABEL_312:

          v123 = 0;
LABEL_313:
          free(v123);
        }
      }

      return 0;
    }

    if (([qword_1000EB2D8 splitUserVolumeEnabled] & 1) == 0)
    {
      MKBUserSessionUnloadKeybagForUser();
    }

    if ([qword_1000EB2D8 deleteVolumeWithSession:v1 error:{0, p_from, v163, *v164}])
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v41 = qword_1000EB308;
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_125;
      }

      __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
      v42 = sub_1000011A8(1);
      v41 = v41;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v43 = v42;
      }

      else
      {
        v43 = v42 & 0xFFFFFFFE;
      }

      if (v43)
      {
        *v164 = 67109120;
        *&v164[4] = v9;
        goto LABEL_121;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v41 = qword_1000EB308;
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_125;
      }

      __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
      v44 = sub_1000011A8(1);
      v41 = v41;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v45 = v44;
      }

      else
      {
        v45 = v44 & 0xFFFFFFFE;
      }

      if (v45)
      {
        *v164 = 67109120;
        *&v164[4] = v9;
LABEL_121:
        v46 = _os_log_send_and_compose_impl();

        if (v46)
        {
          sub_100002A8C(v46);
        }

        goto LABEL_124;
      }
    }

    v46 = 0;
LABEL_124:
    free(v46);
LABEL_125:

    v47 = sub_10002A804(v1, v9, 1);
    if (v47)
    {
      v48 = v47;
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v49 = qword_1000EB308;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *v164 = 0;
        v50 = sub_1000011A8(1);
        v49 = v49;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v51 = v50;
        }

        else
        {
          v51 = v50 & 0xFFFFFFFE;
        }

        if (v51)
        {
          LODWORD(__str[0].__pn_.__r_.__value_.__l.__data_) = 67109376;
          HIDWORD(__str[0].__pn_.__r_.__value_.__r.__words[0]) = v9;
          LOWORD(__str[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&__str[0].__pn_.__r_.__value_.__r.__words[1] + 2) = v48;
          v52 = _os_log_send_and_compose_impl();

          if (v52)
          {
            sub_100002A8C(v52);
          }
        }

        else
        {

          v52 = 0;
        }

        free(v52);
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v49 = qword_1000EB308;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
        v53 = sub_1000011A8(1);
        v49 = v49;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v54 = v53;
        }

        else
        {
          v54 = v53 & 0xFFFFFFFE;
        }

        if (v54)
        {
          *v164 = 0;
          v55 = _os_log_send_and_compose_impl();

          if (v55)
          {
            sub_100002A8C(v55);
          }
        }

        else
        {

          v55 = 0;
        }

        free(v55);
      }
    }

    goto LABEL_183;
  }

  if (v11)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v12 = qword_1000EB308;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    __from.__pn_.__r_.__value_.__r.__words[0] = 0;
    v15 = sub_1000011A8(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 & 0xFFFFFFFE;
    }

    if (!v16)
    {
      goto LABEL_54;
    }

    LOWORD(__str[0].__pn_.__r_.__value_.__l.__data_) = 0;
    goto LABEL_52;
  }

  v17 = sub_100088F2C(qword_1000EB608);
  v18 = sub_100089AC4(v17);

  if (v18 == v9)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v12 = qword_1000EB308;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    __from.__pn_.__r_.__value_.__r.__words[0] = 0;
    v19 = sub_1000011A8(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 & 0xFFFFFFFE;
    }

    if (!v20)
    {
      goto LABEL_54;
    }

    LOWORD(__str[0].__pn_.__r_.__value_.__l.__data_) = 0;
LABEL_52:
    v23 = _os_log_send_and_compose_impl();
    v24 = v23;
    if (v23)
    {
      sub_100002A8C(v23);
    }

    goto LABEL_55;
  }

  if (dword_1000EB5B0 == 2)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v31 = qword_1000EB308;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      __from.__pn_.__r_.__value_.__r.__words[0] = 0;
      v32 = sub_1000011A8(1);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v32;
      }

      else
      {
        v33 = v32 & 0xFFFFFFFE;
      }

      if (v33)
      {
        LOWORD(__str[0].__pn_.__r_.__value_.__l.__data_) = 0;
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

    if ([qword_1000EB2D8 deleteVolumeWithSession:v1 error:0])
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v56 = qword_1000EB308;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        __from.__pn_.__r_.__value_.__r.__words[0] = 0;
        v57 = sub_1000011A8(1);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v58 = v57;
        }

        else
        {
          v58 = v57 & 0xFFFFFFFE;
        }

        if (v58)
        {
          LODWORD(__str[0].__pn_.__r_.__value_.__l.__data_) = 67109120;
          HIDWORD(__str[0].__pn_.__r_.__value_.__r.__words[0]) = v9;
          goto LABEL_166;
        }

        goto LABEL_168;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v56 = qword_1000EB308;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        __from.__pn_.__r_.__value_.__r.__words[0] = 0;
        v59 = sub_1000011A8(1);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v60 = v59;
        }

        else
        {
          v60 = v59 & 0xFFFFFFFE;
        }

        if (v60)
        {
          LODWORD(__str[0].__pn_.__r_.__value_.__l.__data_) = 67109120;
          HIDWORD(__str[0].__pn_.__r_.__value_.__r.__words[0]) = v9;
LABEL_166:
          v61 = _os_log_send_and_compose_impl();
          v62 = v61;
          if (v61)
          {
            sub_100002A8C(v61);
          }

          goto LABEL_169;
        }

LABEL_168:
        v62 = 0;
LABEL_169:
        free(v62);
      }
    }

    v63 = sub_100079590(v1, kUMUserSessionUUIDKey);
    v64 = sub_1000013A0(qword_1000EB2E8);
    v65 = [v64 userPersonas];
    v66 = [v65 objectForKeyedSubscript:v63];

    if (!v66)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v67 = qword_1000EB308;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
        v68 = sub_1000011A8(1);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          v69 = v68;
        }

        else
        {
          v69 = v68 & 0xFFFFFFFE;
        }

        if (v69)
        {
          LODWORD(__from.__pn_.__r_.__value_.__l.__data_) = 138412290;
          *(__from.__pn_.__r_.__value_.__r.__words + 4) = v63;
          v70 = _os_log_send_and_compose_impl();
          v71 = v70;
          if (v70)
          {
            sub_100002A8C(v70);
          }
        }

        else
        {
          v71 = 0;
        }

        free(v71);
      }
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v130 = qword_1000EB308;
    if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
    {
      __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
      v131 = sub_1000011A8(1);
      if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
      {
        v132 = v131;
      }

      else
      {
        v132 = v131 & 0xFFFFFFFE;
      }

      if (v132)
      {
        LODWORD(__from.__pn_.__r_.__value_.__l.__data_) = 138412290;
        *(__from.__pn_.__r_.__value_.__r.__words + 4) = v63;
        v133 = _os_log_send_and_compose_impl();
        v134 = v133;
        if (v133)
        {
          sub_100002A8C(v133);
        }
      }

      else
      {
        v134 = 0;
      }

      free(v134);
    }

    do
    {

      if (![v66 count])
      {
        v143 = sub_1000013A0(qword_1000EB2E8);
        v144 = [v143 userPersonas];
        [v144 setObject:0 forKeyedSubscript:v63];

        sub_10008EBBC(qword_1000EB2E8);
        goto LABEL_357;
      }

      v130 = [v66 objectAtIndexedSubscript:0];
      v135 = sub_1000450CC(v66, v130, v9, 1);
    }

    while (!v135);
    v136 = v135;
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v137 = qword_1000EB308;
    if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
    {
      __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
      v138 = sub_1000011A8(1);
      if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
      {
        v139 = v138;
      }

      else
      {
        v139 = v138 & 0xFFFFFFFE;
      }

      if (v139)
      {
        v140 = v137;
        v141 = strerror(v136);
        LODWORD(__from.__pn_.__r_.__value_.__l.__data_) = 138412546;
        *(__from.__pn_.__r_.__value_.__r.__words + 4) = v63;
        WORD2(__from.__pn_.__r_.__value_.__r.__words[1]) = 2080;
        *(&__from.__pn_.__r_.__value_.__r.__words[1] + 6) = v141;
        v142 = _os_log_send_and_compose_impl();

        if (v142)
        {
          sub_100002A8C(v142);
        }
      }

      else
      {
        v142 = 0;
      }

      free(v142);
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v124 = qword_1000EB308;
    if (!os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_330;
    }

    __from.__pn_.__r_.__value_.__r.__words[0] = 0;
    v158 = sub_1000011A8(1);
    if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
    {
      v159 = v158;
    }

    else
    {
      v159 = v158 & 0xFFFFFFFE;
    }

    if (v159)
    {
      LODWORD(__str[0].__pn_.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(__str[0].__pn_.__r_.__value_.__r.__words[0]) = v9;
      v160 = _os_log_send_and_compose_impl();
      v161 = v160;
      if (v160)
      {
        sub_100002A8C(v160);
      }
    }

    else
    {
      v161 = 0;
    }

    v129 = v161;
    goto LABEL_329;
  }

  if (dword_1000EB5B0 == 1)
  {
    goto LABEL_43;
  }

LABEL_357:
  v145 = sub_100079590(v1, kUMUserSessionShortNameKey);
  sub_10008B634(qword_1000EB2E0, v145);
  sub_10002E024(v9, 1);
  sub_100018C80();
  if (qword_1000EB320 != -1)
  {
    sub_100089D68();
  }

  v146 = qword_1000EB318;
  if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
  {
    __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
    v147 = sub_1000011A8(1);
    v148 = v146;
    if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
    {
      v149 = v147;
    }

    else
    {
      v149 = v147 & 0xFFFFFFFE;
    }

    if (v149)
    {
      *v164 = 67109120;
      *&v164[4] = v9;
      v150 = _os_log_send_and_compose_impl();

      if (v150)
      {
        sub_100002A8C(v150);
      }
    }

    else
    {

      v150 = 0;
    }

    free(v150);
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v151 = qword_1000EB308;
  if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
  {
    *v164 = 0;
    v152 = sub_1000011A8(1);
    v153 = v151;
    if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
    {
      v154 = v152;
    }

    else
    {
      v154 = v152 & 0xFFFFFFFE;
    }

    if (v154)
    {
      LODWORD(__str[0].__pn_.__r_.__value_.__l.__data_) = 136315394;
      *(__str[0].__pn_.__r_.__value_.__r.__words + 4) = "removeUserSessionInternal";
      WORD2(__str[0].__pn_.__r_.__value_.__r.__words[1]) = 2080;
      *(&__str[0].__pn_.__r_.__value_.__r.__words[1] + 6) = kMobileKeyBagUserChangedNotificationToken;
      v155 = _os_log_send_and_compose_impl();

      if (v155)
      {
        sub_100002A8C(v155);
      }
    }

    else
    {

      v155 = 0;
    }

    free(v155);
  }

  v156 = sub_10008900C(qword_1000EB608);
  v157 = [NSString stringWithUTF8String:kMobileKeyBagUserChangedNotificationToken];
  [v156 post:v157];

  return 1;
}

uint64_t sub_10002C904(uint64_t a1, int a2)
{
  v4 = launch_destroy_persona();
  if (v4)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v5 = qword_1000EB308;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v78 = 0;
      v6 = sub_1000011A8(1);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        *v77 = 67109376;
        *&v77[4] = a1;
        *&v77[8] = 1024;
        *&v77[10] = v4;
        goto LABEL_18;
      }

      goto LABEL_20;
    }
  }

  else
  {
    dword_1000EA3DC = -1;
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v5 = qword_1000EB308;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v77 = 0;
      v8 = sub_1000011A8(1);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        LODWORD(v78) = 67109120;
        HIDWORD(v78) = a1;
LABEL_18:
        v10 = _os_log_send_and_compose_impl();
        v11 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }

        goto LABEL_21;
      }

LABEL_20:
      v11 = 0;
LABEL_21:
      free(v11);
    }
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v12 = qword_1000EB308;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v77 = 0;
    v13 = sub_1000011A8(1);
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
      LODWORD(v78) = 67109120;
      HIDWORD(v78) = a1;
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

  sub_100033128(a1);
  v17 = sub_10008A2F4(qword_1000EB2E0, a1);
  if (v17)
  {
    v18 = v17;
    if (!CFDictionaryContainsKey(v17, kUMUserSessionVolumeDeviceNodeKey))
    {
      goto LABEL_160;
    }

    sub_10002F81C(v18);
    if ([qword_1000EB2D8 unmountVolumeWithSession:v18 mountPath:0 error:0])
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v19 = qword_1000EB308;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v77 = 0;
        v20 = sub_1000011A8(1);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v20;
        }

        else
        {
          v21 = v20 & 0xFFFFFFFE;
        }

        if (v21)
        {
          LOWORD(v78) = 0;
          goto LABEL_52;
        }

        goto LABEL_54;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v19 = qword_1000EB308;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v77 = 0;
        v22 = sub_1000011A8(1);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
        }

        else
        {
          v23 = v22 & 0xFFFFFFFE;
        }

        if (v23)
        {
          LOWORD(v78) = 0;
LABEL_52:
          v24 = _os_log_send_and_compose_impl();
          v25 = v24;
          if (v24)
          {
            sub_100002A8C(v24);
          }

          goto LABEL_55;
        }

LABEL_54:
        v25 = 0;
LABEL_55:
        free(v25);
      }
    }

    if (sub_100002454(v18, kUMUserSessionHasSyncBagKey) != 1)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v33 = qword_1000EB308;
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_159;
      }

      *v77 = 0;
      v34 = sub_1000011A8(1);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v35 = v34;
      }

      else
      {
        v35 = v34 & 0xFFFFFFFE;
      }

      if (v35)
      {
        LODWORD(v78) = 67109120;
        HIDWORD(v78) = a1;
        goto LABEL_155;
      }

      goto LABEL_157;
    }

    v26 = sub_100079590(v18, kUMUserSessionVolumeDeviceNodeKey);
    if (!v26)
    {
LABEL_98:
      if (CFDictionaryContainsKey(v18, kUMUserSessionSyncMachServicesKey))
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v46 = qword_1000EB308;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *v77 = 0;
          v47 = sub_1000011A8(1);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v48 = v47;
          }

          else
          {
            v48 = v47 & 0xFFFFFFFE;
          }

          if (v48)
          {
            LODWORD(v78) = 67109120;
            HIDWORD(v78) = a1;
            v49 = _os_log_send_and_compose_impl();
            v50 = v49;
            if (v49)
            {
              sub_100002A8C(v49);
            }
          }

          else
          {
            v50 = 0;
          }

          free(v50);
        }

        if (sub_100032DF8(v18, a1))
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v33 = qword_1000EB308;
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_159;
          }

          *v77 = 0;
          v56 = sub_1000011A8(1);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v57 = v56;
          }

          else
          {
            v57 = v56 & 0xFFFFFFFE;
          }

          if (v57)
          {
            LODWORD(v78) = 67109120;
            HIDWORD(v78) = a1;
            goto LABEL_155;
          }

LABEL_157:
          v65 = 0;
LABEL_158:
          free(v65);
LABEL_159:

LABEL_160:
          if (a2)
          {
            v66 = sub_100002454(v18, kUMUserSessionDisabledKey);
            v67 = sub_100002454(v18, kUMUserSessionDirtyKey);
            if (v66)
            {
              if (!v67)
              {
                if (qword_1000EB310 != -1)
                {
                  sub_100089CEC();
                }

                v68 = qword_1000EB308;
                if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                {
                  v78 = 0;
                  v69 = sub_1000011A8(1);
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                  {
                    v70 = v69;
                  }

                  else
                  {
                    v70 = v69 & 0xFFFFFFFE;
                  }

                  if (v70)
                  {
                    *v77 = 136315394;
                    *&v77[4] = "unload_syncdomain";
                    *&v77[12] = 2080;
                    *&v77[14] = kMobileKeyBagUserChangedNotificationToken;
                    v71 = _os_log_send_and_compose_impl();
                    v72 = v71;
                    if (v71)
                    {
                      sub_100002A8C(v71);
                    }
                  }

                  else
                  {
                    v72 = 0;
                  }

                  free(v72);
                }

                v73 = sub_10008900C(qword_1000EB608);
                v74 = [NSString stringWithUTF8String:kMobileKeyBagUserChangedNotificationToken];
                [v73 post:v74];
              }
            }
          }

          CFRelease(v18);
          return v4;
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v33 = qword_1000EB308;
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_159;
        }

        *v77 = 0;
        v58 = sub_1000011A8(1);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v59 = v58;
        }

        else
        {
          v59 = v58 & 0xFFFFFFFE;
        }

        if (!v59)
        {
          goto LABEL_157;
        }

        LODWORD(v78) = 67109120;
        HIDWORD(v78) = a1;
      }

      else
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v51 = qword_1000EB308;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *v77 = 0;
          v52 = sub_1000011A8(1);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v53 = v52;
          }

          else
          {
            v53 = v52 & 0xFFFFFFFE;
          }

          if (v53)
          {
            LODWORD(v78) = 67109120;
            HIDWORD(v78) = a1;
            v54 = _os_log_send_and_compose_impl();
            v55 = v54;
            if (v54)
            {
              sub_100002A8C(v54);
            }
          }

          else
          {
            v55 = 0;
          }

          free(v55);
        }

        if (sub_10002A804(v18, a1, 1))
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v33 = qword_1000EB308;
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_159;
          }

          *v77 = 0;
          v60 = sub_1000011A8(1);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v61 = v60;
          }

          else
          {
            v61 = v60 & 0xFFFFFFFE;
          }

          if (!v61)
          {
            goto LABEL_157;
          }

          LODWORD(v78) = 67109120;
          HIDWORD(v78) = a1;
        }

        else
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v33 = qword_1000EB308;
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_159;
          }

          *v77 = 0;
          v62 = sub_1000011A8(1);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v63 = v62;
          }

          else
          {
            v63 = v62 & 0xFFFFFFFE;
          }

          if (!v63)
          {
            goto LABEL_157;
          }

          LODWORD(v78) = 67109120;
          HIDWORD(v78) = a1;
        }
      }

LABEL_155:
      v64 = _os_log_send_and_compose_impl();
      v65 = v64;
      if (v64)
      {
        sub_100002A8C(v64);
      }

      goto LABEL_158;
    }

    v27 = v26;
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v28 = qword_1000EB308;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v78 = 0;
      v29 = sub_1000011A8(1);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v29;
      }

      else
      {
        v30 = v29 & 0xFFFFFFFE;
      }

      if (v30)
      {
        *v77 = 138412546;
        *&v77[4] = v27;
        *&v77[12] = 1024;
        *&v77[14] = a1;
        v31 = _os_log_send_and_compose_impl();
        v32 = v31;
        if (v31)
        {
          sub_100002A8C(v31);
        }
      }

      else
      {
        v32 = 0;
      }

      free(v32);
    }

    v36 = sub_100089A80(qword_1000EB608);
    v76 = 0;
    v37 = [v36 unmapVolume:v27 error:&v76];
    v38 = v76;

    if (v37)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v39 = qword_1000EB308;
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_97;
      }

      *v77 = 0;
      v40 = sub_1000011A8(1);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v41 = v40;
      }

      else
      {
        v41 = v40 & 0xFFFFFFFE;
      }

      if (v41)
      {
        LODWORD(v78) = 67109120;
        HIDWORD(v78) = a1;
        v42 = _os_log_send_and_compose_impl();
        if (!v42)
        {
          goto LABEL_96;
        }

        goto LABEL_94;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v39 = qword_1000EB308;
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_97;
      }

      v78 = 0;
      v43 = sub_1000011A8(1);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v43 &= ~1u;
      }

      if (v43)
      {
        v44 = v39;
        v45 = [v38 code];
        *v77 = 67109376;
        *&v77[4] = a1;
        *&v77[8] = 2048;
        *&v77[10] = v45;
        v42 = _os_log_send_and_compose_impl();

        if (!v42)
        {
LABEL_96:
          free(v42);
LABEL_97:

          goto LABEL_98;
        }

LABEL_94:
        sub_100002A8C(v42);
        goto LABEL_96;
      }
    }

    v42 = 0;
    goto LABEL_96;
  }

  return v4;
}

uint64_t sub_10002D62C(const char *a1)
{
  v2 = removefile_state_alloc();
  value = 0;
  if (removefile_state_set(v2, 3u, sub_10004366C))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v3 = qword_1000EB308;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_1000011A8(1);
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 &= ~1u;
      }

      if (v4)
      {
        v5 = v3;
        v6 = __error();
        v7 = strerror(*v6);
        v27 = 136315138;
        v28 = v7;
        v8 = _os_log_send_and_compose_impl();

        if (v8)
        {
          sub_100002A8C(v8);
        }
      }

      else
      {
        v8 = 0;
      }

      free(v8);
    }
  }

  if (removefile_state_set(v2, 4u, &value))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v9 = qword_1000EB308;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = sub_1000011A8(1);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 &= ~1u;
      }

      if (v10)
      {
        v11 = v9;
        v12 = __error();
        v13 = strerror(*v12);
        v27 = 136315138;
        v28 = v13;
        v14 = _os_log_send_and_compose_impl();

        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }
  }

  if (removefile(a1, v2, 1u))
  {
    v15 = *__error();
    if (v15 != 2)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v16 = qword_1000EB308;
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_47;
      }

      v21 = sub_1000011A8(1);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v21 &= ~1u;
      }

      if (v21)
      {
        v19 = v16;
        v22 = strerror(v15);
        v27 = 136315394;
        v28 = a1;
        v29 = 2080;
        v30 = v22;
LABEL_42:
        v23 = _os_log_send_and_compose_impl();

        if (v23)
        {
          sub_100002A8C(v23);
        }

        goto LABEL_46;
      }

LABEL_45:
      v23 = 0;
LABEL_46:
      free(v23);
LABEL_47:

      v24 = 0;
      goto LABEL_48;
    }
  }

  if ((value & 0xFFFFFFFD) != 0)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v16 = qword_1000EB308;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    v17 = sub_1000011A8(1);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 &= ~1u;
    }

    if (v17)
    {
      v18 = value;
      v19 = v16;
      v20 = strerror(v18);
      v27 = 136315394;
      v28 = a1;
      v29 = 2080;
      v30 = v20;
      goto LABEL_42;
    }

    goto LABEL_45;
  }

  v24 = 1;
LABEL_48:
  removefile_state_free(v2);
  return v24;
}

uint64_t sub_10002DA80(const __CFDictionary *a1)
{
  v2 = sub_100079590(a1, kUMUserSessionUUIDKey);
  v3 = sub_1000023E8(a1, kMKBUserSessionIDKey);
  if (v2)
  {
    v4 = v3;
    v5 = sub_100016954(NSUUID, v2);
    if (v5)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v6 = qword_1000EB308;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v40 = 0;
        v7 = sub_1000011A8(1);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v7;
        }

        else
        {
          v8 = v7 & 0xFFFFFFFE;
        }

        if (v8)
        {
          LOWORD(v43) = 0;
          v9 = _os_log_send_and_compose_impl();
          v10 = v9;
          if (v9)
          {
            sub_100002A8C(v9);
          }
        }

        else
        {
          v10 = 0;
        }

        free(v10);
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v20 = qword_1000EB308;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v40 = 0;
        v21 = sub_1000011A8(1);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v21;
        }

        else
        {
          v22 = v21 & 0xFFFFFFFE;
        }

        if (v22)
        {
          LODWORD(v43) = 67109120;
          HIDWORD(v43) = v4;
          v23 = _os_log_send_and_compose_impl();
          v24 = v23;
          if (v23)
          {
            sub_100002A8C(v23);
          }
        }

        else
        {
          v24 = 0;
        }

        free(v24);
      }

      v25 = sub_100089A80(qword_1000EB608);
      v39 = 0;
      v26 = [v25 deleteIdentity:v5 error:&v39];
      v15 = v39;

      if (v26)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v27 = qword_1000EB308;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v40 = 0;
          v28 = sub_1000011A8(1);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v29 = v28;
          }

          else
          {
            v29 = v28 & 0xFFFFFFFE;
          }

          if (v29)
          {
            LODWORD(v43) = 67109120;
            HIDWORD(v43) = v4;
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

        v37 = 1;
        goto LABEL_73;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v32 = qword_1000EB308;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v43 = 0;
        v33 = sub_1000011A8(1);
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 &= ~1u;
        }

        if (v33)
        {
          v34 = v32;
          v35 = [v15 code];
          LODWORD(v40) = 67109376;
          HIDWORD(v40) = v4;
          v41 = 2048;
          v42 = v35;
          v36 = _os_log_send_and_compose_impl();

          if (v36)
          {
            sub_100002A8C(v36);
          }
        }

        else
        {
          v36 = 0;
        }

        free(v36);
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v15 = qword_1000EB308;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v40 = 0;
        v16 = sub_1000011A8(1);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
        }

        else
        {
          v17 = v16 & 0xFFFFFFFE;
        }

        if (v17)
        {
          LOWORD(v43) = 0;
          v18 = _os_log_send_and_compose_impl();
          v19 = v18;
          if (v18)
          {
            sub_100002A8C(v18);
          }
        }

        else
        {
          v19 = 0;
        }

        free(v19);
      }
    }

    v37 = 0;
LABEL_73:

    goto LABEL_74;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v5 = qword_1000EB308;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v40 = 0;
    v11 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 0xFFFFFFFE;
    }

    if (v12)
    {
      LOWORD(v43) = 0;
      v13 = _os_log_send_and_compose_impl();
      v14 = v13;
      if (v13)
      {
        sub_100002A8C(v13);
      }
    }

    else
    {
      v14 = 0;
    }

    free(v14);
  }

  v37 = 0;
LABEL_74:

  return v37;
}

uint64_t sub_10002E024(int a1, int a2)
{
  result = qword_1000EB5A0;
  if (qword_1000EB5A0)
  {
    valuePtr[0] = 0;
    if (CFArrayGetCount(qword_1000EB5A0) < 1)
    {
      return 0;
    }

    else
    {
      v5 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5A0, v5);
        if (ValueAtIndex)
        {
          v7 = ValueAtIndex;
          v8 = CFGetTypeID(ValueAtIndex);
          if (v8 == CFDictionaryGetTypeID())
          {
            Value = CFDictionaryGetValue(v7, kUMUserSessionIDKey);
            if (Value)
            {
              v10 = Value;
              v11 = CFGetTypeID(Value);
              if (v11 == CFNumberGetTypeID() && CFNumberGetValue(v10, kCFNumberIntType, valuePtr) && valuePtr[0] == a1)
              {
                break;
              }
            }
          }
        }

        if (CFArrayGetCount(qword_1000EB5A0) <= ++v5)
        {
          return 0;
        }
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v13 = qword_1000EB308;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = sub_1000011A8(1);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
        }

        else
        {
          v15 = v14 & 0xFFFFFFFE;
        }

        if (v15)
        {
          valuePtr[1] = 67109120;
          valuePtr[2] = a1;
          v16 = _os_log_send_and_compose_impl();
          v17 = v16;
          if (v16)
          {
            sub_100002A8C(v16);
          }
        }

        else
        {
          v17 = 0;
        }

        free(v17);
      }

      CFArrayRemoveValueAtIndex(qword_1000EB5A0, v5);
      Count = CFArrayGetCount(qword_1000EB5A0);
      qword_1000EB5A8 = Count;
      if (!byte_1000EA3D8 && Count == 1)
      {
        qword_1000EB2F8 = kUMUserSessionAPFSNativeVolume;
        byte_1000EA3D8 = 1;
      }

      if (a2)
      {
        sub_100035A0C(a1);
      }

      return 1;
    }
  }

  return result;
}

BOOL sub_10002E270(const __CFDictionary *a1)
{
  v1 = sub_100002700(a1);
  v2 = sub_10002AB94(v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2 != 0;
}

uint64_t sub_10002E2B0(const __CFDictionary *a1, uint64_t a2, const __CFData *a3)
{
  if (a3)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v6 = qword_1000EB308;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_1000011A8(1);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 &= ~1u;
      }

      if (v7)
      {
        v8 = v6;
        CFDataGetLength(a3);
        v9 = _os_log_send_and_compose_impl();

        if (!v9)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      goto LABEL_19;
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v6 = qword_1000EB308;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = sub_1000011A8(1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v9 = _os_log_send_and_compose_impl();
        if (!v9)
        {
LABEL_20:
          free(v9);
          goto LABEL_21;
        }

LABEL_18:
        sub_100002A8C(v9);
        goto LABEL_20;
      }

LABEL_19:
      v9 = 0;
      goto LABEL_20;
    }
  }

LABEL_21:

  sub_10002E4B4(a1, a2, a3);
  return 0;
}

uint64_t sub_10002E4B4(const __CFDictionary *a1, uint64_t a2, const __CFData *a3)
{
  v6 = sub_100002700(a1);
  if (v6)
  {
    goto LABEL_14;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v7 = qword_1000EB308;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v33[0] = 0;
    v8 = sub_1000011A8(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      LOWORD(v32[0]) = 0;
      LODWORD(v31) = 2;
      v30 = v32;
      v10 = _os_log_send_and_compose_impl();
      v11 = v10;
      if (v10)
      {
        sub_100002A8C(v10);
      }
    }

    else
    {
      v11 = 0;
    }

    free(v11);
  }

  v6 = sub_100024578(a1, 0, 0, 0);
  if (v6)
  {
LABEL_14:
    v12 = v6;
    v13 = sub_1000023E8(v6, kUMUserSessionIDKey);
    if (dword_1000EB5B0 == 1 && v13 == 502)
    {
      sub_10002A3A4();
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v14 = qword_1000EB308;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v33[0] = 0;
      v15 = sub_1000011A8(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        LOWORD(v32[0]) = 0;
        LODWORD(v31) = 2;
        v30 = v32;
        v17 = _os_log_send_and_compose_impl();
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v18 = 0;
      }

      free(v18);
    }

    if (a3)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v19 = qword_1000EB308;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v32[0] = 0;
        v20 = sub_1000011A8(1);
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 &= ~1u;
        }

        if (v20)
        {
          v21 = v19;
          Length = CFDataGetLength(a3);
          LODWORD(v33[0]) = 134217984;
          *(v33 + 4) = Length;
          LODWORD(v31) = 12;
          v30 = v33;
          v23 = _os_log_send_and_compose_impl();

          if (v23)
          {
            sub_100002A8C(v23);
          }
        }

        else
        {
          v23 = 0;
        }

        free(v23);
      }

      CFDictionarySetValue(v12, @"UserSwitchTaskOpqueData", a3);
    }

    else if (CFDictionaryContainsKey(v12, @"UserSwitchTaskOpqueData"))
    {
      CFDictionaryRemoveValue(v12, @"UserSwitchTaskOpqueData");
    }

    v24 = [RDServer sharedServer:v30];
    [v24 switchToUser:v12 passcodeData:a2];
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v24 = qword_1000EB308;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v33[0] = 0;
      v25 = sub_1000011A8(1);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        LOWORD(v32[0]) = 0;
        v27 = _os_log_send_and_compose_impl();
        v28 = v27;
        if (v27)
        {
          sub_100002A8C(v27);
        }
      }

      else
      {
        v28 = 0;
      }

      free(v28);
    }
  }

  return 0;
}

uint64_t sub_10002E8EC()
{
  v0 = sub_10008A2F4(qword_1000EB2E0, 502);
  sub_10002E4B4(v0, 0, 0);
  if (v0)
  {
    CFRelease(v0);
  }

  return 0;
}

id sub_10002E93C()
{
  v0 = sub_10008A2F4(qword_1000EB2E0, 502);
  v1 = +[RDServer sharedServer];
  v2 = [v1 LogoutToUser:v0];

  return v2;
}

id sub_10002E998()
{
  v0 = +[RDServer sharedServer];
  v1 = [v0 inLoginSession];

  return v1;
}

uint64_t sub_10002E9D8(const __CFDictionary *a1, const __CFData *a2)
{
  v4 = sub_10008A58C(qword_1000EB2E0);
  v5 = sub_1000023E8(a1, kUMUserSessionIDKey);
  v6 = sub_100002454(a1, kUMUserSessionNeedsMountKey);
  v7 = sub_10008900C(qword_1000EB608);
  v8 = [NSString stringWithUTF8String:"com.apple.mobile.usermanagerd.foregrounduser_willchange"];
  [v7 post:v8];

  if (dword_1000EB5B0 == 1 && v4 != 502 && byte_1000EA3D8 == 1)
  {
    v9 = sub_100018360();
    if (v9)
    {
      sub_10002F81C(v9);
    }

    if (!v6 || v5 == 502)
    {
LABEL_54:
      Current = CFAbsoluteTimeGetCurrent();
      v27 = CFDateCreate(kCFAllocatorDefault, Current);
      if (!v27)
      {
        goto LABEL_64;
      }

      v28 = v27;
      if (CFDictionaryContainsKey(a1, kUMUserSessionFirstLoginStartTimeKey))
      {
        if (!CFDictionaryContainsKey(a1, kUMUserSessionFirstLoginEndTimeKey))
        {
          CFDictionarySetValue(a1, kUMUserSessionFirstLoginStartTimeKey, v28);
          goto LABEL_63;
        }

        CFDictionarySetValue(a1, kUMUserSessionCachedLoginStartTimeKey, v28);
        if (CFDictionaryContainsKey(a1, kUMUserSessionCachedLoginEndTimeKey))
        {
          v29 = kUMUserSessionCachedLoginEndTimeKey;
LABEL_61:
          CFDictionaryRemoveValue(a1, v29);
        }
      }

      else
      {
        CFDictionarySetValue(a1, kUMUserSessionFirstLoginStartTimeKey, v28);
        if (CFDictionaryContainsKey(a1, kUMUserSessionFirstLoginEndTimeKey))
        {
          v29 = kUMUserSessionFirstLoginEndTimeKey;
          goto LABEL_61;
        }
      }

LABEL_63:
      CFRelease(v28);
      goto LABEL_64;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v10 = qword_1000EB308;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_1000011A8(1);
      v12 = v10;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v11;
      }

      else
      {
        v13 = v11 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v14 = _os_log_send_and_compose_impl();

        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {

        v14 = 0;
      }

      free(v14);
    }

    if ([qword_1000EB2D8 mountVolumeWithSession:a1 mountPath:0 error:0 forPersona:0])
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v20 = qword_1000EB308;
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_53;
      }

      v21 = sub_1000011A8(1);
      v20 = v20;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
      }

      else
      {
        v22 = v21 & 0xFFFFFFFE;
      }

      if (v22)
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v20 = qword_1000EB308;
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_53;
      }

      v23 = sub_1000011A8(1);
      v20 = v20;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
      }

      else
      {
        v24 = v23 & 0xFFFFFFFE;
      }

      if (v24)
      {
LABEL_48:
        v25 = _os_log_send_and_compose_impl();

        if (v25)
        {
          sub_100002A8C(v25);
        }

        goto LABEL_52;
      }
    }

    v25 = 0;
LABEL_52:
    free(v25);
LABEL_53:

    goto LABEL_54;
  }

  if (_os_feature_enabled_impl())
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v15 = qword_1000EB308;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = sub_1000011A8(1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v18 = _os_log_send_and_compose_impl();
        v19 = v18;
        if (v18)
        {
          sub_100002A8C(v18);
        }
      }

      else
      {
        v19 = 0;
      }

      free(v19);
    }
  }

LABEL_64:
  sub_100018C80();
  if (a2)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v30 = qword_1000EB308;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = sub_1000011A8(1);
      v30 = v30;
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 &= ~1u;
      }

      if (v31)
      {
        CFDataGetLength(a2);
        goto LABEL_79;
      }

      goto LABEL_81;
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v30 = qword_1000EB308;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v32 = sub_1000011A8(1);
      v30 = v30;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v32;
      }

      else
      {
        v33 = v32 & 0xFFFFFFFE;
      }

      if (v33)
      {
LABEL_79:
        v34 = _os_log_send_and_compose_impl();

        if (v34)
        {
          sub_100002A8C(v34);
        }

        goto LABEL_82;
      }

LABEL_81:

      v34 = 0;
LABEL_82:
      free(v34);
    }
  }

  v35 = qword_1000EB2E0;
  v36 = sub_10008A58C(qword_1000EB2E0);
  v37 = sub_10008AAA8(v35, v36, v5);
  if (a2)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v38 = qword_1000EB308;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = sub_1000011A8(1);
      v40 = v38;
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v39 &= ~1u;
      }

      if (v39)
      {
        CFDataGetLength(a2);
        v41 = _os_log_send_and_compose_impl();

        if (v41)
        {
          sub_100002A8C(v41);
        }
      }

      else
      {

        v41 = 0;
      }

      free(v41);
    }

    if (sub_10002FAEC(a2, "/private/var//keybags/nextsession_opaque.kb"))
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v42 = qword_1000EB308;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = sub_1000011A8(1);
        v44 = v42;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = v43;
        }

        else
        {
          v45 = v43 & 0xFFFFFFFE;
        }

        if (v45)
        {
          v46 = _os_log_send_and_compose_impl();

          if (v46)
          {
            sub_100002A8C(v46);
          }
        }

        else
        {

          v46 = 0;
        }

        free(v46);
      }
    }
  }

  if (v37)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v47 = qword_1000EB308;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = sub_1000011A8(1);
      v49 = v47;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = v48;
      }

      else
      {
        v50 = v48 & 0xFFFFFFFE;
      }

      if (v50)
      {
        v51 = _os_log_send_and_compose_impl();

        if (v51)
        {
          sub_100002A8C(v51);
        }
      }

      else
      {

        v51 = 0;
      }

      free(v51);
    }

    if ((_os_feature_enabled_impl() & 1) == 0 && IOUSBDeviceControllerCreate())
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v57 = qword_1000EB308;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v58 = sub_1000011A8(1);
        v59 = v57;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v60 = v58;
        }

        else
        {
          v60 = v58 & 0xFFFFFFFE;
        }

        if (v60)
        {
          v61 = _os_log_send_and_compose_impl();

          if (v61)
          {
            sub_100002A8C(v61);
          }
        }

        else
        {

          v61 = 0;
        }

        free(v61);
      }
    }

    if (qword_1000EB5F8)
    {
      if (qword_1000EB320 != -1)
      {
        sub_100089D68();
      }

      v63 = qword_1000EB318;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v64 = sub_1000011A8(0);
        v65 = v63;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          v66 = v64;
        }

        else
        {
          v66 = v64 & 0xFFFFFFFE;
        }

        if (v66)
        {
          v67 = _os_log_send_and_compose_impl();

          if (v67)
          {
            sub_100002A8C(v67);
          }
        }

        else
        {

          v67 = 0;
        }

        free(v67);
      }

      dispatch_source_cancel(qword_1000EB5F8);
      v68 = qword_1000EB5F8;
      qword_1000EB5F8 = 0;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v69 = qword_1000EB308;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      v70 = sub_1000011A8(1);
      v71 = v69;
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        v72 = v70;
      }

      else
      {
        v72 = v70 & 0xFFFFFFFE;
      }

      if (v72)
      {
        v73 = _os_log_send_and_compose_impl();

        if (v73)
        {
          sub_100002A8C(v73);
        }
      }

      else
      {

        v73 = 0;
      }

      free(v73);
    }

    v74 = sub_100088F2C(qword_1000EB608);
    v75 = sub_100089A48(v74);
    v76 = dword_1000EB5B0;

    if ((v75 & 1) != 0 || v76 == 2)
    {
      sub_10001A244(v4, v5);
    }

    else
    {
      reboot3();
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v77 = qword_1000EB308;
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        v78 = sub_1000011A8(1);
        v79 = v77;
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          v80 = v78;
        }

        else
        {
          v80 = v78 & 0xFFFFFFFE;
        }

        if (v80)
        {
          v81 = _os_log_send_and_compose_impl();

          if (v81)
          {
            sub_100002A8C(v81);
          }
        }

        else
        {

          v81 = 0;
        }

        free(v81);
      }
    }

    return 1;
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v52 = qword_1000EB308;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = sub_1000011A8(1);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v54 = v53;
      }

      else
      {
        v54 = v53 & 0xFFFFFFFE;
      }

      if (v54)
      {
        v55 = _os_log_send_and_compose_impl();
        v56 = v55;
        if (v55)
        {
          sub_100002A8C(v55);
        }
      }

      else
      {
        v56 = 0;
      }

      free(v56);
    }

    return 0;
  }
}

void sub_10002F81C(const __CFDictionary *a1)
{
  memset(&v22, 0, 512);
  v17 = 0;
  valuePtr = 0;
  v16 = 0;
  v2 = sub_1000023E8(a1, kUMUserSessionIDKey);
  sub_1000795D4(a1, kUMUserSessionHomeDirKey, v21, 1024);
  if (statfs(v21, &v22))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v3 = qword_1000EB308;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_1000011A8(1);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v4;
      }

      else
      {
        v5 = v4 & 0xFFFFFFFE;
      }

      if (v5)
      {
        v19 = 67109120;
        v20 = v2;
        v6 = _os_log_send_and_compose_impl();
        v7 = v6;
        if (v6)
        {
          sub_100002A8C(v6);
        }
      }

      else
      {
        v7 = 0;
      }

      free(v7);
    }
  }

  else
  {
    v8 = v22.f_blocks * v22.f_bsize;
    v9 = v22.f_bfree * v22.f_bsize;
    v17 = v8;
    valuePtr = v8;
    if (v8 <= v9)
    {
      v9 = 0;
    }

    v16 = v8 - v9;
  }

  v10 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  if (v10)
  {
    v11 = v10;
    CFDictionarySetValue(a1, kUMUserSessionQuotaLimitKey, v10);
    CFRelease(v11);
  }

  v12 = CFNumberCreate(0, kCFNumberLongLongType, &v17);
  if (v12)
  {
    v13 = v12;
    CFDictionarySetValue(a1, kUMUserSessionQuotaSoftLimitKey, v12);
    CFRelease(v13);
  }

  v14 = CFNumberCreate(0, kCFNumberLongLongType, &v16);
  if (v14)
  {
    v15 = v14;
    CFDictionarySetValue(a1, kUMUserSessionQuotaUsedKey, v14);
    CFRelease(v15);
  }
}

uint64_t sub_10002FAEC(const __CFData *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  Length = CFDataGetLength(a1);
  valuePtr = Length;
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v5 = qword_1000EB308;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v34 = 67109120;
      v35 = Length;
      v8 = _os_log_send_and_compose_impl();
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  v11 = sub_10007990C();
  v12 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(v11, @"BLOBLEN", v12);
  CFRelease(v12);
  CFDictionaryAddValue(v11, @"BLOB", a1);
  v13 = sub_100079684(v11);
  if (v13)
  {
    v14 = v13;
    v15 = sub_1000013A0(qword_1000EB608);
    v16 = [NSString stringWithUTF8String:a2];
    v17 = [v15 atomicallyWriteData:v14 toPath:v16 error:0];

    if (v17)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v18 = qword_1000EB308;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = sub_1000011A8(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
        }

        else
        {
          v20 = v19 & 0xFFFFFFFE;
        }

        if (v20)
        {
          LOWORD(v34) = 0;
          v21 = _os_log_send_and_compose_impl();
          v22 = v21;
          if (v21)
          {
            sub_100002A8C(v21);
          }
        }

        else
        {
          v22 = 0;
        }

        free(v22);
      }

      v10 = 1;
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v18 = qword_1000EB308;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v28 = sub_1000011A8(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v28;
        }

        else
        {
          v29 = v28 & 0xFFFFFFFE;
        }

        if (v29)
        {
          LOWORD(v34) = 0;
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

      v10 = 0;
    }

    CFRelease(v14);
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v23 = qword_1000EB308;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = sub_1000011A8(1);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        LOWORD(v34) = 0;
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

    v10 = 0;
  }

  CFRelease(v11);
  return v10;
}

const __CFDictionary *sub_10002FF34(const __CFDictionary *a1)
{
  v1 = sub_100002700(a1);
  v2 = v1;
  if (v1)
  {
    if (sub_1000023E8(v1, kUMUserSessionIDKey) != 502)
    {
      v36 = 0;
      valuePtr = 0;
      v35 = 0;
      v3 = sub_1000023E8(v2, kUMUserSessionIDKey);
      sub_1000795D4(v2, kUMUserSessionHomeDirKey, v40, 1024);
      if (byte_1000EA3D8)
      {
        if (v3 == sub_10008A58C(qword_1000EB2E0) || v3 == dword_1000EA3DC)
        {
          sub_10002F81C(v2);
        }
      }

      else
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v10 = qword_1000EB308;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = sub_1000011A8(1);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v12 = v11;
          }

          else
          {
            v12 = v11 & 0xFFFFFFFE;
          }

          if (v12)
          {
            v38 = 67109120;
            v39 = v3;
            v13 = _os_log_send_and_compose_impl();
            v14 = v13;
            if (v13)
            {
              sub_100002A8C(v13);
            }
          }

          else
          {
            v14 = 0;
          }

          free(v14);
        }

        if (fsctl(v40, 0x40184A03uLL, &v32, 0))
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v16 = qword_1000EB308;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = sub_1000011A8(1);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v18 = v17;
            }

            else
            {
              v18 = v17 & 0xFFFFFFFE;
            }

            if (v18)
            {
              v38 = 67109120;
              v39 = v3;
              v19 = _os_log_send_and_compose_impl();
              v20 = v19;
              if (v19)
              {
                sub_100002A8C(v19);
              }
            }

            else
            {
              v20 = 0;
            }

            free(v20);
          }
        }

        else
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v21 = qword_1000EB308;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = sub_1000011A8(1);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v23 = v22;
            }

            else
            {
              v23 = v22 & 0xFFFFFFFE;
            }

            if (v23)
            {
              v38 = 67109120;
              v39 = v3;
              v24 = _os_log_send_and_compose_impl();
              v25 = v24;
              if (v24)
              {
                sub_100002A8C(v24);
              }
            }

            else
            {
              v25 = 0;
            }

            free(v25);
          }

          v36 = 0;
          valuePtr = 0;
          v35 = v33;
        }

        v26 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
        if (v26)
        {
          v27 = v26;
          CFDictionarySetValue(v2, kUMUserSessionQuotaLimitKey, v26);
          CFRelease(v27);
        }

        v28 = CFNumberCreate(0, kCFNumberLongLongType, &v36);
        if (v28)
        {
          v29 = v28;
          CFDictionarySetValue(v2, kUMUserSessionQuotaSoftLimitKey, v28);
          CFRelease(v29);
        }

        v30 = CFNumberCreate(0, kCFNumberLongLongType, &v35);
        if (v30)
        {
          v31 = v30;
          CFDictionarySetValue(v2, kUMUserSessionQuotaUsedKey, v30);
          CFRelease(v31);
        }
      }
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v5 = qword_1000EB308;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v40 = 0;
      v6 = sub_1000011A8(1);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        LOWORD(v32) = 0;
        v8 = _os_log_send_and_compose_impl();
        v9 = v8;
        if (v8)
        {
          sub_100002A8C(v8);
        }
      }

      else
      {
        v9 = 0;
      }

      free(v9);
    }
  }

  return v2;
}

uint64_t sub_100030420(const __CFDictionary *a1, const void *a2, _DWORD *a3)
{
  v5 = sub_100002700(a1);
  if (v5)
  {
    v6 = v5;
    sub_1000023E8(v5, kUMUserSessionIDKey);
    if (a2)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v7 = qword_1000EB308;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = sub_1000011A8(1);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v8;
        }

        else
        {
          v9 = v8 & 0xFFFFFFFE;
        }

        if (v9)
        {
          v10 = _os_log_send_and_compose_impl();
          v11 = v10;
          if (v10)
          {
            sub_100002A8C(v10);
          }
        }

        else
        {
          v11 = 0;
        }

        free(v11);
      }

      CFDictionarySetValue(v6, kUMUserSessionKeybagOpaqueDataKey, a2);
LABEL_50:
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v27 = qword_1000EB308;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = sub_1000011A8(1);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v28;
        }

        else
        {
          v29 = v28 & 0xFFFFFFFE;
        }

        if (v29)
        {
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

      sub_100018C80();
      return 1;
    }

    if (CFDictionaryContainsKey(v6, kUMUserSessionKeybagOpaqueDataKey))
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v17 = qword_1000EB308;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = sub_1000011A8(1);
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

      CFDictionaryRemoveValue(v6, kUMUserSessionKeybagOpaqueDataKey);
      goto LABEL_50;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v22 = qword_1000EB308;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = sub_1000011A8(1);
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
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v12 = qword_1000EB308;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = sub_1000011A8(1);
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

    if (a3)
    {
      *a3 = 2;
    }
  }

  return 1;
}

CFArrayRef sub_1000308D8(uint64_t a1)
{
  v1 = sub_10008A2F4(qword_1000EB2E0, a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (CFDictionaryContainsKey(v1, kUMUserSessionSyncMachServicesKey) && (v3 = CFDictionaryGetValue(v2, kUMUserSessionSyncMachServicesKey), v4 = CFGetTypeID(v3), v4 == CFArrayGetTypeID()))
  {
    Value = CFDictionaryGetValue(v2, kUMUserSessionSyncMachServicesKey);
    Copy = CFArrayCreateCopy(kCFAllocatorDefault, Value);
  }

  else
  {
    Copy = 0;
  }

  CFRelease(v2);
  return Copy;
}

__CFDictionary *sub_100030990(const __CFDictionary *a1)
{
  v22 = kUMUserSessionNameKey;
  v23[0] = CFStringGetTypeID();
  v23[1] = kUMUserSessionFirstNameKey;
  v23[2] = CFStringGetTypeID();
  v23[3] = kUMUserSessionLastNameKey;
  v23[4] = CFStringGetTypeID();
  v23[5] = kUMUserSessionDisplayNameKey;
  v23[6] = CFStringGetTypeID();
  v23[7] = kUMUserSessionOpaqueDataKey;
  v23[8] = CFDataGetTypeID();
  v23[9] = kUMUserSessionFileInfoKey;
  v23[10] = CFStringGetTypeID();
  v23[11] = kUMUserSessionAuditorKey;
  v23[12] = CFBooleanGetTypeID();
  v23[13] = kUMUserSessionisTransientKey;
  v23[14] = CFBooleanGetTypeID();
  v23[15] = kUMUserSessionCloudLoginTimeStampKey;
  v23[16] = CFDateGetTypeID();
  v23[17] = kUMUserSessionDisabledKey;
  v23[18] = CFBooleanGetTypeID();
  v23[19] = kUMUserSessionLanguageKey;
  v23[20] = CFStringGetTypeID();
  v2 = sub_100002700(a1);
  if (v2)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v3 = qword_1000EB308;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_1000011A8(1);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v4;
      }

      else
      {
        v5 = v4 & 0xFFFFFFFE;
      }

      if (v5)
      {
        v6 = _os_log_send_and_compose_impl();
        v7 = v6;
        if (v6)
        {
          sub_100002A8C(v6);
        }
      }

      else
      {
        v7 = 0;
      }

      free(v7);
    }

    v13 = v23;
    v14 = 11;
    do
    {
      sub_100027E10(v2, a1, *(v13 - 1), *v13);
      v13 += 2;
      --v14;
    }

    while (v14);
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v15 = qword_1000EB308;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = sub_1000011A8(1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v18 = _os_log_send_and_compose_impl();
        v19 = v18;
        if (v18)
        {
          sub_100002A8C(v18);
        }
      }

      else
      {
        v19 = 0;
      }

      free(v19);
    }

    v8 = sub_10008900C(qword_1000EB608);
    v20 = [NSString stringWithUTF8String:kMobileKeyBagUserChangedNotificationToken];
    [v8 post:v20];
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v8 = qword_1000EB308;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
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
  }

  return v2;
}

const void *sub_100030DC0(const char *a1)
{
  v1 = sub_10007980C(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v3 = qword_1000EB308;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = _os_log_send_and_compose_impl();
      v7 = v6;
      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  v8 = sub_100079440(v2, @"BLOB");
  sub_1000023E8(v2, @"BLOBLEN");
  if (v8)
  {
    CFRetain(v8);
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v9 = qword_1000EB308;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = sub_1000011A8(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
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
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v9 = qword_1000EB308;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = sub_1000011A8(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v16 = _os_log_send_and_compose_impl();
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    v8 = 0;
  }

  CFRelease(v2);
  return v8;
}

uint64_t sub_1000310B4(int a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -1;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100031170;
  v3[3] = &unk_1000DD550;
  v4 = a1;
  v3[4] = &v5;
  dispatch_sync(qword_1000EB610, v3);
  v1 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v1;
}

void sub_100031170(uint64_t a1)
{
  if (dword_1000EA3D4 == -1)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v7 = qword_1000EB308;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_53;
    }

    v8 = sub_1000011A8(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
LABEL_49:
      v23 = _os_log_send_and_compose_impl();
      v24 = v23;
      if (v23)
      {
        sub_100002A8C(v23);
      }

      goto LABEL_52;
    }

LABEL_51:
    v24 = 0;
LABEL_52:
    free(v24);
    goto LABEL_53;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v2 = qword_1000EB308;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v25 = *(a1 + 40);
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

  v10 = *(a1 + 40);
  if (v10 != -1)
  {
    if (v10 >= 1 && v10 <= dword_1000EA3D4)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v11 = qword_1000EB308;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = sub_1000011A8(1);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
        }

        else
        {
          v13 = v12 & 0xFFFFFFFE;
        }

        if (v13)
        {
          v26 = *(a1 + 40);
          v14 = _os_log_send_and_compose_impl();
          v15 = v14;
          if (v14)
          {
            sub_100002A8C(v14);
          }
        }

        else
        {
          v15 = 0;
        }

        free(v15);
      }

      dword_1000EA3D4 = *(a1 + 40);
      *(*(*(a1 + 32) + 8) + 24) = dword_1000EA3D4;
      sub_100018C80();
      return;
    }

    *(*(*(a1 + 32) + 8) + 24) = -1;
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v7 = qword_1000EB308;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
LABEL_53:

      return;
    }

    v21 = sub_1000011A8(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 & 0xFFFFFFFE;
    }

    if (v22)
    {
      goto LABEL_49;
    }

    goto LABEL_51;
  }

  *(*(*(a1 + 32) + 8) + 24) = dword_1000EA3D4;
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v16 = qword_1000EB308;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = sub_1000011A8(1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 & 0xFFFFFFFE;
    }

    if (v18)
    {
      v27 = *(*(*(a1 + 32) + 8) + 24);
      v19 = _os_log_send_and_compose_impl();
      v20 = v19;
      if (v19)
      {
        sub_100002A8C(v19);
      }
    }

    else
    {
      v20 = 0;
    }

    free(v20);
  }
}

uint64_t sub_1000315F8(uint64_t a1)
{
  v2 = sub_10008A2F4(qword_1000EB2E0, a1);
  if (v2)
  {
    v3 = v2;
    bzero(&v129, 0x400uLL);
    sub_1000795D4(v3, kUMUserSessionHomeDirKey, &v129, 1024);
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v4 = qword_1000EB308;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v128[0] = 0;
      v5 = sub_1000011A8(1);
      v6 = v4;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v5;
      }

      else
      {
        v7 = v5 & 0xFFFFFFFE;
      }

      if (v7)
      {
        *v127 = 67109378;
        *&v127[4] = a1;
        *&v127[8] = 2080;
        *&v127[10] = &v129;
        LODWORD(v124) = 18;
        v123 = v127;
        v8 = _os_log_send_and_compose_impl();

        if (v8)
        {
          sub_100002A8C(v8);
        }
      }

      else
      {

        v8 = 0;
      }

      free(v8);
    }

    if (sub_100032B3C(a1, &v129, 0))
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v14 = qword_1000EB308;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v127 = 0;
        v15 = sub_1000011A8(1);
        v14 = v14;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v15;
        }

        else
        {
          v16 = v15 & 0xFFFFFFFE;
        }

        if (v16)
        {
          LODWORD(v128[0]) = 67109120;
          HIDWORD(v128[0]) = a1;
          LODWORD(v124) = 8;
          v123 = v128;
          goto LABEL_39;
        }

        goto LABEL_41;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v14 = qword_1000EB308;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v127 = 0;
        v17 = sub_1000011A8(1);
        v14 = v14;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
        }

        else
        {
          v18 = v17 & 0xFFFFFFFE;
        }

        if (v18)
        {
          LODWORD(v128[0]) = 67109120;
          HIDWORD(v128[0]) = a1;
          LODWORD(v124) = 8;
          v123 = v128;
LABEL_39:
          v19 = _os_log_send_and_compose_impl();

          if (v19)
          {
            sub_100002A8C(v19);
          }

          goto LABEL_42;
        }

LABEL_41:

        v19 = 0;
LABEL_42:
        free(v19);
      }
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v20 = qword_1000EB308;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v127 = 0;
      v21 = sub_1000011A8(1);
      v22 = v20;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v21;
      }

      else
      {
        v23 = v21 & 0xFFFFFFFE;
      }

      if (v23)
      {
        LODWORD(v128[0]) = 67109120;
        HIDWORD(v128[0]) = a1;
        LODWORD(v124) = 8;
        v123 = v128;
        v24 = _os_log_send_and_compose_impl();

        if (v24)
        {
          sub_100002A8C(v24);
        }
      }

      else
      {

        v24 = 0;
      }

      free(v24);
    }

    v25 = CFDictionaryContainsKey(v3, kUMUserSessionVolumeDeviceNodeKey);
    v26 = &off_1000EB000;
    if (!v25)
    {
      v9 = 0;
      v32 = 0;
      goto LABEL_66;
    }

    if (![qword_1000EB2D8 mountVolumeWithSession:v3 mountPath:0 error:0 forPersona:0])
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v41 = qword_1000EB308;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *v127 = 0;
        v42 = sub_1000011A8(1);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v43 = v42;
        }

        else
        {
          v43 = v42 & 0xFFFFFFFE;
        }

        if (v43)
        {
          LOWORD(v128[0]) = 0;
          v44 = _os_log_send_and_compose_impl();
          v45 = v44;
          if (v44)
          {
            sub_100002A8C(v44);
          }
        }

        else
        {
          v45 = 0;
        }

        free(v45);
      }

      v9 = 0;
      v35 = 0xFFFFFFFFLL;
      goto LABEL_236;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v27 = qword_1000EB308;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v127 = 0;
      v28 = sub_1000011A8(1);
      v29 = v27;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v28;
      }

      else
      {
        v30 = v28 & 0xFFFFFFFE;
      }

      if (v30)
      {
        LOWORD(v128[0]) = 0;
        LODWORD(v124) = 2;
        v123 = v128;
        v31 = _os_log_send_and_compose_impl();

        if (v31)
        {
          sub_100002A8C(v31);
        }
      }

      else
      {

        v31 = 0;
      }

      free(v31);
    }

    if (sub_100002454(v3, kUMUserSessionHasSyncBagKey) != 1)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v56 = qword_1000EB308;
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_213;
      }

      *v127 = 0;
      v57 = sub_1000011A8(1);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v58 = v57;
      }

      else
      {
        v58 = v57 & 0xFFFFFFFE;
      }

      if (v58)
      {
        LODWORD(v128[0]) = 67109120;
        HIDWORD(v128[0]) = a1;
        LODWORD(v124) = 8;
        v123 = v128;
        goto LABEL_209;
      }

LABEL_211:
      v87 = 0;
LABEL_212:
      free(v87);
LABEL_213:

      v9 = 0;
      v35 = 0xFFFFFFFFLL;
LABEL_214:
      if ([v26[91] unmountVolumeWithSession:v3 mountPath:0 error:{0, v123, v124}])
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v88 = qword_1000EB308;
        if (!os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_235;
        }

        v129 = 0;
        v89 = sub_1000011A8(1);
        v90 = v88;
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          v91 = v89;
        }

        else
        {
          v91 = v89 & 0xFFFFFFFE;
        }

        if (v91)
        {
          *v127 = 0;
          goto LABEL_231;
        }
      }

      else
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v88 = qword_1000EB308;
        if (!os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_235;
        }

        v129 = 0;
        v92 = sub_1000011A8(1);
        v90 = v88;
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          v93 = v92;
        }

        else
        {
          v93 = v92 & 0xFFFFFFFE;
        }

        if (v93)
        {
          *v127 = 0;
LABEL_231:
          v94 = _os_log_send_and_compose_impl();

          if (v94)
          {
            sub_100002A8C(v94);
          }

          goto LABEL_234;
        }
      }

      v94 = 0;
LABEL_234:
      free(v94);
LABEL_235:

      goto LABEL_236;
    }

    if (sub_100002454(v3, kUMUserSessionHasSyncBagKey))
    {
      if (![qword_1000EB2D8 splitUserVolumeEnabled])
      {
LABEL_200:
        SyncBagForUser = MKBUserSessionLoadSyncBagForUser();
        if (SyncBagForUser)
        {
LABEL_201:
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v56 = qword_1000EB308;
          if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_213;
          }

          v128[0] = 0;
          v84 = sub_1000011A8(1);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            v85 = v84;
          }

          else
          {
            v85 = v84 & 0xFFFFFFFE;
          }

          if (v85)
          {
            *v127 = 67109376;
            *&v127[4] = a1;
            *&v127[8] = 1024;
            *&v127[10] = SyncBagForUser;
            LODWORD(v124) = 14;
            v123 = v127;
LABEL_209:
            v86 = _os_log_send_and_compose_impl();
            v87 = v86;
            if (v86)
            {
              sub_100002A8C(v86);
            }

            goto LABEL_212;
          }

          goto LABEL_211;
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v101 = qword_1000EB308;
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
        {
          *v127 = 0;
          v102 = sub_1000011A8(1);
          v103 = v101;
          if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
          {
            v104 = v102;
          }

          else
          {
            v104 = v102 & 0xFFFFFFFE;
          }

          if (v104)
          {
            LODWORD(v128[0]) = 67109120;
            HIDWORD(v128[0]) = a1;
            LODWORD(v124) = 8;
            v123 = v128;
            v105 = _os_log_send_and_compose_impl();

            if (v105)
            {
              sub_100002A8C(v105);
            }
          }

          else
          {

            v105 = 0;
          }

          free(v105);
        }

        v32 = sub_100079590(v3, kUMUserSessionVolumeDeviceNodeKey);
        if (v32)
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v106 = qword_1000EB308;
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            v128[0] = 0;
            v107 = sub_1000011A8(1);
            v108 = v106;
            if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
            {
              v109 = v107;
            }

            else
            {
              v109 = v107 & 0xFFFFFFFE;
            }

            if (v109)
            {
              *v127 = 138412546;
              *&v127[4] = v32;
              *&v127[12] = 1024;
              *&v127[14] = a1;
              LODWORD(v124) = 18;
              v123 = v127;
              v110 = _os_log_send_and_compose_impl();

              if (v110)
              {
                sub_100002A8C(v110);
              }
            }

            else
            {

              v110 = 0;
            }

            free(v110);
          }

          v111 = sub_100089A80(qword_1000EB608);
          v126 = 0;
          v112 = [v111 mapVolume:v32 toSession:a1 withPersona:0 error:&v126];
          v9 = v126;

          if (!v112)
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v118 = qword_1000EB308;
            if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
            {
              v128[0] = 0;
              v119 = sub_1000011A8(1);
              v120 = v118;
              if (!os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
              {
                v119 &= ~1u;
              }

              if (v119)
              {
                v121 = [v9 code];
                *v127 = 134217984;
                *&v127[4] = v121;
                LODWORD(v124) = 12;
                v123 = v127;
                v122 = _os_log_send_and_compose_impl();

                if (v122)
                {
                  sub_100002A8C(v122);
                }
              }

              else
              {

                v122 = 0;
              }

              free(v122);
            }

            v35 = 0xFFFFFFFFLL;
            goto LABEL_172;
          }

          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v113 = qword_1000EB308;
          if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
          {
            *v127 = 0;
            v114 = sub_1000011A8(1);
            v115 = v113;
            if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
            {
              v116 = v114;
            }

            else
            {
              v116 = v114 & 0xFFFFFFFE;
            }

            if (v116)
            {
              LOWORD(v128[0]) = 0;
              LODWORD(v124) = 2;
              v123 = v128;
              v117 = _os_log_send_and_compose_impl();

              if (v117)
              {
                sub_100002A8C(v117);
              }
            }

            else
            {

              v117 = 0;
            }

            free(v117);
          }

          v33 = 1;
LABEL_67:
          persona = launch_create_persona();
          if (!persona)
          {
            dword_1000EA3DC = a1;
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v46 = qword_1000EB308;
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              v129 = 0;
              v47 = sub_1000011A8(1);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                v48 = v47;
              }

              else
              {
                v48 = v47 & 0xFFFFFFFE;
              }

              if (v48)
              {
                *v127 = 67109120;
                *&v127[4] = a1;
                v49 = _os_log_send_and_compose_impl();
                v50 = v49;
                if (v49)
                {
                  sub_100002A8C(v49);
                }
              }

              else
              {
                v50 = 0;
              }

              free(v50);
            }

            v35 = 0;
            goto LABEL_248;
          }

          v35 = persona;
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v36 = qword_1000EB308;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            HIDWORD(v124) = v25;
            *v127 = 0;
            v37 = sub_1000011A8(1);
            v38 = v36;
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              v39 = v37;
            }

            else
            {
              v39 = v37 & 0xFFFFFFFE;
            }

            if (v39)
            {
              LODWORD(v129) = 67109376;
              HIDWORD(v129) = a1;
              v130 = 1024;
              LODWORD(v131) = v35;
              LODWORD(v124) = 14;
              v123 = &v129;
              v40 = _os_log_send_and_compose_impl();

              if (v40)
              {
                sub_100002A8C(v40);
              }
            }

            else
            {

              v40 = 0;
            }

            free(v40);
          }

          v62 = v33 ^ 1;
          if (!v32)
          {
            v62 = 1;
          }

          if (v62)
          {
LABEL_171:
            v26 = &off_1000EB000;
            if (!v25)
            {
LABEL_236:
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v95 = qword_1000EB308;
              if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
              {
                v129 = 0;
                v96 = sub_1000011A8(1);
                v97 = v95;
                if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                {
                  v98 = v96;
                }

                else
                {
                  v98 = v96 & 0xFFFFFFFE;
                }

                if (v98)
                {
                  *v127 = 67109120;
                  *&v127[4] = a1;
                  v99 = _os_log_send_and_compose_impl();

                  if (v99)
                  {
                    sub_100002A8C(v99);
                  }
                }

                else
                {

                  v99 = 0;
                }

                free(v99);
              }

              sub_100033128(a1);
LABEL_248:
              CFRelease(v3);
              goto LABEL_249;
            }

LABEL_172:
            if (sub_100032DF8(v3, a1))
            {
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v76 = qword_1000EB308;
              if (!os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_193;
              }

              v129 = 0;
              v77 = sub_1000011A8(1);
              v78 = v76;
              if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
              {
                v79 = v77;
              }

              else
              {
                v79 = v77 & 0xFFFFFFFE;
              }

              if (v79)
              {
                *v127 = 67109120;
                *&v127[4] = a1;
                LODWORD(v124) = 8;
                v123 = v127;
                goto LABEL_189;
              }
            }

            else
            {
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v76 = qword_1000EB308;
              if (!os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_193;
              }

              v129 = 0;
              v80 = sub_1000011A8(1);
              v78 = v76;
              if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
              {
                v81 = v80;
              }

              else
              {
                v81 = v80 & 0xFFFFFFFE;
              }

              if (v81)
              {
                *v127 = 67109120;
                *&v127[4] = a1;
                LODWORD(v124) = 8;
                v123 = v127;
LABEL_189:
                v82 = _os_log_send_and_compose_impl();

                if (v82)
                {
                  sub_100002A8C(v82);
                }

                goto LABEL_192;
              }
            }

            v82 = 0;
LABEL_192:
            free(v82);
LABEL_193:

            goto LABEL_214;
          }

          v63 = sub_100089A80(qword_1000EB608);
          v125 = 0;
          v64 = [v63 unmapVolume:v32 error:&v125];
          v9 = v125;

          if (v64)
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v65 = qword_1000EB308;
            if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_170;
            }

            v129 = 0;
            v66 = sub_1000011A8(1);
            v67 = v65;
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              v68 = v66;
            }

            else
            {
              v68 = v66 & 0xFFFFFFFE;
            }

            if (v68)
            {
              *v127 = 67109120;
              *&v127[4] = a1;
              LODWORD(v124) = 8;
              v123 = v127;
              goto LABEL_153;
            }
          }

          else
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v65 = qword_1000EB308;
            if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_170;
            }

            *v127 = 0;
            v69 = sub_1000011A8(1);
            v67 = v65;
            if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              v69 &= ~1u;
            }

            if (v69)
            {
              v70 = [v9 code];
              LODWORD(v129) = 67109376;
              HIDWORD(v129) = a1;
              v130 = 2048;
              v131 = v70;
              LODWORD(v124) = 18;
              v123 = &v129;
LABEL_153:
              v71 = _os_log_send_and_compose_impl();

              if (v71)
              {
                sub_100002A8C(v71);
              }

              goto LABEL_169;
            }
          }

          v71 = 0;
LABEL_169:
          free(v71);
LABEL_170:

          goto LABEL_171;
        }

        v9 = 0;
LABEL_66:
        v33 = 0;
        goto LABEL_67;
      }

      if (sub_100043BDC(v3))
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v51 = qword_1000EB308;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *v127 = 0;
          v52 = sub_1000011A8(1);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v53 = v52;
          }

          else
          {
            v53 = v52 & 0xFFFFFFFE;
          }

          if (v53)
          {
            LOWORD(v128[0]) = 0;
            LODWORD(v124) = 2;
            v123 = v128;
            v54 = _os_log_send_and_compose_impl();
            v55 = v54;
            if (v54)
            {
              sub_100002A8C(v54);
            }
          }

          else
          {
            v55 = 0;
          }

          free(v55);
        }

        goto LABEL_200;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v59 = qword_1000EB308;
      if (!os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
LABEL_196:

        SyncBagForUser = -1;
        goto LABEL_201;
      }

      *v127 = 0;
      v72 = sub_1000011A8(1);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v73 = v72;
      }

      else
      {
        v73 = v72 & 0xFFFFFFFE;
      }

      if (v73)
      {
        LOWORD(v128[0]) = 0;
        LODWORD(v124) = 2;
        v123 = v128;
LABEL_166:
        v74 = _os_log_send_and_compose_impl();
        v75 = v74;
        if (v74)
        {
          sub_100002A8C(v74);
        }

        goto LABEL_195;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v59 = qword_1000EB308;
      if (!os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_196;
      }

      *v127 = 0;
      v60 = sub_1000011A8(1);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v61 = v60;
      }

      else
      {
        v61 = v60 & 0xFFFFFFFE;
      }

      if (v61)
      {
        LOWORD(v128[0]) = 0;
        LODWORD(v124) = 2;
        v123 = v128;
        goto LABEL_166;
      }
    }

    v75 = 0;
LABEL_195:
    free(v75);
    goto LABEL_196;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v9 = qword_1000EB308;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v129 = 0;
    v10 = sub_1000011A8(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFE;
    }

    if (v11)
    {
      *v127 = 67109120;
      *&v127[4] = a1;
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

  v35 = 0xFFFFFFFFLL;
LABEL_249:

  return v35;
}

uint64_t sub_100032B3C(uint64_t a1, const char *a2, uint64_t a3)
{
  snprintf(__str, 0x400uLL, "%s/tmp", a2);
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v6 = qword_1000EB308;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1000011A8(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      v9 = _os_log_send_and_compose_impl();
      v10 = v9;
      if (v9)
      {
        sub_100002A8C(v9);
      }
    }

    else
    {
      v10 = 0;
    }

    free(v10);
  }

  v11 = sub_10004B274(a1, a3, a2, __str, 0);
  if (v11)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v12 = qword_1000EB308;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = sub_1000011A8(1);
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
LABEL_28:
        v17 = _os_log_send_and_compose_impl();
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }

        goto LABEL_31;
      }

LABEL_30:
      v18 = 0;
LABEL_31:
      free(v18);
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v12 = qword_1000EB308;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }
  }

  return v11;
}

uint64_t sub_100032DF8(const __CFDictionary *a1, uint64_t a2)
{
  if (!sub_100002454(a1, kUMUserSessionHasSyncBagKey))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v9 = qword_1000EB308;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = sub_1000011A8(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
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

    return 0;
  }

  if ([qword_1000EB2D8 splitUserVolumeEnabled])
  {
    if (sub_1000446D4(a1))
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v4 = qword_1000EB308;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = sub_1000011A8(1);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v6 = v5;
        }

        else
        {
          v6 = v5 & 0xFFFFFFFE;
        }

        if (v6)
        {
          v7 = _os_log_send_and_compose_impl();
          v8 = v7;
          if (v7)
          {
            sub_100002A8C(v7);
          }
        }

        else
        {
          v8 = 0;
        }

        free(v8);
      }

      return 0;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v14 = qword_1000EB308;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = sub_1000011A8(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
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
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v18 = 0;
      }

      free(v18);
    }

    return 0xFFFFFFFFLL;
  }

  else
  {

    return _MKBUserSessionUnLoadSyncBagForUser(a1, a2);
  }
}

uint64_t sub_100033128(uint64_t a1)
{
  v1 = sub_10004B274(a1, 0, 0, 0, 1);
  if (v1)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v2 = qword_1000EB308;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
      }

      else
      {
        v4 = v3 & 0xFFFFFFFE;
      }

      if (v4)
      {
LABEL_17:
        v7 = _os_log_send_and_compose_impl();
        v8 = v7;
        if (v7)
        {
          sub_100002A8C(v7);
        }

        goto LABEL_20;
      }

LABEL_19:
      v8 = 0;
LABEL_20:
      free(v8);
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v2 = qword_1000EB308;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFE;
      }

      if (v6)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }

  return v1;
}

uint64_t sub_1000332B0(int a1)
{
  v2 = MGGetBoolAnswer();
  if (v2)
  {
    if (a1)
    {
      byte_1000EA3D8 = 1;
      qword_1000EB2F8 = kUMUserSessionAPFSNativeVolume;
      valuePtr[0] = 502;
      v3 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
      v4 = sub_10007990C();
      CFDictionarySetValue(v4, kUMUserSessionIDKey, v3);
      sub_10001FC24(v4, 0);
      if (v3)
      {
        CFRelease(v3);
      }

      if (mkpath_np("/var/Users", 0x1FFu))
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v5 = qword_1000EB308;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_101;
        }

        v6 = sub_1000011A8(1);
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 &= ~1u;
        }

        if (v6)
        {
          v7 = v5;
          v8 = __error();
          v9 = strerror(*v8);
          *__str = 136315138;
          *&__str[4] = v9;
          v10 = _os_log_send_and_compose_impl();

          if (!v10)
          {
            goto LABEL_100;
          }

          goto LABEL_98;
        }

LABEL_99:
        v10 = 0;
        goto LABEL_100;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v5 = qword_1000EB308;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_101;
      }

      *__str = 0;
      v18 = sub_1000011A8(1);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (!v19)
      {
        goto LABEL_99;
      }
    }

    else
    {
      byte_1000EA3D8 = 0;
      qword_1000EB2F8 = 0;
      if (qword_1000EB5A0)
      {
        CFArrayRemoveAllValues(qword_1000EB5A0);
      }

      if (qword_1000EB5C0)
      {
        CFArrayRemoveAllValues(qword_1000EB5C0);
      }

      if (qword_1000EB5C8)
      {
        CFArrayRemoveAllValues(qword_1000EB5C8);
      }

      v11 = sub_1000013A0(qword_1000EB608);
      v12 = [v11 removeFileAtPath:@"/private/var//keybags/usersession.kb" error:0];

      if (v12)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089D14();
        }

        v13 = qword_1000EB308;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *__str = 0;
          v14 = sub_1000011A8(1);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v15 = v14;
          }

          else
          {
            v15 = v14 & 0xFFFFFFFE;
          }

          if (v15)
          {
            v16 = _os_log_send_and_compose_impl();
            v17 = v16;
            if (v16)
            {
              sub_100002A8C(v16);
            }
          }

          else
          {
            v17 = 0;
          }

          free(v17);
        }
      }

      else
      {
        perror("unlink of USER_SESSION_BAG_PATH failed with error");
      }

      v20 = sub_1000013A0(qword_1000EB608);
      v21 = [v20 removeFileAtPath:@"/private/var//keybags/usersyncbag.kb" error:0];

      if (v21)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v22 = qword_1000EB308;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *__str = 0;
          v23 = sub_1000011A8(1);
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
      }

      else
      {
        perror("unlink of USER_SYNC_BAG_PATH failed with error");
      }

      v27 = sub_1000013A0(qword_1000EB608);
      v28 = [v27 removeFileAtPath:@"/private/var/keybags/LockoutState.plist" error:0];

      if (v28)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v29 = qword_1000EB308;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *__str = 0;
          v30 = sub_1000011A8(1);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v31 = v30;
          }

          else
          {
            v31 = v30 & 0xFFFFFFFE;
          }

          if (v31)
          {
            v32 = _os_log_send_and_compose_impl();
            v33 = v32;
            if (v32)
            {
              sub_100002A8C(v32);
            }
          }

          else
          {
            v33 = 0;
          }

          free(v33);
        }
      }

      else
      {
        perror("unlink of /private/var/keybags/LockoutState.plist failed with error");
      }

      snprintf(__str, 0x400uLL, "%s%s/%s.kb", "/private/var/", "keybags", "userbag");
      v34 = sub_1000013A0(qword_1000EB608);
      v35 = [NSString stringWithUTF8String:__str];
      v36 = [v34 removeFileAtPath:v35 error:0];

      if (v36)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v37 = qword_1000EB308;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = sub_1000011A8(1);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v39 = v38;
          }

          else
          {
            v39 = v38 & 0xFFFFFFFE;
          }

          if (v39)
          {
            LOWORD(valuePtr[0]) = 0;
            v40 = _os_log_send_and_compose_impl();
            v41 = v40;
            if (v40)
            {
              sub_100002A8C(v40);
            }
          }

          else
          {
            v41 = 0;
          }

          free(v41);
        }
      }

      else
      {
        perror("unlink of userBagPath failed with error");
      }

      if (sub_10002D62C("/var/Users"))
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v5 = qword_1000EB308;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_101;
        }

        v42 = sub_1000011A8(1);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v43 = v42;
        }

        else
        {
          v43 = v42 & 0xFFFFFFFE;
        }

        if (!v43)
        {
          goto LABEL_99;
        }

        LOWORD(valuePtr[0]) = 0;
      }

      else
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v5 = qword_1000EB308;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_101;
        }

        v44 = sub_1000011A8(1);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v45 = v44;
        }

        else
        {
          v45 = v44 & 0xFFFFFFFE;
        }

        if (!v45)
        {
          goto LABEL_99;
        }

        LOWORD(valuePtr[0]) = 0;
      }
    }

    v10 = _os_log_send_and_compose_impl();
    if (!v10)
    {
LABEL_100:
      free(v10);
LABEL_101:

      return v2;
    }

LABEL_98:
    sub_100002A8C(v10);
    goto LABEL_100;
  }

  return v2;
}

void sub_100033AB0(const __CFString *a1)
{
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v2 = qword_1000EB308;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
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

  v7 = sub_100018360();
  if (v7)
  {
    v8 = v7;
    sub_100033BF4(v7, a1);
    CFRelease(v8);
  }
}

void sub_100033BF4(const __CFDictionary *a1, const __CFString *a2)
{
  sub_1000023E8(a1, kUMUserSessionIDKey);
  if (CFDictionaryContainsKey(a1, kUMUserSessionSyncMachServicesKey) && (v4 = CFDictionaryGetValue(a1, kUMUserSessionSyncMachServicesKey), v5 = CFGetTypeID(v4), v5 == CFArrayGetTypeID()))
  {
    Value = CFDictionaryGetValue(a1, kUMUserSessionSyncMachServicesKey);
    MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, Value);
    v8 = 1;
  }

  else
  {
    MutableCopy = sub_1000799A8();
    v8 = 0;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v9 = qword_1000EB308;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sub_1000011A8(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
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

  if (CFArrayGetCount(MutableCopy) < 1)
  {
LABEL_22:
    CFArrayAppendValue(MutableCopy, a2);
    if (v8)
    {
      CFDictionaryReplaceValue(a1, kUMUserSessionSyncMachServicesKey, MutableCopy);
    }

    else
    {
      CFDictionarySetValue(a1, kUMUserSessionSyncMachServicesKey, MutableCopy);
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v18 = qword_1000EB308;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = sub_1000011A8(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        v21 = _os_log_send_and_compose_impl();
        v22 = v21;
        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {
        v22 = 0;
      }

      free(v22);
    }

    if (CFArrayGetCount(MutableCopy) >= 1)
    {
      CFDictionarySetValue(a1, kUMUserSessionDirtyKey, kCFBooleanTrue);
      v23 = sub_1000023E8(a1, kUMUserSessionIDKey);
      sub_10001BD58(v23);
    }

    sub_100018C80();
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v24 = qword_1000EB308;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = sub_1000011A8(1);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        v27 = _os_log_send_and_compose_impl();
        v28 = v27;
        if (v27)
        {
          sub_100002A8C(v27);
        }
      }

      else
      {
        v28 = 0;
      }

      free(v28);
    }

    if (_SecSyncBubbleTransfer())
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v29 = qword_1000EB308;
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_76;
      }

      v30 = sub_1000011A8(1);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v30;
      }

      else
      {
        v31 = v30 & 0xFFFFFFFE;
      }

      if (v31)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v29 = qword_1000EB308;
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_76;
      }

      v32 = sub_1000011A8(1);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v32;
      }

      else
      {
        v33 = v32 & 0xFFFFFFFE;
      }

      if (v33)
      {
        goto LABEL_65;
      }
    }

LABEL_74:
    v35 = 0;
LABEL_75:
    free(v35);
    goto LABEL_76;
  }

  v14 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v14);
    if (ValueAtIndex)
    {
      v16 = ValueAtIndex;
      v17 = CFGetTypeID(ValueAtIndex);
      if (v17 == CFStringGetTypeID() && CFStringCompare(v16, a2, 0) == kCFCompareEqualTo)
      {
        break;
      }
    }

    if (CFArrayGetCount(MutableCopy) <= ++v14)
    {
      goto LABEL_22;
    }
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v29 = qword_1000EB308;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v36 = sub_1000011A8(1);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v36;
    }

    else
    {
      v37 = v36 & 0xFFFFFFFE;
    }

    if (!v37)
    {
      goto LABEL_74;
    }

LABEL_65:
    v34 = _os_log_send_and_compose_impl();
    v35 = v34;
    if (v34)
    {
      sub_100002A8C(v34);
    }

    goto LABEL_75;
  }

LABEL_76:

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }
}

void sub_100034214()
{
  v0 = sub_100018360();
  if (v0)
  {
    v1 = v0;
    if (!CFDictionaryContainsKey(v0, kUMUserSessionSyncMachServicesKey))
    {
      goto LABEL_36;
    }

    sub_1000023E8(v1, kUMUserSessionIDKey);
    if (!CFDictionaryGetValue(v1, kUMUserSessionSyncMachServicesKey))
    {
      goto LABEL_36;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v2 = qword_1000EB308;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
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

    if (_SecSyncBubbleTransfer())
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v7 = qword_1000EB308;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      v8 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v7 = qword_1000EB308;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      v10 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
LABEL_31:
        v12 = _os_log_send_and_compose_impl();
        v13 = v12;
        if (v12)
        {
          sub_100002A8C(v12);
        }

        goto LABEL_34;
      }
    }

    v13 = 0;
LABEL_34:
    free(v13);
LABEL_35:

LABEL_36:
    CFRelease(v1);
  }
}

void sub_1000344A8(const __CFString *a1)
{
  v2 = sub_100018360();
  if (v2)
  {
    v3 = v2;
    sub_1000344FC(v2, a1);

    CFRelease(v3);
  }
}

void sub_1000344FC(const __CFDictionary *a1, const __CFString *a2)
{
  v4 = sub_1000023E8(a1, kUMUserSessionIDKey);
  if (CFDictionaryContainsKey(a1, kUMUserSessionSyncMachServicesKey))
  {
    Value = CFDictionaryGetValue(a1, kUMUserSessionSyncMachServicesKey);
    v6 = CFGetTypeID(Value);
    if (v6 == CFArrayGetTypeID() && CFArrayGetCount(Value))
    {
      if (CFArrayGetCount(Value) < 1)
      {
LABEL_10:
        if (CFArrayGetCount(Value))
        {
          return;
        }

        v11 = 0;
      }

      else
      {
        v7 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Value, v7);
          if (ValueAtIndex)
          {
            v9 = ValueAtIndex;
            v10 = CFGetTypeID(ValueAtIndex);
            if (v10 == CFStringGetTypeID() && CFStringCompare(v9, a2, 0) == kCFCompareEqualTo)
            {
              break;
            }
          }

          if (CFArrayGetCount(Value) <= ++v7)
          {
            goto LABEL_10;
          }
        }

        CFArrayRemoveValueAtIndex(Value, v7);
        CFRetain(Value);
        if (CFArrayGetCount(Value))
        {
LABEL_41:
          sub_100018C80();
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v22 = qword_1000EB308;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = sub_1000011A8(1);
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

          if (_SecSyncBubbleTransfer())
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v27 = qword_1000EB308;
            if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_72;
            }

            v28 = sub_1000011A8(1);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v29 = v28;
            }

            else
            {
              v29 = v28 & 0xFFFFFFFE;
            }

            if (v29)
            {
              goto LABEL_68;
            }
          }

          else
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v27 = qword_1000EB308;
            if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_72;
            }

            v30 = sub_1000011A8(1);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v31 = v30;
            }

            else
            {
              v31 = v30 & 0xFFFFFFFE;
            }

            if (v31)
            {
LABEL_68:
              v32 = _os_log_send_and_compose_impl();
              v33 = v32;
              if (v32)
              {
                sub_100002A8C(v32);
              }

              goto LABEL_71;
            }
          }

          v33 = 0;
LABEL_71:
          free(v33);
LABEL_72:

          if (Value)
          {
            CFRelease(Value);
          }

          return;
        }

        v11 = 1;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v12 = qword_1000EB308;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = sub_1000011A8(1);
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

      if ((v11 & 1) == 0)
      {
        CFRetain(Value);
      }

      sub_10001C0D0(a1, v4);
      goto LABEL_41;
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v17 = qword_1000EB308;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = sub_1000011A8(1);
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
  }
}