@interface HAPTLVDescription
- (HAPTLVDescription)descriptionWithIndent:(id)a3;
- (id)description;
@end

@implementation HAPTLVDescription

- (HAPTLVDescription)descriptionWithIndent:(id)a3
{
  v4 = a3;
  v5 = [v4 indentationByLevels:1];
  v6 = +[NSMutableString string];
  v7 = [NSString stringWithFormat:@"\n%@{", v4];
  [v6 appendString:v7];

  [(HAPTLVDescription *)self description:v6 indent:v5];
  v8 = [NSString stringWithFormat:@"\n%@}", v4];

  [v6 appendString:v8];

  return v6;
}

- (id)description
{
  v3 = +[HMFStringIndentation indentation];
  v4 = [(HAPTLVDescription *)self descriptionWithIndent:v3];

  return v4;
}

@end