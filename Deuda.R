#Un mundo en deuda

#librerias de base
library(tidyverse)
library(magrittr)
library(gganimate)
library(scales)
library(ggthemes)
library(hrbrthemes)
library(ggmap)
library(maps)
library(transformr)


#establecer directorio de trabajo
getwd()
setwd("C:/Users/Adrian Bautista/Desktop/Deuda")
dir()

deuda <- read.csv("Deuda.csv")

#exploracion basicA
str(deuda)
summary(deuda)

#obtener el mapa
Mundo <- map_data("world")
str(Mundo)
x <- levels(as.factor(Mundo$region))

deuda <- spread(deuda,year,Deuda.Publica...PIB)
deuda$country %<>% as.character()

deuda[5,1] <- "Antigua"
deuda[11,1] <- "Bahamas"
deuda[21,1] <- "Bosnia and Herzegovina"
deuda[24,1] <- "Brunei"
deuda[28,1] <- "Central African Republic"
deuda[35,1] <- "China"
deuda[38,1] <- "Democratic Republic of the Congo"
deuda[39,1] <- "Republic of Congo"
deuda[41,1] <- "Ivory Coast"
deuda[60,1] <- "Gambia"
deuda[72,] <- NULL
deuda[77,1] <- "Iran"
deuda[88,1] <- "South Korea"
deuda[91,1] <- "Kyrgyzstan"
deuda[100,1] <- "Macedonia"
deuda[107,1] <- "Marshall Islands"
deuda[138,1] <- "Russia"
deuda[140,1] <- "Sao Tome and Principe"
deuda[149,1] <- "Slovakia"
deuda[156,1] <- "Saint Kitts"
deuda[157,1] <- "Saint Lucia"
deuda[158,1] <- "Saint Vincent"
deuda[165,1] <- "Taiwan"
deuda[169,1] <- "Timor-Leste"
deuda[172,1] <- "Trinidad"
deuda[176,] <- NULL
deuda[177,1] <- "United Arab Emirates"
deuda[180,1] <- "UK"
deuda[181,1] <- "USA"
deuda[185,1] <- "Venezuela"
deuda[187,1] <- "Palestine"

deuda <- deuda[-c(72,176),]

apoyo <- as.character(1950:2017)

for (i in apoyo) {
 x <- deuda[,c("country",i)]
 names(x) <- c("region",i)
 assign(paste("deuda",i,sep = "_"),x,envir = globalenv())
}

deuda_1950 %<>% left_join(Mundo, by="region")
deuda_1951 %<>% left_join(Mundo, by="region")
deuda_1952 %<>% left_join(Mundo, by="region")
deuda_1953 %<>% left_join(Mundo, by="region")
deuda_1954 %<>% left_join(Mundo, by="region")
deuda_1955 %<>% left_join(Mundo, by="region")
deuda_1956 %<>% left_join(Mundo, by="region")
deuda_1957 %<>% left_join(Mundo, by="region")
deuda_1958 %<>% left_join(Mundo, by="region")
deuda_1959 %<>% left_join(Mundo, by="region")
deuda_1960 %<>% left_join(Mundo, by="region")
deuda_1961 %<>% left_join(Mundo, by="region")
deuda_1962 %<>% left_join(Mundo, by="region")
deuda_1963 %<>% left_join(Mundo, by="region")
deuda_1964 %<>% left_join(Mundo, by="region")
deuda_1965 %<>% left_join(Mundo, by="region")
deuda_1966 %<>% left_join(Mundo, by="region")
deuda_1967 %<>% left_join(Mundo, by="region")
deuda_1968 %<>% left_join(Mundo, by="region")
deuda_1969 %<>% left_join(Mundo, by="region")
deuda_1970 %<>% left_join(Mundo, by="region")
deuda_1971 %<>% left_join(Mundo, by="region")
deuda_1972 %<>% left_join(Mundo, by="region")
deuda_1973 %<>% left_join(Mundo, by="region")
deuda_1974 %<>% left_join(Mundo, by="region")
deuda_1975 %<>% left_join(Mundo, by="region")
deuda_1976 %<>% left_join(Mundo, by="region")
deuda_1977 %<>% left_join(Mundo, by="region")
deuda_1978 %<>% left_join(Mundo, by="region")
deuda_1979 %<>% left_join(Mundo, by="region")
deuda_1980 %<>% left_join(Mundo, by="region")
deuda_1981 %<>% left_join(Mundo, by="region")
deuda_1982 %<>% left_join(Mundo, by="region")
deuda_1983 %<>% left_join(Mundo, by="region")
deuda_1984 %<>% left_join(Mundo, by="region")
deuda_1985 %<>% left_join(Mundo, by="region")
deuda_1986 %<>% left_join(Mundo, by="region")
deuda_1987 %<>% left_join(Mundo, by="region")
deuda_1988 %<>% left_join(Mundo, by="region")
deuda_1989 %<>% left_join(Mundo, by="region")
deuda_1990 %<>% left_join(Mundo, by="region")
deuda_1991 %<>% left_join(Mundo, by="region")
deuda_1992 %<>% left_join(Mundo, by="region")
deuda_1993 %<>% left_join(Mundo, by="region")
deuda_1994 %<>% left_join(Mundo, by="region")
deuda_1995 %<>% left_join(Mundo, by="region")
deuda_1996 %<>% left_join(Mundo, by="region")
deuda_1997 %<>% left_join(Mundo, by="region")
deuda_1998 %<>% left_join(Mundo, by="region")
deuda_1999 %<>% left_join(Mundo, by="region")
deuda_2000 %<>% left_join(Mundo, by="region")
deuda_2001 %<>% left_join(Mundo, by="region")
deuda_2002 %<>% left_join(Mundo, by="region")
deuda_2003 %<>% left_join(Mundo, by="region")
deuda_2004 %<>% left_join(Mundo, by="region")
deuda_2005 %<>% left_join(Mundo, by="region")
deuda_2006 %<>% left_join(Mundo, by="region")
deuda_2007 %<>% left_join(Mundo, by="region")
deuda_2008 %<>% left_join(Mundo, by="region")
deuda_2009 %<>% left_join(Mundo, by="region")
deuda_2010 %<>% left_join(Mundo, by="region")
deuda_2011 %<>% left_join(Mundo, by="region")
deuda_2012 %<>% left_join(Mundo, by="region")
deuda_2013 %<>% left_join(Mundo, by="region")
deuda_2014 %<>% left_join(Mundo, by="region")
deuda_2015 %<>% left_join(Mundo, by="region")
deuda_2016 %<>% left_join(Mundo, by="region")
deuda_2017 %<>% left_join(Mundo, by="region")

#aplicar el gather

deuda_1950 %<>% gather(`1950`,"Deuda",2)
deuda_1951 %<>% gather(`1951`,"Deuda",2)
deuda_1952 %<>% gather(`1952`,"Deuda",2)
deuda_1953 %<>% gather(`1953`,"Deuda",2)
deuda_1954 %<>% gather(`1954`,"Deuda",2)
deuda_1955 %<>% gather(`1955`,"Deuda",2)
deuda_1956 %<>% gather(`1956`,"Deuda",2)
deuda_1957 %<>% gather(`1957`,"Deuda",2)
deuda_1958 %<>% gather(`1958`,"Deuda",2)
deuda_1959 %<>% gather(`1959`,"Deuda",2)
deuda_1960 %<>% gather(`1960`,"Deuda",2)
deuda_1961 %<>% gather(`1961`,"Deuda",2)
deuda_1962 %<>% gather(`1962`,"Deuda",2)
deuda_1963 %<>% gather(`1963`,"Deuda",2)
deuda_1964 %<>% gather(`1964`,"Deuda",2)
deuda_1965 %<>% gather(`1965`,"Deuda",2)
deuda_1966 %<>% gather(`1966`,"Deuda",2)
deuda_1967 %<>% gather(`1967`,"Deuda",2)
deuda_1968 %<>% gather(`1968`,"Deuda",2)
deuda_1969 %<>% gather(`1969`,"Deuda",2)
deuda_1970 %<>% gather(`1970`,"Deuda",2)
deuda_1971 %<>% gather(`1971`,"Deuda",2)
deuda_1972 %<>% gather(`1972`,"Deuda",2)
deuda_1973 %<>% gather(`1973`,"Deuda",2)
deuda_1974 %<>% gather(`1974`,"Deuda",2)
deuda_1975 %<>% gather(`1975`,"Deuda",2)
deuda_1976 %<>% gather(`1976`,"Deuda",2)
deuda_1977 %<>% gather(`1977`,"Deuda",2)
deuda_1978 %<>% gather(`1978`,"Deuda",2)
deuda_1979 %<>% gather(`1979`,"Deuda",2)
deuda_1980 %<>% gather(`1980`,"Deuda",2)
deuda_1981 %<>% gather(`1981`,"Deuda",2)
deuda_1982 %<>% gather(`1982`,"Deuda",2)
deuda_1983 %<>% gather(`1983`,"Deuda",2)
deuda_1984 %<>% gather(`1984`,"Deuda",2)
deuda_1985 %<>% gather(`1985`,"Deuda",2)
deuda_1986 %<>% gather(`1986`,"Deuda",2)
deuda_1987 %<>% gather(`1987`,"Deuda",2)
deuda_1988 %<>% gather(`1988`,"Deuda",2)
deuda_1989 %<>% gather(`1989`,"Deuda",2)
deuda_1990 %<>% gather(`1990`,"Deuda",2)
deuda_1991 %<>% gather(`1991`,"Deuda",2)
deuda_1992 %<>% gather(`1992`,"Deuda",2)
deuda_1993 %<>% gather(`1993`,"Deuda",2)
deuda_1994 %<>% gather(`1994`,"Deuda",2)
deuda_1995 %<>% gather(`1995`,"Deuda",2)
deuda_1996 %<>% gather(`1996`,"Deuda",2)
deuda_1997 %<>% gather(`1997`,"Deuda",2)
deuda_1998 %<>% gather(`1998`,"Deuda",2)
deuda_1999 %<>% gather(`1999`,"Deuda",2)
deuda_2000 %<>% gather(`2000`,"Deuda",2)
deuda_2001 %<>% gather(`2001`,"Deuda",2)
deuda_2002 %<>% gather(`2002`,"Deuda",2)
deuda_2003 %<>% gather(`2003`,"Deuda",2)
deuda_2004 %<>% gather(`2004`,"Deuda",2)
deuda_2005 %<>% gather(`2005`,"Deuda",2)
deuda_2006 %<>% gather(`2006`,"Deuda",2)
deuda_2007 %<>% gather(`2007`,"Deuda",2)
deuda_2008 %<>% gather(`2008`,"Deuda",2)
deuda_2009 %<>% gather(`2009`,"Deuda",2)
deuda_2010 %<>% gather(`2010`,"Deuda",2)
deuda_2011 %<>% gather(`2011`,"Deuda",2)
deuda_2012 %<>% gather(`2012`,"Deuda",2)
deuda_2013 %<>% gather(`2013`,"Deuda",2)
deuda_2014 %<>% gather(`2014`,"Deuda",2)
deuda_2015 %<>% gather(`2015`,"Deuda",2)
deuda_2016 %<>% gather(`2016`,"Deuda",2)
deuda_2017 %<>% gather(`2017`,"Deuda",2)

#renombrar

names(deuda_1950) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1951) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1952) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1953) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1954) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1955) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1956) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1957) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1958) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1959) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1960) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1961) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1962) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1963) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1964) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1965) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1966) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1967) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1968) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1969) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1970) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1971) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1972) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1973) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1974) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1975) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1976) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1977) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1978) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1979) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1980) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1981) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1982) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1983) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1984) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1985) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1986) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1987) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1988) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1989) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1990) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1991) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1992) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1993) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1994) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1995) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1996) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1997) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1998) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_1999) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_2000) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_2001) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_2002) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_2003) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_2004) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_2005) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_2006) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_2007) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_2008) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_2009) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_2010) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_2011) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_2012) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_2013) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_2014) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_2015) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_2016) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")
names(deuda_2017) <- c("region", "long", "lat", "group", "order", "subregion", "year", "Deuda")


Deuda <- rbind(deuda_1950,
               deuda_1951,
               deuda_1952,
               deuda_1953,
               deuda_1954,
               deuda_1955,
               deuda_1956,
               deuda_1957,
               deuda_1958,
               deuda_1959,
               deuda_1960,
               deuda_1961,
               deuda_1962,
               deuda_1963,
               deuda_1964,
               deuda_1965,
               deuda_1966,
               deuda_1967,
               deuda_1968,
               deuda_1969,
               deuda_1970,
               deuda_1971,
               deuda_1972,
               deuda_1973,
               deuda_1974,
               deuda_1975,
               deuda_1976,
               deuda_1977,
               deuda_1978,
               deuda_1979,
               deuda_1980,
               deuda_1981,
               deuda_1982,
               deuda_1983,
               deuda_1984,
               deuda_1985,
               deuda_1986,
               deuda_1987,
               deuda_1988,
               deuda_1989,
               deuda_1990,
               deuda_1991,
               deuda_1992,
               deuda_1993,
               deuda_1994,
               deuda_1995,
               deuda_1996,
               deuda_1997,
               deuda_1998,
               deuda_1999,
               deuda_2000,
               deuda_2001,
               deuda_2002,
               deuda_2003,
               deuda_2004,
               deuda_2005,
               deuda_2006,
               deuda_2007,
               deuda_2008,
               deuda_2009,
               deuda_2010,
               deuda_2011,
               deuda_2012,
               deuda_2013,
               deuda_2014,
               deuda_2015,
               deuda_2016,
               deuda_2017)

Deuda$region %<>% as.factor()
Deuda$year %<>% as.factor()

str(Deuda)

rm(deuda_1950,
      deuda_1951,
      deuda_1952,
      deuda_1953,
      deuda_1954,
      deuda_1955,
      deuda_1956,
      deuda_1957,
      deuda_1958,
      deuda_1959,
      deuda_1960,
      deuda_1961,
      deuda_1962,
      deuda_1963,
      deuda_1964,
      deuda_1965,
      deuda_1966,
      deuda_1967,
      deuda_1968,
      deuda_1969,
      deuda_1970,
      deuda_1971,
      deuda_1972,
      deuda_1973,
      deuda_1974,
      deuda_1975,
      deuda_1976,
      deuda_1977,
      deuda_1978,
      deuda_1979,
      deuda_1980,
      deuda_1981,
      deuda_1982,
      deuda_1983,
      deuda_1984,
      deuda_1985,
      deuda_1986,
      deuda_1987,
      deuda_1988,
      deuda_1989,
      deuda_1990,
      deuda_1991,
      deuda_1992,
      deuda_1993,
      deuda_1994,
      deuda_1995,
      deuda_1996,
      deuda_1997,
      deuda_1998,
      deuda_1999,
      deuda_2000,
      deuda_2001,
      deuda_2002,
      deuda_2003,
      deuda_2004,
      deuda_2005,
      deuda_2006,
      deuda_2007,
      deuda_2008,
      deuda_2009,
      deuda_2010,
      deuda_2011,
      deuda_2012,
      deuda_2013,
      deuda_2014,
      deuda_2015,
      deuda_2016,
      deuda_2017)

names(Deuda) <- c("region", "long", "lat", "group", "order", "subregion", "year", "% del PIB")

rm(deuda)

Deuda$year %<>% as.factor()

prueba_de_paleta <- colorRampPalette(c("White","Red","Red","Red","Red","Black",
                                       "Black","Black","Black","Black","Black",
                                       "Black","Black","Black"))



Deuda_Mundial <-  Deuda %>% ggplot(aes(x = long, y = lat, fill=`% del PIB`)) + 
  geom_polygon(aes( group = group)) + theme_minimal() +
  scale_fill_gradientn(colours = prueba_de_paleta(14)) +
  labs(title = "Deuda publica como porcentaje del PIB", 
       subtitle="Año {current_frame}", x = element_blank(),
       y = element_blank(), caption = "Source: FMI / Elaboracion: @4drian.bautista") + 
  theme_ft_rc() + theme(plot.subtitle=element_text(size=32, color="grey")) +
  transition_manual(year) + ease_aes('cubic-in-out')


animate(Deuda_Mundial,fps = 25, duration = 23 ,width = 960, height = 540)

anim_save("Evolucion_de_la_deuda.gif")
