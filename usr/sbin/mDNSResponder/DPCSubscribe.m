@interface DPCSubscribe
@end

@implementation DPCSubscribe

void ___DPCSubscribe_block_invoke(uint64_t a1, int a2)
{
  v4 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v4, v5, v6, v7, v8, v9, v10, v11);
  if (a2 == 1)
  {
    _Querier_HandleSubscriberInvalidation(*(*(*(a1 + 32) + 8) + 24));
    os_release(*(*(*(a1 + 32) + 8) + 24));
  }

  else if (a2 == 2)
  {
    _Querier_ApplyUpdate(*(*(*(a1 + 32) + 8) + 24));
  }

  KQueueUnlock("Subscriber event handler", v12, v13, v14, v15, v16, v17, v18);
}

@end