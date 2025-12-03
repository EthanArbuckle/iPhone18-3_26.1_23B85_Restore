@interface CollationMap
+ (BOOL)lookupEntryForUser:(unsigned int)user withBundleID:(const char *)d minVersion:(_cryptex_version *)version;
+ (id)getMap;
+ (int)addEntryForUser:(unsigned int)user fromQuire:(id)quire;
+ (int)removeEntryForUser:(unsigned int)user withValue:(char *)value;
+ (void)createCollationForUser:(unsigned int)user;
- (CollationMap)init;
- (void)init;
@end

@implementation CollationMap

- (CollationMap)init
{
  v9.receiver = self;
  v9.super_class = CollationMap;
  v2 = [(CollationMap *)&v9 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.libcryptex", "collations");
    [(CollationMap *)v2 setLog:v3];

    v4 = objc_alloc_init(NSMutableDictionary);
    [(CollationMap *)v2 setColl_map:v4];

    coll_map = [(CollationMap *)v2 coll_map];

    if (!coll_map)
    {
      [(CollationMap *)&v8 init];
    }

    v6 = dispatch_queue_create("com.apple.security.cryptexd.CollationMap", 0);
    [(CollationMap *)v2 setDq:v6];
  }

  return v2;
}

+ (id)getMap
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __22__CollationMap_getMap__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (getMap_once_token != -1)
  {
    dispatch_once(&getMap_once_token, block);
  }

  v2 = getMap_map;

  return v2;
}

void __22__CollationMap_getMap__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = getMap_map;
  getMap_map = v1;

  if (!getMap_map)
  {
    __22__CollationMap_getMap__block_invoke_cold_1(&v3, v4);
  }
}

+ (void)createCollationForUser:(unsigned int)user
{
  v4 = [NSNumber numberWithUnsignedInt:?];
  v5 = +[CollationMap getMap];
  v6 = v5[3];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __39__CollationMap_createCollationForUser___block_invoke;
  block[3] = &unk_100072E50;
  v10 = v5;
  v11 = v4;
  userCopy = user;
  v7 = v4;
  v8 = v5;
  dispatch_sync(v6, block);
}

void __39__CollationMap_createCollationForUser___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) coll_map];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (!v3)
  {
    v3 = [[CollationCore alloc] initWithID:*(a1 + 48) queue:*(*(a1 + 32) + 24)];
    v4 = [*(a1 + 32) coll_map];
    [v4 setObject:v3 forKeyedSubscript:*(a1 + 40)];

    if (*(a1 + 48))
    {
      v5 = [*(a1 + 32) coll_map];
      v6 = [v5 objectForKeyedSubscript:&off_100074F30];

      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = __39__CollationMap_createCollationForUser___block_invoke_8;
      v7[3] = &unk_100072E28;
      v3 = v3;
      v8 = v3;
      [v6 enumerateCollationElements:v7];
    }
  }
}

+ (int)addEntryForUser:(unsigned int)user fromQuire:(id)quire
{
  quireCopy = quire;
  v6 = +[CollationMap getMap];
  v7 = v6[3];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __42__CollationMap_addEntryForUser_fromQuire___block_invoke;
  block[3] = &unk_100072E50;
  userCopy = user;
  v12 = quireCopy;
  v13 = v6;
  v8 = v6;
  v9 = quireCopy;
  dispatch_sync(v7, block);

  return 0;
}

void __42__CollationMap_addEntryForUser_fromQuire___block_invoke(uint64_t a1)
{
  v2 = [NSNumber numberWithUnsignedInt:*(a1 + 48)];
  main_command = quire_get_main_command(*(a1 + 32));
  if (main_command)
  {
    v34 = [NSString stringWithUTF8String:main_command];
  }

  else
  {
    v34 = 0;
  }

  v4 = quire_get_main_command_args(*(a1 + 32));
  if (v4)
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v5 = 0;
  }

  v33 = v2;
  v6 = quire_get_env(*(a1 + 32));
  if (v6)
  {
    v7 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v7 = 0;
  }

  v8 = [NSString stringWithUTF8String:quire_get_mntpath(*(a1 + 32))];
  v9 = [NSString stringWithUTF8String:quire_get_bundle(*(a1 + 32))];
  v30 = [NSString stringWithUTF8String:*quire_get_version(*(a1 + 32))];
  v31 = v7;
  v32 = v5;
  v10 = [[CollationElement alloc] initWithBundle:v9 version:v30 atPath:v8 withScope:1 withCommand:v34 withCommandArgs:v5 withEnv:v7];
  v11 = [*(a1 + 40) coll_map];
  v12 = v2;
  v13 = [v11 objectForKeyedSubscript:v2];

  if (!v13)
  {
    v14 = *(*(a1 + 40) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __42__CollationMap_addEntryForUser_fromQuire___block_invoke_cold_1((a1 + 48), v14);
    }

    v13 = [[CollationCore alloc] initWithID:*(a1 + 48) queue:*(*(a1 + 40) + 24)];
    v15 = [*(a1 + 40) coll_map];
    [v15 setObject:v13 forKeyedSubscript:v33];
  }

  v16 = [*(a1 + 40) coll_map];
  v17 = [v16 count];

  if (v17 >= 2)
  {
    v27 = v9;
    v28 = v6;
    v29 = v4;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v18 = [*(a1 + 40) coll_map];
    v19 = [v18 keyEnumerator];

    v20 = [v19 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v36;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v36 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v35 + 1) + 8 * i);
          if ([v24 intValue])
          {
            v25 = [*(a1 + 40) coll_map];
            v26 = [v25 objectForKeyedSubscript:v24];

            [v26 appendCollationElement:v10];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v21);
    }

    v12 = v33;
    v6 = v28;
    v4 = v29;
    v9 = v27;
  }

  [v13 appendCollationElement:v10];
}

+ (int)removeEntryForUser:(unsigned int)user withValue:(char *)value
{
  v6 = +[CollationMap getMap];
  v7 = v6[3];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __45__CollationMap_removeEntryForUser_withValue___block_invoke;
  block[3] = &unk_100072E78;
  userCopy = user;
  v11 = v6;
  valueCopy = value;
  v8 = v6;
  dispatch_sync(v7, block);

  return 0;
}

void __45__CollationMap_removeEntryForUser_withValue___block_invoke(uint64_t a1)
{
  v2 = [NSNumber numberWithUnsignedInt:*(a1 + 48)];
  v3 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v2];
  if (!v3)
  {
    __45__CollationMap_removeEntryForUser_withValue___block_invoke_cold_4(&v9, v10, (a1 + 48));
  }

  v4 = v3;
  v5 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __45__CollationMap_removeEntryForUser_withValue___block_invoke_cold_1(a1, (a1 + 48), v5);
  }

  v6 = [NSString stringWithUTF8String:*(a1 + 40)];
  v7 = [v4 removeCollationElementWithPath:v6];

  if ((v7 & 1) == 0)
  {
    __45__CollationMap_removeEntryForUser_withValue___block_invoke_cold_2();
  }

  if ([v4 isEmpty])
  {
    v8 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __45__CollationMap_removeEntryForUser_withValue___block_invoke_cold_3((a1 + 48), v8);
    }

    [*(*(a1 + 32) + 16) removeObjectForKey:v2];
  }
}

+ (BOOL)lookupEntryForUser:(unsigned int)user withBundleID:(const char *)d minVersion:(_cryptex_version *)version
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v8 = +[CollationMap getMap];
  v9 = v8[3];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __59__CollationMap_lookupEntryForUser_withBundleID_minVersion___block_invoke;
  block[3] = &unk_100072EC8;
  userCopy = user;
  v13 = v8;
  v14 = &v18;
  dCopy = d;
  versionCopy = version;
  v10 = v8;
  dispatch_sync(v9, block);
  LOBYTE(d) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return d;
}

void __59__CollationMap_lookupEntryForUser_withBundleID_minVersion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) coll_map];
  v3 = [NSNumber numberWithUnsignedInt:*(a1 + 64)];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __59__CollationMap_lookupEntryForUser_withBundleID_minVersion___block_invoke_2;
    v5[3] = &unk_100072EA0;
    v6 = *(a1 + 40);
    v7 = *(a1 + 56);
    [v4 enumerateElements:v5];
  }
}

uint64_t __59__CollationMap_lookupEntryForUser_withBundleID_minVersion___block_invoke_2(uint64_t a1, int a2, char *__s2)
{
  v3 = *(*(a1 + 32) + 8);
  if (*(v3 + 24) == 1)
  {
    __59__CollationMap_lookupEntryForUser_withBundleID_minVersion___block_invoke_2_cold_1(&v8, v9);
  }

  if (!strcmp(*(a1 + 40), __s2))
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      *&v9[0] = cryptex_version_new();
      v6 = *(a1 + 48);
      if ((cryptex_version_compare() & 0x80000000) == 0)
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
      }

      cryptex_version_destroy();
      LOBYTE(v5) = *(*(*(a1 + 32) + 8) + 24) ^ 1;
    }

    else
    {
      *(v3 + 24) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5 & 1;
}

- (void)init
{
  OUTLINED_FUNCTION_3(self, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0_3();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void __22__CollationMap_getMap__block_invoke_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0_3();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void __42__CollationMap_addEntryForUser_fromQuire___block_invoke_cold_1(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Collation: Creating new collation for user %d", v3, 8u);
}

void __45__CollationMap_removeEntryForUser_withValue___block_invoke_cold_1(uint64_t a1, int *a2, os_log_t log)
{
  v3 = *(a1 + 40);
  v4 = *a2;
  v5 = 136315394;
  v6 = v3;
  v7 = 1024;
  v8 = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Collation: Removing path [%s] for user %d", &v5, 0x12u);
}

void __45__CollationMap_removeEntryForUser_withValue___block_invoke_cold_3(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Collation: No remaining mounts for user %d", v3, 8u);
}

void __45__CollationMap_removeEntryForUser_withValue___block_invoke_cold_4(uint64_t *a1, _OWORD *a2, int *a3)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v6 = *a3;
  _os_log_send_and_compose_impl();
  v5 = *a1;
  _os_crash_msg();
  __break(1u);
}

void __59__CollationMap_lookupEntryForUser_withBundleID_minVersion___block_invoke_2_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0_3();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

@end