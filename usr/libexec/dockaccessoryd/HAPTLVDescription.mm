@interface HAPTLVDescription
- (HAPTLVDescription)descriptionWithIndent:(id)indent;
- (id)description;
@end

@implementation HAPTLVDescription

- (HAPTLVDescription)descriptionWithIndent:(id)indent
{
  indentCopy = indent;
  v5 = [indentCopy indentationByLevels:1];
  v6 = +[NSMutableString string];
  indentCopy = [NSString stringWithFormat:@"\n%@{", indentCopy];
  [v6 appendString:indentCopy];

  [(HAPTLVDescription *)self description:v6 indent:v5];
  indentCopy2 = [NSString stringWithFormat:@"\n%@}", indentCopy];

  [v6 appendString:indentCopy2];

  return v6;
}

- (id)description
{
  v3 = +[HMFStringIndentation indentation];
  v4 = [(HAPTLVDescription *)self descriptionWithIndent:v3];

  return v4;
}

@end