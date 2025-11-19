@interface CFErrorCopyTopLevelErrorWithDomain
@end

@implementation CFErrorCopyTopLevelErrorWithDomain

BOOL ___CFErrorCopyTopLevelErrorWithDomain_block_invoke(uint64_t a1, CFErrorRef err)
{
  Domain = CFErrorGetDomain(err);
  v5 = CFEqual(Domain, *(a1 + 40));
  if (v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = CFRetain(err);
  }

  return v5 == 0;
}

@end