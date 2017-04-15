data1$company[data1$company=="Unilever"] <- "unilever"
data1$company[data1$company=="Phillips"] <- "phillips"
data1$company[data1$company=="Akzo"] <- "akzo"
data1$company[data1$company=="Phlips"] <- "phillips"
data1

data1$company[data1$company=="phlips"] <- "phillips"
data1

separate(data1, Product.code...number, c("product_code", "product_number",))
Error: could not find function "separate"
> tidyr::separate(data1, Product.code...number, c("product_code", "product_number"))
company product_code product_number             address   city         country
1    phillips            p              5 Groningensingel 147 arnhem the netherlands
2    phillips            p             43 Groningensingel 148 arnhem the netherlands
3    phillips            x              3 Groningensingel 149 arnhem the netherlands
4    phillips            x             34 Groningensingel 150 arnhem the netherlands
5    phillips            x             12 Groningensingel 151 arnhem the netherlands
6    phillips            p             23 Groningensingel 152 arnhem the netherlands
7        akzo            v             43   Leeuwardenweg 178 arnhem the netherlands
8        akzo            v             12   Leeuwardenweg 179 arnhem the netherlands
9        akzo            x              5   Leeuwardenweg 180 arnhem the netherlands
10       akzo            p             34   Leeuwardenweg 181 arnhem the netherlands
11       akzo            q              5   Leeuwardenweg 182 arnhem the netherlands
12       akzo            q              9   Leeuwardenweg 183 arnhem the netherlands
13       akzo            x              8   Leeuwardenweg 184 arnhem the netherlands
14   phillips            p             56   Delfzijlstraat 54 arnhem the netherlands
15   phillips            v             67   Delfzijlstraat 55 arnhem the netherlands
16   phillips            v             21   Delfzijlstraat 56 arnhem the netherlands
17 van houten            x             45   Delfzijlstraat 57 arnhem the netherlands
18 van houten            v             56   Delfzijlstraat 58 arnhem the netherlands
19 van houten            v             65   Delfzijlstraat 59 arnhem the netherlands
20 van houten            x             21   Delfzijlstraat 60 arnhem the netherlands
21 van houten            p             23   Delfzijlstraat 61 arnhem the netherlands
22   unilever            x              3      Jourestraat 23 arnhem the netherlands
23   unilever            q              4      Jourestraat 24 arnhem the netherlands
24   unilever            q              6      Jourestraat 25 arnhem the netherlands
25   unilever            q              8      Jourestraat 26 arnhem the netherlands
name
1     dhr p. jansen
2     dhr p. hansen
3     dhr j. Gansen
4     dhr p. mansen
5    dhr p. fransen
6   dhr p. franssen
7     dhr p. bansen
8     dhr p. vansen
9    dhr p. bransen
10   dhr p. janssen
11  mevr l.  rokken
12  mevr l.  lokken
13  mevr l.  mokken
14  mevr l.  mokken
15  mevr l.  mokken
16  mevr l.  mokken
17  mevr l.  sokken
18  mevr l.  wokken
19  mevr l.  kokken
20  mevr l.  Bokken
21  mevr l.  dokken
22  mevr l.  gokken
23 mevr l.  stokken
24  mevr l.  rokken
25  mevr l.  rokken
> data1 <- cbind(data1, new_column = "Category")
> category <- ("smartphone", "TV", "Laptop", ordered=TRUE)
Error: unexpected ',' in "category <- ("smartphone","
> category <- ("smartphone", "TV", "Laptop")
Error: unexpected ',' in "category <- ("smartphone","
> data1
company Product.code...number             address   city         country
1    phillips                   p-5 Groningensingel 147 arnhem the netherlands
2    phillips                  p-43 Groningensingel 148 arnhem the netherlands
3    phillips                   x-3 Groningensingel 149 arnhem the netherlands
4    phillips                  x-34 Groningensingel 150 arnhem the netherlands
5    phillips                  x-12 Groningensingel 151 arnhem the netherlands
6    phillips                  p-23 Groningensingel 152 arnhem the netherlands
7        akzo                  v-43   Leeuwardenweg 178 arnhem the netherlands
8        akzo                  v-12   Leeuwardenweg 179 arnhem the netherlands
9        akzo                   x-5   Leeuwardenweg 180 arnhem the netherlands
10       akzo                  p-34   Leeuwardenweg 181 arnhem the netherlands
11       akzo                   q-5   Leeuwardenweg 182 arnhem the netherlands
12       akzo                   q-9   Leeuwardenweg 183 arnhem the netherlands
13       akzo                   x-8   Leeuwardenweg 184 arnhem the netherlands
14   phillips                  p-56   Delfzijlstraat 54 arnhem the netherlands
15   phillips                  v-67   Delfzijlstraat 55 arnhem the netherlands
16   phillips                  v-21   Delfzijlstraat 56 arnhem the netherlands
17 van houten                  x-45   Delfzijlstraat 57 arnhem the netherlands
18 van houten                  v-56   Delfzijlstraat 58 arnhem the netherlands
19 van houten                  v-65   Delfzijlstraat 59 arnhem the netherlands
20 van houten                  x-21   Delfzijlstraat 60 arnhem the netherlands
21 van houten                  p-23   Delfzijlstraat 61 arnhem the netherlands
22   unilever                   x-3      Jourestraat 23 arnhem the netherlands
23   unilever                   q-4      Jourestraat 24 arnhem the netherlands
24   unilever                   q-6      Jourestraat 25 arnhem the netherlands
25   unilever                   q-8      Jourestraat 26 arnhem the netherlands
name new_column
1     dhr p. jansen   Category
2     dhr p. hansen   Category
3     dhr j. Gansen   Category
4     dhr p. mansen   Category
5    dhr p. fransen   Category
6   dhr p. franssen   Category
7     dhr p. bansen   Category
8     dhr p. vansen   Category
9    dhr p. bransen   Category
10   dhr p. janssen   Category
11  mevr l.  rokken   Category
12  mevr l.  lokken   Category
13  mevr l.  mokken   Category
14  mevr l.  mokken   Category
15  mevr l.  mokken   Category
16  mevr l.  mokken   Category
17  mevr l.  sokken   Category
18  mevr l.  wokken   Category
19  mevr l.  kokken   Category
20  mevr l.  Bokken   Category
21  mevr l.  dokken   Category
22  mevr l.  gokken   Category
23 mevr l.  stokken   Category
24  mevr l.  rokken   Category
25  mevr l.  rokken   Category
> data1 <- tidyr::separate(data1, Product.code...number, c("product_code", "product_number"))
> data1
company product_code product_number             address   city         country
1    phillips            p              5 Groningensingel 147 arnhem the netherlands
2    phillips            p             43 Groningensingel 148 arnhem the netherlands
3    phillips            x              3 Groningensingel 149 arnhem the netherlands
4    phillips            x             34 Groningensingel 150 arnhem the netherlands
5    phillips            x             12 Groningensingel 151 arnhem the netherlands
6    phillips            p             23 Groningensingel 152 arnhem the netherlands
7        akzo            v             43   Leeuwardenweg 178 arnhem the netherlands
8        akzo            v             12   Leeuwardenweg 179 arnhem the netherlands
9        akzo            x              5   Leeuwardenweg 180 arnhem the netherlands
10       akzo            p             34   Leeuwardenweg 181 arnhem the netherlands
11       akzo            q              5   Leeuwardenweg 182 arnhem the netherlands
12       akzo            q              9   Leeuwardenweg 183 arnhem the netherlands
13       akzo            x              8   Leeuwardenweg 184 arnhem the netherlands
14   phillips            p             56   Delfzijlstraat 54 arnhem the netherlands
15   phillips            v             67   Delfzijlstraat 55 arnhem the netherlands
16   phillips            v             21   Delfzijlstraat 56 arnhem the netherlands
17 van houten            x             45   Delfzijlstraat 57 arnhem the netherlands
18 van houten            v             56   Delfzijlstraat 58 arnhem the netherlands
19 van houten            v             65   Delfzijlstraat 59 arnhem the netherlands
20 van houten            x             21   Delfzijlstraat 60 arnhem the netherlands
21 van houten            p             23   Delfzijlstraat 61 arnhem the netherlands
22   unilever            x              3      Jourestraat 23 arnhem the netherlands
23   unilever            q              4      Jourestraat 24 arnhem the netherlands
24   unilever            q              6      Jourestraat 25 arnhem the netherlands
25   unilever            q              8      Jourestraat 26 arnhem the netherlands
name new_column
1     dhr p. jansen   Category
2     dhr p. hansen   Category
3     dhr j. Gansen   Category
4     dhr p. mansen   Category
5    dhr p. fransen   Category
6   dhr p. franssen   Category
7     dhr p. bansen   Category
8     dhr p. vansen   Category
9    dhr p. bransen   Category
10   dhr p. janssen   Category
11  mevr l.  rokken   Category
12  mevr l.  lokken   Category
13  mevr l.  mokken   Category
14  mevr l.  mokken   Category
15  mevr l.  mokken   Category
16  mevr l.  mokken   Category
17  mevr l.  sokken   Category
18  mevr l.  wokken   Category
19  mevr l.  kokken   Category
20  mevr l.  Bokken   Category
21  mevr l.  dokken   Category
22  mevr l.  gokken   Category
23 mevr l.  stokken   Category
24  mevr l.  rokken   Category
25  mevr l.  rokken   Category
> data1 <- dplyr::mutate(data1, category = ifelse(product_code == "p", "smartphone" ,ifelse(product_code == "v", "TV" , ifelse(product_code == "x", "laptop" , ifelse(product_code == "q", "laptop")))))
Error: argument "no" is missing, with no default
> data1 <- dplyr::mutate(data1, category = ifelse(product_code == "p", "smartphone" ,ifelse(product_code == "v", "TV" , ifelse(product_code == "x", "laptop" , ifelse(product_code == "q", "laptop", "F")))))
> data1
company product_code product_number             address   city         country
1    phillips            p              5 Groningensingel 147 arnhem the netherlands
2    phillips            p             43 Groningensingel 148 arnhem the netherlands
3    phillips            x              3 Groningensingel 149 arnhem the netherlands
4    phillips            x             34 Groningensingel 150 arnhem the netherlands
5    phillips            x             12 Groningensingel 151 arnhem the netherlands
6    phillips            p             23 Groningensingel 152 arnhem the netherlands
7        akzo            v             43   Leeuwardenweg 178 arnhem the netherlands
8        akzo            v             12   Leeuwardenweg 179 arnhem the netherlands
9        akzo            x              5   Leeuwardenweg 180 arnhem the netherlands
10       akzo            p             34   Leeuwardenweg 181 arnhem the netherlands
11       akzo            q              5   Leeuwardenweg 182 arnhem the netherlands
12       akzo            q              9   Leeuwardenweg 183 arnhem the netherlands
13       akzo            x              8   Leeuwardenweg 184 arnhem the netherlands
14   phillips            p             56   Delfzijlstraat 54 arnhem the netherlands
15   phillips            v             67   Delfzijlstraat 55 arnhem the netherlands
16   phillips            v             21   Delfzijlstraat 56 arnhem the netherlands
17 van houten            x             45   Delfzijlstraat 57 arnhem the netherlands
18 van houten            v             56   Delfzijlstraat 58 arnhem the netherlands
19 van houten            v             65   Delfzijlstraat 59 arnhem the netherlands
20 van houten            x             21   Delfzijlstraat 60 arnhem the netherlands
21 van houten            p             23   Delfzijlstraat 61 arnhem the netherlands
22   unilever            x              3      Jourestraat 23 arnhem the netherlands
23   unilever            q              4      Jourestraat 24 arnhem the netherlands
24   unilever            q              6      Jourestraat 25 arnhem the netherlands
25   unilever            q              8      Jourestraat 26 arnhem the netherlands
name new_column   category
1     dhr p. jansen   Category smartphone
2     dhr p. hansen   Category smartphone
3     dhr j. Gansen   Category     laptop
4     dhr p. mansen   Category     laptop
5    dhr p. fransen   Category     laptop
6   dhr p. franssen   Category smartphone
7     dhr p. bansen   Category         TV
8     dhr p. vansen   Category         TV
9    dhr p. bransen   Category     laptop
10   dhr p. janssen   Category smartphone
11  mevr l.  rokken   Category     laptop
12  mevr l.  lokken   Category     laptop
13  mevr l.  mokken   Category     laptop
14  mevr l.  mokken   Category smartphone
15  mevr l.  mokken   Category         TV
16  mevr l.  mokken   Category         TV
17  mevr l.  sokken   Category     laptop
18  mevr l.  wokken   Category         TV
19  mevr l.  kokken   Category         TV
20  mevr l.  Bokken   Category     laptop
21  mevr l.  dokken   Category smartphone
22  mevr l.  gokken   Category     laptop
23 mevr l.  stokken   Category     laptop
24  mevr l.  rokken   Category     laptop
25  mevr l.  rokken   Category     laptop
> data1$new_column <- NULL
> data1
company product_code product_number             address   city         country
1    phillips            p              5 Groningensingel 147 arnhem the netherlands
2    phillips            p             43 Groningensingel 148 arnhem the netherlands
3    phillips            x              3 Groningensingel 149 arnhem the netherlands
4    phillips            x             34 Groningensingel 150 arnhem the netherlands
5    phillips            x             12 Groningensingel 151 arnhem the netherlands
6    phillips            p             23 Groningensingel 152 arnhem the netherlands
7        akzo            v             43   Leeuwardenweg 178 arnhem the netherlands
8        akzo            v             12   Leeuwardenweg 179 arnhem the netherlands
9        akzo            x              5   Leeuwardenweg 180 arnhem the netherlands
10       akzo            p             34   Leeuwardenweg 181 arnhem the netherlands
11       akzo            q              5   Leeuwardenweg 182 arnhem the netherlands
12       akzo            q              9   Leeuwardenweg 183 arnhem the netherlands
13       akzo            x              8   Leeuwardenweg 184 arnhem the netherlands
14   phillips            p             56   Delfzijlstraat 54 arnhem the netherlands
15   phillips            v             67   Delfzijlstraat 55 arnhem the netherlands
16   phillips            v             21   Delfzijlstraat 56 arnhem the netherlands
17 van houten            x             45   Delfzijlstraat 57 arnhem the netherlands
18 van houten            v             56   Delfzijlstraat 58 arnhem the netherlands
19 van houten            v             65   Delfzijlstraat 59 arnhem the netherlands
20 van houten            x             21   Delfzijlstraat 60 arnhem the netherlands
21 van houten            p             23   Delfzijlstraat 61 arnhem the netherlands
22   unilever            x              3      Jourestraat 23 arnhem the netherlands
23   unilever            q              4      Jourestraat 24 arnhem the netherlands
24   unilever            q              6      Jourestraat 25 arnhem the netherlands
25   unilever            q              8      Jourestraat 26 arnhem the netherlands
name   category
1     dhr p. jansen smartphone
2     dhr p. hansen smartphone
3     dhr j. Gansen     laptop
4     dhr p. mansen     laptop
5    dhr p. fransen     laptop
6   dhr p. franssen smartphone
7     dhr p. bansen         TV
8     dhr p. vansen         TV
9    dhr p. bransen     laptop
10   dhr p. janssen smartphone
11  mevr l.  rokken     laptop
12  mevr l.  lokken     laptop
13  mevr l.  mokken     laptop
14  mevr l.  mokken smartphone
15  mevr l.  mokken         TV
16  mevr l.  mokken         TV
17  mevr l.  sokken     laptop
18  mevr l.  wokken         TV
19  mevr l.  kokken         TV
20  mevr l.  Bokken     laptop
21  mevr l.  dokken smartphone
22  mevr l.  gokken     laptop
23 mevr l.  stokken     laptop
24  mevr l.  rokken     laptop
25  mevr l.  rokken     laptop
> data1 %>% 
  +     unite(address, city, country, sep = ",", remove = FALSE)
Error in function_list[[k]](value) : could not find function "unite"
> data1 <- tidyr::unite(address, city, country, sep = ",", remove = FALSE)
Error in is.data.frame(x) : object 'address' not found
> data1 <- tidyr::unite(full_address, address, city, country, sep = ",", remove = FALSE)
Error in is.data.frame(x) : object 'full_address' not found
> data1 <- cbind(data1, new_column = "full_address")
> tidyr::unite(full_address, address, city, country, sep = ",", remove = FALSE)
Error in is.data.frame(x) : object 'full_address' not found
> tidyr::transmute(data1, full_address = address + city+ country, sep= ",")
Error: 'transmute' is not an exported object from 'namespace:tidyr'
> dplyr::transmute(data1, full_address = address + city+ country, sep= ",")
full_address sep
1            NA   ,
2            NA   ,
3            NA   ,
4            NA   ,
5            NA   ,
6            NA   ,
7            NA   ,
8            NA   ,
9            NA   ,
10           NA   ,
11           NA   ,
12           NA   ,
13           NA   ,
14           NA   ,
15           NA   ,
16           NA   ,
17           NA   ,
18           NA   ,
19           NA   ,
20           NA   ,
21           NA   ,
22           NA   ,
23           NA   ,
24           NA   ,
25           NA   ,
Warning messages:
  1: In Ops.factor(c(9L, 10L, 11L, 12L, 13L, 14L, 19L, 20L, 21L, 22L,  :
                       ‘+’ not meaningful for factors
                     2: In Ops.factor(c(9L, 10L, 11L, 12L, 13L, 14L, 19L, 20L, 21L, 22L,  :
                                          ‘+’ not meaningful for factors
                                        > dplyr::transmute(data1, full_address = address + city+ country)
                                        full_address
                                        1            NA
                                        2            NA
                                        3            NA
                                        4            NA
                                        5            NA
                                        6            NA
                                        7            NA
                                        8            NA
                                        9            NA
                                        10           NA
                                        11           NA
                                        12           NA
                                        13           NA
                                        14           NA
                                        15           NA
                                        16           NA
                                        17           NA
                                        18           NA
                                        19           NA
                                        20           NA
                                        21           NA
                                        22           NA
                                        23           NA
                                        24           NA
                                        25           NA
                                        Warning messages:
                                          1: In Ops.factor(c(9L, 10L, 11L, 12L, 13L, 14L, 19L, 20L, 21L, 22L,  :
                                                               ‘+’ not meaningful for factors
                                                             2: In Ops.factor(c(9L, 10L, 11L, 12L, 13L, 14L, 19L, 20L, 21L, 22L,  :
                                                                                  ‘+’ not meaningful for factors
                                                                                > dplyr::transmute(data1, full_address = address+city+country)
                                                                                full_address
                                                                                1            NA
                                                                                2            NA
                                                                                3            NA
                                                                                4            NA
                                                                                5            NA
                                                                                6            NA
                                                                                7            NA
                                                                                8            NA
                                                                                9            NA
                                                                                10           NA
                                                                                11           NA
                                                                                12           NA
                                                                                13           NA
                                                                                14           NA
                                                                                15           NA
                                                                                16           NA
                                                                                17           NA
                                                                                18           NA
                                                                                19           NA
                                                                                20           NA
                                                                                21           NA
                                                                                22           NA
                                                                                23           NA
                                                                                24           NA
                                                                                25           NA
                                                                                Warning messages:
                                                                                  1: In Ops.factor(c(9L, 10L, 11L, 12L, 13L, 14L, 19L, 20L, 21L, 22L,  :
                                                                                                       ‘+’ not meaningful for factors
                                                                                                     2: In Ops.factor(c(9L, 10L, 11L, 12L, 13L, 14L, 19L, 20L, 21L, 22L,  :
                                                                                                                          ‘+’ not meaningful for factors
                                                                                                                        > data1
                                                                                                                        company product_code product_number             address   city         country
                                                                                                                        1    phillips            p              5 Groningensingel 147 arnhem the netherlands
                                                                                                                        2    phillips            p             43 Groningensingel 148 arnhem the netherlands
                                                                                                                        3    phillips            x              3 Groningensingel 149 arnhem the netherlands
                                                                                                                        4    phillips            x             34 Groningensingel 150 arnhem the netherlands
                                                                                                                        5    phillips            x             12 Groningensingel 151 arnhem the netherlands
                                                                                                                        6    phillips            p             23 Groningensingel 152 arnhem the netherlands
                                                                                                                        7        akzo            v             43   Leeuwardenweg 178 arnhem the netherlands
                                                                                                                        8        akzo            v             12   Leeuwardenweg 179 arnhem the netherlands
                                                                                                                        9        akzo            x              5   Leeuwardenweg 180 arnhem the netherlands
                                                                                                                        10       akzo            p             34   Leeuwardenweg 181 arnhem the netherlands
                                                                                                                        11       akzo            q              5   Leeuwardenweg 182 arnhem the netherlands
                                                                                                                        12       akzo            q              9   Leeuwardenweg 183 arnhem the netherlands
                                                                                                                        13       akzo            x              8   Leeuwardenweg 184 arnhem the netherlands
                                                                                                                        14   phillips            p             56   Delfzijlstraat 54 arnhem the netherlands
                                                                                                                        15   phillips            v             67   Delfzijlstraat 55 arnhem the netherlands
                                                                                                                        16   phillips            v             21   Delfzijlstraat 56 arnhem the netherlands
                                                                                                                        17 van houten            x             45   Delfzijlstraat 57 arnhem the netherlands
                                                                                                                        18 van houten            v             56   Delfzijlstraat 58 arnhem the netherlands
                                                                                                                        19 van houten            v             65   Delfzijlstraat 59 arnhem the netherlands
                                                                                                                        20 van houten            x             21   Delfzijlstraat 60 arnhem the netherlands
                                                                                                                        21 van houten            p             23   Delfzijlstraat 61 arnhem the netherlands
                                                                                                                        22   unilever            x              3      Jourestraat 23 arnhem the netherlands
                                                                                                                        23   unilever            q              4      Jourestraat 24 arnhem the netherlands
                                                                                                                        24   unilever            q              6      Jourestraat 25 arnhem the netherlands
                                                                                                                        25   unilever            q              8      Jourestraat 26 arnhem the netherlands
                                                                                                                        name   category   new_column
                                                                                                                        1     dhr p. jansen smartphone full_address
                                                                                                                        2     dhr p. hansen smartphone full_address
                                                                                                                        3     dhr j. Gansen     laptop full_address
                                                                                                                        4     dhr p. mansen     laptop full_address
                                                                                                                        5    dhr p. fransen     laptop full_address
                                                                                                                        6   dhr p. franssen smartphone full_address
                                                                                                                        7     dhr p. bansen         TV full_address
                                                                                                                        8     dhr p. vansen         TV full_address
                                                                                                                        9    dhr p. bransen     laptop full_address
                                                                                                                        10   dhr p. janssen smartphone full_address
                                                                                                                        11  mevr l.  rokken     laptop full_address
                                                                                                                        12  mevr l.  lokken     laptop full_address
                                                                                                                        13  mevr l.  mokken     laptop full_address
                                                                                                                        14  mevr l.  mokken smartphone full_address
                                                                                                                        15  mevr l.  mokken         TV full_address
                                                                                                                        16  mevr l.  mokken         TV full_address
                                                                                                                        17  mevr l.  sokken     laptop full_address
                                                                                                                        18  mevr l.  wokken         TV full_address
                                                                                                                        19  mevr l.  kokken         TV full_address
                                                                                                                        20  mevr l.  Bokken     laptop full_address
                                                                                                                        21  mevr l.  dokken smartphone full_address
                                                                                                                        22  mevr l.  gokken     laptop full_address
                                                                                                                        23 mevr l.  stokken     laptop full_address
                                                                                                                        24  mevr l.  rokken     laptop full_address
                                                                                                                        25  mevr l.  rokken     laptop full_address
                                                                                                                        > data1 <- cbind(data1, full_address = address+city+country)
                                                                                                                        Error in cbind(data1, full_address = address + city + country) : 
                                                                                                                          object 'address' not found
                                                                                                                        > data1 <- cbind(data1, full_address = [adress+city+country])
                                                                                                                        Error: unexpected '[' in "data1 <- cbind(data1, full_address = ["
                                                                                                                        > data1$full_address <- data1$address + data1$city + data1$country
                                                                                                                        Warning messages:
                                                                                                                          1: In Ops.factor(data1$address, data1$city) :
                                                                                                                          ‘+’ not meaningful for factors
                                                                                                                        2: In Ops.factor(data1$address + data1$city, data1$country) :
                                                                                                                          ‘+’ not meaningful for factors
                                                                                                                        > dplyr::transmute(data1, full_address = address+city+country, stringAsfactors = FALSE)
                                                                                                                        full_address stringAsfactors
                                                                                                                        1            NA           FALSE
                                                                                                                        2            NA           FALSE
                                                                                                                        3            NA           FALSE
                                                                                                                        4            NA           FALSE
                                                                                                                        5            NA           FALSE
                                                                                                                        6            NA           FALSE
                                                                                                                        7            NA           FALSE
                                                                                                                        8            NA           FALSE
                                                                                                                        9            NA           FALSE
                                                                                                                        10           NA           FALSE
                                                                                                                        11           NA           FALSE
                                                                                                                        12           NA           FALSE
                                                                                                                        13           NA           FALSE
                                                                                                                        14           NA           FALSE
                                                                                                                        15           NA           FALSE
                                                                                                                        16           NA           FALSE
                                                                                                                        17           NA           FALSE
                                                                                                                        18           NA           FALSE
                                                                                                                        19           NA           FALSE
                                                                                                                        20           NA           FALSE
                                                                                                                        21           NA           FALSE
                                                                                                                        22           NA           FALSE
                                                                                                                        23           NA           FALSE
                                                                                                                        24           NA           FALSE
                                                                                                                        25           NA           FALSE
                                                                                                                        Warning messages:
                                                                                                                          1: In Ops.factor(c(9L, 10L, 11L, 12L, 13L, 14L, 19L, 20L, 21L, 22L,  :
                                                                                                                                               ‘+’ not meaningful for factors
                                                                                                                                             2: In Ops.factor(c(9L, 10L, 11L, 12L, 13L, 14L, 19L, 20L, 21L, 22L,  :
                                                                                                                                                                  ‘+’ not meaningful for factors
                                                                                                                                                                > View(data1)
                                                                                                                                                                > read.csv(data1.csv , stringsAsFactors = FALSE)
                                                                                                                                                                Error in read.table(file = file, header = header, sep = sep, quote = quote,  : 
                                                                                                                                                                                      object 'data1.csv' not found
                                                                                                                                                                                    > data1 <- data1 %>% mutate(full_address = paste(address, city, country, sep = ","))
                                                                                                                                                                                    > data1
                                                                                                                                                                                    company product_code product_number             address   city         country
                                                                                                                                                                                    1    phillips            p              5 Groningensingel 147 arnhem the netherlands
                                                                                                                                                                                    2    phillips            p             43 Groningensingel 148 arnhem the netherlands
                                                                                                                                                                                    3    phillips            x              3 Groningensingel 149 arnhem the netherlands
                                                                                                                                                                                    4    phillips            x             34 Groningensingel 150 arnhem the netherlands
                                                                                                                                                                                    5    phillips            x             12 Groningensingel 151 arnhem the netherlands
                                                                                                                                                                                    6    phillips            p             23 Groningensingel 152 arnhem the netherlands
                                                                                                                                                                                    7        akzo            v             43   Leeuwardenweg 178 arnhem the netherlands
                                                                                                                                                                                    8        akzo            v             12   Leeuwardenweg 179 arnhem the netherlands
                                                                                                                                                                                    9        akzo            x              5   Leeuwardenweg 180 arnhem the netherlands
                                                                                                                                                                                    10       akzo            p             34   Leeuwardenweg 181 arnhem the netherlands
                                                                                                                                                                                    11       akzo            q              5   Leeuwardenweg 182 arnhem the netherlands
                                                                                                                                                                                    12       akzo            q              9   Leeuwardenweg 183 arnhem the netherlands
                                                                                                                                                                                    13       akzo            x              8   Leeuwardenweg 184 arnhem the netherlands
                                                                                                                                                                                    14   phillips            p             56   Delfzijlstraat 54 arnhem the netherlands
                                                                                                                                                                                    15   phillips            v             67   Delfzijlstraat 55 arnhem the netherlands
                                                                                                                                                                                    16   phillips            v             21   Delfzijlstraat 56 arnhem the netherlands
                                                                                                                                                                                    17 van houten            x             45   Delfzijlstraat 57 arnhem the netherlands
                                                                                                                                                                                    18 van houten            v             56   Delfzijlstraat 58 arnhem the netherlands
                                                                                                                                                                                    19 van houten            v             65   Delfzijlstraat 59 arnhem the netherlands
                                                                                                                                                                                    20 van houten            x             21   Delfzijlstraat 60 arnhem the netherlands
                                                                                                                                                                                    21 van houten            p             23   Delfzijlstraat 61 arnhem the netherlands
                                                                                                                                                                                    22   unilever            x              3      Jourestraat 23 arnhem the netherlands
                                                                                                                                                                                    23   unilever            q              4      Jourestraat 24 arnhem the netherlands
                                                                                                                                                                                    24   unilever            q              6      Jourestraat 25 arnhem the netherlands
                                                                                                                                                                                    25   unilever            q              8      Jourestraat 26 arnhem the netherlands
                                                                                                                                                                                    name   category   new_column                               full_address
                                                                                                                                                                                    1     dhr p. jansen smartphone full_address Groningensingel 147,arnhem,the netherlands
                                                                                                                                                                                    2     dhr p. hansen smartphone full_address Groningensingel 148,arnhem,the netherlands
                                                                                                                                                                                    3     dhr j. Gansen     laptop full_address Groningensingel 149,arnhem,the netherlands
                                                                                                                                                                                    4     dhr p. mansen     laptop full_address Groningensingel 150,arnhem,the netherlands
                                                                                                                                                                                    5    dhr p. fransen     laptop full_address Groningensingel 151,arnhem,the netherlands
                                                                                                                                                                                    6   dhr p. franssen smartphone full_address Groningensingel 152,arnhem,the netherlands
                                                                                                                                                                                    7     dhr p. bansen         TV full_address   Leeuwardenweg 178,arnhem,the netherlands
                                                                                                                                                                                    8     dhr p. vansen         TV full_address   Leeuwardenweg 179,arnhem,the netherlands
                                                                                                                                                                                    9    dhr p. bransen     laptop full_address   Leeuwardenweg 180,arnhem,the netherlands
                                                                                                                                                                                    10   dhr p. janssen smartphone full_address   Leeuwardenweg 181,arnhem,the netherlands
                                                                                                                                                                                    11  mevr l.  rokken     laptop full_address   Leeuwardenweg 182,arnhem,the netherlands
                                                                                                                                                                                    12  mevr l.  lokken     laptop full_address   Leeuwardenweg 183,arnhem,the netherlands
                                                                                                                                                                                    13  mevr l.  mokken     laptop full_address   Leeuwardenweg 184,arnhem,the netherlands
                                                                                                                                                                                    14  mevr l.  mokken smartphone full_address   Delfzijlstraat 54,arnhem,the netherlands
                                                                                                                                                                                    15  mevr l.  mokken         TV full_address   Delfzijlstraat 55,arnhem,the netherlands
                                                                                                                                                                                    16  mevr l.  mokken         TV full_address   Delfzijlstraat 56,arnhem,the netherlands
                                                                                                                                                                                    17  mevr l.  sokken     laptop full_address   Delfzijlstraat 57,arnhem,the netherlands
                                                                                                                                                                                    18  mevr l.  wokken         TV full_address   Delfzijlstraat 58,arnhem,the netherlands
                                                                                                                                                                                    19  mevr l.  kokken         TV full_address   Delfzijlstraat 59,arnhem,the netherlands
                                                                                                                                                                                    20  mevr l.  Bokken     laptop full_address   Delfzijlstraat 60,arnhem,the netherlands
                                                                                                                                                                                    21  mevr l.  dokken smartphone full_address   Delfzijlstraat 61,arnhem,the netherlands
                                                                                                                                                                                    22  mevr l.  gokken     laptop full_address      Jourestraat 23,arnhem,the netherlands
                                                                                                                                                                                    23 mevr l.  stokken     laptop full_address      Jourestraat 24,arnhem,the netherlands
                                                                                                                                                                                    24  mevr l.  rokken     laptop full_address      Jourestraat 25,arnhem,the netherlands
                                                                                                                                                                                    25  mevr l.  rokken     laptop full_address      Jourestraat 26,arnhem,the netherlands
                                                                                                                                                                                    > data1$address <- NULL
                                                                                                                                                                                    > data1$city <- NULL
                                                                                                                                                                                    > data1$country <- NULL
                                                                                                                                                                                    > data1$new_column <- NULL
                                                                                                                                                                                    > data1
                                                                                                                                                                                    company product_code product_number             name   category
                                                                                                                                                                                    1    phillips            p              5    dhr p. jansen smartphone
                                                                                                                                                                                    2    phillips            p             43    dhr p. hansen smartphone
                                                                                                                                                                                    3    phillips            x              3    dhr j. Gansen     laptop
                                                                                                                                                                                    4    phillips            x             34    dhr p. mansen     laptop
                                                                                                                                                                                    5    phillips            x             12   dhr p. fransen     laptop
                                                                                                                                                                                    6    phillips            p             23  dhr p. franssen smartphone
                                                                                                                                                                                    7        akzo            v             43    dhr p. bansen         TV
                                                                                                                                                                                    8        akzo            v             12    dhr p. vansen         TV
                                                                                                                                                                                    9        akzo            x              5   dhr p. bransen     laptop
                                                                                                                                                                                    10       akzo            p             34   dhr p. janssen smartphone
                                                                                                                                                                                    11       akzo            q              5  mevr l.  rokken     laptop
                                                                                                                                                                                    12       akzo            q              9  mevr l.  lokken     laptop
                                                                                                                                                                                    13       akzo            x              8  mevr l.  mokken     laptop
                                                                                                                                                                                    14   phillips            p             56  mevr l.  mokken smartphone
                                                                                                                                                                                    15   phillips            v             67  mevr l.  mokken         TV
                                                                                                                                                                                    16   phillips            v             21  mevr l.  mokken         TV
                                                                                                                                                                                    17 van houten            x             45  mevr l.  sokken     laptop
                                                                                                                                                                                    18 van houten            v             56  mevr l.  wokken         TV
                                                                                                                                                                                    19 van houten            v             65  mevr l.  kokken         TV
                                                                                                                                                                                    20 van houten            x             21  mevr l.  Bokken     laptop
                                                                                                                                                                                    21 van ho
                                                                                                                                                                                    uten            p             23  mevr l.  dokken smartphone
                                                                                                                                                                                    22   unilever            x              3  mevr l.  gokken     laptop
                                                                                                                                                                                    23   unilever            q              4 mevr l.  stokken     laptop
                                                                                                                                                                                    24   unilever            q              6  mevr l.  rokken     laptop
                                                                                                                                                                                    25   unilever            q              8  mevr l.  rokken     laptop
                                                                                                                                                                                    
                                                                                                                                                                                    full_address
                                                                                                                                                                                    1  Groningensingel 147,arnhem,the netherlands
                                                                                                                                                                                    2  Groningensingel 148,arnhem,the netherlands
                                                                                                                                                                                    3  Groningensingel 149,arnhem,the netherlands
                                                                                                                                                                                    4  Groningensingel 150,arnhem,the netherlands
                                                                                                                                                                                    5  Groningensingel 151,arnhem,the netherlands
                                                                                                                                                                                    6  Groningensingel 152,arnhem,the netherlands
                                                                                                                                                                                    7    Leeuwardenweg 178,arnhem,the netherlands
                                                                                                                                                                                    8    Leeuwardenweg 179,arnhem,the netherlands
                                                                                                                                                                                    9    Leeuwardenweg 180,arnhem,the netherlands
                                                                                                                                                                                    10   Leeuwardenweg 181,arnhem,the netherlands
                                                                                                                                                                                    11   Leeuwardenweg 182,arnhem,the netherlands
                                                                                                                                                                                    12   Leeuwardenweg 183,arnhem,the netherlands
                                                                                                                                                                                    13   Leeuwardenweg 184,arnhem,the netherlands
                                                                                                                                                                                    14   Delfzijlstraat 54,arnhem,the netherlands
                                                                                                                                                                                    15   Delfzijlstraat 55,arnhem,the netherlands
                                                                                                                                                                                    16   Delfzijlstraat 56,arnhem,the netherlands
                                                                                                                                                                                    17   Delfzijlstraat 57,arnhem,the netherlands
                                                                                                                                                                                    18   Delfzijlstraat 58,arnhem,the netherlands
                                                                                                                                                                                    19   Delfzijlstraat 59,arnhem,the netherlands
                                                                                                                                                                                    20   Delfzijlstraat 60,arnhem,the netherlands
                                                                                                                                                                                    21   Delfzijlstraat 61,arnhem,the netherlands
                                                                                                                                                                                    22      Jourestraat 23,arnhem,the netherlands
                                                                                                                                                                                    23      Jourestraat 24,arnhem,the netherlands
                                                                                                                                                                                    24      Jourestraat 25,arnhem,the netherlands
                                                                                                                                                                                    25      Jourestraat 26,arnhem,the netherlands
                                                                                                                                                                                    > mark <- function(x, pattern) {
                                                                                                                                                                                      +     logics <- (x == pattern)
                                                                                                                                                                                      +     sapply(logics, as.numeric)
                                                                                                                                                                                      + }
                                                                                                                                                                                    > 
                                                                                                                                                                                      > companies <- c("philips", "akzo", "van houten", "unilever")
                                                                                                                                                                                    > 
                                                                                                                                                                                      > for(name in companies) {
                                                                                                                                                                                        +     s <- paste("company", name, sep = "_")
                                                                                                                                                                                        +     
                                                                                                                                                                                          +     d[[s]] <- mark(d$company, name)
                                                                                                                                                                                          + }
                                                                                                                                                                                    Error in mark(d$company, name) : object 'd' not found
                                                                                                                                                                                    > 
                                                                                                                                                                                      > colnames(d)[names(d) == "company_van houten"] <- "company_van_houten"
                                                                                                                                                                                    Error in colnames(d)[names(d) == "company_van houten"] <- "company_van_houten" : 
                                                                                                                                                                                      object 'd' not found
                                                                                                                                                                                    > 
                                                                                                                                                                                      > categories <- factor(d$category) %>% levels
                                                                                                                                                                                    Error in factor(d$category) : object 'd' not found
                                                                                                                                                                                    > 
                                                                                                                                                                                      > for(c in categories) {
                                                                                                                                                                                        +     s <- paste("product", tolower(c), sep="_")
                                                                                                                                                                                        +     d[[s]] <- mark(d$category, c)
                                                                                                                                                                                        + }
                                                                                                                                                                                    Error: object 'categories' not found
                                                                                                                                                                                    > mark <- function(x, pattern) {
                                                                                                                                                                                      +     logics <- (x == pattern)
                                                                                                                                                                                      +     sapply(logics, as.numeric)
                                                                                                                                                                                      + }
                                                                                                                                                                                    > 
                                                                                                                                                                                      > companies <- c("philips", "akzo", "van houten", "unilever")
                                                                                                                                                                                    > 
                                                                                                                                                                                      > for(name in companies) {
                                                                                                                                                                                        +     s <- paste("company", name, sep = "_")
                                                                                                                                                                                        +     
                                                                                                                                                                                          +     data1[[s]] <- mark(data1$company, name)
                                                                                                                                                                                          + }
                                                                                                                                                                                    > 
                                                                                                                                                                                      > colnames(data1)[names(data1) == "company_van houten"] <- "company_van_houten"
                                                                                                                                                                                    > 
                                                                                                                                                                                      > categories <- factor(data1$category) %>% levels
                                                                                                                                                                                    > 
                                                                                                                                                                                      > for(c in category) {
                                                                                                                                                                                        +     s <- paste("product", tolower(c), sep="_")
                                                                                                                                                                                        +     d[[s]] <- mark(data1$category, c)
                                                                                                                                                                                        + }
                                                                                                                                                                                    Error: object 'category' not found
                                                                                                                                                                                    > categories<-c(p = "Smartphone", v = "TV", x = "Laptop", q = "Tablet")
                                                                                                                                                                                    > mark <- function(x, pattern) {
                                                                                                                                                                                      +     +     logics <- (x == pattern)
                                                                                                                                                                                      +     +     sapply(logics, as.numeric)
                                                                                                                                                                                      +     + }
                                                                                                                                                                                    Error: unexpected '}' in:
                                                                                                                                                                                      "    +     sapply(logics, as.numeric)
                                                                                                                                                                                    + }"
                                                                                                                                                                                    > companies <- c("philips", "akzo", "van houten", "unilever")
                                                                                                                                                                                    > 
                                                                                                                                                                                      >  for(name in companies) {
                                                                                                                                                                                        +   s <- paste("company", name, sep = "_")
                                                                                                                                                                                        + 
                                                                                                                                                                                          +  data1[[s]] <- mark(data1$company, name)
                                                                                                                                                                                          +  }
                                                                                                                                                                                    > 
                                                                                                                                                                                      >  colnames(data1)[names(data1) == "company_van houten"] <- "company_van_houten"
                                                                                                                                                                                    >  
                                                                                                                                                                                      > categories <- factor(data1$category) %>% levels
                                                                                                                                                                                    >  
                                                                                                                                                                                      >  for(c in category) {
                                                                                                                                                                                        +  s <- paste("product", tolower(c), sep="_")
                                                                                                                                                                                        +     data1[[s]] <- mark(data1$category, c)
                                                                                                                                                                                        +     }
                                                                                                                                                                                    Error: object 'category' not found
                                                                                                                                                                                    > mark <- function(x, pattern) {
                                                                                                                                                                                      +     logics <- (x == pattern)
                                                                                                                                                                                      +     sapply(logics, as.numeric)
                                                                                                                                                                                      + }
                                                                                                                                                                                    > 
                                                                                                                                                                                      > companies <- c("philips", "akzo", "van houten", "unilever")
                                                                                                                                                                                    > 
                                                                                                                                                                                      > for(name in companies) {
                                                                                                                                                                                        +     s <- paste("company", name, sep = "_")
                                                                                                                                                                                        +     
                                                                                                                                                                                          +     data1[[s]] <- mark(data1$company, name)
                                                                                                                                                                                          + }
                                                                                                                                                                                    > 
                                                                                                                                                                                      > #Change column name "company_van houten" to "company_van_houten"
                                                                                                                                                                                      > colnames(d)[names(d) == "company_van houten"] <- "company_van_houten"
                                                                                                                                                                                    Error in colnames(d)[names(d) == "company_van houten"] <- "company_van_houten" : 
                                                                                                                                                                                      object 'd' not found
                                                                                                                                                                                    > 
                                                                                                                                                                                      > #product category: smartphone, tv, laptop, tablet
                                                                                                                                                                                      > categories <- factor(d$category) %>% levels
                                                                                                                                                                                    Error in factor(d$category) : object 'd' not found
                                                                                                                                                                                    > 
                                                                                                                                                                                      > for(c in categories) {
                                                                                                                                                                                        +     s <- paste("product", tolower(c), sep="_")
                                                                                                                                                                                        +     data1[[s]] <- mark(data1$category, c)
                                                                                                                                                                                        + }data1 <- data1 %>% mutate(category = categories[product_code])
                                                                                                                                                                                    Error: unexpected symbol in:
                                                                                                                                                                                      "    data1[[s]] <- mark(data1$category, c)
                                                                                                                                                                                    }data1"
> data1 <- data1 %>% mutate(category = categories[product_code])
                                                                                                                                                                                    > mark <- function(x, pattern) {
                                                                                                                                                                                      +     logics <- (x == pattern)
                                                                                                                                                                                      +     sapply(logics, as.numeric)
                                                                                                                                                                                      + }
                                                                                                                                                                                    > 
                                                                                                                                                                                      > companies <- c("philips", "akzo", "van houten", "unilever")
                                                                                                                                                                                    > 
                                                                                                                                                                                      > for(name in companies) {
                                                                                                                                                                                        +     s <- paste("company", name, sep = "_")
                                                                                                                                                                                        +     
                                                                                                                                                                                          +     data1[[s]] <- mark(data1$company, name)
                                                                                                                                                                                          + }
                                                                                                                                                                                    > 
                                                                                                                                                                                      > 
                                                                                                                                                                                      > colnames(data1)[names(data1) == "company_van houten"] <- "company_van_houten"
                                                                                                                                                                                    > 
                                                                                                                                                                                      > #product category: smartphone, tv, laptop, tablet
                                                                                                                                                                                      > categories <- factor(data1$category) %>% levels
                                                                                                                                                                                    > 
                                                                                                                                                                                      > for(c in categories) {
                                                                                                                                                                                        +     s <- paste("product", tolower(c), sep="_")
                                                                                                                                                                                        +     data1[[s]] <- mark(data1$category, c)
                                                                                                                                                                                        + }
                                                                                                                                                                                    > 
                                                                                                                                                                                      > View(data1)
                                                                                                                                                                                    > data1
                                                                                                                                                                                    company product_code product_number             name category                               full_address company_philips
                                                                                                                                                                                    1    phillips            p              5    dhr p. jansen     <NA> Groningensingel 147,arnhem,the netherlands               0
                                                                                                                                                                                    2    phillips            p             43    dhr p. hansen     <NA> Groningensingel 148,arnhem,the netherlands               0
                                                                                                                                                                                    3    phillips            x              3    dhr j. Gansen     <NA> Groningensingel 149,arnhem,the netherlands               0
                                                                                                                                                                                    4    phillips            x             34    dhr p. mansen     <NA> Groningensingel 150,arnhem,the netherlands               0
                                                                                                                                                                                    5    phillips            x             12   dhr p. fransen     <NA> Groningensingel 151,arnhem,the netherlands               0
                                                                                                                                                                                    6    phillips            p             23  dhr p. franssen     <NA> Groningensingel 152,arnhem,the netherlands               0
                                                                                                                                                                                    7        akzo            v             43    dhr p. bansen     <NA>   Leeuwardenweg 178,arnhem,the netherlands               0
                                                                                                                                                                                    8        akzo            v             12    dhr p. vansen     <NA>   Leeuwardenweg 179,arnhem,the netherlands               0
                                                                                                                                                                                    9        akzo            x              5   dhr p. bransen     <NA>   Leeuwardenweg 180,arnhem,the netherlands               0
                                                                                                                                                                                    10       akzo            p             34   dhr p. janssen     <NA>   Leeuwardenweg 181,arnhem,the netherlands               0
                                                                                                                                                                                    11       akzo            q              5  mevr l.  rokken     <NA>   Leeuwardenweg 182,arnhem,the netherlands               0
                                                                                                                                                                                    12       akzo            q              9  mevr l.  lokken     <NA>   Leeuwardenweg 183,arnhem,the netherlands               0
                                                                                                                                                                                    13       akzo            x              8  mevr l.  mokken     <NA>   Leeuwardenweg 184,arnhem,the netherlands               0
                                                                                                                                                                                    14   phillips            p             56  mevr l.  mokken     <NA>   Delfzijlstraat 54,arnhem,the netherlands               0
                                                                                                                                                                                    15   phillips            v             67  mevr l.  mokken     <NA>   Delfzijlstraat 55,arnhem,the netherlands               0
                                                                                                                                                                                    16   phillips            v             21  mevr l.  mokken     <NA>   Delfzijlstraat 56,arnhem,the netherlands               0
                                                                                                                                                                                    17 van houten            x             45  mevr l.  sokken     <NA>   Delfzijlstraat 57,arnhem,the netherlands               0
                                                                                                                                                                                    18 van houten            v             56  mevr l.  wokken     <NA>   Delfzijlstraat 58,arnhem,the netherlands               0
                                                                                                                                                                                    19 van houten            v             65  mevr l.  kokken     <NA>   Delfzijlstraat 59,arnhem,the netherlands               0
                                                                                                                                                                                    20 van houten            x             21  mevr l.  Bokken     <NA>   Delfzijlstraat 60,arnhem,the netherlands               0
                                                                                                                                                                                    21 van houten            p             23  mevr l.  dokken     <NA>   Delfzijlstraat 61,arnhem,the netherlands               0
                                                                                                                                                                                    22   unilever            x              3  mevr l.  gokken     <NA>      Jourestraat 23,arnhem,the netherlands               0
                                                                                                                                                                                    23   unilever            q              4 mevr l.  stokken     <NA>      Jourestraat 24,arnhem,the netherlands               0
                                                                                                                                                                                    24   unilever            q              6  mevr l.  rokken     <NA>      Jourestraat 25,arnhem,the netherlands               0
                                                                                                                                                                                    25   unilever            q              8  mevr l.  rokken     <NA>      Jourestraat 26,arnhem,the netherlands               0
                                                                                                                                                                                    company_akzo company_van_houten company_unilever company_van_houten.1 company_van_houten
                                                                                                                                                                                    1             0                  0                0                    0                  0
                                                                                                                                                                                    2             0                  0                0                    0                  0
                                                                                                                                                                                    3             0                  0                0                    0                  0
                                                                                                                                                                                    4             0                  0                0                    0                  0
                                                                                                                                                                                    5             0                  0                0                    0                  0
                                                                                                                                                                                    6             0                  0                0                    0                  0
                                                                                                                                                                                    7             1                  0                0                    0                  0
                                                                                                                                                                                    8             1                  0                0                    0                  0
                                                                                                                                                                                    9             1                  0                0                    0                  0
                                                                                                                                                                                    10            1                  0                0                    0                  0
                                                                                                                                                                                    11            1                  0                0                    0                  0
                                                                                                                                                                                    12            1                  0                0                    0                  0
                                                                                                                                                                                    13            1                  0                0                    0                  0
                                                                                                                                                                                    14            0                  0                0                    0                  0
                                                                                                                                                                                    15            0                  0                0                    0                  0
                                                                                                                                                                                    16            0                  0                0                    0                  0
                                                                                                                                                                                    17            0                  1                0                    1                  1
                                                                                                                                                                                    18            0                  1                0                    1                  1
                                                                                                                                                                                    19            0                  1                0                    1                  1
                                                                                                                                                                                    20            0                  1                0                    1                  1
                                                                                                                                                                                    21            0                  1                0                    1                  1
                                                                                                                                                                                    22            0                  0                1                    0                  0
                                                                                                                                                                                    23            0                  0                1                    0                  0
                                                                                                                                                                                    24            0                  0                1                    0                  0
                                                                                                                                                                                    25            0                  0                1                    0                  0
                                                                                                                                                                                    > categories<-c(p = "Smartphone", v = "TV", x = "Laptop", q = "Tablet")
                                                                                                                                                                                    > d <- d %>% mutate(category = categories[product_code])
                                                                                                                                                                                    Error in eval(expr, envir, enclos) : object 'd' not found
                                                                                                                                                                                    > categories<-c(p = "Smartphone", v = "TV", x = "Laptop", q = "Tablet")
                                                                                                                                                                                    > data1 <- data1%>% mutate(category = categories[product_code])
                                                                                                                                                                                    Error: Each variable must have a unique name.
                                                                                                                                                                                    Problem variables: 'company_van_houten'
                                                                                                                                                                                    > data1
                                                                                                                                                                                    company product_code product_number             name category                               full_address company_philips
                                                                                                                                                                                    1    phillips            p              5    dhr p. jansen     <NA> Groningensingel 147,arnhem,the netherlands               0
                                                                                                                                                                                    2    phillips            p             43    dhr p. hansen     <NA> Groningensingel 148,arnhem,the netherlands               0
                                                                                                                                                                                    3    phillips            x              3    dhr j. Gansen     <NA> Groningensingel 149,arnhem,the netherlands               0
                                                                                                                                                                                    4    phillips            x             34    dhr p. mansen     <NA> Groningensingel 150,arnhem,the netherlands               0
                                                                                                                                                                                    5    phillips            x             12   dhr p. fransen     <NA> Groningensingel 151,arnhem,the netherlands               0
                                                                                                                                                                                    6    phillips            p             23  dhr p. franssen     <NA> Groningensingel 152,arnhem,the netherlands               0
                                                                                                                                                                                    7        akzo            v             43    dhr p. bansen     <NA>   Leeuwardenweg 178,arnhem,the netherlands               0
                                                                                                                                                                                    8        akzo            v             12    dhr p. vansen     <NA>   Leeuwardenweg 179,arnhem,the netherlands               0
                                                                                                                                                                                    9        akzo            x              5   dhr p. bransen     <NA>   Leeuwardenweg 180,arnhem,the netherlands               0
                                                                                                                                                                                    10       akzo            p             34   dhr p. janssen     <NA>   Leeuwardenweg 181,arnhem,the netherlands               0
                                                                                                                                                                                    11       akzo            q              5  mevr l.  rokken     <NA>   Leeuwardenweg 182,arnhem,the netherlands               0
                                                                                                                                                                                    12       akzo            q              9  mevr l.  lokken     <NA>   Leeuwardenweg 183,arnhem,the netherlands               0
                                                                                                                                                                                    13       akzo            x              8  mevr l.  mokken     <NA>   Leeuwardenweg 184,arnhem,the netherlands               0
                                                                                                                                                                                    14   phillips            p             56  mevr l.  mokken     <NA>   Delfzijlstraat 54,arnhem,the netherlands               0
                                                                                                                                                                                    15   phillips            v             67  mevr l.  mokken     <NA>   Delfzijlstraat 55,arnhem,the netherlands               0
                                                                                                                                                                                    16   phillips            v             21  mevr l.  mokken     <NA>   Delfzijlstraat 56,arnhem,the netherlands               0
                                                                                                                                                                                    17 van houten            x             45  mevr l.  sokken     <NA>   Delfzijlstraat 57,arnhem,the netherlands               0
                                                                                                                                                                                    18 van houten            v             56  mevr l.  wokken     <NA>   Delfzijlstraat 58,arnhem,the netherlands               0
                                                                                                                                                                                    19 van houten            v             65  mevr l.  kokken     <NA>   Delfzijlstraat 59,arnhem,the netherlands               0
                                                                                                                                                                                    20 van houten            x             21  mevr l.  Bokken     <NA>   Delfzijlstraat 60,arnhem,the netherlands               0
                                                                                                                                                                                    21 van houten            p             23  mevr l.  dokken     <NA>   Delfzijlstraat 61,arnhem,the netherlands               0
                                                                                                                                                                                    22   unilever            x              3  mevr l.  gokken     <NA>      Jourestraat 23,arnhem,the netherlands               0
                                                                                                                                                                                    23   unilever            q              4 mevr l.  stokken     <NA>      Jourestraat 24,arnhem,the netherlands               0
                                                                                                                                                                                    24   unilever            q              6  mevr l.  rokken     <NA>      Jourestraat 25,arnhem,the netherlands               0
                                                                                                                                                                                    25   unilever            q              8  mevr l.  rokken     <NA>      Jourestraat 26,arnhem,the netherlands               0
                                                                                                                                                                                    company_akzo company_van_houten company_unilever company_van_houten.1 company_van_houten
                                                                                                                                                                                    1             0                  0                0                    0                  0
                                                                                                                                                                                    2             0                  0                0                    0                  0
                                                                                                                                                                                    3             0                  0                0                    0                  0
                                                                                                                                                                                    4             0                  0                0                    0                  0
                                                                                                                                                                                    5             0                  0                0                    0                  0
                                                                                                                                                                                    6             0                  0                0                    0                  0
                                                                                                                                                                                    7             1                  0                0                    0                  0
                                                                                                                                                                                    8             1                  0                0                    0                  0
                                                                                                                                                                                    9             1                  0                0                    0                  0
                                                                                                                                                                                    10            1                  0                0                    0                  0
                                                                                                                                                                                    11            1                  0                0                    0                  0
                                                                                                                                                                                    12            1                  0                0                    0                  0
                                                                                                                                                                                    13            1                  0                0                    0                  0
                                                                                                                                                                                    14            0                  0                0                    0                  0
                                                                                                                                                                                    15            0                  0                0                    0                  0
                                                                                                                                                                                    16            0                  0                0                    0                  0
                                                                                                                                                                                    17            0                  1                0                    1                  1
                                                                                                                                                                                    18            0                  1                0                    1                  1
                                                                                                                                                                                    19            0                  1                0                    1                  1
                                                                                                                                                                                    20            0                  1                0                    1                  1
                                                                                                                                                                                    21            0                  1                0                    1                  1
                                                                                                                                                                                    22            0                  0                1                    0                  0
                                                                                                                                                                                    23            0                  0                1                    0                  0
                                                                                                                                                                                    24            0                  0                1                    0                  0
                                                                                                                                                                                    25            0                  0                1                    0                  0
                                                                                                                                                                                    > categories<-c(p = "Smartphone", v = "TV", x = "Laptop", q = "Tablet")
                                                                                                                                                                                    > 
                                                                                                                                                                                      > data1 <- data1 %>% mutate(category = categories[product_code])