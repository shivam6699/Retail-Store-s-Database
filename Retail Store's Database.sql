PGDMP      1                }            Retail Store    17.2    17.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16662    Retail Store    DATABASE     �   CREATE DATABASE "Retail Store" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE "Retail Store";
                     postgres    false            �            1259    16663 	   customers    TABLE     �   CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    first_name character varying(100),
    last_name character varying(100),
    email character varying(100),
    phone character varying(20),
    address text,
    join_date date
);
    DROP TABLE public.customers;
       public         heap r       postgres    false            �            1259    16685    orderdetails    TABLE     �   CREATE TABLE public.orderdetails (
    order_detail_id integer NOT NULL,
    order_id integer,
    product_id integer,
    quantity integer,
    unit_price numeric(10,2)
);
     DROP TABLE public.orderdetails;
       public         heap r       postgres    false            �            1259    16675    orders    TABLE     �   CREATE TABLE public.orders (
    order_id integer NOT NULL,
    customer_id integer,
    order_date date,
    total_amount numeric(10,2),
    order_status character varying(20)
);
    DROP TABLE public.orders;
       public         heap r       postgres    false            �            1259    16700    payments    TABLE     �   CREATE TABLE public.payments (
    payment_id integer NOT NULL,
    order_id integer,
    payment_date date,
    payment_amount numeric(10,2),
    payment_method character varying(20)
);
    DROP TABLE public.payments;
       public         heap r       postgres    false            �            1259    16670    products    TABLE     �   CREATE TABLE public.products (
    product_id integer NOT NULL,
    product_name character varying(100),
    category character varying(50),
    price numeric(10,2),
    stock_quantity integer
);
    DROP TABLE public.products;
       public         heap r       postgres    false            �          0    16663 	   customers 
   TABLE DATA           i   COPY public.customers (customer_id, first_name, last_name, email, phone, address, join_date) FROM stdin;
    public               postgres    false    217          �          0    16685    orderdetails 
   TABLE DATA           c   COPY public.orderdetails (order_detail_id, order_id, product_id, quantity, unit_price) FROM stdin;
    public               postgres    false    220   �       �          0    16675    orders 
   TABLE DATA           _   COPY public.orders (order_id, customer_id, order_date, total_amount, order_status) FROM stdin;
    public               postgres    false    219   �       �          0    16700    payments 
   TABLE DATA           f   COPY public.payments (payment_id, order_id, payment_date, payment_amount, payment_method) FROM stdin;
    public               postgres    false    221   {       �          0    16670    products 
   TABLE DATA           ]   COPY public.products (product_id, product_name, category, price, stock_quantity) FROM stdin;
    public               postgres    false    218           1           2606    16669    customers customers_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public                 postgres    false    217            7           2606    16689    orderdetails orderdetails_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.orderdetails
    ADD CONSTRAINT orderdetails_pkey PRIMARY KEY (order_detail_id);
 H   ALTER TABLE ONLY public.orderdetails DROP CONSTRAINT orderdetails_pkey;
       public                 postgres    false    220            5           2606    16679    orders orders_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public                 postgres    false    219            9           2606    16704    payments payments_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (payment_id);
 @   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_pkey;
       public                 postgres    false    221            3           2606    16674    products products_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public                 postgres    false    218            ;           2606    16690 '   orderdetails orderdetails_order_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orderdetails
    ADD CONSTRAINT orderdetails_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(order_id);
 Q   ALTER TABLE ONLY public.orderdetails DROP CONSTRAINT orderdetails_order_id_fkey;
       public               postgres    false    220    4661    219            <           2606    16695 )   orderdetails orderdetails_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orderdetails
    ADD CONSTRAINT orderdetails_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id);
 S   ALTER TABLE ONLY public.orderdetails DROP CONSTRAINT orderdetails_product_id_fkey;
       public               postgres    false    220    4659    218            :           2606    16680    orders orders_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);
 H   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_customer_id_fkey;
       public               postgres    false    219    217    4657            =           2606    16705    payments payments_order_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(order_id);
 I   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_order_id_fkey;
       public               postgres    false    221    219    4661            �   `  x�m��j�0Dץ��XX���.O!MB�&�-�Yjd'���G�����T�9�*.ǣ��gl��JO�X��	mSW�,��EA�8�-�(��g<'��it�YF|F��U������"�x�G���6Î)�@ݴ��8�3��KR�~2��;�cf�U�!E(��d/e&r"q0���Ż��w��Y��┈?�Ճ
;G�!:Ԉ7u�>`^[R�JzcB?�*��[�OZcX�)@.[ڝ�w���8':��A�%����ٔըeAߕu��jb����8[�v�k/��J�����"P��z��'��6�I��K�Ң�Z�`�/��A<�xM>!�/'_��      �   W   x�U�� !ϡ�������	&�1X�++�J&��k�cT��7T�l��y�@�L������~aby�� �zg�t�K"�3G�      �   �   x�]�9�0��_d�d�ܦ���1��*,�+�Y.e-�-IAg������c'���2��ǵ�׋��LzF�|�_����5�e�d�X�V�|����eL��ѭ�ί��Ȱ��s!�_�D      �   �   x�m���0E盯�R�Σ�\�,l,A��T���D��J�'K>��2B,9���D��e~�NS]g#�?#יRߥ>���s@8���Im�"�r1M���%F����o��������턤Hk�Y�eD�$0�@}���c�<�D�      �   �   x�]�;n�0��<�OPr�c�(2� C�.�� �cS��!���8@]��?I�Y�.�r�λ� M���ژ�Y:���a	[NM�9[ᵏ��}dXMB\����#�C�yB_6s,֒���9NI��4dL���w��#��!�쇽�u��&\A���m��DP�.J�'X[ׄ�gj
��a���{s��'�$To�'.>���cFR~/��c     