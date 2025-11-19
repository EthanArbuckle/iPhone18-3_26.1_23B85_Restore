@interface SKIOIterator
- (SKIOIterator)initWithClassName:(id)a3;
- (unsigned)copyNextObject;
@end

@implementation SKIOIterator

- (SKIOIterator)initWithClassName:(id)a3
{
  v4 = a3;
  existing = 0;
  v5 = IOServiceMatching([v4 UTF8String]);
  if (IOServiceGetMatchingServices(kIOMainPortDefault, v5, &existing))
  {
    v6 = 1;
  }

  else
  {
    v6 = existing == 0;
  }

  if (v6)
  {
    v7 = sub_10000BFD0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot find IO object of class %@", buf, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    self = [(SKIOObject *)self initWithIOObject:?];
    v8 = self;
  }

  return v8;
}

- (unsigned)copyNextObject
{
  [(SKIOIterator *)self setAttempt:0];
  if ([(SKIOIterator *)self attempt]> 0x3E7)
  {
LABEL_5:
    v4 = sub_10000BFD0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = 1000;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "IOKit iterator invalidated %d time(s)", v5, 8u);
    }

    return 0;
  }

  else
  {
    while (1)
    {
      result = IOIteratorNext([(SKIOObject *)self ioObj]);
      if (result)
      {
        break;
      }

      if (IOIteratorIsValid([(SKIOObject *)self ioObj]))
      {
        return 0;
      }

      [(SKIOIterator *)self setAttempt:[(SKIOIterator *)self attempt]+ 1];
      IOIteratorReset([(SKIOObject *)self ioObj]);
      if ([(SKIOIterator *)self attempt]>= 0x3E8)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

@end