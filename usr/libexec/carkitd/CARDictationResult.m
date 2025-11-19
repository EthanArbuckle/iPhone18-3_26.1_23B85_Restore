@interface CARDictationResult
- (CARDictationResult)initWithText:(id)a3;
@end

@implementation CARDictationResult

- (CARDictationResult)initWithText:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CARDictationResult;
  v6 = [(CARDictationResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transcription, a3);
  }

  return v7;
}

@end