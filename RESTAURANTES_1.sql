PGDMP         0                w            restaurantes    9.5.5    11.5 �    \	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            ]	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ^	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            _	           1262    32778    restaurantes    DATABASE     �   CREATE DATABASE restaurantes WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE restaurantes;
             postgres    false            `	           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6            �            1259    33528 
   administra    TABLE     `   CREATE TABLE public.administra (
    id_eg integer NOT NULL,
    id_usuario integer NOT NULL
);
    DROP TABLE public.administra;
       public         postgres    false            �            1259    33333    almuerzo    TABLE     �   CREATE TABLE public.almuerzo (
    id_almuerzo integer NOT NULL,
    precio_a numeric(4,2) NOT NULL,
    foto_a character varying(20),
    id_menu integer NOT NULL
);
    DROP TABLE public.almuerzo;
       public         postgres    false            �            1259    33331    almuerzo_id_almuerzo_seq    SEQUENCE     �   CREATE SEQUENCE public.almuerzo_id_almuerzo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.almuerzo_id_almuerzo_seq;
       public       postgres    false    207            a	           0    0    almuerzo_id_almuerzo_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.almuerzo_id_almuerzo_seq OWNED BY public.almuerzo.id_almuerzo;
            public       postgres    false    206            �            1259    33317    bebidas    TABLE     �   CREATE TABLE public.bebidas (
    id_bebida integer NOT NULL,
    tipo character varying(15) NOT NULL,
    precio_b numeric(4,2),
    nombre character varying(20) NOT NULL,
    foto_b character varying(20) NOT NULL
);
    DROP TABLE public.bebidas;
       public         postgres    false            �            1259    33315    bebidas_id_bebida_seq    SEQUENCE     ~   CREATE SEQUENCE public.bebidas_id_bebida_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.bebidas_id_bebida_seq;
       public       postgres    false    203            b	           0    0    bebidas_id_bebida_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.bebidas_id_bebida_seq OWNED BY public.bebidas.id_bebida;
            public       postgres    false    202            �            1259    33256    califica    TABLE     �   CREATE TABLE public.califica (
    id_eg integer NOT NULL,
    id_usuario integer NOT NULL,
    calificacion integer NOT NULL
);
    DROP TABLE public.califica;
       public         postgres    false            �            1259    33436    califica_almuerzo    TABLE     �   CREATE TABLE public.califica_almuerzo (
    id_almuerzo integer NOT NULL,
    id_usuario integer NOT NULL,
    puntuacion integer NOT NULL
);
 %   DROP TABLE public.califica_almuerzo;
       public         postgres    false            �            1259    33451    califica_bebida    TABLE     �   CREATE TABLE public.califica_bebida (
    id_bebida integer NOT NULL,
    id_usuario integer NOT NULL,
    puntuacion integer NOT NULL
);
 #   DROP TABLE public.califica_bebida;
       public         postgres    false            �            1259    33466    califica_especial    TABLE     �   CREATE TABLE public.califica_especial (
    id_plato integer NOT NULL,
    id_usuario integer NOT NULL,
    puntuacion integer NOT NULL
);
 %   DROP TABLE public.califica_especial;
       public         postgres    false            �            1259    33196    cocinero    TABLE       CREATE TABLE public.cocinero (
    id_cocinero integer NOT NULL,
    nombre character varying(15) NOT NULL,
    apellidos character varying(20) NOT NULL,
    especialidad character varying(15),
    nacionalidad character varying(15) NOT NULL,
    foto character varying(20) NOT NULL
);
    DROP TABLE public.cocinero;
       public         postgres    false            �            1259    33194    cocinero_id_cocinero_seq    SEQUENCE     �   CREATE SEQUENCE public.cocinero_id_cocinero_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.cocinero_id_cocinero_seq;
       public       postgres    false    188            c	           0    0    cocinero_id_cocinero_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.cocinero_id_cocinero_seq OWNED BY public.cocinero.id_cocinero;
            public       postgres    false    187            �            1259    33399    entrada    TABLE     �   CREATE TABLE public.entrada (
    id_entrada integer NOT NULL,
    nombre_ae character varying(25) NOT NULL,
    descripcion_ae character varying(100),
    id_almuerzo integer NOT NULL,
    tipo character varying(15) NOT NULL
);
    DROP TABLE public.entrada;
       public         postgres    false            �            1259    33397    entrada_id_entrada_seq    SEQUENCE        CREATE SEQUENCE public.entrada_id_entrada_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.entrada_id_entrada_seq;
       public       postgres    false    214            d	           0    0    entrada_id_entrada_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.entrada_id_entrada_seq OWNED BY public.entrada.id_entrada;
            public       postgres    false    213            �            1259    33212    establecimiento_gastronomico    TABLE     C  CREATE TABLE public.establecimiento_gastronomico (
    id_eg integer NOT NULL,
    razon_social character varying(20) NOT NULL,
    telefono character varying(20),
    descripcion character varying(100) NOT NULL,
    tipo character varying(15) NOT NULL,
    id_horario integer NOT NULL,
    id_cocinero integer NOT NULL
);
 0   DROP TABLE public.establecimiento_gastronomico;
       public         postgres    false            �            1259    33210 &   establecimiento_gastronomico_id_eg_seq    SEQUENCE     �   CREATE SEQUENCE public.establecimiento_gastronomico_id_eg_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.establecimiento_gastronomico_id_eg_seq;
       public       postgres    false    192            e	           0    0 &   establecimiento_gastronomico_id_eg_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.establecimiento_gastronomico_id_eg_seq OWNED BY public.establecimiento_gastronomico.id_eg;
            public       postgres    false    191            �            1259    33204    horario    TABLE     �   CREATE TABLE public.horario (
    id_horario integer NOT NULL,
    hora_apertura character varying(5) NOT NULL,
    hora_cierre character varying(5) NOT NULL,
    nombre_dia character varying(10) NOT NULL
);
    DROP TABLE public.horario;
       public         postgres    false            �            1259    33202    horario_id_horario_seq    SEQUENCE        CREATE SEQUENCE public.horario_id_horario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.horario_id_horario_seq;
       public       postgres    false    190            f	           0    0    horario_id_horario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.horario_id_horario_seq OWNED BY public.horario.id_horario;
            public       postgres    false    189            �            1259    33304    menu    TABLE     �   CREATE TABLE public.menu (
    id_menu integer NOT NULL,
    tipo_menu character varying(25),
    detalle_menu character varying(100),
    id_eg integer NOT NULL
);
    DROP TABLE public.menu;
       public         postgres    false            �            1259    33302    menu_id_menu_seq    SEQUENCE     y   CREATE SEQUENCE public.menu_id_menu_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.menu_id_menu_seq;
       public       postgres    false    201            g	           0    0    menu_id_menu_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.menu_id_menu_seq OWNED BY public.menu.id_menu;
            public       postgres    false    200            �            1259    33359    ofrece_bebidas    TABLE     e   CREATE TABLE public.ofrece_bebidas (
    id_menu integer NOT NULL,
    id_bebida integer NOT NULL
);
 "   DROP TABLE public.ofrece_bebidas;
       public         postgres    false            �            1259    33344    ofrece_plato_especial    TABLE     k   CREATE TABLE public.ofrece_plato_especial (
    id_menu integer NOT NULL,
    id_plato integer NOT NULL
);
 )   DROP TABLE public.ofrece_plato_especial;
       public         postgres    false            �            1259    33513    ofrece_servicio    TABLE     f   CREATE TABLE public.ofrece_servicio (
    id_eg integer NOT NULL,
    id_servicio integer NOT NULL
);
 #   DROP TABLE public.ofrece_servicio;
       public         postgres    false            �            1259    33325    plato_especial    TABLE     �   CREATE TABLE public.plato_especial (
    id_plato integer NOT NULL,
    precio_p numeric(4,2) NOT NULL,
    descripcion character varying(100),
    nombre character varying(25) NOT NULL,
    foto_p character varying(20) NOT NULL
);
 "   DROP TABLE public.plato_especial;
       public         postgres    false            �            1259    33323    plato_especial_id_plato_seq    SEQUENCE     �   CREATE SEQUENCE public.plato_especial_id_plato_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.plato_especial_id_plato_seq;
       public       postgres    false    205            h	           0    0    plato_especial_id_plato_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.plato_especial_id_plato_seq OWNED BY public.plato_especial.id_plato;
            public       postgres    false    204            �            1259    33425    postre    TABLE     �   CREATE TABLE public.postre (
    id_postre integer NOT NULL,
    nombre_ap character varying(25) NOT NULL,
    descripcion_ap character varying(100),
    id_almuerzo integer NOT NULL
);
    DROP TABLE public.postre;
       public         postgres    false            �            1259    33423    postre_id_postre_seq    SEQUENCE     }   CREATE SEQUENCE public.postre_id_postre_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.postre_id_postre_seq;
       public       postgres    false    218            i	           0    0    postre_id_postre_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.postre_id_postre_seq OWNED BY public.postre.id_postre;
            public       postgres    false    217            �            1259    33291 
   publicidad    TABLE     %  CREATE TABLE public.publicidad (
    id_publicidad integer NOT NULL,
    titulo character varying(25) NOT NULL,
    fecha_ini date,
    fecha_fin date,
    descripcion character varying(100),
    imagen_pro character varying(20) NOT NULL,
    costo numeric(4,2),
    id_eg integer NOT NULL
);
    DROP TABLE public.publicidad;
       public         postgres    false            �            1259    33289    publicidad_id_publicidad_seq    SEQUENCE     �   CREATE SEQUENCE public.publicidad_id_publicidad_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.publicidad_id_publicidad_seq;
       public       postgres    false    199            j	           0    0    publicidad_id_publicidad_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.publicidad_id_publicidad_seq OWNED BY public.publicidad.id_publicidad;
            public       postgres    false    198            �            1259    33168    registro_operaciones    TABLE     �   CREATE TABLE public.registro_operaciones (
    id_time integer NOT NULL,
    fecha date,
    tipo character varying(15) NOT NULL,
    id_usuario integer NOT NULL
);
 (   DROP TABLE public.registro_operaciones;
       public         postgres    false            �            1259    33166     registro_operaciones_id_time_seq    SEQUENCE     �   CREATE SEQUENCE public.registro_operaciones_id_time_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.registro_operaciones_id_time_seq;
       public       postgres    false    184            k	           0    0     registro_operaciones_id_time_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.registro_operaciones_id_time_seq OWNED BY public.registro_operaciones.id_time;
            public       postgres    false    183            �            1259    33181    respaldo    TABLE     e  CREATE TABLE public.respaldo (
    id_respaldo integer NOT NULL,
    id_time integer NOT NULL,
    id_usuario integer NOT NULL,
    nombre character varying(15) NOT NULL,
    apellidos character varying(30) NOT NULL,
    username character varying(20) NOT NULL,
    password character varying(20) NOT NULL,
    email character varying(20) NOT NULL,
    rol character varying(10),
    fecha_nacimiento date NOT NULL,
    sexo character varying(10) NOT NULL,
    telefono character varying(15),
    confirmation_key character varying(15),
    reset_key character varying(15),
    id_colaborador integer NOT NULL
);
    DROP TABLE public.respaldo;
       public         postgres    false            �            1259    33179    respaldo_id_respaldo_seq    SEQUENCE     �   CREATE SEQUENCE public.respaldo_id_respaldo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.respaldo_id_respaldo_seq;
       public       postgres    false    186            l	           0    0    respaldo_id_respaldo_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.respaldo_id_respaldo_seq OWNED BY public.respaldo.id_respaldo;
            public       postgres    false    185            �            1259    33376    segundo    TABLE     �   CREATE TABLE public.segundo (
    id_segundo integer NOT NULL,
    nombre character varying(20) NOT NULL,
    descripcion character varying(100),
    foto character varying(20) NOT NULL
);
    DROP TABLE public.segundo;
       public         postgres    false            �            1259    33374    segundo_id_segundo_seq    SEQUENCE        CREATE SEQUENCE public.segundo_id_segundo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.segundo_id_segundo_seq;
       public       postgres    false    211            m	           0    0    segundo_id_segundo_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.segundo_id_segundo_seq OWNED BY public.segundo.id_segundo;
            public       postgres    false    210            �            1259    33507    servicio_extra    TABLE     t   CREATE TABLE public.servicio_extra (
    id_servicio integer NOT NULL,
    nombre character varying(15) NOT NULL
);
 "   DROP TABLE public.servicio_extra;
       public         postgres    false            �            1259    33505    servicio_extra_id_servicio_seq    SEQUENCE     �   CREATE SEQUENCE public.servicio_extra_id_servicio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.servicio_extra_id_servicio_seq;
       public       postgres    false    223            n	           0    0    servicio_extra_id_servicio_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.servicio_extra_id_servicio_seq OWNED BY public.servicio_extra.id_servicio;
            public       postgres    false    222            �            1259    33412    sopa    TABLE     �   CREATE TABLE public.sopa (
    id_sopa integer NOT NULL,
    nombre_as character varying(25) NOT NULL,
    descripcion_as character varying(100),
    id_almuerzo integer NOT NULL
);
    DROP TABLE public.sopa;
       public         postgres    false            �            1259    33410    sopa_id_sopa_seq    SEQUENCE     y   CREATE SEQUENCE public.sopa_id_sopa_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.sopa_id_sopa_seq;
       public       postgres    false    216            o	           0    0    sopa_id_sopa_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.sopa_id_sopa_seq OWNED BY public.sopa.id_sopa;
            public       postgres    false    215            �            1259    33230    sucursal    TABLE     �   CREATE TABLE public.sucursal (
    id_suscursal integer NOT NULL,
    latitud character varying(20) NOT NULL,
    longitud character varying(20) NOT NULL,
    direccion character varying(50) NOT NULL,
    id_eg integer NOT NULL
);
    DROP TABLE public.sucursal;
       public         postgres    false            �            1259    33228    sucursal_id_suscursal_seq    SEQUENCE     �   CREATE SEQUENCE public.sucursal_id_suscursal_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.sucursal_id_suscursal_seq;
       public       postgres    false    194            p	           0    0    sucursal_id_suscursal_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.sucursal_id_suscursal_seq OWNED BY public.sucursal.id_suscursal;
            public       postgres    false    193            �            1259    33271    tiene    TABLE     �   CREATE TABLE public.tiene (
    id_eg integer NOT NULL,
    id_usuario integer NOT NULL,
    nit integer NOT NULL,
    es_administrador boolean DEFAULT false
);
    DROP TABLE public.tiene;
       public         postgres    false            �            1259    33382    tiene_segundo    TABLE     i   CREATE TABLE public.tiene_segundo (
    id_almuerzo integer NOT NULL,
    id_segundo integer NOT NULL
);
 !   DROP TABLE public.tiene_segundo;
       public         postgres    false            �            1259    33153    usuario    TABLE     $  CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    nombre character varying(15) NOT NULL,
    apellidos character varying(30) NOT NULL,
    username character varying(20) NOT NULL,
    password character varying(20) NOT NULL,
    email character varying(20) NOT NULL,
    rol character varying(10),
    fecha_nacimiento date NOT NULL,
    sexo character varying(10) NOT NULL,
    telefono character varying(15),
    confirmation_key character varying(15),
    reset_key character varying(15),
    id_colaborador integer NOT NULL
);
    DROP TABLE public.usuario;
       public         postgres    false            �            1259    33151    usuario_id_usuario_seq    SEQUENCE        CREATE SEQUENCE public.usuario_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuario_id_usuario_seq;
       public       postgres    false    182            q	           0    0    usuario_id_usuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;
            public       postgres    false    181            �            1259    33241    visita    TABLE     \   CREATE TABLE public.visita (
    id_eg integer NOT NULL,
    id_usuario integer NOT NULL
);
    DROP TABLE public.visita;
       public         postgres    false            U           2604    33336    almuerzo id_almuerzo    DEFAULT     |   ALTER TABLE ONLY public.almuerzo ALTER COLUMN id_almuerzo SET DEFAULT nextval('public.almuerzo_id_almuerzo_seq'::regclass);
 C   ALTER TABLE public.almuerzo ALTER COLUMN id_almuerzo DROP DEFAULT;
       public       postgres    false    207    206    207            S           2604    33320    bebidas id_bebida    DEFAULT     v   ALTER TABLE ONLY public.bebidas ALTER COLUMN id_bebida SET DEFAULT nextval('public.bebidas_id_bebida_seq'::regclass);
 @   ALTER TABLE public.bebidas ALTER COLUMN id_bebida DROP DEFAULT;
       public       postgres    false    202    203    203            L           2604    33199    cocinero id_cocinero    DEFAULT     |   ALTER TABLE ONLY public.cocinero ALTER COLUMN id_cocinero SET DEFAULT nextval('public.cocinero_id_cocinero_seq'::regclass);
 C   ALTER TABLE public.cocinero ALTER COLUMN id_cocinero DROP DEFAULT;
       public       postgres    false    187    188    188            W           2604    33402    entrada id_entrada    DEFAULT     x   ALTER TABLE ONLY public.entrada ALTER COLUMN id_entrada SET DEFAULT nextval('public.entrada_id_entrada_seq'::regclass);
 A   ALTER TABLE public.entrada ALTER COLUMN id_entrada DROP DEFAULT;
       public       postgres    false    214    213    214            N           2604    33215 "   establecimiento_gastronomico id_eg    DEFAULT     �   ALTER TABLE ONLY public.establecimiento_gastronomico ALTER COLUMN id_eg SET DEFAULT nextval('public.establecimiento_gastronomico_id_eg_seq'::regclass);
 Q   ALTER TABLE public.establecimiento_gastronomico ALTER COLUMN id_eg DROP DEFAULT;
       public       postgres    false    192    191    192            M           2604    33207    horario id_horario    DEFAULT     x   ALTER TABLE ONLY public.horario ALTER COLUMN id_horario SET DEFAULT nextval('public.horario_id_horario_seq'::regclass);
 A   ALTER TABLE public.horario ALTER COLUMN id_horario DROP DEFAULT;
       public       postgres    false    190    189    190            R           2604    33307    menu id_menu    DEFAULT     l   ALTER TABLE ONLY public.menu ALTER COLUMN id_menu SET DEFAULT nextval('public.menu_id_menu_seq'::regclass);
 ;   ALTER TABLE public.menu ALTER COLUMN id_menu DROP DEFAULT;
       public       postgres    false    201    200    201            T           2604    33328    plato_especial id_plato    DEFAULT     �   ALTER TABLE ONLY public.plato_especial ALTER COLUMN id_plato SET DEFAULT nextval('public.plato_especial_id_plato_seq'::regclass);
 F   ALTER TABLE public.plato_especial ALTER COLUMN id_plato DROP DEFAULT;
       public       postgres    false    204    205    205            Y           2604    33428    postre id_postre    DEFAULT     t   ALTER TABLE ONLY public.postre ALTER COLUMN id_postre SET DEFAULT nextval('public.postre_id_postre_seq'::regclass);
 ?   ALTER TABLE public.postre ALTER COLUMN id_postre DROP DEFAULT;
       public       postgres    false    217    218    218            Q           2604    33294    publicidad id_publicidad    DEFAULT     �   ALTER TABLE ONLY public.publicidad ALTER COLUMN id_publicidad SET DEFAULT nextval('public.publicidad_id_publicidad_seq'::regclass);
 G   ALTER TABLE public.publicidad ALTER COLUMN id_publicidad DROP DEFAULT;
       public       postgres    false    198    199    199            J           2604    33171    registro_operaciones id_time    DEFAULT     �   ALTER TABLE ONLY public.registro_operaciones ALTER COLUMN id_time SET DEFAULT nextval('public.registro_operaciones_id_time_seq'::regclass);
 K   ALTER TABLE public.registro_operaciones ALTER COLUMN id_time DROP DEFAULT;
       public       postgres    false    183    184    184            K           2604    33184    respaldo id_respaldo    DEFAULT     |   ALTER TABLE ONLY public.respaldo ALTER COLUMN id_respaldo SET DEFAULT nextval('public.respaldo_id_respaldo_seq'::regclass);
 C   ALTER TABLE public.respaldo ALTER COLUMN id_respaldo DROP DEFAULT;
       public       postgres    false    185    186    186            V           2604    33379    segundo id_segundo    DEFAULT     x   ALTER TABLE ONLY public.segundo ALTER COLUMN id_segundo SET DEFAULT nextval('public.segundo_id_segundo_seq'::regclass);
 A   ALTER TABLE public.segundo ALTER COLUMN id_segundo DROP DEFAULT;
       public       postgres    false    210    211    211            Z           2604    33510    servicio_extra id_servicio    DEFAULT     �   ALTER TABLE ONLY public.servicio_extra ALTER COLUMN id_servicio SET DEFAULT nextval('public.servicio_extra_id_servicio_seq'::regclass);
 I   ALTER TABLE public.servicio_extra ALTER COLUMN id_servicio DROP DEFAULT;
       public       postgres    false    222    223    223            X           2604    33415    sopa id_sopa    DEFAULT     l   ALTER TABLE ONLY public.sopa ALTER COLUMN id_sopa SET DEFAULT nextval('public.sopa_id_sopa_seq'::regclass);
 ;   ALTER TABLE public.sopa ALTER COLUMN id_sopa DROP DEFAULT;
       public       postgres    false    216    215    216            O           2604    33233    sucursal id_suscursal    DEFAULT     ~   ALTER TABLE ONLY public.sucursal ALTER COLUMN id_suscursal SET DEFAULT nextval('public.sucursal_id_suscursal_seq'::regclass);
 D   ALTER TABLE public.sucursal ALTER COLUMN id_suscursal DROP DEFAULT;
       public       postgres    false    194    193    194            I           2604    33156    usuario id_usuario    DEFAULT     x   ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);
 A   ALTER TABLE public.usuario ALTER COLUMN id_usuario DROP DEFAULT;
       public       postgres    false    182    181    182            Y	          0    33528 
   administra 
   TABLE DATA               7   COPY public.administra (id_eg, id_usuario) FROM stdin;
    public       postgres    false    225   ��       G	          0    33333    almuerzo 
   TABLE DATA               J   COPY public.almuerzo (id_almuerzo, precio_a, foto_a, id_menu) FROM stdin;
    public       postgres    false    207   ��       C	          0    33317    bebidas 
   TABLE DATA               L   COPY public.bebidas (id_bebida, tipo, precio_b, nombre, foto_b) FROM stdin;
    public       postgres    false    203   ��       <	          0    33256    califica 
   TABLE DATA               C   COPY public.califica (id_eg, id_usuario, calificacion) FROM stdin;
    public       postgres    false    196   �       S	          0    33436    califica_almuerzo 
   TABLE DATA               P   COPY public.califica_almuerzo (id_almuerzo, id_usuario, puntuacion) FROM stdin;
    public       postgres    false    219   -�       T	          0    33451    califica_bebida 
   TABLE DATA               L   COPY public.califica_bebida (id_bebida, id_usuario, puntuacion) FROM stdin;
    public       postgres    false    220   J�       U	          0    33466    califica_especial 
   TABLE DATA               M   COPY public.califica_especial (id_plato, id_usuario, puntuacion) FROM stdin;
    public       postgres    false    221   g�       4	          0    33196    cocinero 
   TABLE DATA               d   COPY public.cocinero (id_cocinero, nombre, apellidos, especialidad, nacionalidad, foto) FROM stdin;
    public       postgres    false    188   ��       N	          0    33399    entrada 
   TABLE DATA               [   COPY public.entrada (id_entrada, nombre_ae, descripcion_ae, id_almuerzo, tipo) FROM stdin;
    public       postgres    false    214   ��       8	          0    33212    establecimiento_gastronomico 
   TABLE DATA               �   COPY public.establecimiento_gastronomico (id_eg, razon_social, telefono, descripcion, tipo, id_horario, id_cocinero) FROM stdin;
    public       postgres    false    192   ��       6	          0    33204    horario 
   TABLE DATA               U   COPY public.horario (id_horario, hora_apertura, hora_cierre, nombre_dia) FROM stdin;
    public       postgres    false    190   ��       A	          0    33304    menu 
   TABLE DATA               G   COPY public.menu (id_menu, tipo_menu, detalle_menu, id_eg) FROM stdin;
    public       postgres    false    201   ��       I	          0    33359    ofrece_bebidas 
   TABLE DATA               <   COPY public.ofrece_bebidas (id_menu, id_bebida) FROM stdin;
    public       postgres    false    209   �       H	          0    33344    ofrece_plato_especial 
   TABLE DATA               B   COPY public.ofrece_plato_especial (id_menu, id_plato) FROM stdin;
    public       postgres    false    208   2�       X	          0    33513    ofrece_servicio 
   TABLE DATA               =   COPY public.ofrece_servicio (id_eg, id_servicio) FROM stdin;
    public       postgres    false    224   O�       E	          0    33325    plato_especial 
   TABLE DATA               Y   COPY public.plato_especial (id_plato, precio_p, descripcion, nombre, foto_p) FROM stdin;
    public       postgres    false    205   l�       R	          0    33425    postre 
   TABLE DATA               S   COPY public.postre (id_postre, nombre_ap, descripcion_ap, id_almuerzo) FROM stdin;
    public       postgres    false    218   ��       ?	          0    33291 
   publicidad 
   TABLE DATA               x   COPY public.publicidad (id_publicidad, titulo, fecha_ini, fecha_fin, descripcion, imagen_pro, costo, id_eg) FROM stdin;
    public       postgres    false    199   ��       0	          0    33168    registro_operaciones 
   TABLE DATA               P   COPY public.registro_operaciones (id_time, fecha, tipo, id_usuario) FROM stdin;
    public       postgres    false    184   ��       2	          0    33181    respaldo 
   TABLE DATA               �   COPY public.respaldo (id_respaldo, id_time, id_usuario, nombre, apellidos, username, password, email, rol, fecha_nacimiento, sexo, telefono, confirmation_key, reset_key, id_colaborador) FROM stdin;
    public       postgres    false    186   ��       K	          0    33376    segundo 
   TABLE DATA               H   COPY public.segundo (id_segundo, nombre, descripcion, foto) FROM stdin;
    public       postgres    false    211   ��       W	          0    33507    servicio_extra 
   TABLE DATA               =   COPY public.servicio_extra (id_servicio, nombre) FROM stdin;
    public       postgres    false    223   �       P	          0    33412    sopa 
   TABLE DATA               O   COPY public.sopa (id_sopa, nombre_as, descripcion_as, id_almuerzo) FROM stdin;
    public       postgres    false    216   7�       :	          0    33230    sucursal 
   TABLE DATA               U   COPY public.sucursal (id_suscursal, latitud, longitud, direccion, id_eg) FROM stdin;
    public       postgres    false    194   T�       =	          0    33271    tiene 
   TABLE DATA               I   COPY public.tiene (id_eg, id_usuario, nit, es_administrador) FROM stdin;
    public       postgres    false    197   q�       L	          0    33382    tiene_segundo 
   TABLE DATA               @   COPY public.tiene_segundo (id_almuerzo, id_segundo) FROM stdin;
    public       postgres    false    212   ��       .	          0    33153    usuario 
   TABLE DATA               �   COPY public.usuario (id_usuario, nombre, apellidos, username, password, email, rol, fecha_nacimiento, sexo, telefono, confirmation_key, reset_key, id_colaborador) FROM stdin;
    public       postgres    false    182   ��       ;	          0    33241    visita 
   TABLE DATA               3   COPY public.visita (id_eg, id_usuario) FROM stdin;
    public       postgres    false    195   ��       r	           0    0    almuerzo_id_almuerzo_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.almuerzo_id_almuerzo_seq', 1, false);
            public       postgres    false    206            s	           0    0    bebidas_id_bebida_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.bebidas_id_bebida_seq', 1, false);
            public       postgres    false    202            t	           0    0    cocinero_id_cocinero_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.cocinero_id_cocinero_seq', 1, false);
            public       postgres    false    187            u	           0    0    entrada_id_entrada_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.entrada_id_entrada_seq', 1, false);
            public       postgres    false    213            v	           0    0 &   establecimiento_gastronomico_id_eg_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.establecimiento_gastronomico_id_eg_seq', 1, false);
            public       postgres    false    191            w	           0    0    horario_id_horario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.horario_id_horario_seq', 1, false);
            public       postgres    false    189            x	           0    0    menu_id_menu_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.menu_id_menu_seq', 1, false);
            public       postgres    false    200            y	           0    0    plato_especial_id_plato_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.plato_especial_id_plato_seq', 1, false);
            public       postgres    false    204            z	           0    0    postre_id_postre_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.postre_id_postre_seq', 1, false);
            public       postgres    false    217            {	           0    0    publicidad_id_publicidad_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.publicidad_id_publicidad_seq', 1, false);
            public       postgres    false    198            |	           0    0     registro_operaciones_id_time_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.registro_operaciones_id_time_seq', 1, false);
            public       postgres    false    183            }	           0    0    respaldo_id_respaldo_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.respaldo_id_respaldo_seq', 1, false);
            public       postgres    false    185            ~	           0    0    segundo_id_segundo_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.segundo_id_segundo_seq', 1, false);
            public       postgres    false    210            	           0    0    servicio_extra_id_servicio_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.servicio_extra_id_servicio_seq', 1, false);
            public       postgres    false    222            �	           0    0    sopa_id_sopa_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.sopa_id_sopa_seq', 1, false);
            public       postgres    false    215            �	           0    0    sucursal_id_suscursal_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.sucursal_id_suscursal_seq', 1, false);
            public       postgres    false    193            �	           0    0    usuario_id_usuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 1, false);
            public       postgres    false    181            �           2606    33532    administra administra_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.administra
    ADD CONSTRAINT administra_pkey PRIMARY KEY (id_eg, id_usuario);
 D   ALTER TABLE ONLY public.administra DROP CONSTRAINT administra_pkey;
       public         postgres    false    225    225            ~           2606    33338    almuerzo almuerzo_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.almuerzo
    ADD CONSTRAINT almuerzo_pkey PRIMARY KEY (id_almuerzo);
 @   ALTER TABLE ONLY public.almuerzo DROP CONSTRAINT almuerzo_pkey;
       public         postgres    false    207            z           2606    33322    bebidas bebidas_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.bebidas
    ADD CONSTRAINT bebidas_pkey PRIMARY KEY (id_bebida);
 >   ALTER TABLE ONLY public.bebidas DROP CONSTRAINT bebidas_pkey;
       public         postgres    false    203            �           2606    33440 (   califica_almuerzo califica_almuerzo_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.califica_almuerzo
    ADD CONSTRAINT califica_almuerzo_pkey PRIMARY KEY (id_almuerzo, id_usuario);
 R   ALTER TABLE ONLY public.califica_almuerzo DROP CONSTRAINT califica_almuerzo_pkey;
       public         postgres    false    219    219            �           2606    33455 $   califica_bebida califica_bebida_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.califica_bebida
    ADD CONSTRAINT califica_bebida_pkey PRIMARY KEY (id_bebida, id_usuario);
 N   ALTER TABLE ONLY public.califica_bebida DROP CONSTRAINT califica_bebida_pkey;
       public         postgres    false    220    220            �           2606    33470 (   califica_especial califica_especial_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.califica_especial
    ADD CONSTRAINT califica_especial_pkey PRIMARY KEY (id_plato, id_usuario);
 R   ALTER TABLE ONLY public.califica_especial DROP CONSTRAINT califica_especial_pkey;
       public         postgres    false    221    221            p           2606    33260    califica califica_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.califica
    ADD CONSTRAINT califica_pkey PRIMARY KEY (id_eg, id_usuario);
 @   ALTER TABLE ONLY public.califica DROP CONSTRAINT califica_pkey;
       public         postgres    false    196    196            f           2606    33201    cocinero cocinero_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.cocinero
    ADD CONSTRAINT cocinero_pkey PRIMARY KEY (id_cocinero);
 @   ALTER TABLE ONLY public.cocinero DROP CONSTRAINT cocinero_pkey;
       public         postgres    false    188            �           2606    33404    entrada entrada_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.entrada
    ADD CONSTRAINT entrada_pkey PRIMARY KEY (id_entrada);
 >   ALTER TABLE ONLY public.entrada DROP CONSTRAINT entrada_pkey;
       public         postgres    false    214            j           2606    33217 >   establecimiento_gastronomico establecimiento_gastronomico_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.establecimiento_gastronomico
    ADD CONSTRAINT establecimiento_gastronomico_pkey PRIMARY KEY (id_eg);
 h   ALTER TABLE ONLY public.establecimiento_gastronomico DROP CONSTRAINT establecimiento_gastronomico_pkey;
       public         postgres    false    192            h           2606    33209    horario horario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.horario
    ADD CONSTRAINT horario_pkey PRIMARY KEY (id_horario);
 >   ALTER TABLE ONLY public.horario DROP CONSTRAINT horario_pkey;
       public         postgres    false    190            x           2606    33309    menu menu_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.menu
    ADD CONSTRAINT menu_pkey PRIMARY KEY (id_menu);
 8   ALTER TABLE ONLY public.menu DROP CONSTRAINT menu_pkey;
       public         postgres    false    201            �           2606    33363 "   ofrece_bebidas ofrece_bebidas_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.ofrece_bebidas
    ADD CONSTRAINT ofrece_bebidas_pkey PRIMARY KEY (id_menu, id_bebida);
 L   ALTER TABLE ONLY public.ofrece_bebidas DROP CONSTRAINT ofrece_bebidas_pkey;
       public         postgres    false    209    209            �           2606    33348 0   ofrece_plato_especial ofrece_plato_especial_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.ofrece_plato_especial
    ADD CONSTRAINT ofrece_plato_especial_pkey PRIMARY KEY (id_menu, id_plato);
 Z   ALTER TABLE ONLY public.ofrece_plato_especial DROP CONSTRAINT ofrece_plato_especial_pkey;
       public         postgres    false    208    208            �           2606    33517 $   ofrece_servicio ofrece_servicio_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.ofrece_servicio
    ADD CONSTRAINT ofrece_servicio_pkey PRIMARY KEY (id_eg, id_servicio);
 N   ALTER TABLE ONLY public.ofrece_servicio DROP CONSTRAINT ofrece_servicio_pkey;
       public         postgres    false    224    224            |           2606    33330 "   plato_especial plato_especial_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.plato_especial
    ADD CONSTRAINT plato_especial_pkey PRIMARY KEY (id_plato);
 L   ALTER TABLE ONLY public.plato_especial DROP CONSTRAINT plato_especial_pkey;
       public         postgres    false    205            �           2606    33430    postre postre_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.postre
    ADD CONSTRAINT postre_pkey PRIMARY KEY (id_postre);
 <   ALTER TABLE ONLY public.postre DROP CONSTRAINT postre_pkey;
       public         postgres    false    218            v           2606    33296    publicidad publicidad_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.publicidad
    ADD CONSTRAINT publicidad_pkey PRIMARY KEY (id_publicidad);
 D   ALTER TABLE ONLY public.publicidad DROP CONSTRAINT publicidad_pkey;
       public         postgres    false    199            `           2606    33173 .   registro_operaciones registro_operaciones_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.registro_operaciones
    ADD CONSTRAINT registro_operaciones_pkey PRIMARY KEY (id_time);
 X   ALTER TABLE ONLY public.registro_operaciones DROP CONSTRAINT registro_operaciones_pkey;
       public         postgres    false    184            b           2606    33186    respaldo respaldo_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.respaldo
    ADD CONSTRAINT respaldo_pkey PRIMARY KEY (id_respaldo, id_time);
 @   ALTER TABLE ONLY public.respaldo DROP CONSTRAINT respaldo_pkey;
       public         postgres    false    186    186            d           2606    33188    respaldo respaldo_username_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.respaldo
    ADD CONSTRAINT respaldo_username_key UNIQUE (username);
 H   ALTER TABLE ONLY public.respaldo DROP CONSTRAINT respaldo_username_key;
       public         postgres    false    186            �           2606    33381    segundo segundo_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.segundo
    ADD CONSTRAINT segundo_pkey PRIMARY KEY (id_segundo);
 >   ALTER TABLE ONLY public.segundo DROP CONSTRAINT segundo_pkey;
       public         postgres    false    211            �           2606    33512 "   servicio_extra servicio_extra_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.servicio_extra
    ADD CONSTRAINT servicio_extra_pkey PRIMARY KEY (id_servicio);
 L   ALTER TABLE ONLY public.servicio_extra DROP CONSTRAINT servicio_extra_pkey;
       public         postgres    false    223            �           2606    33417    sopa sopa_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.sopa
    ADD CONSTRAINT sopa_pkey PRIMARY KEY (id_sopa);
 8   ALTER TABLE ONLY public.sopa DROP CONSTRAINT sopa_pkey;
       public         postgres    false    216            l           2606    33235    sucursal sucursal_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.sucursal
    ADD CONSTRAINT sucursal_pkey PRIMARY KEY (id_suscursal);
 @   ALTER TABLE ONLY public.sucursal DROP CONSTRAINT sucursal_pkey;
       public         postgres    false    194            r           2606    33278    tiene tiene_nit_key 
   CONSTRAINT     M   ALTER TABLE ONLY public.tiene
    ADD CONSTRAINT tiene_nit_key UNIQUE (nit);
 =   ALTER TABLE ONLY public.tiene DROP CONSTRAINT tiene_nit_key;
       public         postgres    false    197            t           2606    33276    tiene tiene_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.tiene
    ADD CONSTRAINT tiene_pkey PRIMARY KEY (id_eg, id_usuario);
 :   ALTER TABLE ONLY public.tiene DROP CONSTRAINT tiene_pkey;
       public         postgres    false    197    197            �           2606    33386     tiene_segundo tiene_segundo_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.tiene_segundo
    ADD CONSTRAINT tiene_segundo_pkey PRIMARY KEY (id_almuerzo, id_segundo);
 J   ALTER TABLE ONLY public.tiene_segundo DROP CONSTRAINT tiene_segundo_pkey;
       public         postgres    false    212    212            \           2606    33158    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public         postgres    false    182            ^           2606    33160    usuario usuario_username_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_username_key UNIQUE (username);
 F   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_username_key;
       public         postgres    false    182            n           2606    33245    visita visita_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.visita
    ADD CONSTRAINT visita_pkey PRIMARY KEY (id_eg, id_usuario);
 <   ALTER TABLE ONLY public.visita DROP CONSTRAINT visita_pkey;
       public         postgres    false    195    195            �           2606    33533     administra administra_id_eg_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.administra
    ADD CONSTRAINT administra_id_eg_fkey FOREIGN KEY (id_eg) REFERENCES public.establecimiento_gastronomico(id_eg);
 J   ALTER TABLE ONLY public.administra DROP CONSTRAINT administra_id_eg_fkey;
       public       postgres    false    192    225    2154            �           2606    33538 %   administra administra_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.administra
    ADD CONSTRAINT administra_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 O   ALTER TABLE ONLY public.administra DROP CONSTRAINT administra_id_usuario_fkey;
       public       postgres    false    182    225    2140            �           2606    33339    almuerzo almuerzo_id_menu_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.almuerzo
    ADD CONSTRAINT almuerzo_id_menu_fkey FOREIGN KEY (id_menu) REFERENCES public.menu(id_menu);
 H   ALTER TABLE ONLY public.almuerzo DROP CONSTRAINT almuerzo_id_menu_fkey;
       public       postgres    false    2168    207    201            �           2606    33441 4   califica_almuerzo califica_almuerzo_id_almuerzo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.califica_almuerzo
    ADD CONSTRAINT califica_almuerzo_id_almuerzo_fkey FOREIGN KEY (id_almuerzo) REFERENCES public.almuerzo(id_almuerzo);
 ^   ALTER TABLE ONLY public.califica_almuerzo DROP CONSTRAINT califica_almuerzo_id_almuerzo_fkey;
       public       postgres    false    207    219    2174            �           2606    33446 3   califica_almuerzo califica_almuerzo_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.califica_almuerzo
    ADD CONSTRAINT califica_almuerzo_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 ]   ALTER TABLE ONLY public.califica_almuerzo DROP CONSTRAINT califica_almuerzo_id_usuario_fkey;
       public       postgres    false    182    2140    219            �           2606    33456 .   califica_bebida califica_bebida_id_bebida_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.califica_bebida
    ADD CONSTRAINT califica_bebida_id_bebida_fkey FOREIGN KEY (id_bebida) REFERENCES public.bebidas(id_bebida);
 X   ALTER TABLE ONLY public.califica_bebida DROP CONSTRAINT califica_bebida_id_bebida_fkey;
       public       postgres    false    220    203    2170            �           2606    33461 /   califica_bebida califica_bebida_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.califica_bebida
    ADD CONSTRAINT califica_bebida_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 Y   ALTER TABLE ONLY public.califica_bebida DROP CONSTRAINT califica_bebida_id_usuario_fkey;
       public       postgres    false    2140    182    220            �           2606    33471 1   califica_especial califica_especial_id_plato_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.califica_especial
    ADD CONSTRAINT califica_especial_id_plato_fkey FOREIGN KEY (id_plato) REFERENCES public.plato_especial(id_plato);
 [   ALTER TABLE ONLY public.califica_especial DROP CONSTRAINT califica_especial_id_plato_fkey;
       public       postgres    false    2172    221    205            �           2606    33476 3   califica_especial califica_especial_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.califica_especial
    ADD CONSTRAINT califica_especial_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 ]   ALTER TABLE ONLY public.califica_especial DROP CONSTRAINT califica_especial_id_usuario_fkey;
       public       postgres    false    221    182    2140            �           2606    33261    califica califica_id_eg_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.califica
    ADD CONSTRAINT califica_id_eg_fkey FOREIGN KEY (id_eg) REFERENCES public.establecimiento_gastronomico(id_eg);
 F   ALTER TABLE ONLY public.califica DROP CONSTRAINT califica_id_eg_fkey;
       public       postgres    false    2154    196    192            �           2606    33266 !   califica califica_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.califica
    ADD CONSTRAINT califica_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 K   ALTER TABLE ONLY public.califica DROP CONSTRAINT califica_id_usuario_fkey;
       public       postgres    false    196    182    2140            �           2606    33405     entrada entrada_id_almuerzo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.entrada
    ADD CONSTRAINT entrada_id_almuerzo_fkey FOREIGN KEY (id_almuerzo) REFERENCES public.almuerzo(id_almuerzo);
 J   ALTER TABLE ONLY public.entrada DROP CONSTRAINT entrada_id_almuerzo_fkey;
       public       postgres    false    214    207    2174            �           2606    33218 J   establecimiento_gastronomico establecimiento_gastronomico_id_cocinero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.establecimiento_gastronomico
    ADD CONSTRAINT establecimiento_gastronomico_id_cocinero_fkey FOREIGN KEY (id_cocinero) REFERENCES public.cocinero(id_cocinero);
 t   ALTER TABLE ONLY public.establecimiento_gastronomico DROP CONSTRAINT establecimiento_gastronomico_id_cocinero_fkey;
       public       postgres    false    2150    188    192            �           2606    33223 I   establecimiento_gastronomico establecimiento_gastronomico_id_horario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.establecimiento_gastronomico
    ADD CONSTRAINT establecimiento_gastronomico_id_horario_fkey FOREIGN KEY (id_horario) REFERENCES public.horario(id_horario);
 s   ALTER TABLE ONLY public.establecimiento_gastronomico DROP CONSTRAINT establecimiento_gastronomico_id_horario_fkey;
       public       postgres    false    190    2152    192            �           2606    33310    menu menu_id_eg_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.menu
    ADD CONSTRAINT menu_id_eg_fkey FOREIGN KEY (id_eg) REFERENCES public.establecimiento_gastronomico(id_eg);
 >   ALTER TABLE ONLY public.menu DROP CONSTRAINT menu_id_eg_fkey;
       public       postgres    false    2154    192    201            �           2606    33369 ,   ofrece_bebidas ofrece_bebidas_id_bebida_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ofrece_bebidas
    ADD CONSTRAINT ofrece_bebidas_id_bebida_fkey FOREIGN KEY (id_bebida) REFERENCES public.bebidas(id_bebida);
 V   ALTER TABLE ONLY public.ofrece_bebidas DROP CONSTRAINT ofrece_bebidas_id_bebida_fkey;
       public       postgres    false    2170    209    203            �           2606    33364 *   ofrece_bebidas ofrece_bebidas_id_menu_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ofrece_bebidas
    ADD CONSTRAINT ofrece_bebidas_id_menu_fkey FOREIGN KEY (id_menu) REFERENCES public.menu(id_menu);
 T   ALTER TABLE ONLY public.ofrece_bebidas DROP CONSTRAINT ofrece_bebidas_id_menu_fkey;
       public       postgres    false    201    209    2168            �           2606    33349 8   ofrece_plato_especial ofrece_plato_especial_id_menu_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ofrece_plato_especial
    ADD CONSTRAINT ofrece_plato_especial_id_menu_fkey FOREIGN KEY (id_menu) REFERENCES public.menu(id_menu);
 b   ALTER TABLE ONLY public.ofrece_plato_especial DROP CONSTRAINT ofrece_plato_especial_id_menu_fkey;
       public       postgres    false    2168    201    208            �           2606    33354 9   ofrece_plato_especial ofrece_plato_especial_id_plato_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ofrece_plato_especial
    ADD CONSTRAINT ofrece_plato_especial_id_plato_fkey FOREIGN KEY (id_plato) REFERENCES public.plato_especial(id_plato);
 c   ALTER TABLE ONLY public.ofrece_plato_especial DROP CONSTRAINT ofrece_plato_especial_id_plato_fkey;
       public       postgres    false    205    208    2172            �           2606    33518 *   ofrece_servicio ofrece_servicio_id_eg_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ofrece_servicio
    ADD CONSTRAINT ofrece_servicio_id_eg_fkey FOREIGN KEY (id_eg) REFERENCES public.establecimiento_gastronomico(id_eg);
 T   ALTER TABLE ONLY public.ofrece_servicio DROP CONSTRAINT ofrece_servicio_id_eg_fkey;
       public       postgres    false    2154    192    224            �           2606    33523 0   ofrece_servicio ofrece_servicio_id_servicio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ofrece_servicio
    ADD CONSTRAINT ofrece_servicio_id_servicio_fkey FOREIGN KEY (id_servicio) REFERENCES public.servicio_extra(id_servicio);
 Z   ALTER TABLE ONLY public.ofrece_servicio DROP CONSTRAINT ofrece_servicio_id_servicio_fkey;
       public       postgres    false    224    223    2196            �           2606    33431    postre postre_id_almuerzo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.postre
    ADD CONSTRAINT postre_id_almuerzo_fkey FOREIGN KEY (id_almuerzo) REFERENCES public.almuerzo(id_almuerzo);
 H   ALTER TABLE ONLY public.postre DROP CONSTRAINT postre_id_almuerzo_fkey;
       public       postgres    false    2174    207    218            �           2606    33297     publicidad publicidad_id_eg_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.publicidad
    ADD CONSTRAINT publicidad_id_eg_fkey FOREIGN KEY (id_eg) REFERENCES public.establecimiento_gastronomico(id_eg);
 J   ALTER TABLE ONLY public.publicidad DROP CONSTRAINT publicidad_id_eg_fkey;
       public       postgres    false    2154    192    199            �           2606    33174 9   registro_operaciones registro_operaciones_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_operaciones
    ADD CONSTRAINT registro_operaciones_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 c   ALTER TABLE ONLY public.registro_operaciones DROP CONSTRAINT registro_operaciones_id_usuario_fkey;
       public       postgres    false    2140    184    182            �           2606    33189    respaldo respaldo_id_time_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.respaldo
    ADD CONSTRAINT respaldo_id_time_fkey FOREIGN KEY (id_time) REFERENCES public.registro_operaciones(id_time);
 H   ALTER TABLE ONLY public.respaldo DROP CONSTRAINT respaldo_id_time_fkey;
       public       postgres    false    186    2144    184            �           2606    33418    sopa sopa_id_almuerzo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sopa
    ADD CONSTRAINT sopa_id_almuerzo_fkey FOREIGN KEY (id_almuerzo) REFERENCES public.almuerzo(id_almuerzo);
 D   ALTER TABLE ONLY public.sopa DROP CONSTRAINT sopa_id_almuerzo_fkey;
       public       postgres    false    2174    207    216            �           2606    33236    sucursal sucursal_id_eg_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sucursal
    ADD CONSTRAINT sucursal_id_eg_fkey FOREIGN KEY (id_eg) REFERENCES public.establecimiento_gastronomico(id_eg);
 F   ALTER TABLE ONLY public.sucursal DROP CONSTRAINT sucursal_id_eg_fkey;
       public       postgres    false    2154    194    192            �           2606    33279    tiene tiene_id_eg_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tiene
    ADD CONSTRAINT tiene_id_eg_fkey FOREIGN KEY (id_eg) REFERENCES public.establecimiento_gastronomico(id_eg);
 @   ALTER TABLE ONLY public.tiene DROP CONSTRAINT tiene_id_eg_fkey;
       public       postgres    false    2154    197    192            �           2606    33284    tiene tiene_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tiene
    ADD CONSTRAINT tiene_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 E   ALTER TABLE ONLY public.tiene DROP CONSTRAINT tiene_id_usuario_fkey;
       public       postgres    false    182    2140    197            �           2606    33387 ,   tiene_segundo tiene_segundo_id_almuerzo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tiene_segundo
    ADD CONSTRAINT tiene_segundo_id_almuerzo_fkey FOREIGN KEY (id_almuerzo) REFERENCES public.almuerzo(id_almuerzo);
 V   ALTER TABLE ONLY public.tiene_segundo DROP CONSTRAINT tiene_segundo_id_almuerzo_fkey;
       public       postgres    false    212    2174    207            �           2606    33392 +   tiene_segundo tiene_segundo_id_segundo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tiene_segundo
    ADD CONSTRAINT tiene_segundo_id_segundo_fkey FOREIGN KEY (id_segundo) REFERENCES public.segundo(id_segundo);
 U   ALTER TABLE ONLY public.tiene_segundo DROP CONSTRAINT tiene_segundo_id_segundo_fkey;
       public       postgres    false    2180    212    211            �           2606    33161 #   usuario usuario_id_colaborador_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_id_colaborador_fkey FOREIGN KEY (id_colaborador) REFERENCES public.usuario(id_usuario);
 M   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_id_colaborador_fkey;
       public       postgres    false    182    182    2140            �           2606    33246    visita visita_id_eg_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.visita
    ADD CONSTRAINT visita_id_eg_fkey FOREIGN KEY (id_eg) REFERENCES public.establecimiento_gastronomico(id_eg);
 B   ALTER TABLE ONLY public.visita DROP CONSTRAINT visita_id_eg_fkey;
       public       postgres    false    195    192    2154            �           2606    33251    visita visita_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.visita
    ADD CONSTRAINT visita_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 G   ALTER TABLE ONLY public.visita DROP CONSTRAINT visita_id_usuario_fkey;
       public       postgres    false    2140    195    182            Y	      x������ � �      G	      x������ � �      C	      x������ � �      <	      x������ � �      S	      x������ � �      T	      x������ � �      U	      x������ � �      4	      x������ � �      N	      x������ � �      8	      x������ � �      6	      x������ � �      A	      x������ � �      I	      x������ � �      H	      x������ � �      X	      x������ � �      E	      x������ � �      R	      x������ � �      ?	      x������ � �      0	      x������ � �      2	      x������ � �      K	      x������ � �      W	      x������ � �      P	      x������ � �      :	      x������ � �      =	      x������ � �      L	      x������ � �      .	      x������ � �      ;	      x������ � �     