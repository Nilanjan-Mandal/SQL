-- Load table with the data. 


LOAD DATA LOCAL INFILE /Users/nilanjan/Google Drive/My Drive/IT/Data Engineering /Bigdata/Spark/DataSets/orders.csv INTO TABLE orders;


LOAD DATA LOCAL INFILE 'Yelp_ALL/ratings.txt' INTO TABLE ratings FIELDS TERMINATED BY '::' OPTIONALLY ENCLOSED BY '\"' LINES TERMINATED BY '\n' IGNORE 1 LINES (userid, itemid, ratings)"