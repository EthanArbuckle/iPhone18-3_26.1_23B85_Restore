@interface CARDictationResult
- (CARDictationResult)initWithText:(id)text;
@end

@implementation CARDictationResult

- (CARDictationResult)initWithText:(id)text
{
  textCopy = text;
  v9.receiver = self;
  v9.super_class = CARDictationResult;
  v6 = [(CARDictationResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transcription, text);
  }

  return v7;
}

@end