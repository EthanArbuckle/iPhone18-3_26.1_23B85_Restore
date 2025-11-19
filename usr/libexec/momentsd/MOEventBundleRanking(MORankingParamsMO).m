@interface MOEventBundleRanking(MORankingParamsMO)
@end

@implementation MOEventBundleRanking(MORankingParamsMO)

- (void)setRankingParamsFromRankingParamsMO:()MORankingParamsMO .cold.1(os_log_t log)
{
  v1 = 136315394;
  v2 = "[MOEventBundleRanking(MORankingParamsMO) setRankingParamsFromRankingParamsMO:]";
  v3 = 1024;
  v4 = 23;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "MOEventBundleRanking was not initialized (in %s:%d)", &v1, 0x12u);
}

- (void)setRankingParamsFromRankingParamsMO:()MORankingParamsMO .cold.2(void *a1, NSObject *a2)
{
  v3 = 134218754;
  v4 = [a1 count];
  v5 = 2048;
  v6 = 16;
  v7 = 2080;
  v8 = "[MOEventBundleRanking(MORankingParamsMO) setRankingParamsFromRankingParamsMO:]";
  v9 = 1024;
  v10 = 45;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Mismatch between ranking modelParameterDict, %lu and bundle interface type, %lu (in %s:%d)", &v3, 0x26u);
}

@end