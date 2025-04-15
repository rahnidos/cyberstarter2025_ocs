CREATE VIEW `hardware_view`  
AS SELECT 
    `hard`.`ID` AS `ID`, 
    `hard`.`DEVICEID` AS `DEVICEID`, 
    `hard`.`NAME` AS `NAME`, 
    `hard`.`WORKGROUP` AS `WORKGROUP`, 
    `hard`.`OSNAME` AS `OSNAME`, 
    `hard`.`OSVERSION` AS `OSVERSION`, 
    `hard`.`PROCESSORS` AS `PROCESSORS`, 
    `hard`.`MEMORY` AS `MEMORY`, 
    `hard`.`SWAP` AS `SWAP`, 
    `hard`.`IPADDR` AS `IPADDR`, 
    `hard`.`DNS` AS `DNS`, 
    `hard`.`DEFAULTGATEWAY` AS `DEFAULTGATEWAY`, 
    `hard`.`LASTDATE` AS `LASTDATE`, 
    `hard`.`LASTCOME` AS `LASTCOME`, 
    `hard`.`USERID` AS `USERID`, 
    `hard`.`DESCRIPTION` AS `DESCRIPTION`, 
    `hard`.`WINCOMPANY` AS `WINCOMPANY`, 
    `hard`.`WINOWNER` AS `WINOWNER`, 
    `hard`.`WINPRODID` AS `WINPRODID`, 
    `hard`.`WINPRODKEY` AS `WINPRODKEY`, 
    `hard`.`USERAGENT` AS `USERAGENT`, 
    `hard`.`CHECKSUM` AS `CHECKSUM`, 
    `hard`.`IPSRC` AS `IPSRC`, 
    `hard`.`UUID` AS `UUID`, 
    `hard`.`ARCH` AS `ARCH`, 
    `hard`.`CATEGORY_ID` AS `CATEGORY_ID` FROM `hardware` AS `hard` ;

CREATE VIEW `all_get_software`  
AS SELECT 
    `soft`.`ID` AS `SoftID`, 
    `soft`.`HARDWARE_ID` AS `HARDWARE_ID`, 
    `name`.`NAME` AS `Name`, 
    `publisher`.`PUBLISHER` AS `Publisher`, 
    `version`.`VERSION` AS `Version`, 
    `soft`.`COMMENTS` AS `Comment`, 
    `category`.`CATEGORY_ID` AS `Category_ID` 
        FROM ((((`software` `soft` join `software_name` `name` on(`name`.`ID` = `soft`.`NAME_ID`)) 
            join `software_publisher` `publisher` on(`publisher`.`ID` = `soft`.`PUBLISHER_ID`)) 
            join `software_version` `version` on(`version`.`ID` = `soft`.`VERSION_ID`)) 
            join `software_categories_link` `category` on(`category`.`NAME_ID` = `name`.`ID`)) ;

