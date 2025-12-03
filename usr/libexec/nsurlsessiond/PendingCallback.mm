@interface PendingCallback
- (PendingCallback)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PendingCallback

- (PendingCallback)initWithCoder:(id)coder
{
  coderCopy = coder;
  -[PendingCallback setType:](self, "setType:", [coderCopy decodeIntegerForKey:@"type"]);
  -[PendingCallback setTaskIdentifier:](self, "setTaskIdentifier:", [coderCopy decodeIntegerForKey:@"taskIdentifier"]);
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"args"];
  [(PendingCallback *)self setArgs:v5];

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[PendingCallback type](self forKey:{"type"), @"type"}];
  [coderCopy encodeInteger:-[PendingCallback taskIdentifier](self forKey:{"taskIdentifier"), @"taskIdentifier"}];
  args = [(PendingCallback *)self args];
  [coderCopy encodeObject:args forKey:@"args"];
}

@end