@interface NFTagReadCALogger
- (NFTagReadCALogger)init;
@end

@implementation NFTagReadCALogger

- (NFTagReadCALogger)init
{
  v7.receiver = self;
  v7.super_class = NFTagReadCALogger;
  v2 = [(NFTagReadCALogger *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    tagReadEventDict = v2->_tagReadEventDict;
    v2->_tagReadEventDict = v3;

    currentTag = v2->_currentTag;
    v2->_currentTag = 0;

    v2->_tagReadStart = 0;
    v2->_tagBytesTx = 0;
    v2->_tagBytesRx = 0;
    v2->_tagCommandCount = 0;
    [(NSMutableDictionary *)v2->_tagReadEventDict removeAllObjects];
    [(NSMutableDictionary *)v2->_tagReadEventDict addEntriesFromDictionary:&off_100339EB8];
    sub_10024DBA0(v2);
  }

  return v2;
}

@end