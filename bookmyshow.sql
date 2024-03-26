P1:
 location(locationid,city,state,pincode,street)
 movies(moviename,movieid,moviemetadata);
 theater(theatreid,theatrename,foreignkey(locationid));
 screen(screenid,seatingcapacity,screenmetadata,foreignkey(theatreid),foreignkey(movieid));

 P2:
    CREATE TABLE location (
    locationid varchar(40),
    city varchar(20),
    state varchar(20),
    pincode varchar(8),
    street varchar(255),
);

CREATE TABLE movie (
    moviename varchar(40),
    movieid varchar(20),
    moviemetadata BLOB,
);

CREATE TABLE theater (
    theatreid varchar(40),
    theatrename varchar(20),
    locationid varchar(40),
);

CREATE TABLE screen (
    screenid varchar(40),
    seatingcapacity varchar(20),
    screenmetadata BLOB,
    theatreid varchar(40),
    movieid varchar(20),
);