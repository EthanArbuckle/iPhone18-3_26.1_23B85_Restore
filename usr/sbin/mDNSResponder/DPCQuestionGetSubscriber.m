@interface DPCQuestionGetSubscriber
@end

@implementation DPCQuestionGetSubscriber

BOOL ___DPCQuestionGetSubscriber_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(*(a2 + 64) + 96))
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

@end