@interface HAPDataValueTransformer
+ (Class)expectedTransformedClassForFormat:(unint64_t)a3;
+ (void)initialize;
- (id)reverseTransformedValue:(id)a3 format:(unint64_t)a4 error:(id *)a5;
- (id)transformedValue:(id)a3 format:(unint64_t)a4 error:(id *)a5;
@end

@implementation HAPDataValueTransformer

+ (Class)expectedTransformedClassForFormat:(unint64_t)a3
{
  if (a3 - 1 > 0xC)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_class();
  }

  return v4;
}

+ (void)initialize
{
  if (!qword_1002ACBF8)
  {
    v2 = objc_alloc_init(HAPDataValueTransformer);
    v3 = qword_1002ACBF8;
    qword_1002ACBF8 = v2;
  }
}

- (id)transformedValue:(id)a3 format:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  if (!v8)
  {
    if ([HAPDataValueTransformer isValidFormat:a4])
    {
      v11 = +[NSData data];
LABEL_11:
      v12 = v11;
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  v31.receiver = self;
  v31.super_class = HAPDataValueTransformer;
  v9 = [(HAPValueTransformer *)&v31 transformedValue:v8 format:a4 error:a5];
  v10 = [v8 isEqual:v9];

  if ((v10 & 1) == 0)
  {
    goto LABEL_17;
  }

  if (![HAPDataValueTransformer isValidFormat:a4])
  {
LABEL_9:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_10:
      v11 = v8;
      goto LABEL_11;
    }

    v13 = sub_10007685C(a4);
    v14 = [NSString stringWithFormat:@"Invalid format type '%@' for value of class '%@'", v13, objc_opt_class()];

    v15 = sub_10007FAA0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = sub_10007FAFC(0);
      *buf = 138543618;
      *&buf[4] = v16;
      v33 = 2112;
      v34 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@[HAPDataValueTransformer] %@", buf, 0x16u);
    }

    if (a5)
    {
      v37 = NSLocalizedDescriptionKey;
      v38 = v14;
      v17 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      *a5 = [NSError errorWithDomain:@"HAPErrorDomain" code:-6717 userInfo:v17];
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  switch(a4)
  {
    case 1uLL:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }

      v19 = v8;
      if ([v19 compare:&off_100282308] == 1 || objc_msgSend(v19, "compare:", &off_100282320) == -1)
      {
        goto LABEL_63;
      }

      v20 = [v19 unsignedCharValue];
      goto LABEL_46;
    case 2uLL:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }

      v19 = v8;
      if ([v19 compare:&off_100282338] == 1 || objc_msgSend(v19, "compare:", &off_100282320) == -1)
      {
        goto LABEL_63;
      }

      v25 = [v19 unsignedShortValue];
      goto LABEL_55;
    case 3uLL:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }

      v19 = v8;
      if ([v19 compare:&off_100282350] == 1 || objc_msgSend(v19, "compare:", &off_100282320) == -1)
      {
        goto LABEL_63;
      }

      v22 = [v19 unsignedIntValue];
      goto LABEL_60;
    case 4uLL:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }

      v19 = v8;
      if ([v19 compare:&off_100282368] == 1 || objc_msgSend(v19, "compare:", &off_100282320) == -1)
      {
        goto LABEL_63;
      }

      v23 = [v19 unsignedLongLongValue];
      goto LABEL_41;
    case 5uLL:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }

      v19 = v8;
      if ([v19 compare:&off_100282248] == 1 || objc_msgSend(v19, "compare:", &off_100282260) == -1)
      {
        goto LABEL_63;
      }

      v20 = [v19 charValue];
LABEL_46:
      buf[0] = v20;
      v24 = 1;
      goto LABEL_62;
    case 6uLL:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }

      v19 = v8;
      if ([v19 compare:&off_100282278] == 1 || objc_msgSend(v19, "compare:", &off_100282290) == -1)
      {
        goto LABEL_63;
      }

      v25 = [v19 shortValue];
LABEL_55:
      *buf = v25;
      v24 = 2;
      goto LABEL_62;
    case 7uLL:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }

      v19 = v8;
      if ([v19 compare:&off_1002822A8] == 1 || objc_msgSend(v19, "compare:", &off_1002822C0) == -1)
      {
        goto LABEL_63;
      }

      v22 = [v19 intValue];
LABEL_60:
      *buf = v22;
      goto LABEL_61;
    case 8uLL:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }

      v19 = v8;
      if ([v19 compare:&off_1002822D8] == 1 || objc_msgSend(v19, "compare:", &off_1002822F0) == -1)
      {
        goto LABEL_63;
      }

      v23 = [v19 longLongValue];
LABEL_41:
      *buf = v23;
      v24 = 8;
      goto LABEL_62;
    case 9uLL:
      buf[0] = 0;
      if ([v8 isEqual:&__kCFBooleanFalse])
      {
        goto LABEL_74;
      }

      if (![v8 isEqual:&__kCFBooleanTrue])
      {
        goto LABEL_17;
      }

      buf[0] = 1;
LABEL_74:
      v11 = [NSData dataWithBytes:buf length:1];
      goto LABEL_11;
    case 0xAuLL:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }

      v19 = v8;
      if ([v19 compare:&off_100282448] == 1 || objc_msgSend(v19, "compare:", &off_100282458) == -1)
      {
LABEL_63:
        v12 = 0;
      }

      else
      {
        [v19 floatValue];
        *buf = v21;
LABEL_61:
        v24 = 4;
LABEL_62:
        v12 = [NSData dataWithBytes:buf length:v24];
      }

      break;
    case 0xBuLL:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_67;
      }

      v11 = [v8 dataUsingEncoding:4];
      goto LABEL_11;
    case 0xCuLL:
    case 0xDuLL:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_10;
      }

      goto LABEL_67;
    default:
LABEL_67:
      v26 = sub_10007FAA0();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = sub_10007FAFC(0);
        v28 = sub_10007685C(a4);
        v29 = objc_opt_class();
        *buf = 138543874;
        *&buf[4] = v27;
        v33 = 2112;
        v34 = v28;
        v35 = 2112;
        v36 = v29;
        v30 = v29;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}@[HAPDataValueTransformer] Invalid format/class (%@/%@) combination.", buf, 0x20u);
      }

      if (!a5)
      {
        goto LABEL_17;
      }

      [NSError errorWithDomain:@"HAPErrorDomain" code:-6737 userInfo:0];
      *a5 = v12 = 0;
      break;
  }

LABEL_18:

  return v12;
}

- (id)reverseTransformedValue:(id)a3 format:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  if (v8)
  {
    v24.receiver = self;
    v24.super_class = HAPDataValueTransformer;
    v9 = [(HAPValueTransformer *)&v24 reverseTransformedValue:v8 format:a4 error:a5];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      v16 = 0;
      goto LABEL_54;
    }
  }

  if ([HAPDataValueTransformer isValidFormat:a4])
  {
    v11 = v8;
    v12 = v11;
    if (a4 <= 5)
    {
      if (a4 > 2)
      {
        if (a4 == 3)
        {
          if ([v11 length] == 4)
          {
            v13 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *[v12 bytes]);
            goto LABEL_46;
          }
        }

        else if (a4 == 4)
        {
          if ([v11 length] == 8)
          {
            v13 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *[v12 bytes]);
            goto LABEL_46;
          }
        }

        else if ([v11 length] == 1)
        {
          v13 = +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", *[v12 bytes]);
          goto LABEL_46;
        }

        if (![v12 length])
        {
          goto LABEL_52;
        }

LABEL_47:
        v19 = sub_10007FAA0();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = sub_10007FAFC(0);
          v21 = sub_10007685C(a4);
          v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 length]);
          *buf = 138543874;
          v26 = v20;
          v27 = 2112;
          v28 = v21;
          v29 = 2112;
          v30 = v22;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@[HAPDataValueTransformer] Invalid format/data length (%@/%@) combination.", buf, 0x20u);
        }

        if (a5)
        {
          [NSError errorWithDomain:@"HAPErrorDomain" code:-6737 userInfo:0];
          *a5 = v16 = 0;
        }

        else
        {
LABEL_52:
          v16 = 0;
        }

        goto LABEL_53;
      }

      if (a4 == 1)
      {
        if ([v11 length] == 1)
        {
          v13 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", *[v12 bytes]);
          goto LABEL_46;
        }

        goto LABEL_47;
      }

      if (a4 == 2)
      {
        if ([v11 length] == 2)
        {
          v13 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", *[v12 bytes]);
          goto LABEL_46;
        }

        goto LABEL_47;
      }
    }

    else
    {
      if (a4 <= 8)
      {
        if (a4 == 6)
        {
          if ([v11 length] == 2)
          {
            v13 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", *[v12 bytes]);
            goto LABEL_46;
          }
        }

        else if (a4 == 7)
        {
          if ([v11 length] == 4)
          {
            v13 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", *[v12 bytes]);
            goto LABEL_46;
          }
        }

        else if ([v11 length] == 8)
        {
          v13 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", *[v12 bytes]);
LABEL_46:
          v16 = v13;
LABEL_53:

          goto LABEL_54;
        }

        goto LABEL_47;
      }

      switch(a4)
      {
        case 0xBuLL:
          v13 = [[NSString alloc] initWithData:v11 encoding:4];
          goto LABEL_46;
        case 0xAuLL:
          if ([v11 length] == 4)
          {
            LODWORD(v18) = *[v12 bytes];
            v13 = [NSNumber numberWithFloat:v18];
            goto LABEL_46;
          }

          goto LABEL_47;
        case 9uLL:
          if ([v11 length] == 1)
          {
            if (*[v12 bytes] == 1)
            {
              v17 = &__kCFBooleanTrue;
            }

            else
            {
              v17 = &__kCFBooleanFalse;
            }

            v13 = v17;
            goto LABEL_46;
          }

          goto LABEL_47;
      }
    }

    if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 0xC)
    {
      v13 = v11;
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  v14 = sub_10007FAA0();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = sub_10007FAFC(0);
    *buf = 138543618;
    v26 = v15;
    v27 = 2048;
    v28 = a4;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@[HAPDataValueTransformer] Invalid format '%tu', returning value unchanged", buf, 0x16u);
  }

  v16 = v8;
LABEL_54:

  return v16;
}

@end