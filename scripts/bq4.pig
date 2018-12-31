bq4data = load 'EZData/BQ4/part-m-00000' using PigStorage('|') as 
(country_name:chararray, country_code:chararray, 
inidcator_name:chararray, indicator_code:chararray, 
yr1960:double, yr1961:double, yr1962:double, yr1963:double, yr1964:double, 
yr1965:double, yr1966:double, yr1967:double, yr1968:double, yr1969:double, 
yr1970:double, yr1971:double, yr1972:double, yr1973:double, yr1974:double, 
yr1975:double, yr1976:double, yr1977:double, yr1978:double, yr1979:double, 
yr1980:double, yr1981:double, yr1982:double, yr1983:double, yr1984:double, 
yr1985:double, yr1986:double, yr1987:double, yr1988:double, yr1989:double, 
yr1990:double, yr1991:double, yr1992:double, yr1993:double, yr1994:double, 
yr1995:double, yr1996:double, yr1997:double, yr1998:double, yr1999:double, 
yr2000:double, yr2001:double, yr2002:double, yr2003:double, yr2004:double, 
yr2005:double, yr2006:double, yr2007:double, yr2008:double, yr2009:double, 
yr2010:double, yr2011:double, yr2012:double, yr2013:double, yr2014:double, 
yr2015:double, yr2016:double);

bq4 = foreach bq4data generate
country_name, 
(yr2001 - yr2000), 
(yr2002 - yr2001), 
(yr2003 - yr2002), 
(yr2004 - yr2003), 
(yr2005 - yr2004), 
(yr2006 - yr2005), 
(yr2007 - yr2006), 
(yr2008 - yr2007), 
(yr2009 - yr2008), 
(yr2010 - yr2009), 
(yr2011 - yr2010), 
(yr2012 - yr2011), 
(yr2013 - yr2012), 
(yr2014 - yr2013), 
(yr2015 - yr2014), 
(yr2016 - yr2015);

bq4WithKey = rank bq4;

STORE bq4WithKey INTO 'hbase://bq4' USING org.apache.pig.backend.hadoop.hbase.HBaseStorage(
'data:country, 
data:y2000_2001, 
data:y2001_2002, 
data:y2002_2003, 
data:y2003_2004, 
data:y2004_2005, 
data:y2005_2006, 
data:y2006_2007, 
data:y2007_2008, 
data:y2008_2009, 
data:y2009_2010, 
data:y2010_2011, 
data:y2011_2012, 
data:y2012_2013, 
data:y2013_2014, 
data:y2014_2015, 
data:y2015_2016');