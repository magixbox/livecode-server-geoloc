<<<<<<< HEAD
# geoloc

=======
>>>>>>> b2c24204b5af0dbfa240f57a7578c4b93d9db297
Livecode server geoloc service
======================================================
Support query with ip, like geoloc.lc?ip=xx.xx.xxx.xx
default to use the client IP if ip is not provided.
Web server needs to have livecode server installed (works with community version).
Demo at https://magixbox.on-rev.com/geoloc/geoloc.lc

geoloc data from:
  https://www.maxmind.com/en/open-source-data-and-api-for-ip-geolocation
Import the geolite2 database directly using sqlite3 client manually,
keep the columns, just change the table to 'block' and 'loc'.
See seperate note for creating the database or download it here at:
  https://magixbox.on-rev.com/geoloc/geoloc.db.bz2 (64 Mb, likely out of date)

All source code here:-
  https://github.com/magixbox/livecode-server-geoloc

by BEI: magixbox at gmail 
2019-02
