PGDMP     ;    ;                w            RESTAURANTES    9.5.5    11.5 �    9	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            :	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ;	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            <	           1262    24708    RESTAURANTES    DATABASE     �   CREATE DATABASE "RESTAURANTES" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE "RESTAURANTES";
             postgres    false            =	           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6            �            1259    24983 
   administra    TABLE     f   CREATE TABLE public.administra (
    id_eg integer NOT NULL,
    id_administrador integer NOT NULL
);
    DROP TABLE public.administra;
       public         postgres    false            �            1259    24856    administrador    TABLE     �   CREATE TABLE public.administrador (
    id_administrador integer NOT NULL,
    fono character varying(15),
    tipo character varying(10) NOT NULL,
    sueldo numeric(10,2)
);
 !   DROP TABLE public.administrador;
       public         postgres    false            �            1259    25042    almuerzo    TABLE     g   CREATE TABLE public.almuerzo (
    id_almuerzo integer NOT NULL,
    precio_a numeric(4,2) NOT NULL
);
    DROP TABLE public.almuerzo;
       public         postgres    false            �            1259    25040    almuerzo_id_almuerzo_seq    SEQUENCE     �   CREATE SEQUENCE public.almuerzo_id_almuerzo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.almuerzo_id_almuerzo_seq;
       public       postgres    false    209            >	           0    0    almuerzo_id_almuerzo_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.almuerzo_id_almuerzo_seq OWNED BY public.almuerzo.id_almuerzo;
            public       postgres    false    208            �            1259    25026    bebidas    TABLE     �   CREATE TABLE public.bebidas (
    id_bebida integer NOT NULL,
    tipo character varying(15) NOT NULL,
    precio_b numeric(4,2),
    nombre character varying(20) NOT NULL,
    foto_b character varying(20) NOT NULL
);
    DROP TABLE public.bebidas;
       public         postgres    false            �            1259    25024    bebidas_id_bebida_seq    SEQUENCE     ~   CREATE SEQUENCE public.bebidas_id_bebida_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.bebidas_id_bebida_seq;
       public       postgres    false    205            ?	           0    0    bebidas_id_bebida_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.bebidas_id_bebida_seq OWNED BY public.bebidas.id_bebida;
            public       postgres    false    204            �            1259    24968    califica    TABLE        CREATE TABLE public.califica (
    id_eg integer NOT NULL,
    id_cliente integer NOT NULL,
    puntuacion integer NOT NULL
);
    DROP TABLE public.califica;
       public         postgres    false            �            1259    24893    chef    TABLE       CREATE TABLE public.chef (
    id_chef integer NOT NULL,
    nombre character varying(15) NOT NULL,
    apellidos character varying(20) NOT NULL,
    especialidad character varying(15),
    nacionalidad character varying(15) NOT NULL,
    foto character varying(20) NOT NULL
);
    DROP TABLE public.chef;
       public         postgres    false            �            1259    24891    chef_id_chef_seq    SEQUENCE     y   CREATE SEQUENCE public.chef_id_chef_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.chef_id_chef_seq;
       public       postgres    false    188            @	           0    0    chef_id_chef_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.chef_id_chef_seq OWNED BY public.chef.id_chef;
            public       postgres    false    187            �            1259    24868    cliente    TABLE     A   CREATE TABLE public.cliente (
    id_cliente integer NOT NULL
);
    DROP TABLE public.cliente;
       public         postgres    false            �            1259    24901    dia    TABLE     g   CREATE TABLE public.dia (
    id_dia integer NOT NULL,
    nombredia character varying(10) NOT NULL
);
    DROP TABLE public.dia;
       public         postgres    false            �            1259    24899    dia_id_dia_seq    SEQUENCE     w   CREATE SEQUENCE public.dia_id_dia_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.dia_id_dia_seq;
       public       postgres    false    190            A	           0    0    dia_id_dia_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.dia_id_dia_seq OWNED BY public.dia.id_dia;
            public       postgres    false    189            �            1259    25113    entrada    TABLE     �   CREATE TABLE public.entrada (
    id_entrada integer NOT NULL,
    nombre_ae character varying(25) NOT NULL,
    descripcion_ae character varying(100),
    foto_ae character varying(20) NOT NULL,
    id_almuerzo integer NOT NULL
);
    DROP TABLE public.entrada;
       public         postgres    false            �            1259    25111    entrada_id_entrada_seq    SEQUENCE        CREATE SEQUENCE public.entrada_id_entrada_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.entrada_id_entrada_seq;
       public       postgres    false    217            B	           0    0    entrada_id_entrada_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.entrada_id_entrada_seq OWNED BY public.entrada.id_entrada;
            public       postgres    false    216            �            1259    24922    establecimiento_gastronomico    TABLE     Y  CREATE TABLE public.establecimiento_gastronomico (
    id_eg integer NOT NULL,
    razon_social character varying(20) NOT NULL,
    nit integer NOT NULL,
    telefono character varying(20),
    descripcion character varying(100) NOT NULL,
    tipo character varying(15) NOT NULL,
    id_horario integer NOT NULL,
    id_chef integer NOT NULL
);
 0   DROP TABLE public.establecimiento_gastronomico;
       public         postgres    false            �            1259    24920 &   establecimiento_gastronomico_id_eg_seq    SEQUENCE     �   CREATE SEQUENCE public.establecimiento_gastronomico_id_eg_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.establecimiento_gastronomico_id_eg_seq;
       public       postgres    false    194            C	           0    0 &   establecimiento_gastronomico_id_eg_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.establecimiento_gastronomico_id_eg_seq OWNED BY public.establecimiento_gastronomico.id_eg;
            public       postgres    false    193            �            1259    24909    horario    TABLE     �   CREATE TABLE public.horario (
    id_horario integer NOT NULL,
    hora_apertura character varying(5) NOT NULL,
    hora_cierre character varying(5) NOT NULL,
    id_dia integer NOT NULL
);
    DROP TABLE public.horario;
       public         postgres    false            �            1259    24907    horario_id_horario_seq    SEQUENCE        CREATE SEQUENCE public.horario_id_horario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.horario_id_horario_seq;
       public       postgres    false    192            D	           0    0    horario_id_horario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.horario_id_horario_seq OWNED BY public.horario.id_horario;
            public       postgres    false    191            �            1259    25013    menu    TABLE     |   CREATE TABLE public.menu (
    id_menu integer NOT NULL,
    tipo_menu character varying(25),
    id_eg integer NOT NULL
);
    DROP TABLE public.menu;
       public         postgres    false            �            1259    25011    menu_id_menu_seq    SEQUENCE     y   CREATE SEQUENCE public.menu_id_menu_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.menu_id_menu_seq;
       public       postgres    false    203            E	           0    0    menu_id_menu_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.menu_id_menu_seq OWNED BY public.menu.id_menu;
            public       postgres    false    202            �            1259    25048    ofrece_almuerzo    TABLE     h   CREATE TABLE public.ofrece_almuerzo (
    id_menu integer NOT NULL,
    id_almuerzo integer NOT NULL
);
 #   DROP TABLE public.ofrece_almuerzo;
       public         postgres    false            �            1259    25073    ofrece_bebidas    TABLE     e   CREATE TABLE public.ofrece_bebidas (
    id_menu integer NOT NULL,
    id_bebida integer NOT NULL
);
 "   DROP TABLE public.ofrece_bebidas;
       public         postgres    false            �            1259    25058    ofrece_especial    TABLE     e   CREATE TABLE public.ofrece_especial (
    id_menu integer NOT NULL,
    id_plato integer NOT NULL
);
 #   DROP TABLE public.ofrece_especial;
       public         postgres    false            �            1259    25034    plato_especial    TABLE     �   CREATE TABLE public.plato_especial (
    id_plato integer NOT NULL,
    precio_p numeric(4,2) NOT NULL,
    descripcion character varying(100),
    nombre character varying(25) NOT NULL,
    foto_p character varying(20) NOT NULL
);
 "   DROP TABLE public.plato_especial;
       public         postgres    false            �            1259    25032    plato_especial_id_plato_seq    SEQUENCE     �   CREATE SEQUENCE public.plato_especial_id_plato_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.plato_especial_id_plato_seq;
       public       postgres    false    207            F	           0    0    plato_especial_id_plato_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.plato_especial_id_plato_seq OWNED BY public.plato_especial.id_plato;
            public       postgres    false    206            �            1259    25139    postre    TABLE     �   CREATE TABLE public.postre (
    id_postre integer NOT NULL,
    nombre_ap character varying(25) NOT NULL,
    descripcion_ap character varying(100),
    foto_ap character varying(20) NOT NULL,
    id_almuerzo integer NOT NULL
);
    DROP TABLE public.postre;
       public         postgres    false            �            1259    25137    postre_id_postre_seq    SEQUENCE     }   CREATE SEQUENCE public.postre_id_postre_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.postre_id_postre_seq;
       public       postgres    false    221            G	           0    0    postre_id_postre_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.postre_id_postre_seq OWNED BY public.postre.id_postre;
            public       postgres    false    220            �            1259    25000 
   publicidad    TABLE       CREATE TABLE public.publicidad (
    id_publicidad integer NOT NULL,
    titulo character varying(25) NOT NULL,
    fecha_ini date,
    fecha_fin date,
    descripcion character varying(100),
    imagen_pro character varying(20) NOT NULL,
    id_eg integer NOT NULL
);
    DROP TABLE public.publicidad;
       public         postgres    false            �            1259    24998    publicidad_id_publicidad_seq    SEQUENCE     �   CREATE SEQUENCE public.publicidad_id_publicidad_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.publicidad_id_publicidad_seq;
       public       postgres    false    201            H	           0    0    publicidad_id_publicidad_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.publicidad_id_publicidad_seq OWNED BY public.publicidad.id_publicidad;
            public       postgres    false    200            �            1259    24880    registro_operaciones    TABLE     �   CREATE TABLE public.registro_operaciones (
    id_time integer NOT NULL,
    fecha date,
    tipo character varying(15) NOT NULL,
    id_usuario integer NOT NULL
);
 (   DROP TABLE public.registro_operaciones;
       public         postgres    false            �            1259    24878     registro_operaciones_id_time_seq    SEQUENCE     �   CREATE SEQUENCE public.registro_operaciones_id_time_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.registro_operaciones_id_time_seq;
       public       postgres    false    186            I	           0    0     registro_operaciones_id_time_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.registro_operaciones_id_time_seq OWNED BY public.registro_operaciones.id_time;
            public       postgres    false    185            �            1259    25090    segundo    TABLE     �   CREATE TABLE public.segundo (
    id_segundo integer NOT NULL,
    nombre character varying(20) NOT NULL,
    descripcion character varying(100),
    foto character varying(20) NOT NULL
);
    DROP TABLE public.segundo;
       public         postgres    false            �            1259    25088    segundo_id_segundo_seq    SEQUENCE        CREATE SEQUENCE public.segundo_id_segundo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.segundo_id_segundo_seq;
       public       postgres    false    214            J	           0    0    segundo_id_segundo_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.segundo_id_segundo_seq OWNED BY public.segundo.id_segundo;
            public       postgres    false    213            �            1259    25126    sopa    TABLE     �   CREATE TABLE public.sopa (
    id_sopa integer NOT NULL,
    nombre_as character varying(25) NOT NULL,
    descripcion_as character varying(100),
    foto_as character varying(20) NOT NULL,
    id_almuerzo integer NOT NULL
);
    DROP TABLE public.sopa;
       public         postgres    false            �            1259    25124    sopa_id_sopa_seq    SEQUENCE     y   CREATE SEQUENCE public.sopa_id_sopa_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.sopa_id_sopa_seq;
       public       postgres    false    219            K	           0    0    sopa_id_sopa_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.sopa_id_sopa_seq OWNED BY public.sopa.id_sopa;
            public       postgres    false    218            �            1259    24942    sucursal    TABLE     �   CREATE TABLE public.sucursal (
    id_suscursal integer NOT NULL,
    latitud character varying(20) NOT NULL,
    longitud character varying(20) NOT NULL,
    direccion character varying(50) NOT NULL,
    id_eg integer NOT NULL
);
    DROP TABLE public.sucursal;
       public         postgres    false            �            1259    24940    sucursal_id_suscursal_seq    SEQUENCE     �   CREATE SEQUENCE public.sucursal_id_suscursal_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.sucursal_id_suscursal_seq;
       public       postgres    false    196            L	           0    0    sucursal_id_suscursal_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.sucursal_id_suscursal_seq OWNED BY public.sucursal.id_suscursal;
            public       postgres    false    195            �            1259    25096    tiene_segundo    TABLE     i   CREATE TABLE public.tiene_segundo (
    id_almuerzo integer NOT NULL,
    id_segundo integer NOT NULL
);
 !   DROP TABLE public.tiene_segundo;
       public         postgres    false            �            1259    24848    usuario    TABLE     g  CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    nombre character varying(15) NOT NULL,
    paterno character varying(15) NOT NULL,
    materno character varying(15) NOT NULL,
    username character varying(20) NOT NULL,
    password character varying(20) NOT NULL,
    email character varying(20) NOT NULL,
    rol character varying(10)
);
    DROP TABLE public.usuario;
       public         postgres    false            �            1259    24846    usuario_id_usuario_seq    SEQUENCE        CREATE SEQUENCE public.usuario_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuario_id_usuario_seq;
       public       postgres    false    182            M	           0    0    usuario_id_usuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;
            public       postgres    false    181            �            1259    24953    visita    TABLE     \   CREATE TABLE public.visita (
    id_eg integer NOT NULL,
    id_cliente integer NOT NULL
);
    DROP TABLE public.visita;
       public         postgres    false            F           2604    25045    almuerzo id_almuerzo    DEFAULT     |   ALTER TABLE ONLY public.almuerzo ALTER COLUMN id_almuerzo SET DEFAULT nextval('public.almuerzo_id_almuerzo_seq'::regclass);
 C   ALTER TABLE public.almuerzo ALTER COLUMN id_almuerzo DROP DEFAULT;
       public       postgres    false    209    208    209            D           2604    25029    bebidas id_bebida    DEFAULT     v   ALTER TABLE ONLY public.bebidas ALTER COLUMN id_bebida SET DEFAULT nextval('public.bebidas_id_bebida_seq'::regclass);
 @   ALTER TABLE public.bebidas ALTER COLUMN id_bebida DROP DEFAULT;
       public       postgres    false    204    205    205            =           2604    24896    chef id_chef    DEFAULT     l   ALTER TABLE ONLY public.chef ALTER COLUMN id_chef SET DEFAULT nextval('public.chef_id_chef_seq'::regclass);
 ;   ALTER TABLE public.chef ALTER COLUMN id_chef DROP DEFAULT;
       public       postgres    false    187    188    188            >           2604    24904 
   dia id_dia    DEFAULT     h   ALTER TABLE ONLY public.dia ALTER COLUMN id_dia SET DEFAULT nextval('public.dia_id_dia_seq'::regclass);
 9   ALTER TABLE public.dia ALTER COLUMN id_dia DROP DEFAULT;
       public       postgres    false    190    189    190            H           2604    25116    entrada id_entrada    DEFAULT     x   ALTER TABLE ONLY public.entrada ALTER COLUMN id_entrada SET DEFAULT nextval('public.entrada_id_entrada_seq'::regclass);
 A   ALTER TABLE public.entrada ALTER COLUMN id_entrada DROP DEFAULT;
       public       postgres    false    217    216    217            @           2604    24925 "   establecimiento_gastronomico id_eg    DEFAULT     �   ALTER TABLE ONLY public.establecimiento_gastronomico ALTER COLUMN id_eg SET DEFAULT nextval('public.establecimiento_gastronomico_id_eg_seq'::regclass);
 Q   ALTER TABLE public.establecimiento_gastronomico ALTER COLUMN id_eg DROP DEFAULT;
       public       postgres    false    194    193    194            ?           2604    24912    horario id_horario    DEFAULT     x   ALTER TABLE ONLY public.horario ALTER COLUMN id_horario SET DEFAULT nextval('public.horario_id_horario_seq'::regclass);
 A   ALTER TABLE public.horario ALTER COLUMN id_horario DROP DEFAULT;
       public       postgres    false    192    191    192            C           2604    25016    menu id_menu    DEFAULT     l   ALTER TABLE ONLY public.menu ALTER COLUMN id_menu SET DEFAULT nextval('public.menu_id_menu_seq'::regclass);
 ;   ALTER TABLE public.menu ALTER COLUMN id_menu DROP DEFAULT;
       public       postgres    false    203    202    203            E           2604    25037    plato_especial id_plato    DEFAULT     �   ALTER TABLE ONLY public.plato_especial ALTER COLUMN id_plato SET DEFAULT nextval('public.plato_especial_id_plato_seq'::regclass);
 F   ALTER TABLE public.plato_especial ALTER COLUMN id_plato DROP DEFAULT;
       public       postgres    false    206    207    207            J           2604    25142    postre id_postre    DEFAULT     t   ALTER TABLE ONLY public.postre ALTER COLUMN id_postre SET DEFAULT nextval('public.postre_id_postre_seq'::regclass);
 ?   ALTER TABLE public.postre ALTER COLUMN id_postre DROP DEFAULT;
       public       postgres    false    220    221    221            B           2604    25003    publicidad id_publicidad    DEFAULT     �   ALTER TABLE ONLY public.publicidad ALTER COLUMN id_publicidad SET DEFAULT nextval('public.publicidad_id_publicidad_seq'::regclass);
 G   ALTER TABLE public.publicidad ALTER COLUMN id_publicidad DROP DEFAULT;
       public       postgres    false    201    200    201            <           2604    24883    registro_operaciones id_time    DEFAULT     �   ALTER TABLE ONLY public.registro_operaciones ALTER COLUMN id_time SET DEFAULT nextval('public.registro_operaciones_id_time_seq'::regclass);
 K   ALTER TABLE public.registro_operaciones ALTER COLUMN id_time DROP DEFAULT;
       public       postgres    false    186    185    186            G           2604    25093    segundo id_segundo    DEFAULT     x   ALTER TABLE ONLY public.segundo ALTER COLUMN id_segundo SET DEFAULT nextval('public.segundo_id_segundo_seq'::regclass);
 A   ALTER TABLE public.segundo ALTER COLUMN id_segundo DROP DEFAULT;
       public       postgres    false    213    214    214            I           2604    25129    sopa id_sopa    DEFAULT     l   ALTER TABLE ONLY public.sopa ALTER COLUMN id_sopa SET DEFAULT nextval('public.sopa_id_sopa_seq'::regclass);
 ;   ALTER TABLE public.sopa ALTER COLUMN id_sopa DROP DEFAULT;
       public       postgres    false    218    219    219            A           2604    24945    sucursal id_suscursal    DEFAULT     ~   ALTER TABLE ONLY public.sucursal ALTER COLUMN id_suscursal SET DEFAULT nextval('public.sucursal_id_suscursal_seq'::regclass);
 D   ALTER TABLE public.sucursal ALTER COLUMN id_suscursal DROP DEFAULT;
       public       postgres    false    196    195    196            ;           2604    24851    usuario id_usuario    DEFAULT     x   ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);
 A   ALTER TABLE public.usuario ALTER COLUMN id_usuario DROP DEFAULT;
       public       postgres    false    182    181    182             	          0    24983 
   administra 
   TABLE DATA               =   COPY public.administra (id_eg, id_administrador) FROM stdin;
    public       postgres    false    199   �       	          0    24856    administrador 
   TABLE DATA               M   COPY public.administrador (id_administrador, fono, tipo, sueldo) FROM stdin;
    public       postgres    false    183   <�       *	          0    25042    almuerzo 
   TABLE DATA               9   COPY public.almuerzo (id_almuerzo, precio_a) FROM stdin;
    public       postgres    false    209   Y�       &	          0    25026    bebidas 
   TABLE DATA               L   COPY public.bebidas (id_bebida, tipo, precio_b, nombre, foto_b) FROM stdin;
    public       postgres    false    205   v�       	          0    24968    califica 
   TABLE DATA               A   COPY public.califica (id_eg, id_cliente, puntuacion) FROM stdin;
    public       postgres    false    198   ��       	          0    24893    chef 
   TABLE DATA               \   COPY public.chef (id_chef, nombre, apellidos, especialidad, nacionalidad, foto) FROM stdin;
    public       postgres    false    188   ��       	          0    24868    cliente 
   TABLE DATA               -   COPY public.cliente (id_cliente) FROM stdin;
    public       postgres    false    184   ��       	          0    24901    dia 
   TABLE DATA               0   COPY public.dia (id_dia, nombredia) FROM stdin;
    public       postgres    false    190   ��       2	          0    25113    entrada 
   TABLE DATA               ^   COPY public.entrada (id_entrada, nombre_ae, descripcion_ae, foto_ae, id_almuerzo) FROM stdin;
    public       postgres    false    217   �       	          0    24922    establecimiento_gastronomico 
   TABLE DATA               �   COPY public.establecimiento_gastronomico (id_eg, razon_social, nit, telefono, descripcion, tipo, id_horario, id_chef) FROM stdin;
    public       postgres    false    194   $�       	          0    24909    horario 
   TABLE DATA               Q   COPY public.horario (id_horario, hora_apertura, hora_cierre, id_dia) FROM stdin;
    public       postgres    false    192   A�       $	          0    25013    menu 
   TABLE DATA               9   COPY public.menu (id_menu, tipo_menu, id_eg) FROM stdin;
    public       postgres    false    203   ^�       +	          0    25048    ofrece_almuerzo 
   TABLE DATA               ?   COPY public.ofrece_almuerzo (id_menu, id_almuerzo) FROM stdin;
    public       postgres    false    210   {�       -	          0    25073    ofrece_bebidas 
   TABLE DATA               <   COPY public.ofrece_bebidas (id_menu, id_bebida) FROM stdin;
    public       postgres    false    212   ��       ,	          0    25058    ofrece_especial 
   TABLE DATA               <   COPY public.ofrece_especial (id_menu, id_plato) FROM stdin;
    public       postgres    false    211   ��       (	          0    25034    plato_especial 
   TABLE DATA               Y   COPY public.plato_especial (id_plato, precio_p, descripcion, nombre, foto_p) FROM stdin;
    public       postgres    false    207   ��       6	          0    25139    postre 
   TABLE DATA               \   COPY public.postre (id_postre, nombre_ap, descripcion_ap, foto_ap, id_almuerzo) FROM stdin;
    public       postgres    false    221   ��       "	          0    25000 
   publicidad 
   TABLE DATA               q   COPY public.publicidad (id_publicidad, titulo, fecha_ini, fecha_fin, descripcion, imagen_pro, id_eg) FROM stdin;
    public       postgres    false    201   �       	          0    24880    registro_operaciones 
   TABLE DATA               P   COPY public.registro_operaciones (id_time, fecha, tipo, id_usuario) FROM stdin;
    public       postgres    false    186   )�       /	          0    25090    segundo 
   TABLE DATA               H   COPY public.segundo (id_segundo, nombre, descripcion, foto) FROM stdin;
    public       postgres    false    214   F�       4	          0    25126    sopa 
   TABLE DATA               X   COPY public.sopa (id_sopa, nombre_as, descripcion_as, foto_as, id_almuerzo) FROM stdin;
    public       postgres    false    219   c�       	          0    24942    sucursal 
   TABLE DATA               U   COPY public.sucursal (id_suscursal, latitud, longitud, direccion, id_eg) FROM stdin;
    public       postgres    false    196   ��       0	          0    25096    tiene_segundo 
   TABLE DATA               @   COPY public.tiene_segundo (id_almuerzo, id_segundo) FROM stdin;
    public       postgres    false    215   ��       	          0    24848    usuario 
   TABLE DATA               g   COPY public.usuario (id_usuario, nombre, paterno, materno, username, password, email, rol) FROM stdin;
    public       postgres    false    182   ��       	          0    24953    visita 
   TABLE DATA               3   COPY public.visita (id_eg, id_cliente) FROM stdin;
    public       postgres    false    197   ��       N	           0    0    almuerzo_id_almuerzo_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.almuerzo_id_almuerzo_seq', 1, false);
            public       postgres    false    208            O	           0    0    bebidas_id_bebida_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.bebidas_id_bebida_seq', 1, false);
            public       postgres    false    204            P	           0    0    chef_id_chef_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.chef_id_chef_seq', 1, false);
            public       postgres    false    187            Q	           0    0    dia_id_dia_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.dia_id_dia_seq', 1, false);
            public       postgres    false    189            R	           0    0    entrada_id_entrada_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.entrada_id_entrada_seq', 1, false);
            public       postgres    false    216            S	           0    0 &   establecimiento_gastronomico_id_eg_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.establecimiento_gastronomico_id_eg_seq', 1, false);
            public       postgres    false    193            T	           0    0    horario_id_horario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.horario_id_horario_seq', 1, false);
            public       postgres    false    191            U	           0    0    menu_id_menu_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.menu_id_menu_seq', 1, false);
            public       postgres    false    202            V	           0    0    plato_especial_id_plato_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.plato_especial_id_plato_seq', 1, false);
            public       postgres    false    206            W	           0    0    postre_id_postre_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.postre_id_postre_seq', 1, false);
            public       postgres    false    220            X	           0    0    publicidad_id_publicidad_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.publicidad_id_publicidad_seq', 1, false);
            public       postgres    false    200            Y	           0    0     registro_operaciones_id_time_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.registro_operaciones_id_time_seq', 1, false);
            public       postgres    false    185            Z	           0    0    segundo_id_segundo_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.segundo_id_segundo_seq', 1, false);
            public       postgres    false    213            [	           0    0    sopa_id_sopa_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.sopa_id_sopa_seq', 1, false);
            public       postgres    false    218            \	           0    0    sucursal_id_suscursal_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.sucursal_id_suscursal_seq', 1, false);
            public       postgres    false    195            ]	           0    0    usuario_id_usuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 1, false);
            public       postgres    false    181            h           2606    24987    administra administra_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.administra
    ADD CONSTRAINT administra_pkey PRIMARY KEY (id_eg, id_administrador);
 D   ALTER TABLE ONLY public.administra DROP CONSTRAINT administra_pkey;
       public         postgres    false    199    199            P           2606    24860     administrador administrador_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.administrador
    ADD CONSTRAINT administrador_pkey PRIMARY KEY (id_administrador);
 J   ALTER TABLE ONLY public.administrador DROP CONSTRAINT administrador_pkey;
       public         postgres    false    183            R           2606    24862 $   administrador administrador_tipo_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.administrador
    ADD CONSTRAINT administrador_tipo_key UNIQUE (tipo);
 N   ALTER TABLE ONLY public.administrador DROP CONSTRAINT administrador_tipo_key;
       public         postgres    false    183            r           2606    25047    almuerzo almuerzo_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.almuerzo
    ADD CONSTRAINT almuerzo_pkey PRIMARY KEY (id_almuerzo);
 @   ALTER TABLE ONLY public.almuerzo DROP CONSTRAINT almuerzo_pkey;
       public         postgres    false    209            n           2606    25031    bebidas bebidas_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.bebidas
    ADD CONSTRAINT bebidas_pkey PRIMARY KEY (id_bebida);
 >   ALTER TABLE ONLY public.bebidas DROP CONSTRAINT bebidas_pkey;
       public         postgres    false    205            f           2606    24972    califica califica_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.califica
    ADD CONSTRAINT califica_pkey PRIMARY KEY (id_eg, id_cliente);
 @   ALTER TABLE ONLY public.califica DROP CONSTRAINT califica_pkey;
       public         postgres    false    198    198            X           2606    24898    chef chef_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.chef
    ADD CONSTRAINT chef_pkey PRIMARY KEY (id_chef);
 8   ALTER TABLE ONLY public.chef DROP CONSTRAINT chef_pkey;
       public         postgres    false    188            T           2606    24872    cliente cliente_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public         postgres    false    184            Z           2606    24906    dia dia_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.dia
    ADD CONSTRAINT dia_pkey PRIMARY KEY (id_dia);
 6   ALTER TABLE ONLY public.dia DROP CONSTRAINT dia_pkey;
       public         postgres    false    190            ~           2606    25118    entrada entrada_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.entrada
    ADD CONSTRAINT entrada_pkey PRIMARY KEY (id_entrada);
 >   ALTER TABLE ONLY public.entrada DROP CONSTRAINT entrada_pkey;
       public         postgres    false    217            ^           2606    24929 A   establecimiento_gastronomico establecimiento_gastronomico_nit_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.establecimiento_gastronomico
    ADD CONSTRAINT establecimiento_gastronomico_nit_key UNIQUE (nit);
 k   ALTER TABLE ONLY public.establecimiento_gastronomico DROP CONSTRAINT establecimiento_gastronomico_nit_key;
       public         postgres    false    194            `           2606    24927 >   establecimiento_gastronomico establecimiento_gastronomico_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.establecimiento_gastronomico
    ADD CONSTRAINT establecimiento_gastronomico_pkey PRIMARY KEY (id_eg);
 h   ALTER TABLE ONLY public.establecimiento_gastronomico DROP CONSTRAINT establecimiento_gastronomico_pkey;
       public         postgres    false    194            \           2606    24914    horario horario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.horario
    ADD CONSTRAINT horario_pkey PRIMARY KEY (id_horario);
 >   ALTER TABLE ONLY public.horario DROP CONSTRAINT horario_pkey;
       public         postgres    false    192            l           2606    25018    menu menu_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.menu
    ADD CONSTRAINT menu_pkey PRIMARY KEY (id_menu);
 8   ALTER TABLE ONLY public.menu DROP CONSTRAINT menu_pkey;
       public         postgres    false    203            t           2606    25052 $   ofrece_almuerzo ofrece_almuerzo_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.ofrece_almuerzo
    ADD CONSTRAINT ofrece_almuerzo_pkey PRIMARY KEY (id_menu, id_almuerzo);
 N   ALTER TABLE ONLY public.ofrece_almuerzo DROP CONSTRAINT ofrece_almuerzo_pkey;
       public         postgres    false    210    210            x           2606    25077 "   ofrece_bebidas ofrece_bebidas_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.ofrece_bebidas
    ADD CONSTRAINT ofrece_bebidas_pkey PRIMARY KEY (id_menu, id_bebida);
 L   ALTER TABLE ONLY public.ofrece_bebidas DROP CONSTRAINT ofrece_bebidas_pkey;
       public         postgres    false    212    212            v           2606    25062 $   ofrece_especial ofrece_especial_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.ofrece_especial
    ADD CONSTRAINT ofrece_especial_pkey PRIMARY KEY (id_menu, id_plato);
 N   ALTER TABLE ONLY public.ofrece_especial DROP CONSTRAINT ofrece_especial_pkey;
       public         postgres    false    211    211            p           2606    25039 "   plato_especial plato_especial_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.plato_especial
    ADD CONSTRAINT plato_especial_pkey PRIMARY KEY (id_plato);
 L   ALTER TABLE ONLY public.plato_especial DROP CONSTRAINT plato_especial_pkey;
       public         postgres    false    207            �           2606    25144    postre postre_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.postre
    ADD CONSTRAINT postre_pkey PRIMARY KEY (id_postre);
 <   ALTER TABLE ONLY public.postre DROP CONSTRAINT postre_pkey;
       public         postgres    false    221            j           2606    25005    publicidad publicidad_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.publicidad
    ADD CONSTRAINT publicidad_pkey PRIMARY KEY (id_publicidad);
 D   ALTER TABLE ONLY public.publicidad DROP CONSTRAINT publicidad_pkey;
       public         postgres    false    201            V           2606    24885 .   registro_operaciones registro_operaciones_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.registro_operaciones
    ADD CONSTRAINT registro_operaciones_pkey PRIMARY KEY (id_time);
 X   ALTER TABLE ONLY public.registro_operaciones DROP CONSTRAINT registro_operaciones_pkey;
       public         postgres    false    186            z           2606    25095    segundo segundo_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.segundo
    ADD CONSTRAINT segundo_pkey PRIMARY KEY (id_segundo);
 >   ALTER TABLE ONLY public.segundo DROP CONSTRAINT segundo_pkey;
       public         postgres    false    214            �           2606    25131    sopa sopa_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.sopa
    ADD CONSTRAINT sopa_pkey PRIMARY KEY (id_sopa);
 8   ALTER TABLE ONLY public.sopa DROP CONSTRAINT sopa_pkey;
       public         postgres    false    219            b           2606    24947    sucursal sucursal_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.sucursal
    ADD CONSTRAINT sucursal_pkey PRIMARY KEY (id_suscursal);
 @   ALTER TABLE ONLY public.sucursal DROP CONSTRAINT sucursal_pkey;
       public         postgres    false    196            |           2606    25100     tiene_segundo tiene_segundo_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.tiene_segundo
    ADD CONSTRAINT tiene_segundo_pkey PRIMARY KEY (id_almuerzo, id_segundo);
 J   ALTER TABLE ONLY public.tiene_segundo DROP CONSTRAINT tiene_segundo_pkey;
       public         postgres    false    215    215            L           2606    24853    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public         postgres    false    182            N           2606    24855    usuario usuario_username_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_username_key UNIQUE (username);
 F   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_username_key;
       public         postgres    false    182            d           2606    24957    visita visita_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.visita
    ADD CONSTRAINT visita_pkey PRIMARY KEY (id_eg, id_cliente);
 <   ALTER TABLE ONLY public.visita DROP CONSTRAINT visita_pkey;
       public         postgres    false    197    197            �           2606    24993 +   administra administra_id_administrador_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.administra
    ADD CONSTRAINT administra_id_administrador_fkey FOREIGN KEY (id_administrador) REFERENCES public.administrador(id_administrador);
 U   ALTER TABLE ONLY public.administra DROP CONSTRAINT administra_id_administrador_fkey;
       public       postgres    false    2128    199    183            �           2606    24988     administra administra_id_eg_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.administra
    ADD CONSTRAINT administra_id_eg_fkey FOREIGN KEY (id_eg) REFERENCES public.establecimiento_gastronomico(id_eg);
 J   ALTER TABLE ONLY public.administra DROP CONSTRAINT administra_id_eg_fkey;
       public       postgres    false    2144    199    194            �           2606    24863 1   administrador administrador_id_administrador_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrador
    ADD CONSTRAINT administrador_id_administrador_fkey FOREIGN KEY (id_administrador) REFERENCES public.usuario(id_usuario);
 [   ALTER TABLE ONLY public.administrador DROP CONSTRAINT administrador_id_administrador_fkey;
       public       postgres    false    183    182    2124            �           2606    24978 !   califica califica_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.califica
    ADD CONSTRAINT califica_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);
 K   ALTER TABLE ONLY public.califica DROP CONSTRAINT califica_id_cliente_fkey;
       public       postgres    false    184    198    2132            �           2606    24973    califica califica_id_eg_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.califica
    ADD CONSTRAINT califica_id_eg_fkey FOREIGN KEY (id_eg) REFERENCES public.establecimiento_gastronomico(id_eg);
 F   ALTER TABLE ONLY public.califica DROP CONSTRAINT califica_id_eg_fkey;
       public       postgres    false    2144    198    194            �           2606    24873    cliente cliente_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.usuario(id_usuario);
 I   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_id_cliente_fkey;
       public       postgres    false    184    182    2124            �           2606    25119     entrada entrada_id_almuerzo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.entrada
    ADD CONSTRAINT entrada_id_almuerzo_fkey FOREIGN KEY (id_almuerzo) REFERENCES public.almuerzo(id_almuerzo);
 J   ALTER TABLE ONLY public.entrada DROP CONSTRAINT entrada_id_almuerzo_fkey;
       public       postgres    false    217    209    2162            �           2606    24930 F   establecimiento_gastronomico establecimiento_gastronomico_id_chef_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.establecimiento_gastronomico
    ADD CONSTRAINT establecimiento_gastronomico_id_chef_fkey FOREIGN KEY (id_chef) REFERENCES public.chef(id_chef);
 p   ALTER TABLE ONLY public.establecimiento_gastronomico DROP CONSTRAINT establecimiento_gastronomico_id_chef_fkey;
       public       postgres    false    188    194    2136            �           2606    24935 I   establecimiento_gastronomico establecimiento_gastronomico_id_horario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.establecimiento_gastronomico
    ADD CONSTRAINT establecimiento_gastronomico_id_horario_fkey FOREIGN KEY (id_horario) REFERENCES public.horario(id_horario);
 s   ALTER TABLE ONLY public.establecimiento_gastronomico DROP CONSTRAINT establecimiento_gastronomico_id_horario_fkey;
       public       postgres    false    2140    192    194            �           2606    24915    horario horario_id_dia_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.horario
    ADD CONSTRAINT horario_id_dia_fkey FOREIGN KEY (id_dia) REFERENCES public.dia(id_dia);
 E   ALTER TABLE ONLY public.horario DROP CONSTRAINT horario_id_dia_fkey;
       public       postgres    false    2138    192    190            �           2606    25019    menu menu_id_eg_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.menu
    ADD CONSTRAINT menu_id_eg_fkey FOREIGN KEY (id_eg) REFERENCES public.establecimiento_gastronomico(id_eg);
 >   ALTER TABLE ONLY public.menu DROP CONSTRAINT menu_id_eg_fkey;
       public       postgres    false    194    2144    203            �           2606    25053 0   ofrece_almuerzo ofrece_almuerzo_id_almuerzo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ofrece_almuerzo
    ADD CONSTRAINT ofrece_almuerzo_id_almuerzo_fkey FOREIGN KEY (id_almuerzo) REFERENCES public.almuerzo(id_almuerzo);
 Z   ALTER TABLE ONLY public.ofrece_almuerzo DROP CONSTRAINT ofrece_almuerzo_id_almuerzo_fkey;
       public       postgres    false    209    2162    210            �           2606    25083 ,   ofrece_bebidas ofrece_bebidas_id_bebida_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ofrece_bebidas
    ADD CONSTRAINT ofrece_bebidas_id_bebida_fkey FOREIGN KEY (id_bebida) REFERENCES public.bebidas(id_bebida);
 V   ALTER TABLE ONLY public.ofrece_bebidas DROP CONSTRAINT ofrece_bebidas_id_bebida_fkey;
       public       postgres    false    205    2158    212            �           2606    25078 *   ofrece_bebidas ofrece_bebidas_id_menu_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ofrece_bebidas
    ADD CONSTRAINT ofrece_bebidas_id_menu_fkey FOREIGN KEY (id_menu) REFERENCES public.menu(id_menu);
 T   ALTER TABLE ONLY public.ofrece_bebidas DROP CONSTRAINT ofrece_bebidas_id_menu_fkey;
       public       postgres    false    2156    203    212            �           2606    25063 ,   ofrece_especial ofrece_especial_id_menu_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ofrece_especial
    ADD CONSTRAINT ofrece_especial_id_menu_fkey FOREIGN KEY (id_menu) REFERENCES public.menu(id_menu);
 V   ALTER TABLE ONLY public.ofrece_especial DROP CONSTRAINT ofrece_especial_id_menu_fkey;
       public       postgres    false    2156    211    203            �           2606    25068 -   ofrece_especial ofrece_especial_id_plato_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ofrece_especial
    ADD CONSTRAINT ofrece_especial_id_plato_fkey FOREIGN KEY (id_plato) REFERENCES public.plato_especial(id_plato);
 W   ALTER TABLE ONLY public.ofrece_especial DROP CONSTRAINT ofrece_especial_id_plato_fkey;
       public       postgres    false    211    207    2160            �           2606    25145    postre postre_id_almuerzo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.postre
    ADD CONSTRAINT postre_id_almuerzo_fkey FOREIGN KEY (id_almuerzo) REFERENCES public.almuerzo(id_almuerzo);
 H   ALTER TABLE ONLY public.postre DROP CONSTRAINT postre_id_almuerzo_fkey;
       public       postgres    false    209    221    2162            �           2606    25006     publicidad publicidad_id_eg_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.publicidad
    ADD CONSTRAINT publicidad_id_eg_fkey FOREIGN KEY (id_eg) REFERENCES public.establecimiento_gastronomico(id_eg);
 J   ALTER TABLE ONLY public.publicidad DROP CONSTRAINT publicidad_id_eg_fkey;
       public       postgres    false    194    201    2144            �           2606    24886 9   registro_operaciones registro_operaciones_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_operaciones
    ADD CONSTRAINT registro_operaciones_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 c   ALTER TABLE ONLY public.registro_operaciones DROP CONSTRAINT registro_operaciones_id_usuario_fkey;
       public       postgres    false    186    2124    182            �           2606    25132    sopa sopa_id_almuerzo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sopa
    ADD CONSTRAINT sopa_id_almuerzo_fkey FOREIGN KEY (id_almuerzo) REFERENCES public.almuerzo(id_almuerzo);
 D   ALTER TABLE ONLY public.sopa DROP CONSTRAINT sopa_id_almuerzo_fkey;
       public       postgres    false    2162    219    209            �           2606    24948    sucursal sucursal_id_eg_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sucursal
    ADD CONSTRAINT sucursal_id_eg_fkey FOREIGN KEY (id_eg) REFERENCES public.establecimiento_gastronomico(id_eg);
 F   ALTER TABLE ONLY public.sucursal DROP CONSTRAINT sucursal_id_eg_fkey;
       public       postgres    false    194    2144    196            �           2606    25101 ,   tiene_segundo tiene_segundo_id_almuerzo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tiene_segundo
    ADD CONSTRAINT tiene_segundo_id_almuerzo_fkey FOREIGN KEY (id_almuerzo) REFERENCES public.almuerzo(id_almuerzo);
 V   ALTER TABLE ONLY public.tiene_segundo DROP CONSTRAINT tiene_segundo_id_almuerzo_fkey;
       public       postgres    false    209    215    2162            �           2606    25106 +   tiene_segundo tiene_segundo_id_segundo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tiene_segundo
    ADD CONSTRAINT tiene_segundo_id_segundo_fkey FOREIGN KEY (id_segundo) REFERENCES public.segundo(id_segundo);
 U   ALTER TABLE ONLY public.tiene_segundo DROP CONSTRAINT tiene_segundo_id_segundo_fkey;
       public       postgres    false    214    2170    215            �           2606    24963    visita visita_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.visita
    ADD CONSTRAINT visita_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);
 G   ALTER TABLE ONLY public.visita DROP CONSTRAINT visita_id_cliente_fkey;
       public       postgres    false    197    184    2132            �           2606    24958    visita visita_id_eg_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.visita
    ADD CONSTRAINT visita_id_eg_fkey FOREIGN KEY (id_eg) REFERENCES public.establecimiento_gastronomico(id_eg);
 B   ALTER TABLE ONLY public.visita DROP CONSTRAINT visita_id_eg_fkey;
       public       postgres    false    2144    194    197             	      x������ � �      	      x������ � �      *	      x������ � �      &	      x������ � �      	      x������ � �      	      x������ � �      	      x������ � �      	      x������ � �      2	      x������ � �      	      x������ � �      	      x������ � �      $	      x������ � �      +	      x������ � �      -	      x������ � �      ,	      x������ � �      (	      x������ � �      6	      x������ � �      "	      x������ � �      	      x������ � �      /	      x������ � �      4	      x������ � �      	      x������ � �      0	      x������ � �      	      x������ � �      	      x������ � �     