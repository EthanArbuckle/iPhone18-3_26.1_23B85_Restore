@interface WAProtobufMessageSubmitter
- (basic_string<char,)_fieldNameFromKey:(std::allocator<char>> *__return_ptr)retstr;
- (id)_generateSetterInvocationFromInstance:(id)a3 andFieldKey:(id)a4 isRepeatable:(BOOL)a5;
- (id)instantiateAWDProtobufAndPopulateValues:(id)a3;
@end

@implementation WAProtobufMessageSubmitter

- (id)instantiateAWDProtobufAndPopulateValues:(id)a3
{
  v4 = a3;
  v60 = v4;
  v5 = [v4 originalClassName];
  v6 = objc_alloc_init(NSClassFromString(v5));

  if (!v4)
  {
    v51 = WALogCategoryDefaultHandle();
    obj = v51;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "[WAProtobufMessageSubmitter instantiateAWDProtobufAndPopulateValues:]";
      v67 = 1024;
      v68 = 20;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "%{public}s::%d:PARSER: Told to submit a NULL MESSAGE", buf, 0x12u);
    }

    goto LABEL_82;
  }

  if (!v6)
  {
    obj = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      v52 = [v4 key];
      v53 = [v4 originalClassName];
      *buf = 136447234;
      *&buf[4] = "[WAProtobufMessageSubmitter instantiateAWDProtobufAndPopulateValues:]";
      v67 = 1024;
      v68 = 21;
      v69 = 2112;
      v70 = v52;
      v71 = 2112;
      v72 = v53;
      v73 = 2112;
      v74 = v4;
      _os_log_impl(&_mh_execute_header, obj, OS_LOG_TYPE_ERROR, "%{public}s::%d:PARSER: Didn't get an instantiated instance of AWD implementation in order to populate filed with key: %@ (%@). Bailing to avoid a crash. *** This is likely due to an out of date WirelessDiagnostics framework on the build (WiFiAnalytics model references classes contained in a newer version of WirelessDiagnostics framework). %@", buf, 0x30u);
    }

    goto LABEL_82;
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = [v4 mutableFields];
  v7 = [obj countByEnumeratingWithState:&v62 objects:v61 count:16];
  if (!v7)
  {
LABEL_82:
    v8 = 0;
    goto LABEL_83;
  }

  v8 = 0;
  v56 = *v63;
  do
  {
    v9 = 0;
    v57 = v7;
    do
    {
      if (*v63 != v56)
      {
        objc_enumerationMutation(obj);
      }

      v59 = v9;
      v10 = *(*(&v62 + 1) + 8 * v9);
      context = objc_autoreleasePoolPush();
      v11 = [v60 mutableFields];
      v12 = [v11 objectForKeyedSubscript:v10];

      v13 = 0;
      while ([v12 isRepeatable])
      {
        v14 = [v12 repeatableValues];
        v15 = v13 < [v14 count];

        if (!v15)
        {
          goto LABEL_75;
        }

LABEL_13:
        v16 = [v12 key];
        v17 = -[WAProtobufMessageSubmitter _generateSetterInvocationFromInstance:andFieldKey:isRepeatable:](self, "_generateSetterInvocationFromInstance:andFieldKey:isRepeatable:", v6, v16, [v12 isRepeatable]);

        v8 = v17;
        [v17 selector];
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v18 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = NSStringFromSelector([v8 selector]);
            v20 = [v60 key];
            v21 = [v12 key];
            *buf = 136447234;
            *&buf[4] = "[WAProtobufMessageSubmitter instantiateAWDProtobufAndPopulateValues:]";
            v67 = 1024;
            v68 = 31;
            v69 = 2112;
            v70 = v19;
            v71 = 2112;
            v72 = v20;
            v73 = 2112;
            v74 = v21;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:Instantiated metric class doesn't respond to expected selector for setting! Selector: %@ on a class with key: %@ for field with key: %@", buf, 0x30u);
          }
        }

        v22 = [v12 type];
        if (v22 > 5)
        {
          if (v22 <= 7)
          {
            if (v22 != 6)
            {
              if ([v12 isRepeatable])
              {
                v31 = [v12 repeatableValues];
                v32 = [v31 objectAtIndexedSubscript:v13];
                v33 = [v32 BOOLValue];
              }

              else
              {
                v33 = [v12 BOOLValue];
              }

              buf[0] = v33;
              [v8 setArgument:buf atIndex:2];
              goto LABEL_67;
            }

            if ([v12 isRepeatable])
            {
              v40 = [v12 repeatableValues];
              v41 = [v40 objectAtIndexedSubscript:v13];
              v42 = [v41 unsignedLongLongValue];
            }

            else
            {
              v42 = [v12 uint64Value];
            }

LABEL_57:
            *buf = v42;
            [v8 setArgument:buf atIndex:2];
            goto LABEL_67;
          }

          if ((v22 - 8) < 2)
          {
            if ([v12 isRepeatable])
            {
              v26 = [v12 repeatableValues];
              *buf = [v26 objectAtIndexedSubscript:v13];
            }

            else
            {
              if ([v12 type] == 9)
              {
                [v12 bytesValue];
              }

              else
              {
                [v12 stringValue];
              }
              *buf = ;
            }

            [v8 setArgument:buf atIndex:2];
            [v8 retainArguments];

            goto LABEL_67;
          }

          if (v22 == 10)
          {
            if ([v12 isRepeatable])
            {
              v34 = [v12 repeatableValues];
              v35 = [v34 objectAtIndexedSubscript:v13];
              *buf = [(WAProtobufMessageSubmitter *)self instantiateAWDProtobufAndPopulateValues:v35];
            }

            else
            {
              v34 = [v12 subMessageValue];
              *buf = [(WAProtobufMessageSubmitter *)self instantiateAWDProtobufAndPopulateValues:v34];
            }

            [v8 setArgument:buf atIndex:2];
            [v8 retainArguments];

            goto LABEL_67;
          }
        }

        else
        {
          if (v22 > 2)
          {
            if (v22 == 3)
            {
              if ([v12 isRepeatable])
              {
                v43 = [v12 repeatableValues];
                v44 = [v43 objectAtIndexedSubscript:v13];
                v25 = [v44 intValue];
              }

              else
              {
                v25 = [v12 int32Value];
              }

              goto LABEL_59;
            }

            if (v22 != 4)
            {
              if ([v12 isRepeatable])
              {
                v23 = [v12 repeatableValues];
                v24 = [v23 objectAtIndexedSubscript:v13];
                v25 = [v24 unsignedIntValue];
              }

              else
              {
                v25 = [v12 uint32Value];
              }

LABEL_59:
              *buf = v25;
              [v8 setArgument:buf atIndex:2];
              goto LABEL_67;
            }

            if ([v12 isRepeatable])
            {
              v45 = [v12 repeatableValues];
              v46 = [v45 objectAtIndexedSubscript:v13];
              v42 = [v46 longLongValue];
            }

            else
            {
              v42 = [v12 int64Value];
            }

            goto LABEL_57;
          }

          if (v22 == 1)
          {
            if ([v12 isRepeatable])
            {
              v36 = [v12 repeatableValues];
              v37 = [v36 objectAtIndexedSubscript:v13];
              [v37 doubleValue];
              v39 = v38;
            }

            else
            {
              [v12 doubleValue];
              v39 = v49;
            }

            *buf = v39;
            [v8 setArgument:buf atIndex:2];
            goto LABEL_67;
          }

          if (v22 == 2)
          {
            if ([v12 isRepeatable])
            {
              v27 = [v12 repeatableValues];
              v28 = [v27 objectAtIndexedSubscript:v13];
              [v28 floatValue];
              v30 = v29;
            }

            else
            {
              [v12 floatValue];
              v30 = v48;
            }

            *buf = v30;
            [v8 setArgument:buf atIndex:2];
            goto LABEL_67;
          }
        }

        v47 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "[WAProtobufMessageSubmitter instantiateAWDProtobufAndPopulateValues:]";
          v67 = 1024;
          v68 = 95;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%{public}s::%d:PARSER: unexpected type", buf, 0x12u);
        }

LABEL_67:
        *buf = 0;
        [v8 getArgument:buf atIndex:2];
        v50 = [v12 type] != 10 && objc_msgSend(v12, "type") != 9 && objc_msgSend(v12, "type") != 8;
        if (*buf || v50)
        {
          [v8 invoke];
        }

        ++v13;
      }

      if (!v13)
      {
        goto LABEL_13;
      }

LABEL_75:

      objc_autoreleasePoolPop(context);
      v9 = v59 + 1;
    }

    while ((v59 + 1) != v57);
    v7 = [obj countByEnumeratingWithState:&v62 objects:v61 count:16];
  }

  while (v7);
LABEL_83:

  return v6;
}

- (id)_generateSetterInvocationFromInstance:(id)a3 andFieldKey:(id)a4 isRepeatable:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 UTF8String];
  v10 = [v8 lengthOfBytesUsingEncoding:4];
  v11 = v10;
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10003A5C8();
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  v33 = v10;
  if (v10)
  {
    memmove(&__dst, v9, v10);
  }

  *(&__dst + v11) = 0;
  [(WAProtobufMessageSubmitter *)self _fieldNameFromKey:&__dst];
  if (v33 < 0)
  {
    operator delete(__dst);
  }

  std::operator+<char>();
  if (v31 >= 0)
  {
    v12 = HIBYTE(v31);
  }

  else
  {
    v12 = v30[1];
  }

  v13 = __p;
  sub_10003A668(__p, v12 + 1);
  if (__p[23] < 0)
  {
    v13 = *__p;
  }

  if (v12)
  {
    if (v31 >= 0)
    {
      v14 = v30;
    }

    else
    {
      v14 = v30[0];
    }

    memmove(v13, v14, v12);
  }

  *&v13[v12] = 58;
  if (__p[23] >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = *__p;
  }

  v16 = sel_registerName(v15);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v17 = [objc_opt_class() instanceMethodSignatureForSelector:v16];
  if (v17)
  {
    goto LABEL_50;
  }

  if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v19 = v34.__r_.__value_.__r.__words[0];
    if (*(v34.__r_.__value_.__r.__words[0] + v34.__r_.__value_.__l.__size_ - 1) == 115)
    {
      v18 = --v34.__r_.__value_.__l.__size_;
      goto LABEL_30;
    }
  }

  else if (v34.__r_.__value_.__s.__data_[SHIBYTE(v34.__r_.__value_.__r.__words[2]) - 1] == 115)
  {
    v18 = SHIBYTE(v34.__r_.__value_.__r.__words[2]) - 1;
    *(&v34.__r_.__value_.__s + 23) = (*(&v34.__r_.__value_.__s + 23) - 1) & 0x7F;
    v19 = &v34;
LABEL_30:
    v19->__r_.__value_.__s.__data_[v18] = 0;
    goto LABEL_32;
  }

  std::string::append(&v34, "s");
LABEL_32:
  std::operator+<char>();
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
  }

  v31 = *&__p[16];
  *v30 = *__p;
  if (__p[23] >= 0)
  {
    v20 = HIBYTE(*&__p[16]);
  }

  else
  {
    v20 = *&__p[8];
  }

  v21 = __p;
  sub_10003A668(__p, v20 + 1);
  if (__p[23] < 0)
  {
    v21 = *__p;
  }

  if (v20)
  {
    if (v31 >= 0)
    {
      v22 = v30;
    }

    else
    {
      v22 = v30[0];
    }

    memmove(v21, v22, v20);
  }

  *&v21[v20] = 58;
  if (__p[23] >= 0)
  {
    v23 = __p;
  }

  else
  {
    v23 = *__p;
  }

  v16 = sel_registerName(v23);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v17 = [objc_opt_class() instanceMethodSignatureForSelector:v16];
  if (v17)
  {
LABEL_50:
    v24 = [NSInvocation invocationWithMethodSignature:v17, v30[0], v30[1], v31];
    [v24 setTarget:v7];
    [v24 setSelector:v16];
    goto LABEL_51;
  }

  v27 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = &v34;
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v28 = v34.__r_.__value_.__r.__words[0];
    }

    v29 = v30;
    if (v31 < 0)
    {
      v29 = v30[0];
    }

    *__p = 136447234;
    *&__p[4] = "[WAProtobufMessageSubmitter _generateSetterInvocationFromInstance:andFieldKey:isRepeatable:]";
    *&__p[12] = 1024;
    *&__p[14] = 132;
    *&__p[18] = 2112;
    *&__p[20] = v8;
    v36 = 2080;
    v37 = v28;
    v38 = 2080;
    v39 = v29;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}s::%d:PARSER: Failed to generate method signature from fieldKey: %@ which resulted in AWD container field name: %s andSelectorString:%s", __p, 0x30u);
  }

  v17 = 0;
  v24 = 0;
LABEL_51:
  v25 = v24;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  return v25;
}

- (basic_string<char,)_fieldNameFromKey:(std::allocator<char>> *__return_ptr)retstr
{
  v2 = v1;
  *retstr->var0.var0.var0 = 0uLL;
  *(&retstr->var0.var1 + 2) = 0;
  v4 = SHIBYTE(v1->__r_.__value_.__r.__words[2]);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = v1->__r_.__value_.__r.__words[0];
    size = v1->__r_.__value_.__l.__size_;
  }

  else
  {
    v5 = v1;
    size = SHIBYTE(v1->__r_.__value_.__r.__words[2]);
  }

  v7 = &v5[size];
  if (size)
  {
    v8 = v5;
    v9 = &v5[size];
    do
    {
      v10 = v8;
      v11 = v8;
      while (1)
      {
        v12 = *v11++;
        if (v12 == 95)
        {
          break;
        }

        v10 = v11;
        if (v11 == v7)
        {
          v10 = v9;
          goto LABEL_13;
        }
      }

      v8 = v10 + 1;
      v9 = v10;
    }

    while (v11 != v7);
  }

  else
  {
    v10 = v5;
  }

LABEL_13:
  v13 = (v10 - v5);
  if (v10 == v7)
  {
    v14 = 0;
  }

  else
  {
    v14 = (v13 + 1);
  }

  if ((v4 & 0x80000000) != 0)
  {
    v4 = v2->__r_.__value_.__l.__size_;
  }

  v15 = std::string::basic_string(retstr, v2, v14, v4, &v18);
  if ((v15->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15->__r_.__value_.__r.__words[0];
  }

  result = __toupper(v16->__r_.__value_.__s.__data_[0]);
  v16->__r_.__value_.__s.__data_[0] = result;
  return result;
}

@end