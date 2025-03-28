PGDMP   '                    }            my_database    14.17 (Homebrew)    17.0     S           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            T           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            U           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            V           1262    16386    my_database    DATABASE     m   CREATE DATABASE my_database WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE my_database;
                     postgres    false                        2615    16387    customer_management    SCHEMA     #   CREATE SCHEMA customer_management;
 !   DROP SCHEMA customer_management;
                     postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                  
   rssolgaleo    false            W           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                     
   rssolgaleo    false    6            �            1259    16388    client    TABLE     �   CREATE TABLE customer_management.client (
    id bigint NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    birthday date
);
 '   DROP TABLE customer_management.client;
       customer_management         heap r       postgres    false    5            �            1259    16394    order    TABLE     �   CREATE TABLE customer_management."order" (
    id bigint NOT NULL,
    id_client bigint NOT NULL,
    date_order date NOT NULL,
    total bigint NOT NULL
);
 (   DROP TABLE customer_management."order";
       customer_management         heap r       postgres    false    5            O          0    16388    client 
   TABLE DATA           R   COPY customer_management.client (id, first_name, last_name, birthday) FROM stdin;
    customer_management               postgres    false    210   �       P          0    16394    order 
   TABLE DATA           P   COPY customer_management."order" (id, id_client, date_order, total) FROM stdin;
    customer_management               postgres    false    211          �           2606    16393 	   client R1    CHECK CONSTRAINT     r   ALTER TABLE customer_management.client
    ADD CONSTRAINT "R1" CHECK ((birthday > '1900-01-01'::date)) NOT VALID;
 =   ALTER TABLE customer_management.client DROP CONSTRAINT "R1";
       customer_management               postgres    false    210    210            �           2606    16392    client client_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY customer_management.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY customer_management.client DROP CONSTRAINT client_pkey;
       customer_management                 postgres    false    210            �           2606    16397    order id_client    FK CONSTRAINT     �   ALTER TABLE ONLY customer_management."order"
    ADD CONSTRAINT id_client FOREIGN KEY (id_client) REFERENCES customer_management.client(id);
 H   ALTER TABLE ONLY customer_management."order" DROP CONSTRAINT id_client;
       customer_management               postgres    false    3522    211    210            O       1	Ruslan	Samigulling	2003-07-24
    \.


      P      1	1	2025-03-13	5000
    1	1	2025-03-13	5000
    1	1	2025-03-13	5000
    1	1	2025-03-13	5000
    1	1	2025-03-13	5000
    1	1	2025-03-13	5000
    1	1	2025-03-13	5000
    1	1	2025-03-13	5000
    \.


     