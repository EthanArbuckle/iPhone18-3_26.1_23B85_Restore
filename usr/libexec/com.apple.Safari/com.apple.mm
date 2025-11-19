uint64_t start(uint64_t a1, uint64_t a2)
{
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());

  return _WBSHistoryServiceMain(a1, a2);
}