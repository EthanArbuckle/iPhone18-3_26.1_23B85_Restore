@interface UARPMappedAnalyticsTLV
- (BOOL)createFieldType:(id)type;
- (BOOL)expandEncodedString:(id)string inCoreAnalytics:(id)analytics;
- (BOOL)expandFieldData:(id)data inCoreAnalytics:(id)analytics;
- (BOOL)expandFieldData:(id)data withOffset:(unint64_t)offset inCoreAnalytics:(id)analytics;
- (BOOL)expandFloat:(id)float inCoreAnalytics:(id)analytics;
- (BOOL)expandInteger:(id)integer inCoreAnalytics:(id)analytics;
- (BOOL)expandString:(id)string inCoreAnalytics:(id)analytics;
- (BOOL)expandUnsignedInteger:(id)integer inCoreAnalytics:(id)analytics;
- (BOOL)getNextOffset:(unint64_t *)offset fromStart:(unint64_t)start;
- (UARPMappedAnalyticsTLV)init;
- (UARPMappedAnalyticsTLV)initWithCoder:(id)coder;
- (UARPMappedAnalyticsTLV)initWithDictionary:(id)dictionary endian:(id)endian;
- (id)bigEndianSwap:(id)swap;
- (id)endianSwap:(id)swap;
- (id)littleEndianSwap:(id)swap;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPMappedAnalyticsTLV

- (UARPMappedAnalyticsTLV)init
{
  [(UARPMappedAnalyticsTLV *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPMappedAnalyticsTLV)initWithDictionary:(id)dictionary endian:(id)endian
{
  dictionaryCopy = dictionary;
  endianCopy = endian;
  v28.receiver = self;
  v28.super_class = UARPMappedAnalyticsTLV;
  v8 = [(UARPMappedAnalyticsTLV *)&v28 init];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = os_log_create("com.apple.uarp", "tmap");
  v10 = *(v8 + 6);
  *(v8 + 6) = v9;

  v11 = [dictionaryCopy objectForKeyedSubscript:@"FieldName"];
  v12 = [v11 copy];
  v13 = *(v8 + 1);
  *(v8 + 1) = v12;

  if (!*(v8 + 1))
  {
    if (os_log_type_enabled(*(v8 + 6), OS_LOG_TYPE_ERROR))
    {
      sub_10007A874();
    }

    goto LABEL_28;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(*(v8 + 6), OS_LOG_TYPE_ERROR))
    {
      sub_10007A72C();
    }

    goto LABEL_28;
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"FieldLength"];
  if (!v14)
  {
    if (os_log_type_enabled(*(v8 + 6), OS_LOG_TYPE_ERROR))
    {
      sub_10007A840();
    }

    goto LABEL_27;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(*(v8 + 6), OS_LOG_TYPE_ERROR))
    {
      sub_10007A760();
    }

    goto LABEL_27;
  }

  *(v8 + 2) = [v14 unsignedIntValue];
  v15 = [dictionaryCopy objectForKeyedSubscript:@"FieldType"];
  v16 = [v15 copy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = *(v8 + 6);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10007A794(v19, v20, v21, v22, v23, v24, v25, v26);
    }

    goto LABEL_26;
  }

  if (![v8 createFieldType:v16])
  {
LABEL_26:

LABEL_27:
LABEL_28:
    v18 = 0;
    goto LABEL_29;
  }

  v17 = [dictionaryCopy objectForKeyedSubscript:@"FieldPrivacyRestricted"];
  if (!v17)
  {
    v17 = [NSNumber numberWithBool:0];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(*(v8 + 6), OS_LOG_TYPE_ERROR))
    {
      sub_10007A80C();
    }

    goto LABEL_26;
  }

  *(v8 + 28) = [v17 BOOLValue];
  *(v8 + 8) = [endianCopy isEqualToString:@"LittleEndian"];

LABEL_12:
  v18 = v8;
LABEL_29:

  return v18;
}

- (BOOL)createFieldType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Integer"])
  {
    self->_fieldType = 0;
LABEL_12:
    v5 = 1;
    goto LABEL_13;
  }

  if ([typeCopy isEqualToString:@"UnsignedInteger"])
  {
    v5 = 1;
    self->_fieldType = 1;
    goto LABEL_13;
  }

  if ([typeCopy isEqualToString:@"UTF8String"])
  {
    v6 = 2;
LABEL_11:
    self->_fieldType = v6;
    goto LABEL_12;
  }

  if ([typeCopy isEqualToString:@"Base64EncodedString"])
  {
    v6 = 3;
    goto LABEL_11;
  }

  if ([typeCopy isEqualToString:@"Float"])
  {
    v6 = 4;
    goto LABEL_11;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10007A8A8();
  }

  v5 = 0;
LABEL_13:

  return v5;
}

- (UARPMappedAnalyticsTLV)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = UARPMappedAnalyticsTLV;
  v5 = [(UARPMappedAnalyticsTLV *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FieldName"];
    fieldName = v5->_fieldName;
    v5->_fieldName = v6;

    v5->_fieldLength = [coderCopy decodeIntegerForKey:@"FieldLength"];
    v5->_fieldType = [coderCopy decodeIntegerForKey:@"FieldType"];
    v5->_fieldPrivacyRestricted = [coderCopy decodeBoolForKey:@"FieldPrivacyRestricted"];
    v5->_endian = [coderCopy decodeIntegerForKey:@"Endian"];
    v8 = os_log_create("com.apple.uarp", "tmap");
    log = v5->_log;
    v5->_log = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  fieldName = self->_fieldName;
  coderCopy = coder;
  [coderCopy encodeObject:fieldName forKey:@"FieldName"];
  [coderCopy encodeInteger:self->_fieldLength forKey:@"FieldLength"];
  [coderCopy encodeInteger:self->_fieldType forKey:@"FieldType"];
  [coderCopy encodeBool:self->_fieldPrivacyRestricted forKey:@"FieldPrivacyRestricted"];
  [coderCopy encodeInteger:self->_endian forKey:@"Endian"];
}

- (BOOL)expandFieldData:(id)data withOffset:(unint64_t)offset inCoreAnalytics:(id)analytics
{
  dataCopy = data;
  analyticsCopy = analytics;
  fieldLength = self->_fieldLength;
  if (__CFADD__(offset, fieldLength))
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10007A944();
    }

    goto LABEL_15;
  }

  if (fieldLength + offset > [dataCopy length])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v12 = log;
      v13 = [dataCopy length];
      v14 = self->_fieldLength + offset;
      v18 = 134218240;
      v19 = v13;
      v20 = 2048;
      v21 = v14;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Length of MTIC Data(%lu) and Expected TMAP Data(%lu) do not match ", &v18, 0x16u);
    }

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  if (!analyticsCopy)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10007A910();
    }

    goto LABEL_15;
  }

  if (!self->_fieldName)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10007A8DC();
    }

    goto LABEL_15;
  }

  v15 = [dataCopy subdataWithRange:{offset, self->_fieldLength}];
  v16 = [(UARPMappedAnalyticsTLV *)self expandFieldData:v15 inCoreAnalytics:analyticsCopy];

LABEL_16:
  return v16;
}

- (BOOL)expandFieldData:(id)data inCoreAnalytics:(id)analytics
{
  dataCopy = data;
  analyticsCopy = analytics;
  fieldType = self->_fieldType;
  if (fieldType == 3)
  {
    v9 = [(UARPMappedAnalyticsTLV *)self expandEncodedString:dataCopy inCoreAnalytics:analyticsCopy];
    goto LABEL_5;
  }

  if (fieldType == 2)
  {
    v9 = [(UARPMappedAnalyticsTLV *)self expandString:dataCopy inCoreAnalytics:analyticsCopy];
LABEL_5:
    v10 = v9;
    goto LABEL_18;
  }

  v11 = [(UARPMappedAnalyticsTLV *)self endianSwap:dataCopy];
  v12 = v11;
  if (!v11)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10007A9AC();
    }

    v10 = 0;
    goto LABEL_17;
  }

  v13 = self->_fieldType;
  switch(v13)
  {
    case 4:
      v14 = [(UARPMappedAnalyticsTLV *)self expandFloat:v11 inCoreAnalytics:analyticsCopy];
      goto LABEL_16;
    case 1:
      v14 = [(UARPMappedAnalyticsTLV *)self expandUnsignedInteger:v11 inCoreAnalytics:analyticsCopy];
      goto LABEL_16;
    case 0:
      v14 = [(UARPMappedAnalyticsTLV *)self expandInteger:v11 inCoreAnalytics:analyticsCopy];
LABEL_16:
      v10 = v14;
LABEL_17:

      goto LABEL_18;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10007A978();
  }

  v10 = 0;
LABEL_18:

  return v10;
}

- (BOOL)getNextOffset:(unint64_t *)offset fromStart:(unint64_t)start
{
  fieldLength = self->_fieldLength;
  v5 = __CFADD__(start, fieldLength);
  if (!__CFADD__(start, fieldLength))
  {
    *offset = fieldLength + start;
  }

  return !v5;
}

- (id)endianSwap:(id)swap
{
  if (self->_endian == 1)
  {
    [(UARPMappedAnalyticsTLV *)self littleEndianSwap:swap];
  }

  else
  {
    [(UARPMappedAnalyticsTLV *)self bigEndianSwap:swap];
  }
  v3 = ;

  return v3;
}

- (id)bigEndianSwap:(id)swap
{
  swapCopy = swap;
  v5 = swapCopy;
  fieldLength = self->_fieldLength;
  if (fieldLength > 3)
  {
    if (fieldLength == 4)
    {
      LODWORD(v13) = 0;
      [swapCopy getBytes:&v13 length:4];
      LODWORD(v12) = bswap32(v13);
      v7 = [NSData alloc];
      v8 = 4;
      goto LABEL_13;
    }

    if (fieldLength == 8)
    {
      v13 = 0;
      [swapCopy getBytes:&v13 length:8];
      v12 = bswap64(v13);
      v7 = [NSData alloc];
      v8 = 8;
      goto LABEL_13;
    }
  }

  else
  {
    if (fieldLength == 1)
    {
      v10 = [[NSData alloc] initWithData:swapCopy];
LABEL_14:
      v9 = v10;
      goto LABEL_15;
    }

    if (fieldLength == 2)
    {
      LOWORD(v13) = 0;
      [swapCopy getBytes:&v13 length:2];
      LOWORD(v12) = bswap32(v13) >> 16;
      v7 = [NSData alloc];
      v8 = 2;
LABEL_13:
      v10 = [v7 initWithBytes:&v12 length:{v8, v12}];
      goto LABEL_14;
    }
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10007A9E0();
  }

  v9 = 0;
LABEL_15:

  return v9;
}

- (id)littleEndianSwap:(id)swap
{
  swapCopy = swap;
  v5 = swapCopy;
  fieldLength = self->_fieldLength;
  if (fieldLength > 3)
  {
    if (fieldLength == 4)
    {
      LODWORD(v11) = 0;
      [swapCopy getBytes:&v11 length:4];
      LODWORD(v10) = v11;
      goto LABEL_13;
    }

    if (fieldLength == 8)
    {
      v11 = 0;
      [swapCopy getBytes:&v11 length:8];
      v10 = v11;
      goto LABEL_13;
    }
  }

  else
  {
    if (fieldLength == 1)
    {
      v8 = [[NSData alloc] initWithData:swapCopy];
LABEL_14:
      v7 = v8;
      goto LABEL_15;
    }

    if (fieldLength == 2)
    {
      LOWORD(v11) = 0;
      [swapCopy getBytes:&v11 length:2];
      LOWORD(v10) = v11;
LABEL_13:
      v8 = [[NSData alloc] initWithBytes:&v10 length:self->_fieldLength];
      goto LABEL_14;
    }
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10007A9E0();
  }

  v7 = 0;
LABEL_15:

  return v7;
}

- (BOOL)expandInteger:(id)integer inCoreAnalytics:(id)analytics
{
  integerCopy = integer;
  analyticsCopy = analytics;
  p_fieldLength = &self->_fieldLength;
  fieldLength = self->_fieldLength;
  if (fieldLength > 3)
  {
    if (fieldLength == 4)
    {
      v23 = 0;
      [integerCopy getBytes:&v23 length:4];
      v10 = [NSNumber numberWithInt:v23];
      goto LABEL_13;
    }

    if (fieldLength == 8)
    {
      v22 = 0;
      [integerCopy getBytes:&v22 length:8];
      v10 = [NSNumber numberWithLongLong:v22];
      goto LABEL_13;
    }
  }

  else
  {
    if (fieldLength == 1)
    {
      v25 = 0;
      v18 = 1;
      [integerCopy getBytes:&v25 length:1];
      v19 = [NSNumber numberWithChar:v25];
      [analyticsCopy setObject:v19 forKeyedSubscript:self->_fieldName];

      goto LABEL_14;
    }

    if (fieldLength == 2)
    {
      v24 = 0;
      [integerCopy getBytes:&v24 length:2];
      v10 = [NSNumber numberWithShort:v24];
LABEL_13:
      v20 = v10;
      [analyticsCopy setObject:v10 forKeyedSubscript:self->_fieldName];

      v18 = 1;
      goto LABEL_14;
    }
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_10007AA14(p_fieldLength, log, v12, v13, v14, v15, v16, v17);
  }

  v18 = 0;
LABEL_14:

  return v18;
}

- (BOOL)expandUnsignedInteger:(id)integer inCoreAnalytics:(id)analytics
{
  integerCopy = integer;
  analyticsCopy = analytics;
  p_fieldLength = &self->_fieldLength;
  fieldLength = self->_fieldLength;
  if (fieldLength > 3)
  {
    if (fieldLength == 4)
    {
      v23 = 0;
      [integerCopy getBytes:&v23 length:4];
      v10 = [NSNumber numberWithUnsignedInt:v23];
      goto LABEL_13;
    }

    if (fieldLength == 8)
    {
      v22 = 0;
      [integerCopy getBytes:&v22 length:8];
      v10 = [NSNumber numberWithUnsignedLongLong:v22];
      goto LABEL_13;
    }
  }

  else
  {
    if (fieldLength == 1)
    {
      v25 = 0;
      v18 = 1;
      [integerCopy getBytes:&v25 length:1];
      v19 = [NSNumber numberWithUnsignedChar:v25];
      [analyticsCopy setObject:v19 forKeyedSubscript:self->_fieldName];

      goto LABEL_14;
    }

    if (fieldLength == 2)
    {
      v24 = 0;
      [integerCopy getBytes:&v24 length:2];
      v10 = [NSNumber numberWithUnsignedShort:v24];
LABEL_13:
      v20 = v10;
      [analyticsCopy setObject:v10 forKeyedSubscript:self->_fieldName];

      v18 = 1;
      goto LABEL_14;
    }
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_10007AA84(p_fieldLength, log, v12, v13, v14, v15, v16, v17);
  }

  v18 = 0;
LABEL_14:

  return v18;
}

- (BOOL)expandFloat:(id)float inCoreAnalytics:(id)analytics
{
  floatCopy = float;
  analyticsCopy = analytics;
  fieldLength = self->_fieldLength;
  if (fieldLength == 8)
  {
    v14 = 0.0;
    [floatCopy getBytes:&v14 length:8];
    v10 = [NSNumber numberWithDouble:v14];
    goto LABEL_5;
  }

  if (fieldLength == 4)
  {
    v15 = 0;
    [floatCopy getBytes:&v15 length:4];
    LODWORD(v9) = v15;
    v10 = [NSNumber numberWithFloat:v9];
LABEL_5:
    v11 = v10;
    [analyticsCopy setObject:v10 forKeyedSubscript:self->_fieldName];

    v12 = 1;
    goto LABEL_9;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10007AAF4();
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (BOOL)expandString:(id)string inCoreAnalytics:(id)analytics
{
  stringCopy = string;
  analyticsCopy = analytics;
  if (stringCopy && [stringCopy length])
  {
    v8 = [[NSString alloc] initWithData:stringCopy encoding:4];
    v9 = v8;
    if (v8)
    {
      v10 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [v8 UTF8String]);
      v11 = v10 != 0;
      if (v10)
      {
        [analyticsCopy setObject:v10 forKeyedSubscript:self->_fieldName];
      }

      else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10007AB28();
      }
    }

    else
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10007AB5C();
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)expandEncodedString:(id)string inCoreAnalytics:(id)analytics
{
  stringCopy = string;
  analyticsCopy = analytics;
  if (stringCopy && [stringCopy length])
  {
    v8 = [stringCopy base64EncodedStringWithOptions:0];
    v9 = v8 != 0;
    if (v8)
    {
      [analyticsCopy setObject:v8 forKeyedSubscript:self->_fieldName];
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10007AB90();
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

@end