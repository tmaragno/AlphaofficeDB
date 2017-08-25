alter table PRODUCTS add column `TWITTER_TAG` varchar(1000) after `EXTERNAL_URL`;

update PRODUCTS set TWITTER_TAG=concat('#',SUBSTRING_INDEX(`PRODUCT_NAME`, ' ', 1));
