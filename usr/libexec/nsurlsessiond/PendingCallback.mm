@interface PendingCallback
- (PendingCallback)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PendingCallback

- (PendingCallback)initWithCoder:(id)a3
{
  v4 = a3;
  -[PendingCallback setType:](self, "setType:", [v4 decodeIntegerForKey:@"type"]);
  -[PendingCallback setTaskIdentifier:](self, "setTaskIdentifier:", [v4 decodeIntegerForKey:@"taskIdentifier"]);
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"args"];
  [(PendingCallback *)self setArgs:v5];

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:-[PendingCallback type](self forKey:{"type"), @"type"}];
  [v5 encodeInteger:-[PendingCallback taskIdentifier](self forKey:{"taskIdentifier"), @"taskIdentifier"}];
  v4 = [(PendingCallback *)self args];
  [v5 encodeObject:v4 forKey:@"args"];
}

@end