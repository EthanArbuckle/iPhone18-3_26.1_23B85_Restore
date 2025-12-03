@interface SECC2MPServerInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SECC2MPServerInfo

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[4])
  {
    [(SECC2MPServerInfo *)self setServiceName:?];
  }

  if (fromCopy[1])
  {
    [(SECC2MPServerInfo *)self setPartition:?];
  }

  if (fromCopy[2])
  {
    [(SECC2MPServerInfo *)self setServiceBuild:?];
  }

  if (fromCopy[3])
  {
    [(SECC2MPServerInfo *)self setServiceInstance:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_serviceName hash];
  v4 = [(NSString *)self->_partition hash]^ v3;
  v5 = [(NSString *)self->_serviceBuild hash];
  return v4 ^ v5 ^ [(NSString *)self->_serviceInstance hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((serviceName = self->_serviceName, !(serviceName | equalCopy[4])) || -[NSString isEqual:](serviceName, "isEqual:")) && ((partition = self->_partition, !(partition | equalCopy[1])) || -[NSString isEqual:](partition, "isEqual:")) && ((serviceBuild = self->_serviceBuild, !(serviceBuild | equalCopy[2])) || -[NSString isEqual:](serviceBuild, "isEqual:")))
  {
    serviceInstance = self->_serviceInstance;
    if (serviceInstance | equalCopy[3])
    {
      v9 = [(NSString *)serviceInstance isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_serviceName copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_partition copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_serviceBuild copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_serviceInstance copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_serviceName)
  {
    [toCopy setServiceName:?];
    toCopy = v5;
  }

  if (self->_partition)
  {
    [v5 setPartition:?];
    toCopy = v5;
  }

  if (self->_serviceBuild)
  {
    [v5 setServiceBuild:?];
    toCopy = v5;
  }

  if (self->_serviceInstance)
  {
    [v5 setServiceInstance:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_serviceName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_partition)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_serviceBuild)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_serviceInstance)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  serviceName = self->_serviceName;
  if (serviceName)
  {
    [v3 setObject:serviceName forKey:@"service_name"];
  }

  partition = self->_partition;
  if (partition)
  {
    [v4 setObject:partition forKey:@"partition"];
  }

  serviceBuild = self->_serviceBuild;
  if (serviceBuild)
  {
    [v4 setObject:serviceBuild forKey:@"service_build"];
  }

  serviceInstance = self->_serviceInstance;
  if (serviceInstance)
  {
    [v4 setObject:serviceInstance forKey:@"service_instance"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SECC2MPServerInfo;
  v3 = [(SECC2MPServerInfo *)&v7 description];
  dictionaryRepresentation = [(SECC2MPServerInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end