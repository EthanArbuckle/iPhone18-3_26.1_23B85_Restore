@interface CryptexSessionList
+ (id)createCryptexSessionList;
+ (id)sharedList;
- (id)findCryptexSession:(char *)session;
- (void)addCryptexSession:(id)session;
- (void)removeCryptexSession:(id)session;
- (void)shutdownSession:(char *)session reason:(int64_t)reason exitCode:(unint64_t)code;
@end

@implementation CryptexSessionList

+ (id)createCryptexSessionList
{
  v2 = objc_alloc_init(self);
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

- (void)addCryptexSession:(id)session
{
  sessionCopy = session;
  pthread_rwlock_wrlock(&self->rw_lock);
  list = [(CryptexSessionList *)self list];
  [list addObject:sessionCopy];

  pthread_rwlock_unlock(&self->rw_lock);
}

- (void)removeCryptexSession:(id)session
{
  sessionCopy = session;
  pthread_rwlock_wrlock(&self->rw_lock);
  list = [(CryptexSessionList *)self list];
  [list removeObject:sessionCopy];

  pthread_rwlock_unlock(&self->rw_lock);
}

- (id)findCryptexSession:(char *)session
{
  pthread_rwlock_rdlock(&self->rw_lock);
  list = [(CryptexSessionList *)self list];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __41__CryptexSessionList_findCryptexSession___block_invoke;
  v10[3] = &__block_descriptor_40_e15_B32__0_8Q16_B24l;
  v10[4] = session;
  v6 = [list indexOfObjectPassingTest:v10];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    list2 = [(CryptexSessionList *)self list];
    v7 = [list2 objectAtIndexedSubscript:v6];
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

- (void)shutdownSession:(char *)session reason:(int64_t)reason exitCode:(unint64_t)code
{
  v9 = [(CryptexSessionList *)self findCryptexSession:?];
  v10 = v9;
  if (v9)
  {
    [v9 sessionStopWithReason:reason exitCode:code];
  }

  else
  {
    v11 = *__error();
    log_handle = [(CryptexSessionList *)self log_handle];
    if (os_log_type_enabled(log_handle, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315138;
      sessionCopy = session;
      _os_log_impl(&_mh_execute_header, log_handle, OS_LOG_TYPE_DEBUG, "'Ignoring session shutdown for '%s': session gone.", &v13, 0xCu);
    }

    *__error() = v11;
  }
}

@end