@interface CryptexSessionList
+ (id)createCryptexSessionList;
+ (id)sharedList;
- (id)findCryptexSession:(char *)a3;
- (void)addCryptexSession:(id)a3;
- (void)removeCryptexSession:(id)a3;
- (void)shutdownSession:(char *)a3 reason:(int64_t)a4 exitCode:(unint64_t)a5;
@end

@implementation CryptexSessionList

+ (id)createCryptexSessionList
{
  v2 = objc_alloc_init(a1);
  if (v2)
  {
    v3 = os_log_create("com.apple.libcryptex", "usermanager");
    v4 = *(v2 + 27);
    *(v2 + 27) = v3;

    v5 = objc_opt_new();
    v6 = *(v2 + 26);
    *(v2 + 26) = v5;

    pthread_rwlock_init((v2 + 8), 0);
  }

  return v2;
}

+ (id)sharedList
{
  if (sharedList_once_token != -1)
  {
    +[CryptexSessionList sharedList];
  }

  v3 = sharedList_shared_list;

  return v3;
}

void __32__CryptexSessionList_sharedList__block_invoke(id a1)
{
  sharedList_shared_list = +[CryptexSessionList createCryptexSessionList];

  _objc_release_x1();
}

- (void)addCryptexSession:(id)a3
{
  v4 = a3;
  pthread_rwlock_wrlock(&self->rw_lock);
  v5 = [(CryptexSessionList *)self list];
  [v5 addObject:v4];

  pthread_rwlock_unlock(&self->rw_lock);
}

- (void)removeCryptexSession:(id)a3
{
  v4 = a3;
  pthread_rwlock_wrlock(&self->rw_lock);
  v5 = [(CryptexSessionList *)self list];
  [v5 removeObject:v4];

  pthread_rwlock_unlock(&self->rw_lock);
}

- (id)findCryptexSession:(char *)a3
{
  pthread_rwlock_rdlock(&self->rw_lock);
  v5 = [(CryptexSessionList *)self list];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __41__CryptexSessionList_findCryptexSession___block_invoke;
  v10[3] = &__block_descriptor_40_e15_B32__0_8Q16_B24l;
  v10[4] = a3;
  v6 = [v5 indexOfObjectPassingTest:v10];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(CryptexSessionList *)self list];
    v7 = [v8 objectAtIndexedSubscript:v6];
  }

  pthread_rwlock_unlock(&self->rw_lock);

  return v7;
}

BOOL __41__CryptexSessionList_findCryptexSession___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copySessionName];
  v4 = strcmp(*(a1 + 32), v3) == 0;
  free(v3);
  return v4;
}

- (void)shutdownSession:(char *)a3 reason:(int64_t)a4 exitCode:(unint64_t)a5
{
  v9 = [(CryptexSessionList *)self findCryptexSession:?];
  v10 = v9;
  if (v9)
  {
    [v9 sessionStopWithReason:a4 exitCode:a5];
  }

  else
  {
    v11 = *__error();
    v12 = [(CryptexSessionList *)self log_handle];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315138;
      v14 = a3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "'Ignoring session shutdown for '%s': session gone.", &v13, 0xCu);
    }

    *__error() = v11;
  }
}

@end