@interface AMSupportHttpURLSessionSendSyncNoRetry
@end

@implementation AMSupportHttpURLSessionSendSyncNoRetry

intptr_t ___AMSupportHttpURLSessionSendSyncNoRetry_block_invoke(void *a1, id a2, void *a3, void *a4)
{
  *(*(a1[5] + 8) + 40) = a2;
  *(*(a1[6] + 8) + 40) = [a3 allHeaderFields];
  *(*(a1[7] + 8) + 40) = a4;
  *(*(a1[8] + 8) + 24) = [a3 statusCode];
  v7 = a1[4];

  return dispatch_semaphore_signal(v7);
}

@end