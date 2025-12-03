@interface SecureElement
+ (void)setQueueKey:(id)key;
- (id)transceive:(id)transceive error:(id *)error;
- (id)transceive:(id)transceive toOS:(int64_t)s error:(id *)error;
- (void)log:(id)log;
- (void)sync:(id)sync;
@end

@implementation SecureElement

- (id)transceive:(id)transceive error:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100053458;
  v23 = sub_100053468;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100053458;
  v17 = sub_100053468;
  v18 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100053470;
  v8[3] = &unk_1004C2C40;
  v11 = &v19;
  selfCopy = self;
  transceiveCopy = transceive;
  v10 = transceiveCopy;
  v12 = &v13;
  [(SecureElement *)selfCopy sync:v8];
  if (error)
  {
    *error = v14[5];
  }

  v6 = v20[5];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v6;
}

- (id)transceive:(id)transceive toOS:(int64_t)s error:(id *)error
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100053458;
  v26 = sub_100053468;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100053458;
  v20 = sub_100053468;
  v21 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100053694;
  v10[3] = &unk_1004C2C68;
  v13 = &v22;
  selfCopy = self;
  transceiveCopy = transceive;
  v14 = &v16;
  sCopy = s;
  v12 = transceiveCopy;
  [(SecureElement *)selfCopy sync:v10];
  if (error)
  {
    *error = v17[5];
  }

  v8 = v23[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v8;
}

- (void)log:(id)log
{
  logCopy = log;
  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = logCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[SLAM] %@", &v5, 0xCu);
  }
}

+ (void)setQueueKey:(id)key
{
  v3 = qword_100501D80;
  keyCopy = key;
  if (v3 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.setSpecific<A>(key:value:)();
}

- (void)sync:(id)sync
{
  v5 = _Block_copy(sync);
  selfCopy = self;
  sub_1003349C4(sub_10021BF3C);
  _Block_release(v5);
}

@end