@interface DiskSupport
+ (id)sharedInstance;
- (BOOL)removeFSItem:(id)a3 error:(id *)a4;
- (BOOL)traverseFolderAndRemoveItems:(id)a3 exceptions:(id)a4;
- (DiskSupport)init;
@end

@implementation DiskSupport

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000045F8;
  block[3] = &unk_100028C38;
  block[4] = a1;
  if (qword_10002EA10 != -1)
  {
    dispatch_once(&qword_10002EA10, block);
  }

  return qword_10002EA08;
}

- (DiskSupport)init
{
  v3.receiver = self;
  v3.super_class = DiskSupport;
  result = [(DiskSupport *)&v3 init];
  if (result)
  {
    result->_dryRunOnly = 0;
  }

  return result;
}

- (BOOL)traverseFolderAndRemoveItems:(id)a3 exceptions:(id)a4
{
  v6 = [objc_msgSend(a4 objectForKeyedSubscript:{off_10002C2E0), "isEqualToString:", @"remove"}];
  obj = [+[NSFileManager defaultManager](NSFileManager contentsOfDirectoryAtPath:"contentsOfDirectoryAtPath:error:" error:a3, 0];
  v7 = &IOMobileFramebufferCreateDisplayList_ptr;
  v8 = "Keeping";
  v157 = v6;
  if (v6)
  {
    v8 = "Removing";
  }

  v9 = [NSString stringWithFormat:@"%s the contents of '%@' (exceptionList: %@)", v8, a3, a4];
  v10 = CFStringCreateWithFormat(0, 0, @"%@", v9);
  if (v10)
  {
    v11 = v10;
    CStringPtr = CFStringGetCStringPtr(v10, 0x8000100u);
    if (CStringPtr)
    {
      v13 = CStringPtr;
    }

    else
    {
      v13 = "<error getting string>";
    }

    sub_1000018A4(1, "%s: %s", "[DiskSupport traverseFolderAndRemoveItems:exceptions:]", v13);
    CFRelease(v11);
  }

  else
  {
    sub_1000018A4(1, "%s: %s", "[DiskSupport traverseFolderAndRemoveItems:exceptions:]", "<error getting string>");
  }

  free(v9);
  v201 = 0u;
  v202 = 0u;
  v199 = 0u;
  v200 = 0u;
  v163 = [(NSArray *)obj countByEnumeratingWithState:&v199 objects:v212 count:16];
  if (!v163)
  {
    return 1;
  }

  v14 = &IOMobileFramebufferCreateDisplayList_ptr;
  v162 = *v200;
  v167 = a3;
  while (2)
  {
    v15 = 0;
    do
    {
      if (*v200 != v162)
      {
        objc_enumerationMutation(obj);
      }

      v168 = v15;
      v16 = *(*(&v199 + 1) + 8 * v15);
      v169 = [v7[333] pathWithComponents:{objc_msgSend(v14[342], "arrayWithObjects:", a3, v16, 0)}];
      v17 = [a4 objectForKeyedSubscript:v16];
      if (v17)
      {
LABEL_42:
        v37 = [v7[333] stringWithFormat:@"Found exception '%@' for '%@'", v17, v16, v156];
      }

      else
      {
        v197 = 0u;
        v198 = 0u;
        v195 = 0u;
        v196 = 0u;
        v18 = [a4 countByEnumeratingWithState:&v195 objects:v211 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v196;
          while (2)
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v196 != v20)
              {
                objc_enumerationMutation(a4);
              }

              v22 = *(*(&v195 + 1) + 8 * i);
              if (![v22 rangeOfString:{objc_msgSend(v7[333], "stringWithFormat:", @"%@/", v16)}])
              {
                v31 = [v7[333] stringWithFormat:@"==> auto-traverse due to '%@'", objc_msgSend(v22, "substringWithRange:", v23, objc_msgSend(v22, "length") - v23)];
                v32 = CFStringCreateWithFormat(0, 0, @"%@", v31);
                if (v32)
                {
                  v33 = v32;
                  v34 = CFStringGetCStringPtr(v32, 0x8000100u);
                  v35 = "<error getting string>";
                  if (v34)
                  {
                    v35 = v34;
                  }

                  sub_1000018A4(1, "%s: %s", "[DiskSupport traverseFolderAndRemoveItems:exceptions:]", v35);
                  CFRelease(v33);
                }

                else
                {
                  sub_1000018A4(1, "%s: %s", "[DiskSupport traverseFolderAndRemoveItems:exceptions:]", "<error getting string>");
                }

                free(v31);
                v17 = @"traverse";
                goto LABEL_42;
              }
            }

            v19 = [a4 countByEnumeratingWithState:&v195 objects:v211 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

        v193 = 0u;
        v194 = 0u;
        v191 = 0u;
        v192 = 0u;
        v24 = [a4 countByEnumeratingWithState:&v191 objects:v210 count:16];
        if (!v24)
        {
LABEL_31:
          a3 = v167;
          v14 = &IOMobileFramebufferCreateDisplayList_ptr;
          v30 = v169;
          if ((v157 & 1) == 0)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        }

        v25 = v24;
        v26 = *v192;
LABEL_25:
        v27 = 0;
        while (1)
        {
          if (*v192 != v26)
          {
            objc_enumerationMutation(a4);
          }

          v28 = *(*(&v191 + 1) + 8 * v27);
          -[NSRegularExpression rangeOfFirstMatchInString:options:range:](+[NSRegularExpression regularExpressionWithPattern:options:error:](NSRegularExpression, "regularExpressionWithPattern:options:error:", v28, 0, 0), "rangeOfFirstMatchInString:options:range:", v16, 0, 0, [v16 length]);
          if (v29 == [v16 length])
          {
            break;
          }

          if (v25 == ++v27)
          {
            v25 = [a4 countByEnumeratingWithState:&v191 objects:v210 count:16];
            if (v25)
            {
              goto LABEL_25;
            }

            goto LABEL_31;
          }
        }

        v36 = [a4 objectForKeyedSubscript:v28];
        if (!v36)
        {
          a3 = v167;
          v14 = &IOMobileFramebufferCreateDisplayList_ptr;
          v30 = v169;
          if (v157)
          {
            goto LABEL_68;
          }

          goto LABEL_69;
        }

        v17 = v36;
        if (!v28)
        {
          goto LABEL_42;
        }

        v37 = [v7[333] stringWithFormat:@"Found regexp-exception '%@' for '%@', regexp '%@'", v36, v16, v28];
      }

      v38 = v37;
      v39 = CFStringCreateWithFormat(0, 0, @"%@", v37);
      if (v39)
      {
        v40 = v39;
        v41 = CFStringGetCStringPtr(v39, 0x8000100u);
        v42 = "<error getting string>";
        if (v41)
        {
          v42 = v41;
        }

        sub_1000018A4(1, "%s: %s", "[DiskSupport traverseFolderAndRemoveItems:exceptions:]", v42);
        CFRelease(v40);
      }

      else
      {
        sub_1000018A4(1, "%s: %s", "[DiskSupport traverseFolderAndRemoveItems:exceptions:]", "<error getting string>");
      }

      free(v38);
      v43 = [(__CFString *)v17 isEqualToString:@"remove"];
      v44 = "removed";
      if (v43)
      {
        goto LABEL_61;
      }

      v45 = [(__CFString *)v17 isEqualToString:@"keep"];
      v44 = "kept";
      if (v45)
      {
        goto LABEL_61;
      }

      if ([(__CFString *)v17 isEqualToString:@"traverse"])
      {
        v164 = v43;
        v46 = objc_alloc_init(NSMutableDictionary);
        v47 = [a4 objectForKeyedSubscript:off_10002C2E0];
        [v46 setObject:v47 forKey:off_10002C2E0];
        v189 = 0u;
        v190 = 0u;
        v187 = 0u;
        v188 = 0u;
        v48 = [a4 countByEnumeratingWithState:&v187 objects:v209 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v188;
          do
          {
            for (j = 0; j != v49; j = j + 1)
            {
              if (*v188 != v50)
              {
                objc_enumerationMutation(a4);
              }

              v52 = *(*(&v187 + 1) + 8 * j);
              if (![v52 rangeOfString:{objc_msgSend(v16, "stringByAppendingString:", @"/"}])
              {
                [v46 setObject:objc_msgSend(a4 forKey:{"objectForKeyedSubscript:", v52), objc_msgSend(v52, "substringWithRange:", v53, objc_msgSend(v52, "length") - v53)}];
              }
            }

            v49 = [a4 countByEnumeratingWithState:&v187 objects:v209 count:16];
          }

          while (v49);
        }

        [+[DiskSupport sharedInstance](DiskSupport traverseFolderAndRemoveItems:"traverseFolderAndRemoveItems:exceptions:" exceptions:v169, v46];
        v44 = "kept";
        v7 = &IOMobileFramebufferCreateDisplayList_ptr;
        v43 = v164;
LABEL_61:
        v54 = [v7[333] stringWithFormat:@"According to rules, '%@' will be %s", v16, v44];
        v55 = CFStringCreateWithFormat(0, 0, @"%@", v54);
        v30 = v169;
        if (v55)
        {
          v56 = v55;
          v57 = CFStringGetCStringPtr(v55, 0x8000100u);
          if (v57)
          {
            v58 = v57;
          }

          else
          {
            v58 = "<error getting string>";
          }

          sub_1000018A4(1, "%s: %s", "[DiskSupport traverseFolderAndRemoveItems:exceptions:]", v58);
          CFRelease(v56);
        }

        else
        {
          sub_1000018A4(1, "%s: %s", "[DiskSupport traverseFolderAndRemoveItems:exceptions:]", "<error getting string>");
        }

        a3 = v167;
        v14 = &IOMobileFramebufferCreateDisplayList_ptr;
        free(v54);
        if ((v43 & 1) == 0)
        {
          goto LABEL_69;
        }

LABEL_68:
        v170 = 0;
        if (![(DiskSupport *)self removeFSItem:v30 error:&v170])
        {
          v143 = [v7[333] stringWithFormat:@"Error: Failed to delete '%@' with error %@!", v30, v170];
          v148 = CFStringCreateWithFormat(0, 0, @"%@", v143);
          if (!v148)
          {
            goto LABEL_161;
          }

          v145 = v148;
          v149 = CFStringGetCStringPtr(v148, 0x8000100u);
          if (v149)
          {
            v150 = v149;
          }

          else
          {
            v150 = "<error getting string>";
          }

LABEL_158:
          sub_1000018A4(1, "%s: %s", "[DiskSupport traverseFolderAndRemoveItems:exceptions:]", v150);
LABEL_159:
          CFRelease(v145);
          goto LABEL_162;
        }

        goto LABEL_69;
      }

      if ([(__CFString *)v17 hasPrefix:@"removeExcept /"])
      {
        v59 = objc_alloc_init(NSMutableDictionary);
        v60 = [NSRegularExpression regularExpressionWithPattern:@"/([^/]+)/[ \t]*([^ \t/]*)" options:0 error:0];
        v61 = -[__CFString substringFromIndex:](v17, "substringFromIndex:", [@"removeExcept " length]);
        v62 = v59;
        [v59 setObject:@"remove" forKey:off_10002C2E0];
        v185 = 0u;
        v186 = 0u;
        v183 = 0u;
        v184 = 0u;
        v63 = v61;
        v159 = -[NSRegularExpression matchesInString:options:range:](v60, "matchesInString:options:range:", v61, 0, 0, [v61 length]);
        v64 = [(NSArray *)v159 countByEnumeratingWithState:&v183 objects:v208 count:16];
        if (v64)
        {
          v65 = v64;
          v165 = *v184;
          while (2)
          {
            for (k = 0; k != v65; k = k + 1)
            {
              if (*v184 != v165)
              {
                objc_enumerationMutation(v159);
              }

              v67 = *(*(&v183 + 1) + 8 * k);
              [v67 rangeAtIndex:2];
              if (v68)
              {
                v139 = v7[333];
                v140 = [v67 rangeAtIndex:2];
                v142 = [v139 stringWithFormat:@"Exception '%@' for '%@' is ill-formatted - found extra string '%@' or missing '/'!", v63, v16, objc_msgSend(v63, "substringWithRange:", v140, v141)];
                goto LABEL_148;
              }

              v69 = [v67 rangeAtIndex:1];
              v71 = [v63 substringWithRange:{v69, v70}];
              v72 = [a4 objectForKeyedSubscript:{objc_msgSend(v7[333], "stringWithFormat:", @"%@/%@", v16, v71)}];
              if (v72)
              {
                v73 = v72;
                v156 = v72;
                v74 = [v7[333] stringWithFormat:@"==> removeExcept for '%@/%@' has rule '%@', using it instead of 'keep'", v16, v71];
                v75 = CFStringCreateWithFormat(0, 0, @"%@", v74);
                if (v75)
                {
                  v76 = v75;
                  v77 = CFStringGetCStringPtr(v75, 0x8000100u);
                  if (v77)
                  {
                    v78 = v77;
                  }

                  else
                  {
                    v78 = "<error getting string>";
                  }

                  sub_1000018A4(1, "%s: %s", "[DiskSupport traverseFolderAndRemoveItems:exceptions:]", v78);
                  CFRelease(v76);
                }

                else
                {
                  sub_1000018A4(1, "%s: %s", "[DiskSupport traverseFolderAndRemoveItems:exceptions:]", "<error getting string>");
                }

                free(v74);
                v7 = &IOMobileFramebufferCreateDisplayList_ptr;
              }

              else
              {
                v73 = @"keep";
              }

              [v62 setObject:v73 forKey:v71];
            }

            v65 = [(NSArray *)v159 countByEnumeratingWithState:&v183 objects:v208 count:16];
            if (v65)
            {
              continue;
            }

            break;
          }
        }

        v181 = 0u;
        v182 = 0u;
        v179 = 0u;
        v180 = 0u;
        v79 = [a4 countByEnumeratingWithState:&v179 objects:v207 count:16];
        if (v79)
        {
          v80 = v79;
          v81 = *v180;
          do
          {
            for (m = 0; m != v80; m = m + 1)
            {
              if (*v180 != v81)
              {
                objc_enumerationMutation(a4);
              }

              v83 = *(*(&v179 + 1) + 8 * m);
              if (![v83 rangeOfString:{objc_msgSend(v7[333], "stringWithFormat:", @"%@/", v16)}])
              {
                v85 = v84;
                v86 = [v83 length] - v84;
                v87 = [a4 objectForKeyedSubscript:v83];
                v88 = v86;
                v7 = &IOMobileFramebufferCreateDisplayList_ptr;
                [v62 setObject:v87 forKey:{objc_msgSend(v83, "substringWithRange:", v85, v88)}];
              }
            }

            v80 = [a4 countByEnumeratingWithState:&v179 objects:v207 count:16];
          }

          while (v80);
        }

LABEL_98:
        [+[DiskSupport sharedInstance](DiskSupport traverseFolderAndRemoveItems:"traverseFolderAndRemoveItems:exceptions:" exceptions:v169, v62];
        a3 = v167;
        v14 = &IOMobileFramebufferCreateDisplayList_ptr;
        goto LABEL_69;
      }

      if ([(__CFString *)v17 hasPrefix:@"removeExcept "])
      {
        v89 = objc_alloc_init(NSMutableDictionary);
        [v89 setObject:@"remove" forKey:off_10002C2E0];
        v90 = [(__CFString *)v17 rangeOfString:@"/"];
        v91 = -[__CFString substringFromIndex:](v17, "substringFromIndex:", [@"removeExcept " length]);
        v92 = v91;
        if (v90 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v93 = [v91 componentsSeparatedByString:@"/"];
          v94 = [v93 count];
          if ((v94 - 2) >= 0)
          {
            v95 = v94 - 1;
            do
            {
              v96 = [v7[333] pathWithComponents:{objc_msgSend(v93, "subarrayWithRange:", 0, v95)}];
              v97 = v7[333];
              v206[0] = v167;
              v206[1] = v16;
              v206[2] = v96;
              v98 = [v97 pathWithComponents:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v206, 3)}];
              [v89 setObject:@"keep" forKey:{objc_msgSend(v93, "objectAtIndexedSubscript:", v95)}];
              [+[DiskSupport sharedInstance](DiskSupport traverseFolderAndRemoveItems:"traverseFolderAndRemoveItems:exceptions:" exceptions:v98, v89];
              [v89 removeObjectForKey:{objc_msgSend(v93, "objectAtIndexedSubscript:", v95--)}];
            }

            while (v95);
          }

          v92 = [v93 objectAtIndexedSubscript:0];
        }

        v99 = v89;
        v100 = @"keep";
      }

      else
      {
        if ([(__CFString *)v17 hasPrefix:@"keepExcept /"])
        {
          v62 = objc_alloc_init(NSMutableDictionary);
          v101 = [NSRegularExpression regularExpressionWithPattern:@"/([^/]+)/ *" options:0 error:0];
          v102 = -[__CFString substringFromIndex:](v17, "substringFromIndex:", [@"keepExcept " length]);
          [v62 setObject:@"keep" forKey:off_10002C2E0];
          v177 = 0u;
          v178 = 0u;
          v175 = 0u;
          v176 = 0u;
          v166 = v102;
          v103 = -[NSRegularExpression matchesInString:options:range:](v101, "matchesInString:options:range:", v102, 0, 0, [v102 length]);
          v104 = [(NSArray *)v103 countByEnumeratingWithState:&v175 objects:v205 count:16];
          if (v104)
          {
            v105 = v104;
            v160 = *v176;
LABEL_111:
            v106 = 0;
            while (1)
            {
              if (*v176 != v160)
              {
                objc_enumerationMutation(v103);
              }

              v107 = *(*(&v175 + 1) + 8 * v106);
              [v107 rangeAtIndex:2];
              if (v108)
              {
                break;
              }

              v109 = [v107 rangeAtIndex:1];
              v111 = [v166 substringWithRange:{v109, v110}];
              v112 = [a4 objectForKeyedSubscript:{objc_msgSend(v7[333], "stringWithFormat:", @"%@/%@", v16, v111)}];
              if (v112)
              {
                v113 = v112;
                v156 = v112;
                v114 = [v7[333] stringWithFormat:@"==> keepExcept for '%@/%@' has rule '%@', using it instead of 'remove'", v16, v111];
                v115 = CFStringCreateWithFormat(0, 0, @"%@", v114);
                if (v115)
                {
                  v116 = v115;
                  v117 = CFStringGetCStringPtr(v115, 0x8000100u);
                  if (v117)
                  {
                    v118 = v117;
                  }

                  else
                  {
                    v118 = "<error getting string>";
                  }

                  sub_1000018A4(1, "%s: %s", "[DiskSupport traverseFolderAndRemoveItems:exceptions:]", v118);
                  CFRelease(v116);
                }

                else
                {
                  sub_1000018A4(1, "%s: %s", "[DiskSupport traverseFolderAndRemoveItems:exceptions:]", "<error getting string>");
                }

                free(v114);
                v7 = &IOMobileFramebufferCreateDisplayList_ptr;
              }

              else
              {
                v113 = @"remove";
              }

              [v62 setObject:v113 forKey:v111];
              if (v105 == ++v106)
              {
                v105 = [(NSArray *)v103 countByEnumeratingWithState:&v175 objects:v205 count:16];
                if (v105)
                {
                  goto LABEL_111;
                }

                goto LABEL_126;
              }
            }

            v151 = v7[333];
            v152 = [v107 rangeAtIndex:2];
            v142 = [v151 stringWithFormat:@"Exception '%@' for '%@' is ill-formatted - found extra string '%@' or missing '/'!", v166, v16, objc_msgSend(v166, "substringWithRange:", v152, v153)];
LABEL_148:
            v143 = v142;
            v144 = CFStringCreateWithFormat(0, 0, @"%@", v142);
            if (v144)
            {
              v145 = v144;
              v146 = CFStringGetCStringPtr(v144, 0x8000100u);
              if (v146)
              {
                v147 = v146;
              }

              else
              {
                v147 = "<error getting string>";
              }

              sub_1000018A4(1, "%s: %s", "[DiskSupport traverseFolderAndRemoveItems:exceptions:]", v147);
              goto LABEL_159;
            }

            goto LABEL_161;
          }

LABEL_126:
          v173 = 0u;
          v174 = 0u;
          v171 = 0u;
          v172 = 0u;
          v119 = [a4 countByEnumeratingWithState:&v171 objects:v204 count:16];
          if (v119)
          {
            v120 = v119;
            v121 = *v172;
            do
            {
              for (n = 0; n != v120; n = n + 1)
              {
                if (*v172 != v121)
                {
                  objc_enumerationMutation(a4);
                }

                v123 = *(*(&v171 + 1) + 8 * n);
                if (![v123 rangeOfString:{objc_msgSend(v7[333], "stringWithFormat:", @"%@/", v16)}])
                {
                  v125 = v124;
                  v126 = [v123 length] - v124;
                  v127 = [a4 objectForKeyedSubscript:v123];
                  v128 = v126;
                  v7 = &IOMobileFramebufferCreateDisplayList_ptr;
                  [v62 setObject:v127 forKey:{objc_msgSend(v123, "substringWithRange:", v125, v128)}];
                }
              }

              v120 = [a4 countByEnumeratingWithState:&v171 objects:v204 count:16];
            }

            while (v120);
          }

          goto LABEL_98;
        }

        if (![(__CFString *)v17 hasPrefix:@"keepExcept "])
        {
          v143 = [v7[333] stringWithFormat:@"Exception '%@' for '%@' is ill-formatted!", v17, v16];
          v154 = CFStringCreateWithFormat(0, 0, @"%@", v143);
          if (v154)
          {
            v145 = v154;
            v155 = CFStringGetCStringPtr(v154, 0x8000100u);
            v150 = "<error getting string>";
            if (v155)
            {
              v150 = v155;
            }

            goto LABEL_158;
          }

LABEL_161:
          sub_1000018A4(1, "%s: %s", "[DiskSupport traverseFolderAndRemoveItems:exceptions:]", "<error getting string>");
LABEL_162:
          free(v143);
          return 0;
        }

        v89 = objc_alloc_init(NSMutableDictionary);
        [v89 setObject:@"keep" forKey:off_10002C2E0];
        v129 = [(__CFString *)v17 rangeOfString:@"/"];
        v130 = -[__CFString substringFromIndex:](v17, "substringFromIndex:", [@"keepExcept " length]);
        v92 = v130;
        if (v129 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v131 = [v130 componentsSeparatedByString:@"/"];
          v132 = [v131 count];
          if ((v132 - 2) >= 0)
          {
            v133 = v132 - 1;
            do
            {
              v134 = [v7[333] pathWithComponents:{objc_msgSend(v131, "subarrayWithRange:", 0, v133)}];
              v135 = v7[333];
              v203[0] = v167;
              v203[1] = v16;
              v203[2] = v134;
              v136 = [v135 pathWithComponents:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v203, 3)}];
              [v89 setObject:@"remove" forKey:{objc_msgSend(v131, "objectAtIndexedSubscript:", v133)}];
              [+[DiskSupport sharedInstance](DiskSupport traverseFolderAndRemoveItems:"traverseFolderAndRemoveItems:exceptions:" exceptions:v136, v89];
              [v89 removeObjectForKey:{objc_msgSend(v131, "objectAtIndexedSubscript:", v133--)}];
            }

            while (v133);
          }

          v92 = [v131 objectAtIndexedSubscript:0];
        }

        v99 = v89;
        v100 = @"remove";
      }

      [v99 setObject:v100 forKey:v92];
      [+[DiskSupport sharedInstance](DiskSupport traverseFolderAndRemoveItems:"traverseFolderAndRemoveItems:exceptions:" exceptions:v169, v89];
      a3 = v167;
      v14 = &IOMobileFramebufferCreateDisplayList_ptr;
LABEL_69:
      v15 = v168 + 1;
    }

    while ((v168 + 1) != v163);
    v137 = [(NSArray *)obj countByEnumeratingWithState:&v199 objects:v212 count:16];
    result = 1;
    v163 = v137;
    if (v137)
    {
      continue;
    }

    return result;
  }
}

- (BOOL)removeFSItem:(id)a3 error:(id *)a4
{
  v7 = [NSString stringWithFormat:@"Deleting FS item '%@'", a3];
  v8 = CFStringCreateWithFormat(0, 0, @"%@", v7);
  if (v8)
  {
    v9 = v8;
    CStringPtr = CFStringGetCStringPtr(v8, 0x8000100u);
    v11 = "<error getting string>";
    if (CStringPtr)
    {
      v11 = CStringPtr;
    }

    sub_1000018A4(1, "%s: %s", "[DiskSupport removeFSItem:error:]", v11);
    CFRelease(v9);
  }

  else
  {
    sub_1000018A4(1, "%s: %s", "[DiskSupport removeFSItem:error:]", "<error getting string>");
  }

  free(v7);
  if ([(DiskSupport *)self dryRunOnly])
  {
    return 1;
  }

  v13 = +[NSFileManager defaultManager];

  return [(NSFileManager *)v13 removeItemAtPath:a3 error:a4];
}

@end