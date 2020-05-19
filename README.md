# waygate

An interactive companion map to the Wheel of Time series by Robert Jordan.

# Setup React frontend

# Setup Django backend

# Setup PostgreSQL
 
Setup PostgreSQL database

https://wiki.archlinux.org/index.php/PostgreSQL

Setup Django to use PostgreSQL backend

https://www.digitalocean.com/community/tutorials/how-to-use-postgresql-with-your-django-application-on-ubuntu-14-04

# Tips & Tricks

Reset sequence

        ALTER SEQUENCE map_chapter_id_seq RESTART;
        UPDATE map_chapter set id = DEFAULT;
        
    
