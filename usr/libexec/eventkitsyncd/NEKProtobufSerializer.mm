@interface NEKProtobufSerializer
+ (void)oops;
- (id)changeFromData:(id)a3 ofType:(int64_t)a4;
- (id)dataFromChange:(id)a3;
@end

@implementation NEKProtobufSerializer

+ (void)oops
{
  os_unfair_lock_lock(&unk_1000D1860);
  dword_1000D15F0 = (dword_1000D15F0 - 1) & 0x7FFFFFFF;

  os_unfair_lock_unlock(&unk_1000D1860);
}

- (id)dataFromChange:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NEKPBProtoBuffMessage);
  os_unfair_lock_lock(&unk_1000D1860);
  if (dword_1000D15F0 == 0x80000000)
  {
    v5 = arc4random();
    v6 = v5 & 0x7FFFFFFF;
    v7 = v5 | 0x80000000;
  }

  else
  {
    v6 = (dword_1000D15F0 + 1) & 0x7FFFFFFF;
    v7 = v6;
  }

  dword_1000D15F0 = v6;
  os_unfair_lock_unlock(&unk_1000D1860);
  [(NEKPBProtoBuffMessage *)v4 setPacketNumber:v7];
  v8 = [(NEKPBProtoBuffMessage *)v4 packetNumber];
  v9 = [(NEKPBProtoBuffMessage *)v4 packetNumber];
  v10 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v17 = v9;
    v18 = HIWORD(v8) & 0x7FFF;
    v19 = v10;
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = 138543874;
    v23 = v21;
    v24 = 1024;
    v25 = v18;
    v26 = 1024;
    v27 = v17;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "dataWithSYChange: serializing object of class: %{public}@ S_PKT_NUM:%04x_%04x", &v22, 0x18u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = sub_1000460DC(v3);
    [(NEKPBProtoBuffMessage *)v4 setStoreWrapper:v11];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = sub_1000448CC(v3);
      [(NEKPBProtoBuffMessage *)v4 setCalendarWrapper:v11];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v3;
        if ([v11 isReminderWithLocation])
        {
          ct_green_tea_logger_create();
          v12 = getCTGreenTeaOsLogHandle();
          v13 = v12;
          if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            LOWORD(v22) = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Sending reminder with location", &v22, 2u);
          }

          ct_green_tea_logger_destroy();
        }

        v14 = sub_100045690(v11);
        [(NEKPBProtoBuffMessage *)v4 setICSWrapper:v14];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = sub_100046688(v3);
          [(NEKPBProtoBuffMessage *)v4 setDeletionWrapper:v11];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_22;
          }

          v11 = sub_100046830(v3);
          [(NEKPBProtoBuffMessage *)v4 setValidationWrapper:v11];
        }
      }
    }
  }

LABEL_22:
  v15 = [(NEKPBProtoBuffMessage *)v4 data];

  return v15;
}

- (id)changeFromData:(id)a3 ofType:(int64_t)a4
{
  v4 = a3;
  v5 = [[NEKPBProtoBuffMessage alloc] initWithData:v4];

  v6 = [(NEKPBProtoBuffMessage *)v5 storeWrapper];

  if (v6)
  {
    v7 = [(NEKPBProtoBuffMessage *)v5 storeWrapper];
    v8 = sub_1000463B4(v7);
  }

  else
  {
    v9 = [(NEKPBProtoBuffMessage *)v5 calendarWrapper];

    if (v9)
    {
      v7 = [(NEKPBProtoBuffMessage *)v5 calendarWrapper];
      v8 = sub_100044FC0(v7);
    }

    else
    {
      v10 = [(NEKPBProtoBuffMessage *)v5 iCSWrapper];

      if (v10)
      {
        v7 = [(NEKPBProtoBuffMessage *)v5 iCSWrapper];
        v8 = sub_100045A74(v7);
      }

      else
      {
        v11 = [(NEKPBProtoBuffMessage *)v5 deletionWrapper];

        if (v11)
        {
          v7 = [(NEKPBProtoBuffMessage *)v5 deletionWrapper];
          v8 = sub_100046760(v7);
        }

        else
        {
          v12 = [(NEKPBProtoBuffMessage *)v5 validationWrapper];

          if (!v12)
          {
            v26 = *(qword_1000D18A8 + 8);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              sub_1000740C4(v5, v26);
            }

            goto LABEL_26;
          }

          v7 = [(NEKPBProtoBuffMessage *)v5 validationWrapper];
          v8 = sub_100046908(v7);
        }
      }
    }
  }

  v13 = v8;

  if (v13)
  {
    os_unfair_lock_lock(&unk_1000D1860);
    v14 = [(NEKPBProtoBuffMessage *)v5 packetNumber];
    v15 = [(NEKPBProtoBuffMessage *)v5 packetNumber];
    v16 = v15;
    v17 = dword_1000D15F4 == 0x80000000 || v14 < 0;
    v18 = v15 & 0x7FFFFFFF;
    v19 = (dword_1000D15F4 + 1) & 0x7FFFFFFF;
    if (v17)
    {
      v19 = v15 & 0x7FFFFFFF;
    }

    dword_1000D15F4 = v19;
    v20 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v22 = v16;
      v23 = v20;
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v29 = 138543874;
      v30 = v25;
      v31 = 1024;
      v32 = HIWORD(v18);
      v33 = 1024;
      v34 = v22;
      _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "SYChangeWithData: returning object of type: %{public}@ R_PKT_NUM:%04x_%04x", &v29, 0x18u);
    }

    if (v18 != dword_1000D15F4)
    {
      v21 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100074080(v21);
      }

      dword_1000D15F4 = v18;
    }

    os_unfair_lock_unlock(&unk_1000D1860);
    goto LABEL_28;
  }

LABEL_26:
  v13 = +[SYDegenerateChange degenerateChange];
  v27 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    sub_10007413C(v27);
  }

LABEL_28:

  return v13;
}

@end