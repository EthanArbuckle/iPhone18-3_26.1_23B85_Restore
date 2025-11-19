@interface UARPTatsuTicket
- (UARPTatsuTicket)initWithTicketDictionary:(id)a3;
- (id)description;
@end

@implementation UARPTatsuTicket

- (UARPTatsuTicket)initWithTicketDictionary:(id)a3
{
  v4 = a3;
  v60.receiver = self;
  v60.super_class = UARPTatsuTicket;
  v5 = [(UARPTatsuTicket *)&v60 init];
  if (!v5)
  {
    goto LABEL_47;
  }

  v6 = +[NSUUID UUID];
  uuid = v5->_uuid;
  v5->_uuid = v6;

  v8 = [v4 objectForKeyedSubscript:@"Ticket Name"];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      ticketName = v5->_ticketName;
      v5->_ticketName = v9;

      v11 = objc_opt_new();
      manifestProperties = v5->_manifestProperties;
      v5->_manifestProperties = v11;

      v13 = [v4 objectForKeyedSubscript:@"Manifest Properties"];
      if (v13)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v56 objects:v63 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v57;
            while (2)
            {
              v18 = 0;
              do
              {
                if (*v57 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = [[UARPTatsuManifestProperties alloc] initWithManifestPropertyDictionary:*(*(&v56 + 1) + 8 * v18)];
                if (!v19)
                {

                  goto LABEL_38;
                }

                v20 = v19;
                [(NSMutableArray *)v5->_manifestProperties addObject:v19];

                v18 = v18 + 1;
              }

              while (v16 != v18);
              v16 = [v14 countByEnumeratingWithState:&v56 objects:v63 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

          v21 = objc_opt_new();
          objectProperties = v5->_objectProperties;
          v5->_objectProperties = v21;

          v23 = [v4 objectForKeyedSubscript:@"Object Properties"];
          if (!v23 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
LABEL_41:

LABEL_42:
            goto LABEL_39;
          }

          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          obj = v23;
          v24 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v53;
            while (2)
            {
              v27 = 0;
              do
              {
                if (*v53 != v26)
                {
                  objc_enumerationMutation(obj);
                }

                v28 = [[UARPTatsuObjectProperties alloc] initWithObjectPropertyDictionary:*(*(&v52 + 1) + 8 * v27)];
                if (!v28)
                {

                  goto LABEL_41;
                }

                v29 = v28;
                [(NSMutableArray *)v5->_objectProperties addObject:v28];

                v27 = v27 + 1;
              }

              while (v25 != v27);
              v25 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
              if (v25)
              {
                continue;
              }

              break;
            }
          }

          v30 = objc_opt_new();
          ftabProperties = v5->_ftabProperties;
          v5->_ftabProperties = v30;

          v32 = [v4 objectForKeyedSubscript:@"FTAB Properties"];
          if (v32)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
LABEL_50:

              goto LABEL_42;
            }

            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v46 = v32;
            v33 = v32;
            v34 = [v33 countByEnumeratingWithState:&v48 objects:v61 count:16];
            if (v34)
            {
              v35 = v34;
              v36 = *v49;
              while (2)
              {
                v37 = 0;
                do
                {
                  if (*v49 != v36)
                  {
                    objc_enumerationMutation(v33);
                  }

                  v38 = [[UARPTatsuFTABProperties alloc] initWithFTABPropertyDictionary:*(*(&v48 + 1) + 8 * v37)];
                  if (!v38)
                  {

                    v32 = v46;
                    goto LABEL_50;
                  }

                  v39 = v38;
                  [(NSMutableArray *)v5->_ftabProperties addObject:v38];

                  v37 = v37 + 1;
                }

                while (v35 != v37);
                v35 = [v33 countByEnumeratingWithState:&v48 objects:v61 count:16];
                if (v35)
                {
                  continue;
                }

                break;
              }
            }

            v32 = v46;
          }

          v40 = [v4 objectForKeyedSubscript:{@"Manifest Location", v46}];
          if (v40)
          {
            v41 = v40;
          }

          else
          {
            v41 = [v4 objectForKeyedSubscript:@"Manifest Destination"];
            if (!v41)
            {
LABEL_49:

              goto LABEL_50;
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v43 = [[UARPTatsuManifestLocation alloc] initWithDictionary:v41];
            manifestLocation = v5->_manifestLocation;
            v5->_manifestLocation = v43;

LABEL_47:
            v42 = v5;
            goto LABEL_48;
          }

          goto LABEL_49;
        }
      }

LABEL_38:
    }
  }

LABEL_39:

  v42 = 0;
LABEL_48:

  return v42;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = v3;
  if (self->_manifestProperties)
  {
    [v3 appendFormat:@"+++++++++++++++++++\n"];
    [v4 appendFormat:@"%@:\n", @"Manifest Properties"];
    [v4 appendFormat:@"+++++++++++++++++++\n"];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v5 = self->_manifestProperties;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v36;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v35 + 1) + 8 * i) description];
          [v4 appendFormat:@"%@\n", v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v7);
    }

    [v4 appendFormat:@"\n"];
  }

  if (self->_objectProperties)
  {
    [v4 appendFormat:@"+++++++++++++++++\n"];
    [v4 appendFormat:@"%@:\n", @"Object Properties"];
    [v4 appendFormat:@"+++++++++++++++++\n"];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = self->_objectProperties;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      do
      {
        for (j = 0; j != v13; j = j + 1)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v31 + 1) + 8 * j) description];
          [v4 appendFormat:@"%@\n", v16];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v13);
    }

    [v4 appendFormat:@"\n"];
  }

  ftabProperties = self->_ftabProperties;
  if (ftabProperties && [(NSMutableArray *)ftabProperties count])
  {
    [v4 appendFormat:@"++++++++++++++++\n"];
    [v4 appendFormat:@"%@:\n", @"FTAB Properties"];
    [v4 appendFormat:@"++++++++++++++++\n"];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v18 = self->_ftabProperties;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v27 objects:v39 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      do
      {
        for (k = 0; k != v20; k = k + 1)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v27 + 1) + 8 * k) description];
          [v4 appendFormat:@"%@\n", v23];
        }

        v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v27 objects:v39 count:16];
      }

      while (v20);
    }

    [v4 appendFormat:@"\n"];
  }

  if (self->_manifestLocation)
  {
    [v4 appendFormat:@"+++++++++++++++++\n"];
    [v4 appendFormat:@"%@:\n", @"Manifest Location"];
    [v4 appendFormat:@"+++++++++++++++++\n"];
    v24 = [(UARPTatsuManifestLocation *)self->_manifestLocation description];
    [v4 appendFormat:@"%@\n", v24];

    [v4 appendFormat:@"\n"];
  }

  v25 = [NSString stringWithString:v4];

  return v25;
}

@end