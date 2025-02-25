PGDMP      5                |            SGVT_DB    16.2    16.2 "               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16413    SGVT_DB    DATABASE     �   CREATE DATABASE "SGVT_DB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "SGVT_DB";
                postgres    false            �            1259    16414    FarmData    TABLE     �   CREATE TABLE public."FarmData" (
    "FarmID" integer NOT NULL,
    "FarmName" character varying(200) NOT NULL,
    "GPS" character varying(200) NOT NULL
);
    DROP TABLE public."FarmData";
       public         heap    postgres    false            �            1259    16430    FarmSpecies    TABLE     g   CREATE TABLE public."FarmSpecies" (
    "FarmID" integer NOT NULL,
    "SpeciesID" integer NOT NULL
);
 !   DROP TABLE public."FarmSpecies";
       public         heap    postgres    false            �            1259    16463    GrowthPeriod    TABLE     �   CREATE TABLE public."GrowthPeriod" (
    "GrowthPeriodID" integer NOT NULL,
    "SpeciesID" integer NOT NULL,
    "Period" character varying(200) NOT NULL
);
 "   DROP TABLE public."GrowthPeriod";
       public         heap    postgres    false            �            1259    16477    KnowledgeBase    TABLE       CREATE TABLE public."KnowledgeBase" (
    "KnowledgeBaseID" integer NOT NULL,
    "SpeciesID" integer NOT NULL,
    "GrowthPeriodID" integer NOT NULL,
    "ParameterName" character varying(200) NOT NULL,
    "MinValue" numeric,
    "MaxValue" numeric,
    "OptimalValue" numeric
);
 #   DROP TABLE public."KnowledgeBase";
       public         heap    postgres    false            �            1259    16521 
   SensorData    TABLE     ;  CREATE TABLE public."SensorData" (
    "SensorDataID" integer NOT NULL,
    "FarmID" integer NOT NULL,
    "Timestamp" timestamp without time zone NOT NULL,
    "AirHumidity" numeric,
    "SoilHumidity" numeric,
    "Luminosity" numeric,
    "PHLevel" numeric,
    "Temperature" numeric,
    "WindSpeed" numeric
);
     DROP TABLE public."SensorData";
       public         heap    postgres    false            �            1259    16446    Species    TABLE     p   CREATE TABLE public."Species" (
    "SpeciesID" integer NOT NULL,
    "Name" character varying(200) NOT NULL
);
    DROP TABLE public."Species";
       public         heap    postgres    false                      0    16414    FarmData 
   TABLE DATA           A   COPY public."FarmData" ("FarmID", "FarmName", "GPS") FROM stdin;
    public          postgres    false    215   �+                 0    16430    FarmSpecies 
   TABLE DATA           >   COPY public."FarmSpecies" ("FarmID", "SpeciesID") FROM stdin;
    public          postgres    false    216   I,                 0    16463    GrowthPeriod 
   TABLE DATA           Q   COPY public."GrowthPeriod" ("GrowthPeriodID", "SpeciesID", "Period") FROM stdin;
    public          postgres    false    218   n,                 0    16477    KnowledgeBase 
   TABLE DATA           �   COPY public."KnowledgeBase" ("KnowledgeBaseID", "SpeciesID", "GrowthPeriodID", "ParameterName", "MinValue", "MaxValue", "OptimalValue") FROM stdin;
    public          postgres    false    219   U-                 0    16521 
   SensorData 
   TABLE DATA           �   COPY public."SensorData" ("SensorDataID", "FarmID", "Timestamp", "AirHumidity", "SoilHumidity", "Luminosity", "PHLevel", "Temperature", "WindSpeed") FROM stdin;
    public          postgres    false    220   .                 0    16446    Species 
   TABLE DATA           8   COPY public."Species" ("SpeciesID", "Name") FROM stdin;
    public          postgres    false    217   +.       d           2606    16418    FarmData FarmData_FarmID_unique 
   CONSTRAINT     b   ALTER TABLE ONLY public."FarmData"
    ADD CONSTRAINT "FarmData_FarmID_unique" UNIQUE ("FarmID");
 M   ALTER TABLE ONLY public."FarmData" DROP CONSTRAINT "FarmData_FarmID_unique";
       public            postgres    false    215            f           2606    16420    FarmData FarmData_FarmName_key 
   CONSTRAINT     c   ALTER TABLE ONLY public."FarmData"
    ADD CONSTRAINT "FarmData_FarmName_key" UNIQUE ("FarmName");
 L   ALTER TABLE ONLY public."FarmData" DROP CONSTRAINT "FarmData_FarmName_key";
       public            postgres    false    215            h           2606    16422    FarmData FarmData_GPS_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public."FarmData"
    ADD CONSTRAINT "FarmData_GPS_key" UNIQUE ("GPS");
 G   ALTER TABLE ONLY public."FarmData" DROP CONSTRAINT "FarmData_GPS_key";
       public            postgres    false    215            j           2606    16438    FarmData FarmData_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."FarmData"
    ADD CONSTRAINT "FarmData_pkey" PRIMARY KEY ("FarmID");
 D   ALTER TABLE ONLY public."FarmData" DROP CONSTRAINT "FarmData_pkey";
       public            postgres    false    215            l           2606    16434 "   FarmSpecies FarmSpecies_FarmID_key 
   CONSTRAINT     e   ALTER TABLE ONLY public."FarmSpecies"
    ADD CONSTRAINT "FarmSpecies_FarmID_key" UNIQUE ("FarmID");
 P   ALTER TABLE ONLY public."FarmSpecies" DROP CONSTRAINT "FarmSpecies_FarmID_key";
       public            postgres    false    216            n           2606    16436 %   FarmSpecies FarmSpecies_SpeciesID_key 
   CONSTRAINT     k   ALTER TABLE ONLY public."FarmSpecies"
    ADD CONSTRAINT "FarmSpecies_SpeciesID_key" UNIQUE ("SpeciesID");
 S   ALTER TABLE ONLY public."FarmSpecies" DROP CONSTRAINT "FarmSpecies_SpeciesID_key";
       public            postgres    false    216            t           2606    16467    GrowthPeriod GrowthPeriod_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."GrowthPeriod"
    ADD CONSTRAINT "GrowthPeriod_pkey" PRIMARY KEY ("GrowthPeriodID");
 L   ALTER TABLE ONLY public."GrowthPeriod" DROP CONSTRAINT "GrowthPeriod_pkey";
       public            postgres    false    218            v           2606    16483     KnowledgeBase KnowledgeBase_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public."KnowledgeBase"
    ADD CONSTRAINT "KnowledgeBase_pkey" PRIMARY KEY ("KnowledgeBaseID");
 N   ALTER TABLE ONLY public."KnowledgeBase" DROP CONSTRAINT "KnowledgeBase_pkey";
       public            postgres    false    219            x           2606    16529     SensorData SensorData_FarmID_key 
   CONSTRAINT     c   ALTER TABLE ONLY public."SensorData"
    ADD CONSTRAINT "SensorData_FarmID_key" UNIQUE ("FarmID");
 N   ALTER TABLE ONLY public."SensorData" DROP CONSTRAINT "SensorData_FarmID_key";
       public            postgres    false    220            z           2606    16527    SensorData SensorData_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."SensorData"
    ADD CONSTRAINT "SensorData_pkey" PRIMARY KEY ("SensorDataID");
 H   ALTER TABLE ONLY public."SensorData" DROP CONSTRAINT "SensorData_pkey";
       public            postgres    false    220            p           2606    16452    Species Species_Name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public."Species"
    ADD CONSTRAINT "Species_Name_key" UNIQUE ("Name");
 F   ALTER TABLE ONLY public."Species" DROP CONSTRAINT "Species_Name_key";
       public            postgres    false    217            r           2606    16450    Species Species_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Species"
    ADD CONSTRAINT "Species_pkey" PRIMARY KEY ("SpeciesID");
 B   ALTER TABLE ONLY public."Species" DROP CONSTRAINT "Species_pkey";
       public            postgres    false    217            }           2606    16500 (   GrowthPeriod GrowthPeriod_SpeciesID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."GrowthPeriod"
    ADD CONSTRAINT "GrowthPeriod_SpeciesID_fkey" FOREIGN KEY ("SpeciesID") REFERENCES public."Species"("SpeciesID") ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public."GrowthPeriod" DROP CONSTRAINT "GrowthPeriod_SpeciesID_fkey";
       public          postgres    false    217    218    4722            ~           2606    16510 /   KnowledgeBase KnowledgeBase_GrowthPeriodID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."KnowledgeBase"
    ADD CONSTRAINT "KnowledgeBase_GrowthPeriodID_fkey" FOREIGN KEY ("GrowthPeriodID") REFERENCES public."GrowthPeriod"("GrowthPeriodID") ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public."KnowledgeBase" DROP CONSTRAINT "KnowledgeBase_GrowthPeriodID_fkey";
       public          postgres    false    4724    218    219                       2606    16505 *   KnowledgeBase KnowledgeBase_SpeciesID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."KnowledgeBase"
    ADD CONSTRAINT "KnowledgeBase_SpeciesID_fkey" FOREIGN KEY ("SpeciesID") REFERENCES public."Species"("SpeciesID") ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public."KnowledgeBase" DROP CONSTRAINT "KnowledgeBase_SpeciesID_fkey";
       public          postgres    false    4722    219    217            �           2606    16535 !   SensorData SensorData_FarmID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."SensorData"
    ADD CONSTRAINT "SensorData_FarmID_fkey" FOREIGN KEY ("FarmID") REFERENCES public."FarmData"("FarmID") ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public."SensorData" DROP CONSTRAINT "SensorData_FarmID_fkey";
       public          postgres    false    4708    215    220            {           2606    16453 #   FarmSpecies fk_farmdata_farmspecies    FK CONSTRAINT     �   ALTER TABLE ONLY public."FarmSpecies"
    ADD CONSTRAINT fk_farmdata_farmspecies FOREIGN KEY ("FarmID") REFERENCES public."FarmData"("FarmID") ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public."FarmSpecies" DROP CONSTRAINT fk_farmdata_farmspecies;
       public          postgres    false    215    4708    216            |           2606    16458    Species fk_farmspecies_species    FK CONSTRAINT     �   ALTER TABLE ONLY public."Species"
    ADD CONSTRAINT fk_farmspecies_species FOREIGN KEY ("SpeciesID") REFERENCES public."FarmSpecies"("SpeciesID") ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public."Species" DROP CONSTRAINT fk_farmspecies_species;
       public          postgres    false    4718    216    217               C   x�3�v�41�374�8�A�OG��D���� �	�2�s�4��A�-�L����1z\\\ f]]            x�3�4�2�4����� ��         �   x�}�MN1�דS��L��
,+�%3�$�$r��)�!�|�{���d�#SE�ك��ߚ0
�Y�!s\�_�Sv������G�Q��Q��A�,o�y:&�r�Q�9���S^��)~	L4�Z:C"�YX�V	�/�y-ɑ3�>Dd����͞bz���q�ףLIIG[ �FAk�|�6��KA��yl(��+݇��SW�s����{y����$o�         �   x�U�1�0Eg�0���I�:t@����Z�B[���Bj���ς�ni|�򘗒�h\4�N�u�C�����/�a���`�F7ι�Be�"c����iM0�Ț�RxM�ԇ�у<���	8/2a�y�7�WI� <m��᫇t$�|���H�m��n���B�            x������ � �         .   x�3���,.I-R�--�(����2���L*�LQ�M̬J����� ���     