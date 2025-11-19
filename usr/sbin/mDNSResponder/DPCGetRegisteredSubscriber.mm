@interface DPCGetRegisteredSubscriber
@end

@implementation DPCGetRegisteredSubscriber

BOOL ___DPCGetRegisteredSubscriber_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 136) == *(a1 + 48) && *(a2 + 138) == *(a1 + 50) && DomainNameEqual(*(*(a2 + 88) + 24), *(a1 + 40)))
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

@end