PGDMP     1                    u            dccn9o229qnv76    9.6.1    9.6.0 �              0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       1262    4006250    dccn9o229qnv76    DATABASE     �   CREATE DATABASE "dccn9o229qnv76" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
     DROP DATABASE "dccn9o229qnv76";
             jswjubsulxwghn    false                        2615    2200    public    SCHEMA        CREATE SCHEMA "public";
    DROP SCHEMA "public";
             jswjubsulxwghn    false                       0    0    SCHEMA "public"    COMMENT     8   COMMENT ON SCHEMA "public" IS 'standard public schema';
                  jswjubsulxwghn    false    8                        3079    13277    plpgsql 	   EXTENSION     C   CREATE EXTENSION IF NOT EXISTS "plpgsql" WITH SCHEMA "pg_catalog";
    DROP EXTENSION "plpgsql";
                  false                       0    0    EXTENSION "plpgsql"    COMMENT     B   COMMENT ON EXTENSION "plpgsql" IS 'PL/pgSQL procedural language';
                       false    1                        3079    4056671    unaccent 	   EXTENSION     @   CREATE EXTENSION IF NOT EXISTS "unaccent" WITH SCHEMA "public";
    DROP EXTENSION "unaccent";
                  false    8                       0    0    EXTENSION "unaccent"    COMMENT     R   COMMENT ON EXTENSION "unaccent" IS 'text search dictionary that removes accents';
                       false    2            �            1259    4056678    account_emailaddress    TABLE     �   CREATE TABLE "account_emailaddress" (
    "id" integer NOT NULL,
    "email" character varying(254) NOT NULL,
    "verified" boolean NOT NULL,
    "primary" boolean NOT NULL,
    "user_id" integer NOT NULL
);
 ,   DROP TABLE "public"."account_emailaddress";
       public         jswjubsulxwghn    false    8            �            1259    4056681    account_emailaddress_id_seq    SEQUENCE        CREATE SEQUENCE "account_emailaddress_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE "public"."account_emailaddress_id_seq";
       public       jswjubsulxwghn    false    8    186                       0    0    account_emailaddress_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE "account_emailaddress_id_seq" OWNED BY "account_emailaddress"."id";
            public       jswjubsulxwghn    false    187            �            1259    4056683    account_emailconfirmation    TABLE     �   CREATE TABLE "account_emailconfirmation" (
    "id" integer NOT NULL,
    "created" timestamp with time zone NOT NULL,
    "sent" timestamp with time zone,
    "key" character varying(64) NOT NULL,
    "email_address_id" integer NOT NULL
);
 1   DROP TABLE "public"."account_emailconfirmation";
       public         jswjubsulxwghn    false    8            �            1259    4056686     account_emailconfirmation_id_seq    SEQUENCE     �   CREATE SEQUENCE "account_emailconfirmation_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE "public"."account_emailconfirmation_id_seq";
       public       jswjubsulxwghn    false    8    188                       0    0     account_emailconfirmation_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "account_emailconfirmation_id_seq" OWNED BY "account_emailconfirmation"."id";
            public       jswjubsulxwghn    false    189            �            1259    4056688 
   auth_group    TABLE     d   CREATE TABLE "auth_group" (
    "id" integer NOT NULL,
    "name" character varying(80) NOT NULL
);
 "   DROP TABLE "public"."auth_group";
       public         jswjubsulxwghn    false    8            �            1259    4056691    auth_group_id_seq    SEQUENCE     u   CREATE SEQUENCE "auth_group_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE "public"."auth_group_id_seq";
       public       jswjubsulxwghn    false    8    190                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE "auth_group_id_seq" OWNED BY "auth_group"."id";
            public       jswjubsulxwghn    false    191            �            1259    4056693    auth_group_permissions    TABLE     �   CREATE TABLE "auth_group_permissions" (
    "id" integer NOT NULL,
    "group_id" integer NOT NULL,
    "permission_id" integer NOT NULL
);
 .   DROP TABLE "public"."auth_group_permissions";
       public         jswjubsulxwghn    false    8            �            1259    4056696    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE "auth_group_permissions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE "public"."auth_group_permissions_id_seq";
       public       jswjubsulxwghn    false    8    192                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE "auth_group_permissions_id_seq" OWNED BY "auth_group_permissions"."id";
            public       jswjubsulxwghn    false    193            �            1259    4056698    auth_permission    TABLE     �   CREATE TABLE "auth_permission" (
    "id" integer NOT NULL,
    "name" character varying(255) NOT NULL,
    "content_type_id" integer NOT NULL,
    "codename" character varying(100) NOT NULL
);
 '   DROP TABLE "public"."auth_permission";
       public         jswjubsulxwghn    false    8            �            1259    4056701    auth_permission_id_seq    SEQUENCE     z   CREATE SEQUENCE "auth_permission_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE "public"."auth_permission_id_seq";
       public       jswjubsulxwghn    false    8    194                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE "auth_permission_id_seq" OWNED BY "auth_permission"."id";
            public       jswjubsulxwghn    false    195            �            1259    4056703 	   auth_user    TABLE     �  CREATE TABLE "auth_user" (
    "id" integer NOT NULL,
    "password" character varying(128) NOT NULL,
    "last_login" timestamp with time zone,
    "is_superuser" boolean NOT NULL,
    "username" character varying(30) NOT NULL,
    "first_name" character varying(30) NOT NULL,
    "last_name" character varying(30) NOT NULL,
    "email" character varying(254) NOT NULL,
    "is_staff" boolean NOT NULL,
    "is_active" boolean NOT NULL,
    "date_joined" timestamp with time zone NOT NULL
);
 !   DROP TABLE "public"."auth_user";
       public         jswjubsulxwghn    false    8            �            1259    4056706    auth_user_groups    TABLE     �   CREATE TABLE "auth_user_groups" (
    "id" integer NOT NULL,
    "user_id" integer NOT NULL,
    "group_id" integer NOT NULL
);
 (   DROP TABLE "public"."auth_user_groups";
       public         jswjubsulxwghn    false    8            �            1259    4056709    auth_user_groups_id_seq    SEQUENCE     {   CREATE SEQUENCE "auth_user_groups_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE "public"."auth_user_groups_id_seq";
       public       jswjubsulxwghn    false    8    197                       0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE "auth_user_groups_id_seq" OWNED BY "auth_user_groups"."id";
            public       jswjubsulxwghn    false    198            �            1259    4056711    auth_user_id_seq    SEQUENCE     t   CREATE SEQUENCE "auth_user_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE "public"."auth_user_id_seq";
       public       jswjubsulxwghn    false    8    196                        0    0    auth_user_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE "auth_user_id_seq" OWNED BY "auth_user"."id";
            public       jswjubsulxwghn    false    199            �            1259    4056713    auth_user_user_permissions    TABLE     �   CREATE TABLE "auth_user_user_permissions" (
    "id" integer NOT NULL,
    "user_id" integer NOT NULL,
    "permission_id" integer NOT NULL
);
 2   DROP TABLE "public"."auth_user_user_permissions";
       public         jswjubsulxwghn    false    8            �            1259    4056716 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE "auth_user_user_permissions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE "public"."auth_user_user_permissions_id_seq";
       public       jswjubsulxwghn    false    8    200            !           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE "auth_user_user_permissions_id_seq" OWNED BY "auth_user_user_permissions"."id";
            public       jswjubsulxwghn    false    201            �            1259    4056718    bolsareactivos_reactivobolsa    TABLE       CREATE TABLE "bolsareactivos_reactivobolsa" (
    "id" integer NOT NULL,
    "nombre" character varying(100) NOT NULL,
    "procedencia" character varying(100) NOT NULL,
    "observaciones" "text" NOT NULL,
    "fecha_registro" "date" NOT NULL,
    "cantidad" numeric(5,2) NOT NULL
);
 4   DROP TABLE "public"."bolsareactivos_reactivobolsa";
       public         jswjubsulxwghn    false    8            �            1259    4056724 #   bolsareactivos_reactivobolsa_id_seq    SEQUENCE     �   CREATE SEQUENCE "bolsareactivos_reactivobolsa_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE "public"."bolsareactivos_reactivobolsa_id_seq";
       public       jswjubsulxwghn    false    202    8            "           0    0 #   bolsareactivos_reactivobolsa_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE "bolsareactivos_reactivobolsa_id_seq" OWNED BY "bolsareactivos_reactivobolsa"."id";
            public       jswjubsulxwghn    false    203            �            1259    4056726     bolsareactivos_solicitudreactivo    TABLE     E  CREATE TABLE "bolsareactivos_solicitudreactivo" (
    "id" integer NOT NULL,
    "cantidad" numeric(5,2) NOT NULL,
    "fecha_hora_solicitud" timestamp with time zone NOT NULL,
    "fecha_hora_entrega" timestamp with time zone,
    "estado" boolean,
    "generador_id" integer NOT NULL,
    "reactivo_id" integer NOT NULL
);
 8   DROP TABLE "public"."bolsareactivos_solicitudreactivo";
       public         jswjubsulxwghn    false    8            �            1259    4056729 '   bolsareactivos_solicitudreactivo_id_seq    SEQUENCE     �   CREATE SEQUENCE "bolsareactivos_solicitudreactivo_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE "public"."bolsareactivos_solicitudreactivo_id_seq";
       public       jswjubsulxwghn    false    8    204            #           0    0 '   bolsareactivos_solicitudreactivo_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE "bolsareactivos_solicitudreactivo_id_seq" OWNED BY "bolsareactivos_solicitudreactivo"."id";
            public       jswjubsulxwghn    false    205            �            1259    4056731    declaraciones_declaracion    TABLE     �  CREATE TABLE "declaraciones_declaracion" (
    "id" integer NOT NULL,
    "fecha_declaracion" timestamp with time zone,
    "fecha_recepcion" timestamp with time zone,
    "generador_id" integer NOT NULL,
    "espacio_fisico_id" integer NOT NULL,
    "etapa" integer NOT NULL,
    "fecha_finalizacion" timestamp with time zone,
    "fecha_verificacion" timestamp with time zone,
    "evento_recepcion" character varying(100),
    "evento_verificacion" character varying(100)
);
 1   DROP TABLE "public"."declaraciones_declaracion";
       public         jswjubsulxwghn    false    8            �            1259    4056734     declaraciones_declaracion_id_seq    SEQUENCE     �   CREATE SEQUENCE "declaraciones_declaracion_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE "public"."declaraciones_declaracion_id_seq";
       public       jswjubsulxwghn    false    8    206            $           0    0     declaraciones_declaracion_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "declaraciones_declaracion_id_seq" OWNED BY "declaraciones_declaracion"."id";
            public       jswjubsulxwghn    false    207            �            1259    4056736    disposicionfinal_destinoresiduo    TABLE     {   CREATE TABLE "disposicionfinal_destinoresiduo" (
    "id" integer NOT NULL,
    "nombre" character varying(20) NOT NULL
);
 7   DROP TABLE "public"."disposicionfinal_destinoresiduo";
       public         jswjubsulxwghn    false    8            �            1259    4056739 &   disposicionfinal_destinoresiduo_id_seq    SEQUENCE     �   CREATE SEQUENCE "disposicionfinal_destinoresiduo_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE "public"."disposicionfinal_destinoresiduo_id_seq";
       public       jswjubsulxwghn    false    208    8            %           0    0 &   disposicionfinal_destinoresiduo_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE "disposicionfinal_destinoresiduo_id_seq" OWNED BY "disposicionfinal_destinoresiduo"."id";
            public       jswjubsulxwghn    false    209            �            1259    4056741    disposicionfinal_retiroresiduos    TABLE     �   CREATE TABLE "disposicionfinal_retiroresiduos" (
    "id" integer NOT NULL,
    "fecha" timestamp with time zone NOT NULL,
    "cantidad" numeric(10,2) NOT NULL,
    "tratamiento_id" integer NOT NULL
);
 7   DROP TABLE "public"."disposicionfinal_retiroresiduos";
       public         jswjubsulxwghn    false    8            �            1259    4056744 &   disposicionfinal_retiroresiduos_id_seq    SEQUENCE     �   CREATE SEQUENCE "disposicionfinal_retiroresiduos_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE "public"."disposicionfinal_retiroresiduos_id_seq";
       public       jswjubsulxwghn    false    8    210            &           0    0 &   disposicionfinal_retiroresiduos_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE "disposicionfinal_retiroresiduos_id_seq" OWNED BY "disposicionfinal_retiroresiduos"."id";
            public       jswjubsulxwghn    false    211            �            1259    4056746    disposicionfinal_tratamiento    TABLE     �   CREATE TABLE "disposicionfinal_tratamiento" (
    "id" integer NOT NULL,
    "nombre" character varying(50) NOT NULL,
    "total_actual" numeric(10,2) NOT NULL,
    "destino_id" integer NOT NULL
);
 4   DROP TABLE "public"."disposicionfinal_tratamiento";
       public         jswjubsulxwghn    false    8            �            1259    4056749 #   disposicionfinal_tratamiento_id_seq    SEQUENCE     �   CREATE SEQUENCE "disposicionfinal_tratamiento_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE "public"."disposicionfinal_tratamiento_id_seq";
       public       jswjubsulxwghn    false    212    8            '           0    0 #   disposicionfinal_tratamiento_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE "disposicionfinal_tratamiento_id_seq" OWNED BY "disposicionfinal_tratamiento"."id";
            public       jswjubsulxwghn    false    213            �            1259    4056751    django_admin_log    TABLE     �  CREATE TABLE "django_admin_log" (
    "id" integer NOT NULL,
    "action_time" timestamp with time zone NOT NULL,
    "object_id" "text",
    "object_repr" character varying(200) NOT NULL,
    "action_flag" smallint NOT NULL,
    "change_message" "text" NOT NULL,
    "content_type_id" integer,
    "user_id" integer NOT NULL,
    CONSTRAINT "django_admin_log_action_flag_check" CHECK (("action_flag" >= 0))
);
 (   DROP TABLE "public"."django_admin_log";
       public         jswjubsulxwghn    false    8            �            1259    4056758    django_admin_log_id_seq    SEQUENCE     {   CREATE SEQUENCE "django_admin_log_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE "public"."django_admin_log_id_seq";
       public       jswjubsulxwghn    false    214    8            (           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE "django_admin_log_id_seq" OWNED BY "django_admin_log"."id";
            public       jswjubsulxwghn    false    215            �            1259    4056760    django_content_type    TABLE     �   CREATE TABLE "django_content_type" (
    "id" integer NOT NULL,
    "app_label" character varying(100) NOT NULL,
    "model" character varying(100) NOT NULL
);
 +   DROP TABLE "public"."django_content_type";
       public         jswjubsulxwghn    false    8            �            1259    4056763    django_content_type_id_seq    SEQUENCE     ~   CREATE SEQUENCE "django_content_type_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE "public"."django_content_type_id_seq";
       public       jswjubsulxwghn    false    8    216            )           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE "django_content_type_id_seq" OWNED BY "django_content_type"."id";
            public       jswjubsulxwghn    false    217            �            1259    4056765    django_migrations    TABLE     �   CREATE TABLE "django_migrations" (
    "id" integer NOT NULL,
    "app" character varying(255) NOT NULL,
    "name" character varying(255) NOT NULL,
    "applied" timestamp with time zone NOT NULL
);
 )   DROP TABLE "public"."django_migrations";
       public         jswjubsulxwghn    false    8            �            1259    4056771    django_migrations_id_seq    SEQUENCE     |   CREATE SEQUENCE "django_migrations_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE "public"."django_migrations_id_seq";
       public       jswjubsulxwghn    false    218    8            *           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE "django_migrations_id_seq" OWNED BY "django_migrations"."id";
            public       jswjubsulxwghn    false    219            �            1259    4056773    django_session    TABLE     �   CREATE TABLE "django_session" (
    "session_key" character varying(40) NOT NULL,
    "session_data" "text" NOT NULL,
    "expire_date" timestamp with time zone NOT NULL
);
 &   DROP TABLE "public"."django_session";
       public         jswjubsulxwghn    false    8            �            1259    4056779    django_site    TABLE     �   CREATE TABLE "django_site" (
    "id" integer NOT NULL,
    "domain" character varying(100) NOT NULL,
    "name" character varying(50) NOT NULL
);
 #   DROP TABLE "public"."django_site";
       public         jswjubsulxwghn    false    8            �            1259    4056782    django_site_id_seq    SEQUENCE     v   CREATE SEQUENCE "django_site_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE "public"."django_site_id_seq";
       public       jswjubsulxwghn    false    221    8            +           0    0    django_site_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE "django_site_id_seq" OWNED BY "django_site"."id";
            public       jswjubsulxwghn    false    222            �            1259    4056784    generadores_generador    TABLE     R  CREATE TABLE "generadores_generador" (
    "id" integer NOT NULL,
    "tipo_documento" character varying(30) NOT NULL,
    "numero_documento" character varying(50) NOT NULL,
    "estamento" character varying(20) NOT NULL,
    "cargo" character varying(20) NOT NULL,
    "telefono" character varying(20) NOT NULL,
    "user_id" integer
);
 -   DROP TABLE "public"."generadores_generador";
       public         jswjubsulxwghn    false    8            �            1259    4056787    generadores_generador_id_seq    SEQUENCE     �   CREATE SEQUENCE "generadores_generador_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE "public"."generadores_generador_id_seq";
       public       jswjubsulxwghn    false    8    223            ,           0    0    generadores_generador_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE "generadores_generador_id_seq" OWNED BY "generadores_generador"."id";
            public       jswjubsulxwghn    false    224            �            1259    4056789    reactivos_reactivo    TABLE     ^  CREATE TABLE "reactivos_reactivo" (
    "id" integer NOT NULL,
    "nombre_quimico" character varying(150) NOT NULL,
    "sinonimos" character varying(300),
    "nombre_ingles" character varying(150),
    "numero_CAS" character varying(100) NOT NULL,
    "estado_fisico" character varying(50) NOT NULL,
    "hoja_seguridad" character varying(100)
);
 *   DROP TABLE "public"."reactivos_reactivo";
       public         jswjubsulxwghn    false    8            �            1259    4056795    reactivos_reactivo_id_seq    SEQUENCE     }   CREATE SEQUENCE "reactivos_reactivo_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE "public"."reactivos_reactivo_id_seq";
       public       jswjubsulxwghn    false    8    225            -           0    0    reactivos_reactivo_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE "reactivos_reactivo_id_seq" OWNED BY "reactivos_reactivo"."id";
            public       jswjubsulxwghn    false    226            �            1259    4056797    residuos_concentracionreactivo    TABLE     �   CREATE TABLE "residuos_concentracionreactivo" (
    "id" integer NOT NULL,
    "concentracion" integer NOT NULL,
    "unidad_concentracion" character varying(10) NOT NULL,
    "reactivo_id" integer NOT NULL,
    "residuo_id" integer NOT NULL
);
 6   DROP TABLE "public"."residuos_concentracionreactivo";
       public         jswjubsulxwghn    false    8            �            1259    4056800 %   residuos_concentracionreactivo_id_seq    SEQUENCE     �   CREATE SEQUENCE "residuos_concentracionreactivo_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE "public"."residuos_concentracionreactivo_id_seq";
       public       jswjubsulxwghn    false    227    8            .           0    0 %   residuos_concentracionreactivo_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE "residuos_concentracionreactivo_id_seq" OWNED BY "residuos_concentracionreactivo"."id";
            public       jswjubsulxwghn    false    228            �            1259    4056802    residuos_corrienteresiduo    TABLE     �   CREATE TABLE "residuos_corrienteresiduo" (
    "id" integer NOT NULL,
    "nombre" character varying(10) NOT NULL,
    "descripcion" character varying(1000) NOT NULL
);
 1   DROP TABLE "public"."residuos_corrienteresiduo";
       public         jswjubsulxwghn    false    8            �            1259    4056808     residuos_corrienteresiduo_id_seq    SEQUENCE     �   CREATE SEQUENCE "residuos_corrienteresiduo_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE "public"."residuos_corrienteresiduo_id_seq";
       public       jswjubsulxwghn    false    229    8            /           0    0     residuos_corrienteresiduo_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "residuos_corrienteresiduo_id_seq" OWNED BY "residuos_corrienteresiduo"."id";
            public       jswjubsulxwghn    false    230            �            1259    4056810    residuos_practica    TABLE     n   CREATE TABLE "residuos_practica" (
    "id" integer NOT NULL,
    "nombre" character varying(250) NOT NULL
);
 )   DROP TABLE "public"."residuos_practica";
       public         jswjubsulxwghn    false    8            �            1259    4056813    residuos_practica_actividades    TABLE     �   CREATE TABLE "residuos_practica_actividades" (
    "id" integer NOT NULL,
    "practica_id" integer NOT NULL,
    "actividad_id" integer NOT NULL
);
 5   DROP TABLE "public"."residuos_practica_actividades";
       public         jswjubsulxwghn    false    8            �            1259    4056816 $   residuos_practica_actividades_id_seq    SEQUENCE     �   CREATE SEQUENCE "residuos_practica_actividades_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE "public"."residuos_practica_actividades_id_seq";
       public       jswjubsulxwghn    false    232    8            0           0    0 $   residuos_practica_actividades_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE "residuos_practica_actividades_id_seq" OWNED BY "residuos_practica_actividades"."id";
            public       jswjubsulxwghn    false    233            �            1259    4056818 #   residuos_practica_centros_de_costos    TABLE     �   CREATE TABLE "residuos_practica_centros_de_costos" (
    "id" integer NOT NULL,
    "practica_id" integer NOT NULL,
    "centrodecostos_id" integer NOT NULL
);
 ;   DROP TABLE "public"."residuos_practica_centros_de_costos";
       public         jswjubsulxwghn    false    8            �            1259    4056821 )   residuos_practica_centro_de_costos_id_seq    SEQUENCE     �   CREATE SEQUENCE "residuos_practica_centro_de_costos_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE "public"."residuos_practica_centro_de_costos_id_seq";
       public       jswjubsulxwghn    false    8    234            1           0    0 )   residuos_practica_centro_de_costos_id_seq    SEQUENCE OWNED BY     p   ALTER SEQUENCE "residuos_practica_centro_de_costos_id_seq" OWNED BY "residuos_practica_centros_de_costos"."id";
            public       jswjubsulxwghn    false    235            �            1259    4056823    residuos_practica_id_seq    SEQUENCE     |   CREATE SEQUENCE "residuos_practica_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE "public"."residuos_practica_id_seq";
       public       jswjubsulxwghn    false    231    8            2           0    0    residuos_practica_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE "residuos_practica_id_seq" OWNED BY "residuos_practica"."id";
            public       jswjubsulxwghn    false    236            �            1259    4056825    residuos_residuo    TABLE       CREATE TABLE "residuos_residuo" (
    "id" integer NOT NULL,
    "descripcion" "text" NOT NULL,
    "tipo_recipiente" character varying(50) NOT NULL,
    "almacenamiento_refrigerado" boolean NOT NULL,
    "estado_fisico" character varying(50) NOT NULL,
    "numero_contenedores" integer NOT NULL,
    "practica_id" integer NOT NULL,
    "recuperable" boolean NOT NULL,
    "declaracion_id" integer NOT NULL,
    "comentario_revision" character varying(200) NOT NULL,
    "revisado" boolean NOT NULL,
    "comentario_recepcion" character varying(200) NOT NULL,
    "recibido" boolean,
    "tratamiento_id" integer,
    "corriente_residuo_id" integer,
    "peso" numeric(6,3) NOT NULL,
    CONSTRAINT "residuos_residuo_numero_contenedores_check" CHECK (("numero_contenedores" >= 0))
);
 (   DROP TABLE "public"."residuos_residuo";
       public         jswjubsulxwghn    false    8            �            1259    4056833    residuos_residuo_id_seq    SEQUENCE     {   CREATE SEQUENCE "residuos_residuo_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE "public"."residuos_residuo_id_seq";
       public       jswjubsulxwghn    false    8    237            3           0    0    residuos_residuo_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE "residuos_residuo_id_seq" OWNED BY "residuos_residuo"."id";
            public       jswjubsulxwghn    false    238            �            1259    4056835    residuos_residuo_reactivos    TABLE     �   CREATE TABLE "residuos_residuo_reactivos" (
    "id" integer NOT NULL,
    "residuo_id" integer NOT NULL,
    "reactivo_id" integer NOT NULL
);
 2   DROP TABLE "public"."residuos_residuo_reactivos";
       public         jswjubsulxwghn    false    8            �            1259    4056838 !   residuos_residuo_reactivos_id_seq    SEQUENCE     �   CREATE SEQUENCE "residuos_residuo_reactivos_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE "public"."residuos_residuo_reactivos_id_seq";
       public       jswjubsulxwghn    false    239    8            4           0    0 !   residuos_residuo_reactivos_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE "residuos_residuo_reactivos_id_seq" OWNED BY "residuos_residuo_reactivos"."id";
            public       jswjubsulxwghn    false    240            �            1259    4056840    socialaccount_socialaccount    TABLE     O  CREATE TABLE "socialaccount_socialaccount" (
    "id" integer NOT NULL,
    "provider" character varying(30) NOT NULL,
    "uid" character varying(191) NOT NULL,
    "last_login" timestamp with time zone NOT NULL,
    "date_joined" timestamp with time zone NOT NULL,
    "extra_data" "text" NOT NULL,
    "user_id" integer NOT NULL
);
 3   DROP TABLE "public"."socialaccount_socialaccount";
       public         jswjubsulxwghn    false    8            �            1259    4056846 "   socialaccount_socialaccount_id_seq    SEQUENCE     �   CREATE SEQUENCE "socialaccount_socialaccount_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE "public"."socialaccount_socialaccount_id_seq";
       public       jswjubsulxwghn    false    8    241            5           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE "socialaccount_socialaccount_id_seq" OWNED BY "socialaccount_socialaccount"."id";
            public       jswjubsulxwghn    false    242            �            1259    4056848    socialaccount_socialapp    TABLE     *  CREATE TABLE "socialaccount_socialapp" (
    "id" integer NOT NULL,
    "provider" character varying(30) NOT NULL,
    "name" character varying(40) NOT NULL,
    "client_id" character varying(191) NOT NULL,
    "secret" character varying(191) NOT NULL,
    "key" character varying(191) NOT NULL
);
 /   DROP TABLE "public"."socialaccount_socialapp";
       public         jswjubsulxwghn    false    8            �            1259    4056854    socialaccount_socialapp_id_seq    SEQUENCE     �   CREATE SEQUENCE "socialaccount_socialapp_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE "public"."socialaccount_socialapp_id_seq";
       public       jswjubsulxwghn    false    243    8            6           0    0    socialaccount_socialapp_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE "socialaccount_socialapp_id_seq" OWNED BY "socialaccount_socialapp"."id";
            public       jswjubsulxwghn    false    244            �            1259    4056924    socialaccount_socialapp_sites    TABLE     �   CREATE TABLE "socialaccount_socialapp_sites" (
    "id" integer NOT NULL,
    "socialapp_id" integer NOT NULL,
    "site_id" integer NOT NULL
);
 5   DROP TABLE "public"."socialaccount_socialapp_sites";
       public         jswjubsulxwghn    false    8            �            1259    4056927 $   socialaccount_socialapp_sites_id_seq    SEQUENCE     �   CREATE SEQUENCE "socialaccount_socialapp_sites_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE "public"."socialaccount_socialapp_sites_id_seq";
       public       jswjubsulxwghn    false    245    8            7           0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE "socialaccount_socialapp_sites_id_seq" OWNED BY "socialaccount_socialapp_sites"."id";
            public       jswjubsulxwghn    false    246            �            1259    4056929    socialaccount_socialtoken    TABLE     �   CREATE TABLE "socialaccount_socialtoken" (
    "id" integer NOT NULL,
    "token" "text" NOT NULL,
    "token_secret" "text" NOT NULL,
    "expires_at" timestamp with time zone,
    "account_id" integer NOT NULL,
    "app_id" integer NOT NULL
);
 1   DROP TABLE "public"."socialaccount_socialtoken";
       public         jswjubsulxwghn    false    8            �            1259    4056935     socialaccount_socialtoken_id_seq    SEQUENCE     �   CREATE SEQUENCE "socialaccount_socialtoken_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE "public"."socialaccount_socialtoken_id_seq";
       public       jswjubsulxwghn    false    247    8            8           0    0     socialaccount_socialtoken_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "socialaccount_socialtoken_id_seq" OWNED BY "socialaccount_socialtoken"."id";
            public       jswjubsulxwghn    false    248                       1259    4057530    thumbnail_kvstore    TABLE     m   CREATE TABLE "thumbnail_kvstore" (
    "key" character varying(200) NOT NULL,
    "value" "text" NOT NULL
);
 )   DROP TABLE "public"."thumbnail_kvstore";
       public         jswjubsulxwghn    false    8            �            1259    4056937    ubicaciones_actividad    TABLE     {   CREATE TABLE "ubicaciones_actividad" (
    "id" integer NOT NULL,
    "nombre_actividad" character varying(50) NOT NULL
);
 -   DROP TABLE "public"."ubicaciones_actividad";
       public         jswjubsulxwghn    false    8            �            1259    4056940    ubicaciones_actividad_id_seq    SEQUENCE     �   CREATE SEQUENCE "ubicaciones_actividad_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE "public"."ubicaciones_actividad_id_seq";
       public       jswjubsulxwghn    false    249    8            9           0    0    ubicaciones_actividad_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE "ubicaciones_actividad_id_seq" OWNED BY "ubicaciones_actividad"."id";
            public       jswjubsulxwghn    false    250            �            1259    4056942    ubicaciones_centrodecostos    TABLE     �   CREATE TABLE "ubicaciones_centrodecostos" (
    "id" integer NOT NULL,
    "nombre" character varying(150) NOT NULL,
    "dependencia_id" integer NOT NULL,
    "nombre_corto" character varying(30) NOT NULL
);
 2   DROP TABLE "public"."ubicaciones_centrodecostos";
       public         jswjubsulxwghn    false    8            �            1259    4056945 !   ubicaciones_centrodecostos_id_seq    SEQUENCE     �   CREATE SEQUENCE "ubicaciones_centrodecostos_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE "public"."ubicaciones_centrodecostos_id_seq";
       public       jswjubsulxwghn    false    251    8            :           0    0 !   ubicaciones_centrodecostos_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE "ubicaciones_centrodecostos_id_seq" OWNED BY "ubicaciones_centrodecostos"."id";
            public       jswjubsulxwghn    false    252            �            1259    4056947    ubicaciones_dependencia    TABLE     t   CREATE TABLE "ubicaciones_dependencia" (
    "id" integer NOT NULL,
    "nombre" character varying(150) NOT NULL
);
 /   DROP TABLE "public"."ubicaciones_dependencia";
       public         jswjubsulxwghn    false    8            �            1259    4056950    ubicaciones_dependencia_id_seq    SEQUENCE     �   CREATE SEQUENCE "ubicaciones_dependencia_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE "public"."ubicaciones_dependencia_id_seq";
       public       jswjubsulxwghn    false    8    253            ;           0    0    ubicaciones_dependencia_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE "ubicaciones_dependencia_id_seq" OWNED BY "ubicaciones_dependencia"."id";
            public       jswjubsulxwghn    false    254            �            1259    4056952    ubicaciones_espaciofisico    TABLE     1  CREATE TABLE "ubicaciones_espaciofisico" (
    "id" integer NOT NULL,
    "nombre" character varying(200) NOT NULL,
    "sede" character varying(100) NOT NULL,
    "edificio" integer NOT NULL,
    "espacio" character varying(50) NOT NULL,
    "centro_de_costos_id" integer NOT NULL,
    "responsable_id" integer,
    "zona" integer NOT NULL,
    "codigo" character varying(100) NOT NULL,
    CONSTRAINT "ubicaciones_espaciofisico_edificio_f89cc56c_check" CHECK (("edificio" >= 0)),
    CONSTRAINT "ubicaciones_espaciofisico_zona_check" CHECK (("zona" >= 0))
);
 1   DROP TABLE "public"."ubicaciones_espaciofisico";
       public         jswjubsulxwghn    false    8                        1259    4056957 #   ubicaciones_espaciofisico_actividad    TABLE     �   CREATE TABLE "ubicaciones_espaciofisico_actividad" (
    "id" integer NOT NULL,
    "espaciofisico_id" integer NOT NULL,
    "actividad_id" integer NOT NULL
);
 ;   DROP TABLE "public"."ubicaciones_espaciofisico_actividad";
       public         jswjubsulxwghn    false    8                       1259    4056960 *   ubicaciones_espaciofisico_actividad_id_seq    SEQUENCE     �   CREATE SEQUENCE "ubicaciones_espaciofisico_actividad_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE "public"."ubicaciones_espaciofisico_actividad_id_seq";
       public       jswjubsulxwghn    false    8    256            <           0    0 *   ubicaciones_espaciofisico_actividad_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE "ubicaciones_espaciofisico_actividad_id_seq" OWNED BY "ubicaciones_espaciofisico_actividad"."id";
            public       jswjubsulxwghn    false    257                       1259    4056962     ubicaciones_espaciofisico_id_seq    SEQUENCE     �   CREATE SEQUENCE "ubicaciones_espaciofisico_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE "public"."ubicaciones_espaciofisico_id_seq";
       public       jswjubsulxwghn    false    255    8            =           0    0     ubicaciones_espaciofisico_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "ubicaciones_espaciofisico_id_seq" OWNED BY "ubicaciones_espaciofisico"."id";
            public       jswjubsulxwghn    false    258                       1259    4056964    usuarios_generador    TABLE     �  CREATE TABLE "usuarios_generador" (
    "id" integer NOT NULL,
    "tipo_documento" character varying(30) NOT NULL,
    "numero_documento" character varying(50) NOT NULL,
    "estamento" character varying(20) NOT NULL,
    "cargo" character varying(20) NOT NULL,
    "telefono" character varying(10) NOT NULL,
    "user_id" integer NOT NULL,
    "imagen" character varying(100) NOT NULL,
    "celular" character varying(13) NOT NULL,
    "extension" character varying(6) NOT NULL
);
 *   DROP TABLE "public"."usuarios_generador";
       public         jswjubsulxwghn    false    8                       1259    4056967    usuarios_generador_id_seq    SEQUENCE     }   CREATE SEQUENCE "usuarios_generador_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE "public"."usuarios_generador_id_seq";
       public       jswjubsulxwghn    false    259    8            >           0    0    usuarios_generador_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE "usuarios_generador_id_seq" OWNED BY "usuarios_generador"."id";
            public       jswjubsulxwghn    false    260                       1259    4056969    usuarios_usuarioadministrativo    TABLE       CREATE TABLE "usuarios_usuarioadministrativo" (
    "id" integer NOT NULL,
    "identificacion" character varying(50) NOT NULL,
    "tipo_usuario" character varying(30) NOT NULL,
    "user_id" integer NOT NULL,
    "imagen" character varying(100) NOT NULL
);
 6   DROP TABLE "public"."usuarios_usuarioadministrativo";
       public         jswjubsulxwghn    false    8                       1259    4056972 %   usuarios_usuarioadministrativo_id_seq    SEQUENCE     �   CREATE SEQUENCE "usuarios_usuarioadministrativo_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE "public"."usuarios_usuarioadministrativo_id_seq";
       public       jswjubsulxwghn    false    261    8            ?           0    0 %   usuarios_usuarioadministrativo_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE "usuarios_usuarioadministrativo_id_seq" OWNED BY "usuarios_usuarioadministrativo"."id";
            public       jswjubsulxwghn    false    262            A           2604    4056974    account_emailaddress id    DEFAULT     ~   ALTER TABLE ONLY "account_emailaddress" ALTER COLUMN "id" SET DEFAULT "nextval"('"account_emailaddress_id_seq"'::"regclass");
 L   ALTER TABLE "public"."account_emailaddress" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    187    186            B           2604    4056975    account_emailconfirmation id    DEFAULT     �   ALTER TABLE ONLY "account_emailconfirmation" ALTER COLUMN "id" SET DEFAULT "nextval"('"account_emailconfirmation_id_seq"'::"regclass");
 Q   ALTER TABLE "public"."account_emailconfirmation" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    189    188            C           2604    4056976    auth_group id    DEFAULT     j   ALTER TABLE ONLY "auth_group" ALTER COLUMN "id" SET DEFAULT "nextval"('"auth_group_id_seq"'::"regclass");
 B   ALTER TABLE "public"."auth_group" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    191    190            D           2604    4056977    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY "auth_group_permissions" ALTER COLUMN "id" SET DEFAULT "nextval"('"auth_group_permissions_id_seq"'::"regclass");
 N   ALTER TABLE "public"."auth_group_permissions" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    193    192            E           2604    4056978    auth_permission id    DEFAULT     t   ALTER TABLE ONLY "auth_permission" ALTER COLUMN "id" SET DEFAULT "nextval"('"auth_permission_id_seq"'::"regclass");
 G   ALTER TABLE "public"."auth_permission" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    195    194            F           2604    4056979    auth_user id    DEFAULT     h   ALTER TABLE ONLY "auth_user" ALTER COLUMN "id" SET DEFAULT "nextval"('"auth_user_id_seq"'::"regclass");
 A   ALTER TABLE "public"."auth_user" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    199    196            G           2604    4056980    auth_user_groups id    DEFAULT     v   ALTER TABLE ONLY "auth_user_groups" ALTER COLUMN "id" SET DEFAULT "nextval"('"auth_user_groups_id_seq"'::"regclass");
 H   ALTER TABLE "public"."auth_user_groups" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    198    197            H           2604    4056981    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY "auth_user_user_permissions" ALTER COLUMN "id" SET DEFAULT "nextval"('"auth_user_user_permissions_id_seq"'::"regclass");
 R   ALTER TABLE "public"."auth_user_user_permissions" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    201    200            I           2604    4056982    bolsareactivos_reactivobolsa id    DEFAULT     �   ALTER TABLE ONLY "bolsareactivos_reactivobolsa" ALTER COLUMN "id" SET DEFAULT "nextval"('"bolsareactivos_reactivobolsa_id_seq"'::"regclass");
 T   ALTER TABLE "public"."bolsareactivos_reactivobolsa" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    203    202            J           2604    4056983 #   bolsareactivos_solicitudreactivo id    DEFAULT     �   ALTER TABLE ONLY "bolsareactivos_solicitudreactivo" ALTER COLUMN "id" SET DEFAULT "nextval"('"bolsareactivos_solicitudreactivo_id_seq"'::"regclass");
 X   ALTER TABLE "public"."bolsareactivos_solicitudreactivo" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    205    204            K           2604    4056984    declaraciones_declaracion id    DEFAULT     �   ALTER TABLE ONLY "declaraciones_declaracion" ALTER COLUMN "id" SET DEFAULT "nextval"('"declaraciones_declaracion_id_seq"'::"regclass");
 Q   ALTER TABLE "public"."declaraciones_declaracion" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    207    206            L           2604    4056985 "   disposicionfinal_destinoresiduo id    DEFAULT     �   ALTER TABLE ONLY "disposicionfinal_destinoresiduo" ALTER COLUMN "id" SET DEFAULT "nextval"('"disposicionfinal_destinoresiduo_id_seq"'::"regclass");
 W   ALTER TABLE "public"."disposicionfinal_destinoresiduo" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    209    208            M           2604    4056986 "   disposicionfinal_retiroresiduos id    DEFAULT     �   ALTER TABLE ONLY "disposicionfinal_retiroresiduos" ALTER COLUMN "id" SET DEFAULT "nextval"('"disposicionfinal_retiroresiduos_id_seq"'::"regclass");
 W   ALTER TABLE "public"."disposicionfinal_retiroresiduos" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    211    210            N           2604    4056987    disposicionfinal_tratamiento id    DEFAULT     �   ALTER TABLE ONLY "disposicionfinal_tratamiento" ALTER COLUMN "id" SET DEFAULT "nextval"('"disposicionfinal_tratamiento_id_seq"'::"regclass");
 T   ALTER TABLE "public"."disposicionfinal_tratamiento" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    213    212            O           2604    4056988    django_admin_log id    DEFAULT     v   ALTER TABLE ONLY "django_admin_log" ALTER COLUMN "id" SET DEFAULT "nextval"('"django_admin_log_id_seq"'::"regclass");
 H   ALTER TABLE "public"."django_admin_log" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    215    214            Q           2604    4056989    django_content_type id    DEFAULT     |   ALTER TABLE ONLY "django_content_type" ALTER COLUMN "id" SET DEFAULT "nextval"('"django_content_type_id_seq"'::"regclass");
 K   ALTER TABLE "public"."django_content_type" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    217    216            R           2604    4056990    django_migrations id    DEFAULT     x   ALTER TABLE ONLY "django_migrations" ALTER COLUMN "id" SET DEFAULT "nextval"('"django_migrations_id_seq"'::"regclass");
 I   ALTER TABLE "public"."django_migrations" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    219    218            S           2604    4056991    django_site id    DEFAULT     l   ALTER TABLE ONLY "django_site" ALTER COLUMN "id" SET DEFAULT "nextval"('"django_site_id_seq"'::"regclass");
 C   ALTER TABLE "public"."django_site" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    222    221            T           2604    4056992    generadores_generador id    DEFAULT     �   ALTER TABLE ONLY "generadores_generador" ALTER COLUMN "id" SET DEFAULT "nextval"('"generadores_generador_id_seq"'::"regclass");
 M   ALTER TABLE "public"."generadores_generador" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    224    223            U           2604    4056993    reactivos_reactivo id    DEFAULT     z   ALTER TABLE ONLY "reactivos_reactivo" ALTER COLUMN "id" SET DEFAULT "nextval"('"reactivos_reactivo_id_seq"'::"regclass");
 J   ALTER TABLE "public"."reactivos_reactivo" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    226    225            V           2604    4056994 !   residuos_concentracionreactivo id    DEFAULT     �   ALTER TABLE ONLY "residuos_concentracionreactivo" ALTER COLUMN "id" SET DEFAULT "nextval"('"residuos_concentracionreactivo_id_seq"'::"regclass");
 V   ALTER TABLE "public"."residuos_concentracionreactivo" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    228    227            W           2604    4056995    residuos_corrienteresiduo id    DEFAULT     �   ALTER TABLE ONLY "residuos_corrienteresiduo" ALTER COLUMN "id" SET DEFAULT "nextval"('"residuos_corrienteresiduo_id_seq"'::"regclass");
 Q   ALTER TABLE "public"."residuos_corrienteresiduo" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    230    229            X           2604    4056996    residuos_practica id    DEFAULT     x   ALTER TABLE ONLY "residuos_practica" ALTER COLUMN "id" SET DEFAULT "nextval"('"residuos_practica_id_seq"'::"regclass");
 I   ALTER TABLE "public"."residuos_practica" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    236    231            Y           2604    4056997     residuos_practica_actividades id    DEFAULT     �   ALTER TABLE ONLY "residuos_practica_actividades" ALTER COLUMN "id" SET DEFAULT "nextval"('"residuos_practica_actividades_id_seq"'::"regclass");
 U   ALTER TABLE "public"."residuos_practica_actividades" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    233    232            Z           2604    4056998 &   residuos_practica_centros_de_costos id    DEFAULT     �   ALTER TABLE ONLY "residuos_practica_centros_de_costos" ALTER COLUMN "id" SET DEFAULT "nextval"('"residuos_practica_centro_de_costos_id_seq"'::"regclass");
 [   ALTER TABLE "public"."residuos_practica_centros_de_costos" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    235    234            [           2604    4056999    residuos_residuo id    DEFAULT     v   ALTER TABLE ONLY "residuos_residuo" ALTER COLUMN "id" SET DEFAULT "nextval"('"residuos_residuo_id_seq"'::"regclass");
 H   ALTER TABLE "public"."residuos_residuo" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    238    237            ]           2604    4057000    residuos_residuo_reactivos id    DEFAULT     �   ALTER TABLE ONLY "residuos_residuo_reactivos" ALTER COLUMN "id" SET DEFAULT "nextval"('"residuos_residuo_reactivos_id_seq"'::"regclass");
 R   ALTER TABLE "public"."residuos_residuo_reactivos" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    240    239            ^           2604    4057001    socialaccount_socialaccount id    DEFAULT     �   ALTER TABLE ONLY "socialaccount_socialaccount" ALTER COLUMN "id" SET DEFAULT "nextval"('"socialaccount_socialaccount_id_seq"'::"regclass");
 S   ALTER TABLE "public"."socialaccount_socialaccount" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    242    241            _           2604    4057002    socialaccount_socialapp id    DEFAULT     �   ALTER TABLE ONLY "socialaccount_socialapp" ALTER COLUMN "id" SET DEFAULT "nextval"('"socialaccount_socialapp_id_seq"'::"regclass");
 O   ALTER TABLE "public"."socialaccount_socialapp" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    244    243            `           2604    4057003     socialaccount_socialapp_sites id    DEFAULT     �   ALTER TABLE ONLY "socialaccount_socialapp_sites" ALTER COLUMN "id" SET DEFAULT "nextval"('"socialaccount_socialapp_sites_id_seq"'::"regclass");
 U   ALTER TABLE "public"."socialaccount_socialapp_sites" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    246    245            a           2604    4057004    socialaccount_socialtoken id    DEFAULT     �   ALTER TABLE ONLY "socialaccount_socialtoken" ALTER COLUMN "id" SET DEFAULT "nextval"('"socialaccount_socialtoken_id_seq"'::"regclass");
 Q   ALTER TABLE "public"."socialaccount_socialtoken" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    248    247            b           2604    4057005    ubicaciones_actividad id    DEFAULT     �   ALTER TABLE ONLY "ubicaciones_actividad" ALTER COLUMN "id" SET DEFAULT "nextval"('"ubicaciones_actividad_id_seq"'::"regclass");
 M   ALTER TABLE "public"."ubicaciones_actividad" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    250    249            c           2604    4057006    ubicaciones_centrodecostos id    DEFAULT     �   ALTER TABLE ONLY "ubicaciones_centrodecostos" ALTER COLUMN "id" SET DEFAULT "nextval"('"ubicaciones_centrodecostos_id_seq"'::"regclass");
 R   ALTER TABLE "public"."ubicaciones_centrodecostos" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    252    251            d           2604    4057007    ubicaciones_dependencia id    DEFAULT     �   ALTER TABLE ONLY "ubicaciones_dependencia" ALTER COLUMN "id" SET DEFAULT "nextval"('"ubicaciones_dependencia_id_seq"'::"regclass");
 O   ALTER TABLE "public"."ubicaciones_dependencia" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    254    253            e           2604    4057008    ubicaciones_espaciofisico id    DEFAULT     �   ALTER TABLE ONLY "ubicaciones_espaciofisico" ALTER COLUMN "id" SET DEFAULT "nextval"('"ubicaciones_espaciofisico_id_seq"'::"regclass");
 Q   ALTER TABLE "public"."ubicaciones_espaciofisico" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    258    255            h           2604    4057009 &   ubicaciones_espaciofisico_actividad id    DEFAULT     �   ALTER TABLE ONLY "ubicaciones_espaciofisico_actividad" ALTER COLUMN "id" SET DEFAULT "nextval"('"ubicaciones_espaciofisico_actividad_id_seq"'::"regclass");
 [   ALTER TABLE "public"."ubicaciones_espaciofisico_actividad" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    257    256            i           2604    4057010    usuarios_generador id    DEFAULT     z   ALTER TABLE ONLY "usuarios_generador" ALTER COLUMN "id" SET DEFAULT "nextval"('"usuarios_generador_id_seq"'::"regclass");
 J   ALTER TABLE "public"."usuarios_generador" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    260    259            j           2604    4057011 !   usuarios_usuarioadministrativo id    DEFAULT     �   ALTER TABLE ONLY "usuarios_usuarioadministrativo" ALTER COLUMN "id" SET DEFAULT "nextval"('"usuarios_usuarioadministrativo_id_seq"'::"regclass");
 V   ALTER TABLE "public"."usuarios_usuarioadministrativo" ALTER COLUMN "id" DROP DEFAULT;
       public       jswjubsulxwghn    false    262    261            �          0    4056678    account_emailaddress 
   TABLE DATA               Z   COPY "account_emailaddress" ("id", "email", "verified", "primary", "user_id") FROM stdin;
    public       jswjubsulxwghn    false    186            @           0    0    account_emailaddress_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('"account_emailaddress_id_seq"', 137, true);
            public       jswjubsulxwghn    false    187            �          0    4056683    account_emailconfirmation 
   TABLE DATA               b   COPY "account_emailconfirmation" ("id", "created", "sent", "key", "email_address_id") FROM stdin;
    public       jswjubsulxwghn    false    188            A           0    0     account_emailconfirmation_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('"account_emailconfirmation_id_seq"', 1, false);
            public       jswjubsulxwghn    false    189            �          0    4056688 
   auth_group 
   TABLE DATA               -   COPY "auth_group" ("id", "name") FROM stdin;
    public       jswjubsulxwghn    false    190            B           0    0    auth_group_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('"auth_group_id_seq"', 6, true);
            public       jswjubsulxwghn    false    191            �          0    4056693    auth_group_permissions 
   TABLE DATA               N   COPY "auth_group_permissions" ("id", "group_id", "permission_id") FROM stdin;
    public       jswjubsulxwghn    false    192            C           0    0    auth_group_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('"auth_group_permissions_id_seq"', 230, true);
            public       jswjubsulxwghn    false    193            �          0    4056698    auth_permission 
   TABLE DATA               Q   COPY "auth_permission" ("id", "name", "content_type_id", "codename") FROM stdin;
    public       jswjubsulxwghn    false    194            D           0    0    auth_permission_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"auth_permission_id_seq"', 129, true);
            public       jswjubsulxwghn    false    195            �          0    4056703 	   auth_user 
   TABLE DATA               �   COPY "auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") FROM stdin;
    public       jswjubsulxwghn    false    196            �          0    4056706    auth_user_groups 
   TABLE DATA               B   COPY "auth_user_groups" ("id", "user_id", "group_id") FROM stdin;
    public       jswjubsulxwghn    false    197            E           0    0    auth_user_groups_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('"auth_user_groups_id_seq"', 113, true);
            public       jswjubsulxwghn    false    198            F           0    0    auth_user_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('"auth_user_id_seq"', 215, true);
            public       jswjubsulxwghn    false    199            �          0    4056713    auth_user_user_permissions 
   TABLE DATA               Q   COPY "auth_user_user_permissions" ("id", "user_id", "permission_id") FROM stdin;
    public       jswjubsulxwghn    false    200            G           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('"auth_user_user_permissions_id_seq"', 1, false);
            public       jswjubsulxwghn    false    201            �          0    4056718    bolsareactivos_reactivobolsa 
   TABLE DATA                  COPY "bolsareactivos_reactivobolsa" ("id", "nombre", "procedencia", "observaciones", "fecha_registro", "cantidad") FROM stdin;
    public       jswjubsulxwghn    false    202            H           0    0 #   bolsareactivos_reactivobolsa_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('"bolsareactivos_reactivobolsa_id_seq"', 8, true);
            public       jswjubsulxwghn    false    203            �          0    4056726     bolsareactivos_solicitudreactivo 
   TABLE DATA               �   COPY "bolsareactivos_solicitudreactivo" ("id", "cantidad", "fecha_hora_solicitud", "fecha_hora_entrega", "estado", "generador_id", "reactivo_id") FROM stdin;
    public       jswjubsulxwghn    false    204            I           0    0 '   bolsareactivos_solicitudreactivo_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('"bolsareactivos_solicitudreactivo_id_seq"', 8, true);
            public       jswjubsulxwghn    false    205            �          0    4056731    declaraciones_declaracion 
   TABLE DATA               �   COPY "declaraciones_declaracion" ("id", "fecha_declaracion", "fecha_recepcion", "generador_id", "espacio_fisico_id", "etapa", "fecha_finalizacion", "fecha_verificacion", "evento_recepcion", "evento_verificacion") FROM stdin;
    public       jswjubsulxwghn    false    206            J           0    0     declaraciones_declaracion_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('"declaraciones_declaracion_id_seq"', 295, true);
            public       jswjubsulxwghn    false    207            �          0    4056736    disposicionfinal_destinoresiduo 
   TABLE DATA               D   COPY "disposicionfinal_destinoresiduo" ("id", "nombre") FROM stdin;
    public       jswjubsulxwghn    false    208            K           0    0 &   disposicionfinal_destinoresiduo_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('"disposicionfinal_destinoresiduo_id_seq"', 3, true);
            public       jswjubsulxwghn    false    209            �          0    4056741    disposicionfinal_retiroresiduos 
   TABLE DATA               a   COPY "disposicionfinal_retiroresiduos" ("id", "fecha", "cantidad", "tratamiento_id") FROM stdin;
    public       jswjubsulxwghn    false    210            L           0    0 &   disposicionfinal_retiroresiduos_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('"disposicionfinal_retiroresiduos_id_seq"', 30, true);
            public       jswjubsulxwghn    false    211            �          0    4056746    disposicionfinal_tratamiento 
   TABLE DATA               _   COPY "disposicionfinal_tratamiento" ("id", "nombre", "total_actual", "destino_id") FROM stdin;
    public       jswjubsulxwghn    false    212            M           0    0 #   disposicionfinal_tratamiento_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('"disposicionfinal_tratamiento_id_seq"', 9, true);
            public       jswjubsulxwghn    false    213            �          0    4056751    django_admin_log 
   TABLE DATA               �   COPY "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") FROM stdin;
    public       jswjubsulxwghn    false    214            N           0    0    django_admin_log_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('"django_admin_log_id_seq"', 416, true);
            public       jswjubsulxwghn    false    215            �          0    4056760    django_content_type 
   TABLE DATA               D   COPY "django_content_type" ("id", "app_label", "model") FROM stdin;
    public       jswjubsulxwghn    false    216            O           0    0    django_content_type_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('"django_content_type_id_seq"', 43, true);
            public       jswjubsulxwghn    false    217            �          0    4056765    django_migrations 
   TABLE DATA               F   COPY "django_migrations" ("id", "app", "name", "applied") FROM stdin;
    public       jswjubsulxwghn    false    218            P           0    0    django_migrations_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('"django_migrations_id_seq"', 141, true);
            public       jswjubsulxwghn    false    219            �          0    4056773    django_session 
   TABLE DATA               Q   COPY "django_session" ("session_key", "session_data", "expire_date") FROM stdin;
    public       jswjubsulxwghn    false    220            �          0    4056779    django_site 
   TABLE DATA               8   COPY "django_site" ("id", "domain", "name") FROM stdin;
    public       jswjubsulxwghn    false    221            Q           0    0    django_site_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('"django_site_id_seq"', 1, true);
            public       jswjubsulxwghn    false    222            �          0    4056784    generadores_generador 
   TABLE DATA               �   COPY "generadores_generador" ("id", "tipo_documento", "numero_documento", "estamento", "cargo", "telefono", "user_id") FROM stdin;
    public       jswjubsulxwghn    false    223            R           0    0    generadores_generador_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('"generadores_generador_id_seq"', 8, true);
            public       jswjubsulxwghn    false    224            �          0    4056789    reactivos_reactivo 
   TABLE DATA               �   COPY "reactivos_reactivo" ("id", "nombre_quimico", "sinonimos", "nombre_ingles", "numero_CAS", "estado_fisico", "hoja_seguridad") FROM stdin;
    public       jswjubsulxwghn    false    225            S           0    0    reactivos_reactivo_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('"reactivos_reactivo_id_seq"', 919, true);
            public       jswjubsulxwghn    false    226            �          0    4056797    residuos_concentracionreactivo 
   TABLE DATA                  COPY "residuos_concentracionreactivo" ("id", "concentracion", "unidad_concentracion", "reactivo_id", "residuo_id") FROM stdin;
    public       jswjubsulxwghn    false    227            T           0    0 %   residuos_concentracionreactivo_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('"residuos_concentracionreactivo_id_seq"', 1, false);
            public       jswjubsulxwghn    false    228            �          0    4056802    residuos_corrienteresiduo 
   TABLE DATA               M   COPY "residuos_corrienteresiduo" ("id", "nombre", "descripcion") FROM stdin;
    public       jswjubsulxwghn    false    229            U           0    0     residuos_corrienteresiduo_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('"residuos_corrienteresiduo_id_seq"', 106, true);
            public       jswjubsulxwghn    false    230            �          0    4056810    residuos_practica 
   TABLE DATA               6   COPY "residuos_practica" ("id", "nombre") FROM stdin;
    public       jswjubsulxwghn    false    231            �          0    4056813    residuos_practica_actividades 
   TABLE DATA               W   COPY "residuos_practica_actividades" ("id", "practica_id", "actividad_id") FROM stdin;
    public       jswjubsulxwghn    false    232            V           0    0 $   residuos_practica_actividades_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('"residuos_practica_actividades_id_seq"', 681, true);
            public       jswjubsulxwghn    false    233            W           0    0 )   residuos_practica_centro_de_costos_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('"residuos_practica_centro_de_costos_id_seq"', 258, true);
            public       jswjubsulxwghn    false    235            �          0    4056818 #   residuos_practica_centros_de_costos 
   TABLE DATA               b   COPY "residuos_practica_centros_de_costos" ("id", "practica_id", "centrodecostos_id") FROM stdin;
    public       jswjubsulxwghn    false    234            X           0    0    residuos_practica_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('"residuos_practica_id_seq"', 304, true);
            public       jswjubsulxwghn    false    236            �          0    4056825    residuos_residuo 
   TABLE DATA               <  COPY "residuos_residuo" ("id", "descripcion", "tipo_recipiente", "almacenamiento_refrigerado", "estado_fisico", "numero_contenedores", "practica_id", "recuperable", "declaracion_id", "comentario_revision", "revisado", "comentario_recepcion", "recibido", "tratamiento_id", "corriente_residuo_id", "peso") FROM stdin;
    public       jswjubsulxwghn    false    237            Y           0    0    residuos_residuo_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('"residuos_residuo_id_seq"', 303, true);
            public       jswjubsulxwghn    false    238            �          0    4056835    residuos_residuo_reactivos 
   TABLE DATA               R   COPY "residuos_residuo_reactivos" ("id", "residuo_id", "reactivo_id") FROM stdin;
    public       jswjubsulxwghn    false    239            Z           0    0 !   residuos_residuo_reactivos_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('"residuos_residuo_reactivos_id_seq"', 548, true);
            public       jswjubsulxwghn    false    240            �          0    4056840    socialaccount_socialaccount 
   TABLE DATA                  COPY "socialaccount_socialaccount" ("id", "provider", "uid", "last_login", "date_joined", "extra_data", "user_id") FROM stdin;
    public       jswjubsulxwghn    false    241            [           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('"socialaccount_socialaccount_id_seq"', 2, true);
            public       jswjubsulxwghn    false    242            �          0    4056848    socialaccount_socialapp 
   TABLE DATA               d   COPY "socialaccount_socialapp" ("id", "provider", "name", "client_id", "secret", "key") FROM stdin;
    public       jswjubsulxwghn    false    243            \           0    0    socialaccount_socialapp_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('"socialaccount_socialapp_id_seq"', 1, true);
            public       jswjubsulxwghn    false    244            �          0    4056924    socialaccount_socialapp_sites 
   TABLE DATA               S   COPY "socialaccount_socialapp_sites" ("id", "socialapp_id", "site_id") FROM stdin;
    public       jswjubsulxwghn    false    245            ]           0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('"socialaccount_socialapp_sites_id_seq"', 2, true);
            public       jswjubsulxwghn    false    246                      0    4056929    socialaccount_socialtoken 
   TABLE DATA               s   COPY "socialaccount_socialtoken" ("id", "token", "token_secret", "expires_at", "account_id", "app_id") FROM stdin;
    public       jswjubsulxwghn    false    247            ^           0    0     socialaccount_socialtoken_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('"socialaccount_socialtoken_id_seq"', 2, true);
            public       jswjubsulxwghn    false    248                      0    4057530    thumbnail_kvstore 
   TABLE DATA               6   COPY "thumbnail_kvstore" ("key", "value") FROM stdin;
    public       jswjubsulxwghn    false    263                      0    4056937    ubicaciones_actividad 
   TABLE DATA               D   COPY "ubicaciones_actividad" ("id", "nombre_actividad") FROM stdin;
    public       jswjubsulxwghn    false    249            _           0    0    ubicaciones_actividad_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('"ubicaciones_actividad_id_seq"', 4, true);
            public       jswjubsulxwghn    false    250                      0    4056942    ubicaciones_centrodecostos 
   TABLE DATA               a   COPY "ubicaciones_centrodecostos" ("id", "nombre", "dependencia_id", "nombre_corto") FROM stdin;
    public       jswjubsulxwghn    false    251            `           0    0 !   ubicaciones_centrodecostos_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('"ubicaciones_centrodecostos_id_seq"', 21, true);
            public       jswjubsulxwghn    false    252                      0    4056947    ubicaciones_dependencia 
   TABLE DATA               <   COPY "ubicaciones_dependencia" ("id", "nombre") FROM stdin;
    public       jswjubsulxwghn    false    253            a           0    0    ubicaciones_dependencia_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('"ubicaciones_dependencia_id_seq"', 6, true);
            public       jswjubsulxwghn    false    254            	          0    4056952    ubicaciones_espaciofisico 
   TABLE DATA               �   COPY "ubicaciones_espaciofisico" ("id", "nombre", "sede", "edificio", "espacio", "centro_de_costos_id", "responsable_id", "zona", "codigo") FROM stdin;
    public       jswjubsulxwghn    false    255            
          0    4056957 #   ubicaciones_espaciofisico_actividad 
   TABLE DATA               b   COPY "ubicaciones_espaciofisico_actividad" ("id", "espaciofisico_id", "actividad_id") FROM stdin;
    public       jswjubsulxwghn    false    256            b           0    0 *   ubicaciones_espaciofisico_actividad_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('"ubicaciones_espaciofisico_actividad_id_seq"', 99, true);
            public       jswjubsulxwghn    false    257            c           0    0     ubicaciones_espaciofisico_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('"ubicaciones_espaciofisico_id_seq"', 137, true);
            public       jswjubsulxwghn    false    258                      0    4056964    usuarios_generador 
   TABLE DATA               �   COPY "usuarios_generador" ("id", "tipo_documento", "numero_documento", "estamento", "cargo", "telefono", "user_id", "imagen", "celular", "extension") FROM stdin;
    public       jswjubsulxwghn    false    259            d           0    0    usuarios_generador_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('"usuarios_generador_id_seq"', 120, true);
            public       jswjubsulxwghn    false    260                      0    4056969    usuarios_usuarioadministrativo 
   TABLE DATA               p   COPY "usuarios_usuarioadministrativo" ("id", "identificacion", "tipo_usuario", "user_id", "imagen") FROM stdin;
    public       jswjubsulxwghn    false    261            e           0    0 %   usuarios_usuarioadministrativo_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('"usuarios_usuarioadministrativo_id_seq"', 6, true);
            public       jswjubsulxwghn    false    262            n           2606    4057013 3   account_emailaddress account_emailaddress_email_key 
   CONSTRAINT     n   ALTER TABLE ONLY "account_emailaddress"
    ADD CONSTRAINT "account_emailaddress_email_key" UNIQUE ("email");
 c   ALTER TABLE ONLY "public"."account_emailaddress" DROP CONSTRAINT "account_emailaddress_email_key";
       public         jswjubsulxwghn    false    186    186            p           2606    4057015 .   account_emailaddress account_emailaddress_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY "account_emailaddress"
    ADD CONSTRAINT "account_emailaddress_pkey" PRIMARY KEY ("id");
 ^   ALTER TABLE ONLY "public"."account_emailaddress" DROP CONSTRAINT "account_emailaddress_pkey";
       public         jswjubsulxwghn    false    186    186            t           2606    4057017 ;   account_emailconfirmation account_emailconfirmation_key_key 
   CONSTRAINT     t   ALTER TABLE ONLY "account_emailconfirmation"
    ADD CONSTRAINT "account_emailconfirmation_key_key" UNIQUE ("key");
 k   ALTER TABLE ONLY "public"."account_emailconfirmation" DROP CONSTRAINT "account_emailconfirmation_key_key";
       public         jswjubsulxwghn    false    188    188            v           2606    4057019 8   account_emailconfirmation account_emailconfirmation_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY "account_emailconfirmation"
    ADD CONSTRAINT "account_emailconfirmation_pkey" PRIMARY KEY ("id");
 h   ALTER TABLE ONLY "public"."account_emailconfirmation" DROP CONSTRAINT "account_emailconfirmation_pkey";
       public         jswjubsulxwghn    false    188    188            y           2606    4057021    auth_group auth_group_name_key 
   CONSTRAINT     X   ALTER TABLE ONLY "auth_group"
    ADD CONSTRAINT "auth_group_name_key" UNIQUE ("name");
 N   ALTER TABLE ONLY "public"."auth_group" DROP CONSTRAINT "auth_group_name_key";
       public         jswjubsulxwghn    false    190    190                       2606    4057023 D   auth_group_permissions auth_group_permissions_group_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY "auth_group_permissions"
    ADD CONSTRAINT "auth_group_permissions_group_id_0cd325b0_uniq" UNIQUE ("group_id", "permission_id");
 t   ALTER TABLE ONLY "public"."auth_group_permissions" DROP CONSTRAINT "auth_group_permissions_group_id_0cd325b0_uniq";
       public         jswjubsulxwghn    false    192    192    192            �           2606    4057025 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY "auth_group_permissions"
    ADD CONSTRAINT "auth_group_permissions_pkey" PRIMARY KEY ("id");
 b   ALTER TABLE ONLY "public"."auth_group_permissions" DROP CONSTRAINT "auth_group_permissions_pkey";
       public         jswjubsulxwghn    false    192    192            {           2606    4057027    auth_group auth_group_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY "auth_group"
    ADD CONSTRAINT "auth_group_pkey" PRIMARY KEY ("id");
 J   ALTER TABLE ONLY "public"."auth_group" DROP CONSTRAINT "auth_group_pkey";
       public         jswjubsulxwghn    false    190    190            �           2606    4057029 =   auth_permission auth_permission_content_type_id_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY "auth_permission"
    ADD CONSTRAINT "auth_permission_content_type_id_01ab375a_uniq" UNIQUE ("content_type_id", "codename");
 m   ALTER TABLE ONLY "public"."auth_permission" DROP CONSTRAINT "auth_permission_content_type_id_01ab375a_uniq";
       public         jswjubsulxwghn    false    194    194    194            �           2606    4057031 $   auth_permission auth_permission_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY "auth_permission"
    ADD CONSTRAINT "auth_permission_pkey" PRIMARY KEY ("id");
 T   ALTER TABLE ONLY "public"."auth_permission" DROP CONSTRAINT "auth_permission_pkey";
       public         jswjubsulxwghn    false    194    194            �           2606    4057033 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY "auth_user_groups"
    ADD CONSTRAINT "auth_user_groups_pkey" PRIMARY KEY ("id");
 V   ALTER TABLE ONLY "public"."auth_user_groups" DROP CONSTRAINT "auth_user_groups_pkey";
       public         jswjubsulxwghn    false    197    197            �           2606    4057035 7   auth_user_groups auth_user_groups_user_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY "auth_user_groups"
    ADD CONSTRAINT "auth_user_groups_user_id_94350c0c_uniq" UNIQUE ("user_id", "group_id");
 g   ALTER TABLE ONLY "public"."auth_user_groups" DROP CONSTRAINT "auth_user_groups_user_id_94350c0c_uniq";
       public         jswjubsulxwghn    false    197    197    197            �           2606    4057037    auth_user auth_user_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY "auth_user"
    ADD CONSTRAINT "auth_user_pkey" PRIMARY KEY ("id");
 H   ALTER TABLE ONLY "public"."auth_user" DROP CONSTRAINT "auth_user_pkey";
       public         jswjubsulxwghn    false    196    196            �           2606    4057039 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY "auth_user_user_permissions"
    ADD CONSTRAINT "auth_user_user_permissions_pkey" PRIMARY KEY ("id");
 j   ALTER TABLE ONLY "public"."auth_user_user_permissions" DROP CONSTRAINT "auth_user_user_permissions_pkey";
       public         jswjubsulxwghn    false    200    200            �           2606    4057041 K   auth_user_user_permissions auth_user_user_permissions_user_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY "auth_user_user_permissions"
    ADD CONSTRAINT "auth_user_user_permissions_user_id_14a6b632_uniq" UNIQUE ("user_id", "permission_id");
 {   ALTER TABLE ONLY "public"."auth_user_user_permissions" DROP CONSTRAINT "auth_user_user_permissions_user_id_14a6b632_uniq";
       public         jswjubsulxwghn    false    200    200    200            �           2606    4057043     auth_user auth_user_username_key 
   CONSTRAINT     ^   ALTER TABLE ONLY "auth_user"
    ADD CONSTRAINT "auth_user_username_key" UNIQUE ("username");
 P   ALTER TABLE ONLY "public"."auth_user" DROP CONSTRAINT "auth_user_username_key";
       public         jswjubsulxwghn    false    196    196            �           2606    4057045 >   bolsareactivos_reactivobolsa bolsareactivos_reactivobolsa_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY "bolsareactivos_reactivobolsa"
    ADD CONSTRAINT "bolsareactivos_reactivobolsa_pkey" PRIMARY KEY ("id");
 n   ALTER TABLE ONLY "public"."bolsareactivos_reactivobolsa" DROP CONSTRAINT "bolsareactivos_reactivobolsa_pkey";
       public         jswjubsulxwghn    false    202    202            �           2606    4057047 F   bolsareactivos_solicitudreactivo bolsareactivos_solicitudreactivo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "bolsareactivos_solicitudreactivo"
    ADD CONSTRAINT "bolsareactivos_solicitudreactivo_pkey" PRIMARY KEY ("id");
 v   ALTER TABLE ONLY "public"."bolsareactivos_solicitudreactivo" DROP CONSTRAINT "bolsareactivos_solicitudreactivo_pkey";
       public         jswjubsulxwghn    false    204    204            �           2606    4057049 8   declaraciones_declaracion declaraciones_declaracion_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY "declaraciones_declaracion"
    ADD CONSTRAINT "declaraciones_declaracion_pkey" PRIMARY KEY ("id");
 h   ALTER TABLE ONLY "public"."declaraciones_declaracion" DROP CONSTRAINT "declaraciones_declaracion_pkey";
       public         jswjubsulxwghn    false    206    206            �           2606    4057051 D   disposicionfinal_destinoresiduo disposicionfinal_destinoresiduo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "disposicionfinal_destinoresiduo"
    ADD CONSTRAINT "disposicionfinal_destinoresiduo_pkey" PRIMARY KEY ("id");
 t   ALTER TABLE ONLY "public"."disposicionfinal_destinoresiduo" DROP CONSTRAINT "disposicionfinal_destinoresiduo_pkey";
       public         jswjubsulxwghn    false    208    208            �           2606    4057053 D   disposicionfinal_retiroresiduos disposicionfinal_retiroresiduos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "disposicionfinal_retiroresiduos"
    ADD CONSTRAINT "disposicionfinal_retiroresiduos_pkey" PRIMARY KEY ("id");
 t   ALTER TABLE ONLY "public"."disposicionfinal_retiroresiduos" DROP CONSTRAINT "disposicionfinal_retiroresiduos_pkey";
       public         jswjubsulxwghn    false    210    210            �           2606    4057055 >   disposicionfinal_tratamiento disposicionfinal_tratamiento_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY "disposicionfinal_tratamiento"
    ADD CONSTRAINT "disposicionfinal_tratamiento_pkey" PRIMARY KEY ("id");
 n   ALTER TABLE ONLY "public"."disposicionfinal_tratamiento" DROP CONSTRAINT "disposicionfinal_tratamiento_pkey";
       public         jswjubsulxwghn    false    212    212            �           2606    4057057 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY "django_admin_log"
    ADD CONSTRAINT "django_admin_log_pkey" PRIMARY KEY ("id");
 V   ALTER TABLE ONLY "public"."django_admin_log" DROP CONSTRAINT "django_admin_log_pkey";
       public         jswjubsulxwghn    false    214    214            �           2606    4057059 ?   django_content_type django_content_type_app_label_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY "django_content_type"
    ADD CONSTRAINT "django_content_type_app_label_76bd3d3b_uniq" UNIQUE ("app_label", "model");
 o   ALTER TABLE ONLY "public"."django_content_type" DROP CONSTRAINT "django_content_type_app_label_76bd3d3b_uniq";
       public         jswjubsulxwghn    false    216    216    216            �           2606    4057061 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY "django_content_type"
    ADD CONSTRAINT "django_content_type_pkey" PRIMARY KEY ("id");
 \   ALTER TABLE ONLY "public"."django_content_type" DROP CONSTRAINT "django_content_type_pkey";
       public         jswjubsulxwghn    false    216    216            �           2606    4057063 (   django_migrations django_migrations_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY "django_migrations"
    ADD CONSTRAINT "django_migrations_pkey" PRIMARY KEY ("id");
 X   ALTER TABLE ONLY "public"."django_migrations" DROP CONSTRAINT "django_migrations_pkey";
       public         jswjubsulxwghn    false    218    218            �           2606    4057065 "   django_session django_session_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY "django_session"
    ADD CONSTRAINT "django_session_pkey" PRIMARY KEY ("session_key");
 R   ALTER TABLE ONLY "public"."django_session" DROP CONSTRAINT "django_session_pkey";
       public         jswjubsulxwghn    false    220    220            �           2606    4057067 ,   django_site django_site_domain_a2e37b91_uniq 
   CONSTRAINT     h   ALTER TABLE ONLY "django_site"
    ADD CONSTRAINT "django_site_domain_a2e37b91_uniq" UNIQUE ("domain");
 \   ALTER TABLE ONLY "public"."django_site" DROP CONSTRAINT "django_site_domain_a2e37b91_uniq";
       public         jswjubsulxwghn    false    221    221            �           2606    4057069    django_site django_site_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY "django_site"
    ADD CONSTRAINT "django_site_pkey" PRIMARY KEY ("id");
 L   ALTER TABLE ONLY "public"."django_site" DROP CONSTRAINT "django_site_pkey";
       public         jswjubsulxwghn    false    221    221            �           2606    4057071 @   generadores_generador generadores_generador_numero_documento_key 
   CONSTRAINT     �   ALTER TABLE ONLY "generadores_generador"
    ADD CONSTRAINT "generadores_generador_numero_documento_key" UNIQUE ("numero_documento");
 p   ALTER TABLE ONLY "public"."generadores_generador" DROP CONSTRAINT "generadores_generador_numero_documento_key";
       public         jswjubsulxwghn    false    223    223            �           2606    4057073 0   generadores_generador generadores_generador_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY "generadores_generador"
    ADD CONSTRAINT "generadores_generador_pkey" PRIMARY KEY ("id");
 `   ALTER TABLE ONLY "public"."generadores_generador" DROP CONSTRAINT "generadores_generador_pkey";
       public         jswjubsulxwghn    false    223    223            �           2606    4057075 7   generadores_generador generadores_generador_user_id_key 
   CONSTRAINT     t   ALTER TABLE ONLY "generadores_generador"
    ADD CONSTRAINT "generadores_generador_user_id_key" UNIQUE ("user_id");
 g   ALTER TABLE ONLY "public"."generadores_generador" DROP CONSTRAINT "generadores_generador_user_id_key";
       public         jswjubsulxwghn    false    223    223            �           2606    4057077 4   reactivos_reactivo reactivos_reactivo_numero_CAS_key 
   CONSTRAINT     t   ALTER TABLE ONLY "reactivos_reactivo"
    ADD CONSTRAINT "reactivos_reactivo_numero_CAS_key" UNIQUE ("numero_CAS");
 d   ALTER TABLE ONLY "public"."reactivos_reactivo" DROP CONSTRAINT "reactivos_reactivo_numero_CAS_key";
       public         jswjubsulxwghn    false    225    225            �           2606    4057079 *   reactivos_reactivo reactivos_reactivo_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY "reactivos_reactivo"
    ADD CONSTRAINT "reactivos_reactivo_pkey" PRIMARY KEY ("id");
 Z   ALTER TABLE ONLY "public"."reactivos_reactivo" DROP CONSTRAINT "reactivos_reactivo_pkey";
       public         jswjubsulxwghn    false    225    225            �           2606    4057081 B   residuos_concentracionreactivo residuos_concentracionreactivo_pkey 
   CONSTRAINT        ALTER TABLE ONLY "residuos_concentracionreactivo"
    ADD CONSTRAINT "residuos_concentracionreactivo_pkey" PRIMARY KEY ("id");
 r   ALTER TABLE ONLY "public"."residuos_concentracionreactivo" DROP CONSTRAINT "residuos_concentracionreactivo_pkey";
       public         jswjubsulxwghn    false    227    227            �           2606    4057083 >   residuos_corrienteresiduo residuos_corrienteresiduo_nombre_key 
   CONSTRAINT     z   ALTER TABLE ONLY "residuos_corrienteresiduo"
    ADD CONSTRAINT "residuos_corrienteresiduo_nombre_key" UNIQUE ("nombre");
 n   ALTER TABLE ONLY "public"."residuos_corrienteresiduo" DROP CONSTRAINT "residuos_corrienteresiduo_nombre_key";
       public         jswjubsulxwghn    false    229    229            �           2606    4057085 8   residuos_corrienteresiduo residuos_corrienteresiduo_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY "residuos_corrienteresiduo"
    ADD CONSTRAINT "residuos_corrienteresiduo_pkey" PRIMARY KEY ("id");
 h   ALTER TABLE ONLY "public"."residuos_corrienteresiduo" DROP CONSTRAINT "residuos_corrienteresiduo_pkey";
       public         jswjubsulxwghn    false    229    229            �           2606    4057087 @   residuos_practica_actividades residuos_practica_actividades_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY "residuos_practica_actividades"
    ADD CONSTRAINT "residuos_practica_actividades_pkey" PRIMARY KEY ("id");
 p   ALTER TABLE ONLY "public"."residuos_practica_actividades" DROP CONSTRAINT "residuos_practica_actividades_pkey";
       public         jswjubsulxwghn    false    232    232            �           2606    4057089 U   residuos_practica_actividades residuos_practica_actividades_practica_id_4d0bb709_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY "residuos_practica_actividades"
    ADD CONSTRAINT "residuos_practica_actividades_practica_id_4d0bb709_uniq" UNIQUE ("practica_id", "actividad_id");
 �   ALTER TABLE ONLY "public"."residuos_practica_actividades" DROP CONSTRAINT "residuos_practica_actividades_practica_id_4d0bb709_uniq";
       public         jswjubsulxwghn    false    232    232    232            �           2606    4057091 K   residuos_practica_centros_de_costos residuos_practica_centro_de_costos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "residuos_practica_centros_de_costos"
    ADD CONSTRAINT "residuos_practica_centro_de_costos_pkey" PRIMARY KEY ("id");
 {   ALTER TABLE ONLY "public"."residuos_practica_centros_de_costos" DROP CONSTRAINT "residuos_practica_centro_de_costos_pkey";
       public         jswjubsulxwghn    false    234    234            �           2606    4057093 `   residuos_practica_centros_de_costos residuos_practica_centro_de_costos_practica_id_af18f428_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY "residuos_practica_centros_de_costos"
    ADD CONSTRAINT "residuos_practica_centro_de_costos_practica_id_af18f428_uniq" UNIQUE ("practica_id", "centrodecostos_id");
 �   ALTER TABLE ONLY "public"."residuos_practica_centros_de_costos" DROP CONSTRAINT "residuos_practica_centro_de_costos_practica_id_af18f428_uniq";
       public         jswjubsulxwghn    false    234    234    234            �           2606    4057095 8   residuos_practica residuos_practica_nombre_c18fa787_uniq 
   CONSTRAINT     t   ALTER TABLE ONLY "residuos_practica"
    ADD CONSTRAINT "residuos_practica_nombre_c18fa787_uniq" UNIQUE ("nombre");
 h   ALTER TABLE ONLY "public"."residuos_practica" DROP CONSTRAINT "residuos_practica_nombre_c18fa787_uniq";
       public         jswjubsulxwghn    false    231    231            �           2606    4057097 (   residuos_practica residuos_practica_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY "residuos_practica"
    ADD CONSTRAINT "residuos_practica_pkey" PRIMARY KEY ("id");
 X   ALTER TABLE ONLY "public"."residuos_practica" DROP CONSTRAINT "residuos_practica_pkey";
       public         jswjubsulxwghn    false    231    231            �           2606    4057099 &   residuos_residuo residuos_residuo_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY "residuos_residuo"
    ADD CONSTRAINT "residuos_residuo_pkey" PRIMARY KEY ("id");
 V   ALTER TABLE ONLY "public"."residuos_residuo" DROP CONSTRAINT "residuos_residuo_pkey";
       public         jswjubsulxwghn    false    237    237            �           2606    4057101 :   residuos_residuo_reactivos residuos_residuo_reactivos_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY "residuos_residuo_reactivos"
    ADD CONSTRAINT "residuos_residuo_reactivos_pkey" PRIMARY KEY ("id");
 j   ALTER TABLE ONLY "public"."residuos_residuo_reactivos" DROP CONSTRAINT "residuos_residuo_reactivos_pkey";
       public         jswjubsulxwghn    false    239    239            �           2606    4057103 N   residuos_residuo_reactivos residuos_residuo_reactivos_residuo_id_3c217ccd_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY "residuos_residuo_reactivos"
    ADD CONSTRAINT "residuos_residuo_reactivos_residuo_id_3c217ccd_uniq" UNIQUE ("residuo_id", "reactivo_id");
 ~   ALTER TABLE ONLY "public"."residuos_residuo_reactivos" DROP CONSTRAINT "residuos_residuo_reactivos_residuo_id_3c217ccd_uniq";
       public         jswjubsulxwghn    false    239    239    239            �           2606    4057105 <   socialaccount_socialaccount socialaccount_socialaccount_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY "socialaccount_socialaccount"
    ADD CONSTRAINT "socialaccount_socialaccount_pkey" PRIMARY KEY ("id");
 l   ALTER TABLE ONLY "public"."socialaccount_socialaccount" DROP CONSTRAINT "socialaccount_socialaccount_pkey";
       public         jswjubsulxwghn    false    241    241            �           2606    4057107 N   socialaccount_socialaccount socialaccount_socialaccount_provider_fc810c6e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY "socialaccount_socialaccount"
    ADD CONSTRAINT "socialaccount_socialaccount_provider_fc810c6e_uniq" UNIQUE ("provider", "uid");
 ~   ALTER TABLE ONLY "public"."socialaccount_socialaccount" DROP CONSTRAINT "socialaccount_socialaccount_provider_fc810c6e_uniq";
       public         jswjubsulxwghn    false    241    241    241            �           2606    4057109 4   socialaccount_socialapp socialaccount_socialapp_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY "socialaccount_socialapp"
    ADD CONSTRAINT "socialaccount_socialapp_pkey" PRIMARY KEY ("id");
 d   ALTER TABLE ONLY "public"."socialaccount_socialapp" DROP CONSTRAINT "socialaccount_socialapp_pkey";
       public         jswjubsulxwghn    false    243    243            �           2606    4057111 @   socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY "socialaccount_socialapp_sites"
    ADD CONSTRAINT "socialaccount_socialapp_sites_pkey" PRIMARY KEY ("id");
 p   ALTER TABLE ONLY "public"."socialaccount_socialapp_sites" DROP CONSTRAINT "socialaccount_socialapp_sites_pkey";
       public         jswjubsulxwghn    false    245    245            �           2606    4057113 V   socialaccount_socialapp_sites socialaccount_socialapp_sites_socialapp_id_71a9a768_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY "socialaccount_socialapp_sites"
    ADD CONSTRAINT "socialaccount_socialapp_sites_socialapp_id_71a9a768_uniq" UNIQUE ("socialapp_id", "site_id");
 �   ALTER TABLE ONLY "public"."socialaccount_socialapp_sites" DROP CONSTRAINT "socialaccount_socialapp_sites_socialapp_id_71a9a768_uniq";
       public         jswjubsulxwghn    false    245    245    245            �           2606    4057115 H   socialaccount_socialtoken socialaccount_socialtoken_app_id_fca4e0ac_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY "socialaccount_socialtoken"
    ADD CONSTRAINT "socialaccount_socialtoken_app_id_fca4e0ac_uniq" UNIQUE ("app_id", "account_id");
 x   ALTER TABLE ONLY "public"."socialaccount_socialtoken" DROP CONSTRAINT "socialaccount_socialtoken_app_id_fca4e0ac_uniq";
       public         jswjubsulxwghn    false    247    247    247            �           2606    4057117 8   socialaccount_socialtoken socialaccount_socialtoken_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY "socialaccount_socialtoken"
    ADD CONSTRAINT "socialaccount_socialtoken_pkey" PRIMARY KEY ("id");
 h   ALTER TABLE ONLY "public"."socialaccount_socialtoken" DROP CONSTRAINT "socialaccount_socialtoken_pkey";
       public         jswjubsulxwghn    false    247    247            $           2606    4057537 (   thumbnail_kvstore thumbnail_kvstore_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY "thumbnail_kvstore"
    ADD CONSTRAINT "thumbnail_kvstore_pkey" PRIMARY KEY ("key");
 X   ALTER TABLE ONLY "public"."thumbnail_kvstore" DROP CONSTRAINT "thumbnail_kvstore_pkey";
       public         jswjubsulxwghn    false    263    263                        2606    4057119 0   ubicaciones_actividad ubicaciones_actividad_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY "ubicaciones_actividad"
    ADD CONSTRAINT "ubicaciones_actividad_pkey" PRIMARY KEY ("id");
 `   ALTER TABLE ONLY "public"."ubicaciones_actividad" DROP CONSTRAINT "ubicaciones_actividad_pkey";
       public         jswjubsulxwghn    false    249    249                       2606    4057121 :   ubicaciones_centrodecostos ubicaciones_centrodecostos_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY "ubicaciones_centrodecostos"
    ADD CONSTRAINT "ubicaciones_centrodecostos_pkey" PRIMARY KEY ("id");
 j   ALTER TABLE ONLY "public"."ubicaciones_centrodecostos" DROP CONSTRAINT "ubicaciones_centrodecostos_pkey";
       public         jswjubsulxwghn    false    251    251                       2606    4057123 D   ubicaciones_dependencia ubicaciones_dependencia_nombre_79da36a2_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY "ubicaciones_dependencia"
    ADD CONSTRAINT "ubicaciones_dependencia_nombre_79da36a2_uniq" UNIQUE ("nombre");
 t   ALTER TABLE ONLY "public"."ubicaciones_dependencia" DROP CONSTRAINT "ubicaciones_dependencia_nombre_79da36a2_uniq";
       public         jswjubsulxwghn    false    253    253                       2606    4057125 4   ubicaciones_dependencia ubicaciones_dependencia_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY "ubicaciones_dependencia"
    ADD CONSTRAINT "ubicaciones_dependencia_pkey" PRIMARY KEY ("id");
 d   ALTER TABLE ONLY "public"."ubicaciones_dependencia" DROP CONSTRAINT "ubicaciones_dependencia_pkey";
       public         jswjubsulxwghn    false    253    253                       2606    4057127 c   ubicaciones_espaciofisico_actividad ubicaciones_espaciofisico_activi_espaciofisico_id_c02d73f0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY "ubicaciones_espaciofisico_actividad"
    ADD CONSTRAINT "ubicaciones_espaciofisico_activi_espaciofisico_id_c02d73f0_uniq" UNIQUE ("espaciofisico_id", "actividad_id");
 �   ALTER TABLE ONLY "public"."ubicaciones_espaciofisico_actividad" DROP CONSTRAINT "ubicaciones_espaciofisico_activi_espaciofisico_id_c02d73f0_uniq";
       public         jswjubsulxwghn    false    256    256    256                       2606    4057129 L   ubicaciones_espaciofisico_actividad ubicaciones_espaciofisico_actividad_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "ubicaciones_espaciofisico_actividad"
    ADD CONSTRAINT "ubicaciones_espaciofisico_actividad_pkey" PRIMARY KEY ("id");
 |   ALTER TABLE ONLY "public"."ubicaciones_espaciofisico_actividad" DROP CONSTRAINT "ubicaciones_espaciofisico_actividad_pkey";
       public         jswjubsulxwghn    false    256    256                       2606    4057131 H   ubicaciones_espaciofisico ubicaciones_espaciofisico_codigo_b2e9c287_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY "ubicaciones_espaciofisico"
    ADD CONSTRAINT "ubicaciones_espaciofisico_codigo_b2e9c287_uniq" UNIQUE ("codigo");
 x   ALTER TABLE ONLY "public"."ubicaciones_espaciofisico" DROP CONSTRAINT "ubicaciones_espaciofisico_codigo_b2e9c287_uniq";
       public         jswjubsulxwghn    false    255    255                       2606    4057133 8   ubicaciones_espaciofisico ubicaciones_espaciofisico_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY "ubicaciones_espaciofisico"
    ADD CONSTRAINT "ubicaciones_espaciofisico_pkey" PRIMARY KEY ("id");
 h   ALTER TABLE ONLY "public"."ubicaciones_espaciofisico" DROP CONSTRAINT "ubicaciones_espaciofisico_pkey";
       public         jswjubsulxwghn    false    255    255                       2606    4057135 :   usuarios_generador usuarios_generador_numero_documento_key 
   CONSTRAINT     �   ALTER TABLE ONLY "usuarios_generador"
    ADD CONSTRAINT "usuarios_generador_numero_documento_key" UNIQUE ("numero_documento");
 j   ALTER TABLE ONLY "public"."usuarios_generador" DROP CONSTRAINT "usuarios_generador_numero_documento_key";
       public         jswjubsulxwghn    false    259    259                       2606    4057137 *   usuarios_generador usuarios_generador_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY "usuarios_generador"
    ADD CONSTRAINT "usuarios_generador_pkey" PRIMARY KEY ("id");
 Z   ALTER TABLE ONLY "public"."usuarios_generador" DROP CONSTRAINT "usuarios_generador_pkey";
       public         jswjubsulxwghn    false    259    259                       2606    4057139 1   usuarios_generador usuarios_generador_user_id_key 
   CONSTRAINT     n   ALTER TABLE ONLY "usuarios_generador"
    ADD CONSTRAINT "usuarios_generador_user_id_key" UNIQUE ("user_id");
 a   ALTER TABLE ONLY "public"."usuarios_generador" DROP CONSTRAINT "usuarios_generador_user_id_key";
       public         jswjubsulxwghn    false    259    259                       2606    4057141 P   usuarios_usuarioadministrativo usuarios_usuarioadministrativo_identificacion_key 
   CONSTRAINT     �   ALTER TABLE ONLY "usuarios_usuarioadministrativo"
    ADD CONSTRAINT "usuarios_usuarioadministrativo_identificacion_key" UNIQUE ("identificacion");
 �   ALTER TABLE ONLY "public"."usuarios_usuarioadministrativo" DROP CONSTRAINT "usuarios_usuarioadministrativo_identificacion_key";
       public         jswjubsulxwghn    false    261    261                       2606    4057143 B   usuarios_usuarioadministrativo usuarios_usuarioadministrativo_pkey 
   CONSTRAINT        ALTER TABLE ONLY "usuarios_usuarioadministrativo"
    ADD CONSTRAINT "usuarios_usuarioadministrativo_pkey" PRIMARY KEY ("id");
 r   ALTER TABLE ONLY "public"."usuarios_usuarioadministrativo" DROP CONSTRAINT "usuarios_usuarioadministrativo_pkey";
       public         jswjubsulxwghn    false    261    261            !           2606    4057145 I   usuarios_usuarioadministrativo usuarios_usuarioadministrativo_user_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY "usuarios_usuarioadministrativo"
    ADD CONSTRAINT "usuarios_usuarioadministrativo_user_id_key" UNIQUE ("user_id");
 y   ALTER TABLE ONLY "public"."usuarios_usuarioadministrativo" DROP CONSTRAINT "usuarios_usuarioadministrativo_user_id_key";
       public         jswjubsulxwghn    false    261    261            k           1259    4057146    account_emailaddress_e8701ad4    INDEX     b   CREATE INDEX "account_emailaddress_e8701ad4" ON "account_emailaddress" USING "btree" ("user_id");
 5   DROP INDEX "public"."account_emailaddress_e8701ad4";
       public         jswjubsulxwghn    false    186            l           1259    4057147 (   account_emailaddress_email_03be32b2_like    INDEX     �   CREATE INDEX "account_emailaddress_email_03be32b2_like" ON "account_emailaddress" USING "btree" ("email" "varchar_pattern_ops");
 @   DROP INDEX "public"."account_emailaddress_email_03be32b2_like";
       public         jswjubsulxwghn    false    186            q           1259    4057148 "   account_emailconfirmation_6f1edeac    INDEX     u   CREATE INDEX "account_emailconfirmation_6f1edeac" ON "account_emailconfirmation" USING "btree" ("email_address_id");
 :   DROP INDEX "public"."account_emailconfirmation_6f1edeac";
       public         jswjubsulxwghn    false    188            r           1259    4057149 +   account_emailconfirmation_key_f43612bd_like    INDEX     �   CREATE INDEX "account_emailconfirmation_key_f43612bd_like" ON "account_emailconfirmation" USING "btree" ("key" "varchar_pattern_ops");
 C   DROP INDEX "public"."account_emailconfirmation_key_f43612bd_like";
       public         jswjubsulxwghn    false    188            w           1259    4057150    auth_group_name_a6ea08ec_like    INDEX     k   CREATE INDEX "auth_group_name_a6ea08ec_like" ON "auth_group" USING "btree" ("name" "varchar_pattern_ops");
 5   DROP INDEX "public"."auth_group_name_a6ea08ec_like";
       public         jswjubsulxwghn    false    190            |           1259    4057151    auth_group_permissions_0e939a4f    INDEX     g   CREATE INDEX "auth_group_permissions_0e939a4f" ON "auth_group_permissions" USING "btree" ("group_id");
 7   DROP INDEX "public"."auth_group_permissions_0e939a4f";
       public         jswjubsulxwghn    false    192            }           1259    4057152    auth_group_permissions_8373b171    INDEX     l   CREATE INDEX "auth_group_permissions_8373b171" ON "auth_group_permissions" USING "btree" ("permission_id");
 7   DROP INDEX "public"."auth_group_permissions_8373b171";
       public         jswjubsulxwghn    false    192            �           1259    4057153    auth_permission_417f1b1c    INDEX     `   CREATE INDEX "auth_permission_417f1b1c" ON "auth_permission" USING "btree" ("content_type_id");
 0   DROP INDEX "public"."auth_permission_417f1b1c";
       public         jswjubsulxwghn    false    194            �           1259    4057154    auth_user_groups_0e939a4f    INDEX     [   CREATE INDEX "auth_user_groups_0e939a4f" ON "auth_user_groups" USING "btree" ("group_id");
 1   DROP INDEX "public"."auth_user_groups_0e939a4f";
       public         jswjubsulxwghn    false    197            �           1259    4057155    auth_user_groups_e8701ad4    INDEX     Z   CREATE INDEX "auth_user_groups_e8701ad4" ON "auth_user_groups" USING "btree" ("user_id");
 1   DROP INDEX "public"."auth_user_groups_e8701ad4";
       public         jswjubsulxwghn    false    197            �           1259    4057156 #   auth_user_user_permissions_8373b171    INDEX     t   CREATE INDEX "auth_user_user_permissions_8373b171" ON "auth_user_user_permissions" USING "btree" ("permission_id");
 ;   DROP INDEX "public"."auth_user_user_permissions_8373b171";
       public         jswjubsulxwghn    false    200            �           1259    4057157 #   auth_user_user_permissions_e8701ad4    INDEX     n   CREATE INDEX "auth_user_user_permissions_e8701ad4" ON "auth_user_user_permissions" USING "btree" ("user_id");
 ;   DROP INDEX "public"."auth_user_user_permissions_e8701ad4";
       public         jswjubsulxwghn    false    200            �           1259    4057158     auth_user_username_6821ab7c_like    INDEX     q   CREATE INDEX "auth_user_username_6821ab7c_like" ON "auth_user" USING "btree" ("username" "varchar_pattern_ops");
 8   DROP INDEX "public"."auth_user_username_6821ab7c_like";
       public         jswjubsulxwghn    false    196            �           1259    4057159 )   bolsareactivos_solicitudreactivo_2f8c4509    INDEX     ~   CREATE INDEX "bolsareactivos_solicitudreactivo_2f8c4509" ON "bolsareactivos_solicitudreactivo" USING "btree" ("reactivo_id");
 A   DROP INDEX "public"."bolsareactivos_solicitudreactivo_2f8c4509";
       public         jswjubsulxwghn    false    204            �           1259    4057160 )   bolsareactivos_solicitudreactivo_3ed54869    INDEX        CREATE INDEX "bolsareactivos_solicitudreactivo_3ed54869" ON "bolsareactivos_solicitudreactivo" USING "btree" ("generador_id");
 A   DROP INDEX "public"."bolsareactivos_solicitudreactivo_3ed54869";
       public         jswjubsulxwghn    false    204            �           1259    4057161 "   declaraciones_declaracion_ea0b3c40    INDEX     v   CREATE INDEX "declaraciones_declaracion_ea0b3c40" ON "declaraciones_declaracion" USING "btree" ("espacio_fisico_id");
 :   DROP INDEX "public"."declaraciones_declaracion_ea0b3c40";
       public         jswjubsulxwghn    false    206            �           1259    4057162 (   disposicionfinal_retiroresiduos_f4f130bf    INDEX        CREATE INDEX "disposicionfinal_retiroresiduos_f4f130bf" ON "disposicionfinal_retiroresiduos" USING "btree" ("tratamiento_id");
 @   DROP INDEX "public"."disposicionfinal_retiroresiduos_f4f130bf";
       public         jswjubsulxwghn    false    210            �           1259    4057163 %   disposicionfinal_tratamiento_39949085    INDEX     u   CREATE INDEX "disposicionfinal_tratamiento_39949085" ON "disposicionfinal_tratamiento" USING "btree" ("destino_id");
 =   DROP INDEX "public"."disposicionfinal_tratamiento_39949085";
       public         jswjubsulxwghn    false    212            �           1259    4057164    django_admin_log_417f1b1c    INDEX     b   CREATE INDEX "django_admin_log_417f1b1c" ON "django_admin_log" USING "btree" ("content_type_id");
 1   DROP INDEX "public"."django_admin_log_417f1b1c";
       public         jswjubsulxwghn    false    214            �           1259    4057165    django_admin_log_e8701ad4    INDEX     Z   CREATE INDEX "django_admin_log_e8701ad4" ON "django_admin_log" USING "btree" ("user_id");
 1   DROP INDEX "public"."django_admin_log_e8701ad4";
       public         jswjubsulxwghn    false    214            �           1259    4057166    django_session_de54fa62    INDEX     Z   CREATE INDEX "django_session_de54fa62" ON "django_session" USING "btree" ("expire_date");
 /   DROP INDEX "public"."django_session_de54fa62";
       public         jswjubsulxwghn    false    220            �           1259    4057167 (   django_session_session_key_c0390e0f_like    INDEX     �   CREATE INDEX "django_session_session_key_c0390e0f_like" ON "django_session" USING "btree" ("session_key" "varchar_pattern_ops");
 @   DROP INDEX "public"."django_session_session_key_c0390e0f_like";
       public         jswjubsulxwghn    false    220            �           1259    4057168 4   generadores_generador_numero_documento_180d2429_like    INDEX     �   CREATE INDEX "generadores_generador_numero_documento_180d2429_like" ON "generadores_generador" USING "btree" ("numero_documento" "varchar_pattern_ops");
 L   DROP INDEX "public"."generadores_generador_numero_documento_180d2429_like";
       public         jswjubsulxwghn    false    223            �           1259    4057169 +   reactivos_reactivo_numero_CAS_bc5b80f2_like    INDEX     �   CREATE INDEX "reactivos_reactivo_numero_CAS_bc5b80f2_like" ON "reactivos_reactivo" USING "btree" ("numero_CAS" "varchar_pattern_ops");
 C   DROP INDEX "public"."reactivos_reactivo_numero_CAS_bc5b80f2_like";
       public         jswjubsulxwghn    false    225            �           1259    4057170 '   residuos_concentracionreactivo_2f8c4509    INDEX     z   CREATE INDEX "residuos_concentracionreactivo_2f8c4509" ON "residuos_concentracionreactivo" USING "btree" ("reactivo_id");
 ?   DROP INDEX "public"."residuos_concentracionreactivo_2f8c4509";
       public         jswjubsulxwghn    false    227            �           1259    4057171 '   residuos_concentracionreactivo_a7d072b3    INDEX     y   CREATE INDEX "residuos_concentracionreactivo_a7d072b3" ON "residuos_concentracionreactivo" USING "btree" ("residuo_id");
 ?   DROP INDEX "public"."residuos_concentracionreactivo_a7d072b3";
       public         jswjubsulxwghn    false    227            �           1259    4057172 .   residuos_corrienteresiduo_nombre_90dc97dc_like    INDEX     �   CREATE INDEX "residuos_corrienteresiduo_nombre_90dc97dc_like" ON "residuos_corrienteresiduo" USING "btree" ("nombre" "varchar_pattern_ops");
 F   DROP INDEX "public"."residuos_corrienteresiduo_nombre_90dc97dc_like";
       public         jswjubsulxwghn    false    229            �           1259    4057173 &   residuos_practica_actividades_5230de0a    INDEX     x   CREATE INDEX "residuos_practica_actividades_5230de0a" ON "residuos_practica_actividades" USING "btree" ("practica_id");
 >   DROP INDEX "public"."residuos_practica_actividades_5230de0a";
       public         jswjubsulxwghn    false    232            �           1259    4057174 &   residuos_practica_actividades_6f919ae9    INDEX     y   CREATE INDEX "residuos_practica_actividades_6f919ae9" ON "residuos_practica_actividades" USING "btree" ("actividad_id");
 >   DROP INDEX "public"."residuos_practica_actividades_6f919ae9";
       public         jswjubsulxwghn    false    232            �           1259    4057175 +   residuos_practica_centro_de_costos_0ef1a18d    INDEX     �   CREATE INDEX "residuos_practica_centro_de_costos_0ef1a18d" ON "residuos_practica_centros_de_costos" USING "btree" ("centrodecostos_id");
 C   DROP INDEX "public"."residuos_practica_centro_de_costos_0ef1a18d";
       public         jswjubsulxwghn    false    234            �           1259    4057176 +   residuos_practica_centro_de_costos_5230de0a    INDEX     �   CREATE INDEX "residuos_practica_centro_de_costos_5230de0a" ON "residuos_practica_centros_de_costos" USING "btree" ("practica_id");
 C   DROP INDEX "public"."residuos_practica_centro_de_costos_5230de0a";
       public         jswjubsulxwghn    false    234            �           1259    4057177    residuos_residuo_797f44c2    INDEX     g   CREATE INDEX "residuos_residuo_797f44c2" ON "residuos_residuo" USING "btree" ("corriente_residuo_id");
 1   DROP INDEX "public"."residuos_residuo_797f44c2";
       public         jswjubsulxwghn    false    237            �           1259    4057178    residuos_residuo_cd67096f    INDEX     a   CREATE INDEX "residuos_residuo_cd67096f" ON "residuos_residuo" USING "btree" ("declaracion_id");
 1   DROP INDEX "public"."residuos_residuo_cd67096f";
       public         jswjubsulxwghn    false    237            �           1259    4057179    residuos_residuo_f11ebb05    INDEX     a   CREATE INDEX "residuos_residuo_f11ebb05" ON "residuos_residuo" USING "btree" ("tratamiento_id");
 1   DROP INDEX "public"."residuos_residuo_f11ebb05";
       public         jswjubsulxwghn    false    237            �           1259    4057180 *   residuos_residuo_practica_id_a1fc2371_uniq    INDEX     o   CREATE INDEX "residuos_residuo_practica_id_a1fc2371_uniq" ON "residuos_residuo" USING "btree" ("practica_id");
 B   DROP INDEX "public"."residuos_residuo_practica_id_a1fc2371_uniq";
       public         jswjubsulxwghn    false    237            �           1259    4057181 #   residuos_residuo_reactivos_2f8c4509    INDEX     r   CREATE INDEX "residuos_residuo_reactivos_2f8c4509" ON "residuos_residuo_reactivos" USING "btree" ("reactivo_id");
 ;   DROP INDEX "public"."residuos_residuo_reactivos_2f8c4509";
       public         jswjubsulxwghn    false    239            �           1259    4057182 #   residuos_residuo_reactivos_a7d072b3    INDEX     q   CREATE INDEX "residuos_residuo_reactivos_a7d072b3" ON "residuos_residuo_reactivos" USING "btree" ("residuo_id");
 ;   DROP INDEX "public"."residuos_residuo_reactivos_a7d072b3";
       public         jswjubsulxwghn    false    239            �           1259    4057183 $   socialaccount_socialaccount_e8701ad4    INDEX     p   CREATE INDEX "socialaccount_socialaccount_e8701ad4" ON "socialaccount_socialaccount" USING "btree" ("user_id");
 <   DROP INDEX "public"."socialaccount_socialaccount_e8701ad4";
       public         jswjubsulxwghn    false    241            �           1259    4057184 &   socialaccount_socialapp_sites_9365d6e7    INDEX     t   CREATE INDEX "socialaccount_socialapp_sites_9365d6e7" ON "socialaccount_socialapp_sites" USING "btree" ("site_id");
 >   DROP INDEX "public"."socialaccount_socialapp_sites_9365d6e7";
       public         jswjubsulxwghn    false    245            �           1259    4057185 &   socialaccount_socialapp_sites_fe95b0a0    INDEX     y   CREATE INDEX "socialaccount_socialapp_sites_fe95b0a0" ON "socialaccount_socialapp_sites" USING "btree" ("socialapp_id");
 >   DROP INDEX "public"."socialaccount_socialapp_sites_fe95b0a0";
       public         jswjubsulxwghn    false    245            �           1259    4057186 "   socialaccount_socialtoken_8a089c2a    INDEX     o   CREATE INDEX "socialaccount_socialtoken_8a089c2a" ON "socialaccount_socialtoken" USING "btree" ("account_id");
 :   DROP INDEX "public"."socialaccount_socialtoken_8a089c2a";
       public         jswjubsulxwghn    false    247            �           1259    4057187 "   socialaccount_socialtoken_f382adfe    INDEX     k   CREATE INDEX "socialaccount_socialtoken_f382adfe" ON "socialaccount_socialtoken" USING "btree" ("app_id");
 :   DROP INDEX "public"."socialaccount_socialtoken_f382adfe";
       public         jswjubsulxwghn    false    247            "           1259    4057538 #   thumbnail_kvstore_key_3f850178_like    INDEX     w   CREATE INDEX "thumbnail_kvstore_key_3f850178_like" ON "thumbnail_kvstore" USING "btree" ("key" "varchar_pattern_ops");
 ;   DROP INDEX "public"."thumbnail_kvstore_key_3f850178_like";
       public         jswjubsulxwghn    false    263                       1259    4057188 #   ubicaciones_centrodecostos_b69d8bfa    INDEX     u   CREATE INDEX "ubicaciones_centrodecostos_b69d8bfa" ON "ubicaciones_centrodecostos" USING "btree" ("dependencia_id");
 ;   DROP INDEX "public"."ubicaciones_centrodecostos_b69d8bfa";
       public         jswjubsulxwghn    false    251                       1259    4057189 "   ubicaciones_espaciofisico_1ba06e10    INDEX     s   CREATE INDEX "ubicaciones_espaciofisico_1ba06e10" ON "ubicaciones_espaciofisico" USING "btree" ("responsable_id");
 :   DROP INDEX "public"."ubicaciones_espaciofisico_1ba06e10";
       public         jswjubsulxwghn    false    255            	           1259    4057190 "   ubicaciones_espaciofisico_43e680df    INDEX     x   CREATE INDEX "ubicaciones_espaciofisico_43e680df" ON "ubicaciones_espaciofisico" USING "btree" ("centro_de_costos_id");
 :   DROP INDEX "public"."ubicaciones_espaciofisico_43e680df";
       public         jswjubsulxwghn    false    255                       1259    4057191 ,   ubicaciones_espaciofisico_actividad_3b9808f9    INDEX     �   CREATE INDEX "ubicaciones_espaciofisico_actividad_3b9808f9" ON "ubicaciones_espaciofisico_actividad" USING "btree" ("espaciofisico_id");
 D   DROP INDEX "public"."ubicaciones_espaciofisico_actividad_3b9808f9";
       public         jswjubsulxwghn    false    256                       1259    4057192 ,   ubicaciones_espaciofisico_actividad_6f919ae9    INDEX     �   CREATE INDEX "ubicaciones_espaciofisico_actividad_6f919ae9" ON "ubicaciones_espaciofisico_actividad" USING "btree" ("actividad_id");
 D   DROP INDEX "public"."ubicaciones_espaciofisico_actividad_6f919ae9";
       public         jswjubsulxwghn    false    256                       1259    4057193 1   usuarios_generador_numero_documento_071536b3_like    INDEX     �   CREATE INDEX "usuarios_generador_numero_documento_071536b3_like" ON "usuarios_generador" USING "btree" ("numero_documento" "varchar_pattern_ops");
 I   DROP INDEX "public"."usuarios_generador_numero_documento_071536b3_like";
       public         jswjubsulxwghn    false    259                       1259    4057194 ;   usuarios_usuarioadministrativo_identificacion_55ff7a17_like    INDEX     �   CREATE INDEX "usuarios_usuarioadministrativo_identificacion_55ff7a17_like" ON "usuarios_usuarioadministrativo" USING "btree" ("identificacion" "varchar_pattern_ops");
 S   DROP INDEX "public"."usuarios_usuarioadministrativo_identificacion_55ff7a17_like";
       public         jswjubsulxwghn    false    261            &           2606    4057195 Y   account_emailconfirmation account_em_email_address_id_5b7f8c58_fk_account_emailaddress_id    FK CONSTRAINT     �   ALTER TABLE ONLY "account_emailconfirmation"
    ADD CONSTRAINT "account_em_email_address_id_5b7f8c58_fk_account_emailaddress_id" FOREIGN KEY ("email_address_id") REFERENCES "account_emailaddress"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."account_emailconfirmation" DROP CONSTRAINT "account_em_email_address_id_5b7f8c58_fk_account_emailaddress_id";
       public       jswjubsulxwghn    false    186    188    3184            %           2606    4057200 J   account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY "account_emailaddress"
    ADD CONSTRAINT "account_emailaddress_user_id_2c513194_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user"("id") DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY "public"."account_emailaddress" DROP CONSTRAINT "account_emailaddress_user_id_2c513194_fk_auth_user_id";
       public       jswjubsulxwghn    false    196    3208    186            '           2606    4057205 V   auth_group_permissions auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY "auth_group_permissions"
    ADD CONSTRAINT "auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id" FOREIGN KEY ("permission_id") REFERENCES "auth_permission"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."auth_group_permissions" DROP CONSTRAINT "auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id";
       public       jswjubsulxwghn    false    194    192    3206            (           2606    4057210 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY "auth_group_permissions"
    ADD CONSTRAINT "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "auth_group"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."auth_group_permissions" DROP CONSTRAINT "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id";
       public       jswjubsulxwghn    false    3195    190    192            )           2606    4057215 O   auth_permission auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY "auth_permission"
    ADD CONSTRAINT "auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id" FOREIGN KEY ("content_type_id") REFERENCES "django_content_type"("id") DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY "public"."auth_permission" DROP CONSTRAINT "auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id";
       public       jswjubsulxwghn    false    216    194    3248            *           2606    4057220 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY "auth_user_groups"
    ADD CONSTRAINT "auth_user_groups_group_id_97559544_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "auth_group"("id") DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY "public"."auth_user_groups" DROP CONSTRAINT "auth_user_groups_group_id_97559544_fk_auth_group_id";
       public       jswjubsulxwghn    false    3195    190    197            +           2606    4057225 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY "auth_user_groups"
    ADD CONSTRAINT "auth_user_groups_user_id_6a12ed8b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user"("id") DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY "public"."auth_user_groups" DROP CONSTRAINT "auth_user_groups_user_id_6a12ed8b_fk_auth_user_id";
       public       jswjubsulxwghn    false    3208    197    196            ,           2606    4057230 Z   auth_user_user_permissions auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY "auth_user_user_permissions"
    ADD CONSTRAINT "auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id" FOREIGN KEY ("permission_id") REFERENCES "auth_permission"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."auth_user_user_permissions" DROP CONSTRAINT "auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id";
       public       jswjubsulxwghn    false    194    200    3206            -           2606    4057235 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY "auth_user_user_permissions"
    ADD CONSTRAINT "auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."auth_user_user_permissions" DROP CONSTRAINT "auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id";
       public       jswjubsulxwghn    false    3208    200    196            .           2606    4057240 `   bolsareactivos_solicitudreactivo bolsare_reactivo_id_4215b312_fk_bolsareactivos_reactivobolsa_id    FK CONSTRAINT     �   ALTER TABLE ONLY "bolsareactivos_solicitudreactivo"
    ADD CONSTRAINT "bolsare_reactivo_id_4215b312_fk_bolsareactivos_reactivobolsa_id" FOREIGN KEY ("reactivo_id") REFERENCES "bolsareactivos_reactivobolsa"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."bolsareactivos_solicitudreactivo" DROP CONSTRAINT "bolsare_reactivo_id_4215b312_fk_bolsareactivos_reactivobolsa_id";
       public       jswjubsulxwghn    false    202    3225    204            /           2606    4057245 `   bolsareactivos_solicitudreactivo bolsareactivos_s_generador_id_ce9022ff_fk_usuarios_generador_id    FK CONSTRAINT     �   ALTER TABLE ONLY "bolsareactivos_solicitudreactivo"
    ADD CONSTRAINT "bolsareactivos_s_generador_id_ce9022ff_fk_usuarios_generador_id" FOREIGN KEY ("generador_id") REFERENCES "usuarios_generador"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."bolsareactivos_solicitudreactivo" DROP CONSTRAINT "bolsareactivos_s_generador_id_ce9022ff_fk_usuarios_generador_id";
       public       jswjubsulxwghn    false    259    3352    204            0           2606    4057250 Y   declaraciones_declaracion decl_espacio_fisico_id_e8f3182c_fk_ubicaciones_espaciofisico_id    FK CONSTRAINT     �   ALTER TABLE ONLY "declaraciones_declaracion"
    ADD CONSTRAINT "decl_espacio_fisico_id_e8f3182c_fk_ubicaciones_espaciofisico_id" FOREIGN KEY ("espacio_fisico_id") REFERENCES "ubicaciones_espaciofisico"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."declaraciones_declaracion" DROP CONSTRAINT "decl_espacio_fisico_id_e8f3182c_fk_ubicaciones_espaciofisico_id";
       public       jswjubsulxwghn    false    3341    255    206            1           2606    4057255 Y   declaraciones_declaracion declaraciones_de_generador_id_717aa6d7_fk_usuarios_generador_id    FK CONSTRAINT     �   ALTER TABLE ONLY "declaraciones_declaracion"
    ADD CONSTRAINT "declaraciones_de_generador_id_717aa6d7_fk_usuarios_generador_id" FOREIGN KEY ("generador_id") REFERENCES "usuarios_generador"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."declaraciones_declaracion" DROP CONSTRAINT "declaraciones_de_generador_id_717aa6d7_fk_usuarios_generador_id";
       public       jswjubsulxwghn    false    259    3352    206            2           2606    4057260 _   disposicionfinal_retiroresiduos disp_tratamiento_id_c9f81fba_fk_disposicionfinal_tratamiento_id    FK CONSTRAINT     �   ALTER TABLE ONLY "disposicionfinal_retiroresiduos"
    ADD CONSTRAINT "disp_tratamiento_id_c9f81fba_fk_disposicionfinal_tratamiento_id" FOREIGN KEY ("tratamiento_id") REFERENCES "disposicionfinal_tratamiento"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."disposicionfinal_retiroresiduos" DROP CONSTRAINT "disp_tratamiento_id_c9f81fba_fk_disposicionfinal_tratamiento_id";
       public       jswjubsulxwghn    false    3240    210    212            3           2606    4057265 \   disposicionfinal_tratamiento dispo_destino_id_43c89208_fk_disposicionfinal_destinoresiduo_id    FK CONSTRAINT     �   ALTER TABLE ONLY "disposicionfinal_tratamiento"
    ADD CONSTRAINT "dispo_destino_id_43c89208_fk_disposicionfinal_destinoresiduo_id" FOREIGN KEY ("destino_id") REFERENCES "disposicionfinal_destinoresiduo"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."disposicionfinal_tratamiento" DROP CONSTRAINT "dispo_destino_id_43c89208_fk_disposicionfinal_destinoresiduo_id";
       public       jswjubsulxwghn    false    212    3234    208            4           2606    4057270 P   django_admin_log django_admin_content_type_id_c4bce8eb_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY "django_admin_log"
    ADD CONSTRAINT "django_admin_content_type_id_c4bce8eb_fk_django_content_type_id" FOREIGN KEY ("content_type_id") REFERENCES "django_content_type"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."django_admin_log" DROP CONSTRAINT "django_admin_content_type_id_c4bce8eb_fk_django_content_type_id";
       public       jswjubsulxwghn    false    216    3248    214            5           2606    4057275 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY "django_admin_log"
    ADD CONSTRAINT "django_admin_log_user_id_c564eba6_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user"("id") DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY "public"."django_admin_log" DROP CONSTRAINT "django_admin_log_user_id_c564eba6_fk_auth_user_id";
       public       jswjubsulxwghn    false    196    3208    214            6           2606    4057280 L   generadores_generador generadores_generador_user_id_31273bc1_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY "generadores_generador"
    ADD CONSTRAINT "generadores_generador_user_id_31273bc1_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user"("id") DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY "public"."generadores_generador" DROP CONSTRAINT "generadores_generador_user_id_31273bc1_fk_auth_user_id";
       public       jswjubsulxwghn    false    3208    223    196            =           2606    4057285 P   residuos_residuo r_corriente_residuo_id_e6a471a1_fk_residuos_corrienteresiduo_id    FK CONSTRAINT     �   ALTER TABLE ONLY "residuos_residuo"
    ADD CONSTRAINT "r_corriente_residuo_id_e6a471a1_fk_residuos_corrienteresiduo_id" FOREIGN KEY ("corriente_residuo_id") REFERENCES "residuos_corrienteresiduo"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."residuos_residuo" DROP CONSTRAINT "r_corriente_residuo_id_e6a471a1_fk_residuos_corrienteresiduo_id";
       public       jswjubsulxwghn    false    3279    237    229            ;           2606    4057290 c   residuos_practica_centros_de_costos res_centrodecostos_id_482ddf81_fk_ubicaciones_centrodecostos_id    FK CONSTRAINT     �   ALTER TABLE ONLY "residuos_practica_centros_de_costos"
    ADD CONSTRAINT "res_centrodecostos_id_482ddf81_fk_ubicaciones_centrodecostos_id" FOREIGN KEY ("centrodecostos_id") REFERENCES "ubicaciones_centrodecostos"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."residuos_practica_centros_de_costos" DROP CONSTRAINT "res_centrodecostos_id_482ddf81_fk_ubicaciones_centrodecostos_id";
       public       jswjubsulxwghn    false    3331    234    251            >           2606    4057295 P   residuos_residuo resi_tratamiento_id_158f3a85_fk_disposicionfinal_tratamiento_id    FK CONSTRAINT     �   ALTER TABLE ONLY "residuos_residuo"
    ADD CONSTRAINT "resi_tratamiento_id_158f3a85_fk_disposicionfinal_tratamiento_id" FOREIGN KEY ("tratamiento_id") REFERENCES "disposicionfinal_tratamiento"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."residuos_residuo" DROP CONSTRAINT "resi_tratamiento_id_158f3a85_fk_disposicionfinal_tratamiento_id";
       public       jswjubsulxwghn    false    212    3240    237            ?           2606    4057300 P   residuos_residuo residuo_declaracion_id_67f24282_fk_declaraciones_declaracion_id    FK CONSTRAINT     �   ALTER TABLE ONLY "residuos_residuo"
    ADD CONSTRAINT "residuo_declaracion_id_67f24282_fk_declaraciones_declaracion_id" FOREIGN KEY ("declaracion_id") REFERENCES "declaraciones_declaracion"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."residuos_residuo" DROP CONSTRAINT "residuo_declaracion_id_67f24282_fk_declaraciones_declaracion_id";
       public       jswjubsulxwghn    false    206    237    3232            7           2606    4057305 ^   residuos_concentracionreactivo residuos_concentr_reactivo_id_e1910695_fk_reactivos_reactivo_id    FK CONSTRAINT     �   ALTER TABLE ONLY "residuos_concentracionreactivo"
    ADD CONSTRAINT "residuos_concentr_reactivo_id_e1910695_fk_reactivos_reactivo_id" FOREIGN KEY ("reactivo_id") REFERENCES "reactivos_reactivo"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."residuos_concentracionreactivo" DROP CONSTRAINT "residuos_concentr_reactivo_id_e1910695_fk_reactivos_reactivo_id";
       public       jswjubsulxwghn    false    225    3270    227            8           2606    4057310 ^   residuos_concentracionreactivo residuos_concentraci_residuo_id_66ba82e9_fk_residuos_residuo_id    FK CONSTRAINT     �   ALTER TABLE ONLY "residuos_concentracionreactivo"
    ADD CONSTRAINT "residuos_concentraci_residuo_id_66ba82e9_fk_residuos_residuo_id" FOREIGN KEY ("residuo_id") REFERENCES "residuos_residuo"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."residuos_concentracionreactivo" DROP CONSTRAINT "residuos_concentraci_residuo_id_66ba82e9_fk_residuos_residuo_id";
       public       jswjubsulxwghn    false    227    237    3300            9           2606    4057315 ]   residuos_practica_actividades residuos_prac_actividad_id_5db540d9_fk_ubicaciones_actividad_id    FK CONSTRAINT     �   ALTER TABLE ONLY "residuos_practica_actividades"
    ADD CONSTRAINT "residuos_prac_actividad_id_5db540d9_fk_ubicaciones_actividad_id" FOREIGN KEY ("actividad_id") REFERENCES "ubicaciones_actividad"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."residuos_practica_actividades" DROP CONSTRAINT "residuos_prac_actividad_id_5db540d9_fk_ubicaciones_actividad_id";
       public       jswjubsulxwghn    false    232    3328    249            <           2606    4057320 c   residuos_practica_centros_de_costos residuos_practica__practica_id_a1677b1e_fk_residuos_practica_id    FK CONSTRAINT     �   ALTER TABLE ONLY "residuos_practica_centros_de_costos"
    ADD CONSTRAINT "residuos_practica__practica_id_a1677b1e_fk_residuos_practica_id" FOREIGN KEY ("practica_id") REFERENCES "residuos_practica"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."residuos_practica_centros_de_costos" DROP CONSTRAINT "residuos_practica__practica_id_a1677b1e_fk_residuos_practica_id";
       public       jswjubsulxwghn    false    3283    234    231            :           2606    4057325 ]   residuos_practica_actividades residuos_practica__practica_id_c198252b_fk_residuos_practica_id    FK CONSTRAINT     �   ALTER TABLE ONLY "residuos_practica_actividades"
    ADD CONSTRAINT "residuos_practica__practica_id_c198252b_fk_residuos_practica_id" FOREIGN KEY ("practica_id") REFERENCES "residuos_practica"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."residuos_practica_actividades" DROP CONSTRAINT "residuos_practica__practica_id_c198252b_fk_residuos_practica_id";
       public       jswjubsulxwghn    false    232    3283    231            A           2606    4057330 Z   residuos_residuo_reactivos residuos_residuo__reactivo_id_9aad84e8_fk_reactivos_reactivo_id    FK CONSTRAINT     �   ALTER TABLE ONLY "residuos_residuo_reactivos"
    ADD CONSTRAINT "residuos_residuo__reactivo_id_9aad84e8_fk_reactivos_reactivo_id" FOREIGN KEY ("reactivo_id") REFERENCES "reactivos_reactivo"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."residuos_residuo_reactivos" DROP CONSTRAINT "residuos_residuo__reactivo_id_9aad84e8_fk_reactivos_reactivo_id";
       public       jswjubsulxwghn    false    3270    239    225            @           2606    4057335 N   residuos_residuo residuos_residuo_practica_id_a1fc2371_fk_residuos_practica_id    FK CONSTRAINT     �   ALTER TABLE ONLY "residuos_residuo"
    ADD CONSTRAINT "residuos_residuo_practica_id_a1fc2371_fk_residuos_practica_id" FOREIGN KEY ("practica_id") REFERENCES "residuos_practica"("id") DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY "public"."residuos_residuo" DROP CONSTRAINT "residuos_residuo_practica_id_a1fc2371_fk_residuos_practica_id";
       public       jswjubsulxwghn    false    231    237    3283            B           2606    4057340 Z   residuos_residuo_reactivos residuos_residuo_rea_residuo_id_2bd24c21_fk_residuos_residuo_id    FK CONSTRAINT     �   ALTER TABLE ONLY "residuos_residuo_reactivos"
    ADD CONSTRAINT "residuos_residuo_rea_residuo_id_2bd24c21_fk_residuos_residuo_id" FOREIGN KEY ("residuo_id") REFERENCES "residuos_residuo"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."residuos_residuo_reactivos" DROP CONSTRAINT "residuos_residuo_rea_residuo_id_2bd24c21_fk_residuos_residuo_id";
       public       jswjubsulxwghn    false    239    3300    237            F           2606    4057345 Y   socialaccount_socialtoken socialacc_account_id_951f210e_fk_socialaccount_socialaccount_id    FK CONSTRAINT     �   ALTER TABLE ONLY "socialaccount_socialtoken"
    ADD CONSTRAINT "socialacc_account_id_951f210e_fk_socialaccount_socialaccount_id" FOREIGN KEY ("account_id") REFERENCES "socialaccount_socialaccount"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."socialaccount_socialtoken" DROP CONSTRAINT "socialacc_account_id_951f210e_fk_socialaccount_socialaccount_id";
       public       jswjubsulxwghn    false    241    3310    247            D           2606    4057350 ]   socialaccount_socialapp_sites socialaccou_socialapp_id_97fb6e7d_fk_socialaccount_socialapp_id    FK CONSTRAINT     �   ALTER TABLE ONLY "socialaccount_socialapp_sites"
    ADD CONSTRAINT "socialaccou_socialapp_id_97fb6e7d_fk_socialaccount_socialapp_id" FOREIGN KEY ("socialapp_id") REFERENCES "socialaccount_socialapp"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."socialaccount_socialapp_sites" DROP CONSTRAINT "socialaccou_socialapp_id_97fb6e7d_fk_socialaccount_socialapp_id";
       public       jswjubsulxwghn    false    243    245    3314            G           2606    4057355 Y   socialaccount_socialtoken socialaccount_soc_app_id_636a42d7_fk_socialaccount_socialapp_id    FK CONSTRAINT     �   ALTER TABLE ONLY "socialaccount_socialtoken"
    ADD CONSTRAINT "socialaccount_soc_app_id_636a42d7_fk_socialaccount_socialapp_id" FOREIGN KEY ("app_id") REFERENCES "socialaccount_socialapp"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."socialaccount_socialtoken" DROP CONSTRAINT "socialaccount_soc_app_id_636a42d7_fk_socialaccount_socialapp_id";
       public       jswjubsulxwghn    false    243    247    3314            C           2606    4057360 X   socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY "socialaccount_socialaccount"
    ADD CONSTRAINT "socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."socialaccount_socialaccount" DROP CONSTRAINT "socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id";
       public       jswjubsulxwghn    false    3208    241    196            E           2606    4057365 ]   socialaccount_socialapp_sites socialaccount_socialapp_site_site_id_2579dee5_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY "socialaccount_socialapp_sites"
    ADD CONSTRAINT "socialaccount_socialapp_site_site_id_2579dee5_fk_django_site_id" FOREIGN KEY ("site_id") REFERENCES "django_site"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."socialaccount_socialapp_sites" DROP CONSTRAINT "socialaccount_socialapp_site_site_id_2579dee5_fk_django_site_id";
       public       jswjubsulxwghn    false    245    3258    221            I           2606    4057370 Y   ubicaciones_espaciofisico u_centro_de_costos_id_91da3fc4_fk_ubicaciones_centrodecostos_id    FK CONSTRAINT     �   ALTER TABLE ONLY "ubicaciones_espaciofisico"
    ADD CONSTRAINT "u_centro_de_costos_id_91da3fc4_fk_ubicaciones_centrodecostos_id" FOREIGN KEY ("centro_de_costos_id") REFERENCES "ubicaciones_centrodecostos"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."ubicaciones_espaciofisico" DROP CONSTRAINT "u_centro_de_costos_id_91da3fc4_fk_ubicaciones_centrodecostos_id";
       public       jswjubsulxwghn    false    251    3331    255            K           2606    4057375 c   ubicaciones_espaciofisico_actividad ubica_espaciofisico_id_2e4a8d5a_fk_ubicaciones_espaciofisico_id    FK CONSTRAINT     �   ALTER TABLE ONLY "ubicaciones_espaciofisico_actividad"
    ADD CONSTRAINT "ubica_espaciofisico_id_2e4a8d5a_fk_ubicaciones_espaciofisico_id" FOREIGN KEY ("espaciofisico_id") REFERENCES "ubicaciones_espaciofisico"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."ubicaciones_espaciofisico_actividad" DROP CONSTRAINT "ubica_espaciofisico_id_2e4a8d5a_fk_ubicaciones_espaciofisico_id";
       public       jswjubsulxwghn    false    3341    256    255            H           2606    4057380 Z   ubicaciones_centrodecostos ubicacion_dependencia_id_bd387f62_fk_ubicaciones_dependencia_id    FK CONSTRAINT     �   ALTER TABLE ONLY "ubicaciones_centrodecostos"
    ADD CONSTRAINT "ubicacion_dependencia_id_bd387f62_fk_ubicaciones_dependencia_id" FOREIGN KEY ("dependencia_id") REFERENCES "ubicaciones_dependencia"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."ubicaciones_centrodecostos" DROP CONSTRAINT "ubicacion_dependencia_id_bd387f62_fk_ubicaciones_dependencia_id";
       public       jswjubsulxwghn    false    253    251    3335            L           2606    4057385 c   ubicaciones_espaciofisico_actividad ubicaciones_e_actividad_id_b6bde83f_fk_ubicaciones_actividad_id    FK CONSTRAINT     �   ALTER TABLE ONLY "ubicaciones_espaciofisico_actividad"
    ADD CONSTRAINT "ubicaciones_e_actividad_id_b6bde83f_fk_ubicaciones_actividad_id" FOREIGN KEY ("actividad_id") REFERENCES "ubicaciones_actividad"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."ubicaciones_espaciofisico_actividad" DROP CONSTRAINT "ubicaciones_e_actividad_id_b6bde83f_fk_ubicaciones_actividad_id";
       public       jswjubsulxwghn    false    249    3328    256            J           2606    4057390 Y   ubicaciones_espaciofisico ubicaciones_es_responsable_id_f88f20ba_fk_usuarios_generador_id    FK CONSTRAINT     �   ALTER TABLE ONLY "ubicaciones_espaciofisico"
    ADD CONSTRAINT "ubicaciones_es_responsable_id_f88f20ba_fk_usuarios_generador_id" FOREIGN KEY ("responsable_id") REFERENCES "usuarios_generador"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."ubicaciones_espaciofisico" DROP CONSTRAINT "ubicaciones_es_responsable_id_f88f20ba_fk_usuarios_generador_id";
       public       jswjubsulxwghn    false    255    3352    259            M           2606    5043422 F   usuarios_generador usuarios_generador_user_id_3498ad17_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY "usuarios_generador"
    ADD CONSTRAINT "usuarios_generador_user_id_3498ad17_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user"("id") DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY "public"."usuarios_generador" DROP CONSTRAINT "usuarios_generador_user_id_3498ad17_fk_auth_user_id";
       public       jswjubsulxwghn    false    196    3208    259            N           2606    4057400 ^   usuarios_usuarioadministrativo usuarios_usuarioadministrativo_user_id_1c88ef1d_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY "usuarios_usuarioadministrativo"
    ADD CONSTRAINT "usuarios_usuarioadministrativo_user_id_1c88ef1d_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user"("id") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY "public"."usuarios_usuarioadministrativo" DROP CONSTRAINT "usuarios_usuarioadministrativo_user_id_1c88ef1d_fk_auth_user_id";
       public       jswjubsulxwghn    false    3208    196    261            �   �  x��Xێ�(}�>��m>d���,��{7��=$鞙�Q%j�՗�vN��c���w��M)g����mN�y�So���>x�\m�W�{�����(sZ8˦��)�$��9Xξn�����yI���G�ve�t%���E�ؼ��rqx�ʾ�*�J��O�rt:�B�i��ϖ1��q���n�-��=�9�Y�?F����f�]�]1d:Q.����iI�'n�<!�aƯ��5�VLn�Y�	�K�5i�-$�"�]W6PՐ�ŽT��n�U"��e=y��:ҭ�)�.oI�9�B�Ԋ짣ͳ��=c��;qr1^���=��Jud ���5�]�Ǟt/����v���Ͱ�Ǹ� ��΂V�l};,��>-����_�?ܡ��	pY]��'ց����5��Q�V ϻ[7���S�nJ�OK
�Aӑz���)NG�+��R7��@�֯JS�Ŀ>�p(���ix�E��*�\o\R`V;�n8�D���l��B��@3`�sz����Z��.�p�o|�tO�S��\�*����U����d*q�>'�}�w��uE�PH�`V���}����B��A;�Q�h�CH��|_d�X����b��Ѳ�hE��ұ���+=dQ��Y}d���w2�y�Қ��`�{@G���v�.�	C]�1���h�����U��K���5u_<�@_Q]B���dх�&��@�]�U�>��GFQ݊;
H�����
Rp㸣�c��TwK��u�g�!C��!�j�`�=�+j1��T-$�'�A�z�?��u���g�a�D�<"j�1���W+Њ�G�iHU?I��ff�5�"���_��-�X!��+����6���D�J�'���O0����MJ!O������(�1�w"уv3�B�S�J�'wC���X��}|:M]��%n�i�v�p	əA���A	�����F6l*j>����_Ѝ�F_��'���Si]�r׾0ᅕ�^�����ta��!�꾘A��I#A�������eU��[5���d)^<�t���A�W;BP��񝢱Au�GW�ۣ�^�*^~6MZ�����%lw_(�V���S��Z�Bċ}u�V�����U����a8
|�x�o<���W��}E�w�z�,��ٝ�L��[htl��&����|Ҫ�Df| İ=����D�b�*���R�bぉI>�::ϯtf�A���G����|����A��=� �Aԋ�f?Z���{���g�y~��H+]�8� Ž�^��}CC�U��RJ%��~0P?|���F��� ��_�ݢ2�E"]-/Q��`��u���m�J���)y]>����Ty�;ar�i2T��9|6�|��M �eK�%E�rf�������L+x�e淰�XA�b���c�bx��$��?���      �      x������ � �      �   @   x�3��,�/RHIU(J-�/*I-�2�(�OK-���K��2�tO�K-JL�/�2��/�2c���� ���      �   �  x��ˑ�0�sӘ	�|���L��h�+:���N�_���uP;���-�ٶe�c�<�<,�N�.���RO����q��7�1�1a�vN�f@�hP�j`�lp�n��0{�(�Y����<�x޶��\��\��\��\G��r�'�^���<9~�'ǯ���}��wW^L��k��)�E��6��:4ʋ0>���(��(�N��ͻ�Q��Q��Q��Q��Q>6ʇQ����eD�/#�|�ˈ�dDW���ʗ]�"w����7�/�4��ǆY��0k|6��'��3kԋ�5�����f�zq�F��Y�^ܬQ/n֨7kԋ�5��ݕ��+wW6�l�C�5��qe���=��{(�P6�l�C��S�ĝR&�2q���;�L�)e�N)wJ��S�ĝR&�Le��T&�Le��T>6�D��L��D��L��F0���g��Z��������㜟      �     x�}�K��0���)r���Ǻ�(P��f*Lb�3�ܾ�EQ���΢�_d$�d�~�m���}y��y_�T�`���R'2��w#(g
`y����]�����>����f�Y��`�5�+@t�؆�,�flK�����T�������ѝ#z����yF^�YUu�|�<���.� ��y����_O���	���+�+�ѧ�k�:�1�7�f�m7g��y��&��~�.=V��n5��^��Ow��E����rwCw�J�nw����F�n��Jz��d-���z2�*�Y�:L˪rw�dЕ�Z�d��_���lO�'3އu�ǀ�<�3��3Ac��y�q><�n�َp[�q�k��B�ĉgz%�K�|�E7_���r�M��y`/7߰���0����k�Ȋ�0_������ٲ�y2�h�,��ɤ�N�������<�x��P6ǣM,��2��˦
WC����VTӔȗ�H'�lJ��]�5�l�#Ooov;��p��Ψ[Q�
.�Jqad�(����i�T�t+�� 1Ɗ�!X� �]�Rh���PY-3L���kk��L�h(����dB]d�TR��J������)��t/&��U��b��x_]8��㲮�1t�������'u��c��I)��X��k{+��0=�l����,q�9w��E���	4�$����x�:$�BYY�nWʘM����쭠e%!���DYI��G��q��ܷA�r�8��'ǎ ���J� A"^ņ��nG���@T���wh��39�%�~L��H�T��0�C�fw�J7��0������P"F�x)B'x�~|���+w�F�]�F|��J�X�ۀ��QT0��������>��7@�\㋥<�H�^#��<�Hݱ�1 ~��	O�U�	v���L����TE&*���
���8.�yWU��rF��TlA"�"U��-�d\�����۾|�Q��4������TD������"j�M���#�jT�����Ft�a<�큓�ۓ�~h�����      �      x��|���Ȳ��<C�_:�1�pC�#��w4op�!��{��a��Mc��b��V��L��g4_DF��N������F	Bq�!�[���I;���n�|y��t=v����hBX=e]Σ��[R������]'��in�i��m�:viGA�ן��w�(M��#�nz�Zv���o��o'�s/�������{n�wR�#�
#�0��w���0�O��=��<͙�e�YGD[A{��E^H{��[P|>�d\�2�J�C	B��������z�9���J�aX�q���go�n?���̓΢w'��(���w��JW���n?��X#O�:�BQ,�����x\q2u����H�u�u����2/"��V���=~_2��c/�gi���X �3SEڕ~�'��_�^_�f�0����@>���6�z���h{��^�o��u]i����6�8�gYcy5JS���Ӈ�]��ݏ�~U��گ;\;۝���t$p�ןͭ��=}�e�0�C�F#ъF=M� � ��^n��F�C���[x!g��.Q�ڬ���^�y!��SF�>D�2O�Y����iҹ�cw����ͺ|'x]�'���M��� �R������xF�9�Z4�����-Y��D��e�x�=����Ͻ�Wt��8����ig��u�"�?�-��(�E�7�|C�n��������R3U8j�[�'��(�B�r[���)'���_W�1��1���x}g�+ʠz_�;B{�1�t�ӭxF�.�0��7<��W�=�y$�'��DF�n@���O�E��"�0a�\�7��F
��E��Z%s�l'�Nڷ�^C��;�mܝ���;ً/�=��c}!Q��M�����\x�+,��dmi�ç��r�T���1?X����>Pһvb��< v�&v���ڳ�TW+�<� y�u��O�4B�:�ܥl����1���|UZی��)\�8�1uR�~��hS9�3z,Q��r3�1���߆]�}`\;۝E���F���z} ���x�=]Z�.�_�iM.B5ŧ֕8a%;ŵӆ���-�*���df�=l������
�_\31�	x�����E�����+�˒�X�"Sz�y����ʳ/.tu�(�5x�&����]��j/�9,��EC�_ضwQb;���U`9�v^��rq�m$ *H�  ���~|��G��`���N���<"�X��G=.DȒ'�m�Srl�rv �tZ�\�����I���
�?F�Vy V�1�10 ֤��*Un��g���o�Z�@&o��O��x��Q�x�t>Ϫ^v��`U��sZ:���c�0Ď����C7| )��"8�5oѧi��[ u�l 0<�^q�QLV��%󝙰൩֕䅦~�zE!෨���taG�h�<�]����x�YC��̘<�dSE�'qH��a,��&v�8?��ޑ�#Z���^�%�H^�o���<����:F3�VA��~��������D��C1��s[!E<&M��tW��amIe!��{��T��n7�S�0�*�����?�!��H��4�L�7��l��/�t��E���
x�ۭ��c;� ��c	��n����B����^�盼������0�1>��ή�I�Z���^Ut�'�Fm�W���.�4 �n�lcJ )}L~�y�Ro�g0enN
A�Kj\Q67�Ɛ~�+tɒx�Fb��N����j0H��r!�e���� �[
�;�۰�Ͱ+ٹ��J�d��� �	�p���E@���gm59f�|�� �����A��ձ��D�e)���O���S7p��Cy�?�ʈ7~��>xa0J���W vxy��TVQ͙TA��Fg�ѕ�&�x���Z<��n�X<EuO��c-A���0��Sb냆�8@KO��;b-׍�AP�V�I't�픕6�	�^?)l+������:S0�h� ����~�آ ��	����<�'V�;��y���`��iU����NMýd�]Lv�������~,Y�ƐT H�	��w��N�=X���' �M;z;۽����o�	��	}��p�>Ͻل\�&c����ɚcAۻ�H��K�հ�`�(����$nm��?���ȟ�R�(���-�7ap��=��\w� |�J��O&�P�O�4J��y�f��lV":��h	���;D�eq�MLw5V#d:/�Հ�}�����r�D�>���YT��K����)�$!��O�?q�g`
i�?Ϝ(q��1
��O����TA{[�N��ٚ���]}�[b�Q�q�W��"�L3���V&�{1��R��U�x������<@��7�Q��$�����k�R/�h3ᡞV������N*_�5�"�-�?���%G�2���[ҟ��h���
��C7pc�q�t:��w�o��|���[�] �@^�%�3$ڢ����C6�E/�;���DQŮ����Q8t2��a}
D)�Y�	�n���Նb�QZ�i��(�^S �p����3ʗ�_��ON�� �7I;7��
Ez[W���i��9�쥍���m�>�c*gFkG�zKs}ڥ��)� ���~�S`��f��O��ϩ_7'�)�P0��6�"��B^���X�Bkqw��z8�$��iaȳ�q��@����/МY���I�D��1�Qg_9vG�O �n�{b|�w��e��	�Myr�T�/$Νm��FI1��X�)�O�:��8��C�eEoE�S����#�q���x9 =�\0���d�^ݲ�{]����ׅ�����0���Pϳ~#
��Q������(03s����F/�=ƄQq�C�]�E��&J�.?Jo�n
����y���	��g�Dڌy^fa��s4��tq��1�����N܊'f��:2p�W�Oı2��������ׯ�$�vG�Caahs�0��r�P��O� �� <�-�yR���6bR��4"�3yU�V�1u���
���.�����Z�Ɉ~�G/I.���Ҍ��x��nB�V������������ ��SI�y*IK��۬ks�J�����.�tTHc���3�z��^�G_���y�3�k�s;����Zmۋv�|&��(Iaw��z1�Я�rIsh������Έ]���R�����Wc��7x�x�]-�_�.�ޮr�n���z�����F��t/�Д��>J0s�T��E`�(S��;�.TM�#�k��Ǹϭ(;2Ý�8+ӥ̉td���O��=�� F7��Xt�I���M�؃l��F��V��U�H�}�;L�����{U��/�Lk�p��N���ʭl/҉�b�����R3d9����烐�Ӵ�_��al�E����Q|�n�1@J��3F��_a�6�c���4�Y�<�~�]�Nҧ�/op� Wk�j���WQ�v)��ށ���)G ���<�ȃ���Q��x���|Dy8C<���� O��
���܌:�vԝŋү$/�`���ڠL�Ko�
�<�oUg�fF�����Y	�,m}*�4s���vƛ�l68���[����e����!M�O������u�v�կ�׮�:M���ea�B�hF)����A��DV'k�#�:�Lj#�b��rXݦ�a��zj��B|b�l��Oh�m��&�3���,iv�� �H��a'��ُ� �=��!�'cĚ-�ji�k�z��:X��醜�������uXs��e/.��9�6���z��]��ΰ�����������	(#0~7��8̟�X�#��&V�@�s�'��K);b�l�}�^1Q��d�Q2k�$�݇�I��
��GA������
`�9P���?�� �m�7I����e���ax�&Ι,��T�6#S�-JkHr��s4�5�"��I�'~N
wI��n��|���{N
�P�FՋ�4�i�vg^�ٿ�|E�v����0APX���hr�	���(���lF�	a�[x�i�Bö,:�뉠��Hϗ�:8F    e���|dX�6��}	4��@vv]H����'������A�p��8v/	���^!�&��jg�S���-�S��7܁�a�W�ң@��
x]�v�;=}��>6�X�Ʌ���~l!��Ot//ȻA�Ma�!ϵ�J7�v�PTe蠜�sI�U���\��G_�W4@
��E����eSYٯ?
�@��Q�55��mԙ�F���~%�	�8ڧ�[,�>�1S�'s���n:��A�|�2c� ��x -;1q<7�$˙"6�mws��X2�.x�^� ��ͨ3��_�C��,�J��	�`�w��#�kUM*��� � ��j6]I���b���#�2�����0�x����~$i�@���Ey�~��#α>N>�7���c�����b�Cb��P���Q8�*T(����*Qg�����iyy������ �Ium��f�NyL>l�Ѿ.	��ڡ4��m9{C�� +z-hEA�z0Z�R\.�=F�xr�ݸ�a�;�^r-��=H�l��aU�w�� �7�]�����7S]�(o�Od?� 䈀Im��{Xl�L�����1�پ�Y*ˡ�)M�
	s?�'E�h�)�#���8��b�o��f�'�m��nc�� lm6�n����,����PM-�q�^��Ư��l������t���`��L$�d���pdog&�^��#Y�RI���6nZf ��Y�u�w����_i~" B��E#��������}�jƑp�CK�����8[U1���Q3�07�RPY�ἊDvK{��Ik�n�t/��W ����&�}\���'��2(����y���ͯ�5:<f�A�S�'�aKf�ˡ7��g��8�7=�����$���ϟ\��oGvLAx�t�v�	�CϹ�����.�$�$C��z#�<f�<��)ɠа��,��pF�EJUz��6���eu){Nx�Y�:�:ğ"�8p����I�U2���[��^�V�A�Q�w�]�����ۆ;t"oO�t�����1)�u(e�J1�`dn��dHƹL���9[u�x[���Wtf���[�KG�M�KWp�^V,��c+���Q�4��m�ğ�=Oun3��RnAXƜg'�q}�d��%��������G�/�=S:o���|��*��	�~ܶy����Tn�].��߉^���P
G۸�?6��rnj&�2�	��3*N_��j�n
˴Lvu�ge+]�6�j���vr��x��O�`Нz��;~;����t?������-�<���73+�e�>Kz�7�/5O3y,�'r5��(����V,�j����4�@A�:}ǾR;�
n���jh��K�����0M3�3�]���iKEr%Z(v�C��<�Sf��~�f{��a�h��,�~>&�儚m���#��7��� َ:�_柶R��, ���T�F�{W�?8��W�~;b�-tu/��p� ��~�L��r<caOdf�Um?8x��#�*�#�<�{:Sv!��k,dNf;v*/�M��A�"l~��+ҡ��A���{��?�?��TUe��1��+G.�1�G3T��$��z0�?�
U���h(��,���k?p �%�i�����Z ���'H�1�8�牣��4��ǩ���-C變S�%���/.�ĕ7I� ��n�9�G�4��*J�
8���;�۰+ u��+��24��j!'�<qܒrt�e&��=���6�Ő�px��a���?=f674C�:.���c��]��ҏ�CS�2���TP~�_��]�4da���6��~�=��a�x���`i�+��7Rr(^�t��i��L"��]�T�8_��^7���_��t^S�{@�~�]`4|s���,��ͭ.�&e�ϊ�?�9	���4
���=�4{X	,,M���A�tM���mǋ��
�o���y6`\��B�D|����{�~�!Pm7�������vi�~��Ϯ\q��50x��оЪ�"��7� .����(��!|oz�(84Z�͈��"<�b.ӗ�B �AU�����^��G)�m6��3����,�A����Ϸ__!��#)�	ZΟ�9��4߯�L�T)��'�1��(���0�9�"ה���|���d�|��4�*�d?�i��'�Ovt0y��]�ҿ.z��Q�^'��dLoJJG���C������hR����:x���y,����*Z��w��Mz�����0����Np���T��'B�X�j�{-, ��5���|n.����23S�����B�d�r>��ka�ͦL�oyAg'�K�ۣ�tk�S�[�M����Zvq� �L��HsH��	�m��Mӫ\����8��P6���x���kVϦ�����/w�a7�w�KI*� ��c- �����gU~!�ݮ(,Tp�um�u-y2$V�L�+���J<G8T�g���iGZ�Br��ƨom�mu�g�X�\�mͫ���.�'��o=x��u'1� �]�;�C�$���'�WX�m�!M�K#ho�~)�Z-�8t&Z�%s���P����i(
�C�d�z���ͯ"q���r;H��*J�F:�m�������w�����(��1��=�-f!�G�H^��@d��ס���X%�k�E}#����*==�U&�Y.��l��8��O]m�_�w��F��m�c��3�k�vd�Ds�	$�:&�1���h�J��)`*����Ng2��:��FQΔ�b̙l�z�B�%X�ཱི����j��W'���(2r<��&����D�^�B[���;��C��Ҕ�C3�YL'1�?�^���n+����8�g9F[��^�L���h��Z�4�=#��r�Py����u)�[7>��j�<J��9X��I�3h��GA�I���3-����4�?fq�#�Q�#�p����T� V���nw��铚���I
00�&���D�`A�m'�#-uIy��WE����\q��<����ݯ��(D��F=�|�'��N���L��@�qp �+okw���k�9D�������l8�E�=�����Ucgq�8yh �^G�XY�3^���t7�lxf�0Bc,N���?,��q*��5U�����4��"�W��_6��f'���~��K�	�Q��z�,X�U���T*��R|2�5~,O��.ǉ^��Re��q�T��M�Fk� '=&�S� A�NQ���N�7uA��X%�h��Ӓ߻�J����c<N͓0Q5U[Q[��K.W/w�d3�����K����ן���h�t�Wo-�l�6!���J�s�� K;��f���j��4�H-���D4~XbW:�$?:���?�Ma��1:P�A�R�`�o�vu h�v���*���e}�n�8����<F�.}��H8q�
�ȑ�H���i.�����qg�D9�=9J�h��xλGͽ����vJ/� ���*���n����O�>�0ؽ�E>jM.�kq��kC�#Z���Ͳ�#͉O&b)�'�.���N�)x�~R���.`�`)��ן�ǎ�a��*�����<E<��A�I3(|׷�1<���v
�_�<蒊#a`��5���7,�5S�\]a�q�������0��O}���7��>�$qo늃��.�N�	Lډ��R��	�o�]�čzfiQ���`Y~_L� ȅF�;����܊ N�2����á�e�v+>�RQ��XuN�*�v��"�g�0[���R�}߱��7���qb�>���A�+�Q���T��8�!Xkm��^2Qw�r>����g��R`X�-*}����c�B�=�����1��p��dھ�kӏ��[�ڵ{;	���e<B~C/����t�����lRMr�Z�P:�w	2Kk)�,n-�8�����>O4{��Þ�^�ܵy�����-�\q��bv��� n������w�Y�NK5�T暺��ȝ��]g�]�^q�y|i!zUdx��ß��LC����ǰ��� AU�i���d �6i�Zf�nh�b�]�SM�F�����× ���=�>��;Xs;-Ę�<�,tr�>[Vs=�c�rc��w�U����FG6� T  s>�,J�~sV��q���1�ϓ�D+C[MÀ�5`��i�^����yj\6�:�m�N9��P8�ri�P�e�H� 	�±bGǅ牧�"kt;2��+�zA}鶓�m�c7G!�o�?A�ӇI�W!�竑_Es���T����Ѷt�r��؋`88o�ȯM;yj�Z%��[��q�y𓔝 �<�V��ܦ�G.�9�k
����h�.� �iI��[Z	N3f�	>�̹xd\t�������:�[|L��*Ҹ!�#	�n�ya�J��|Q�;b��)5�b�t���]�r����u!V���c���5rH�_�~;q ����q�}'N����п���!Ei M���kF}�X�;B�g$ߌ�����v���~�$'r=o��x���T��kh'��i�F�JSwϔ�A��}M��I�v'A�$���g;�]T���"�I��������6���&U�7'8��)Sc���L�挔G�_/��<�;:ߧ����$���L����v�,�A�m������ٍ��q\�F�4�l��;�) ΁ F���9Y�i~���24"�UL�d��aNV��¹�Y,�:���AC���g�궝Pm�[�-S�O�_～�0�]�I�w��/�pB�^���Ĭ�+��ṋŢ18�HF&ئȧj~u��qF-6r�޻�"���~�j����aGm�ݏ36_�^����'�>�2��~s�Y	��:�bu-m��6���fƳ�p��.�* 
,]}b9[x��bz���>�� ��>	�/y��(�n��n���w&����c��'�V�}'|=xG@�Q��!���S�P{&�IИޝ/+b��7����<{Y[�(�8?܏ꥮdb�{XFt�K������Y�۸�n�'�	��`(�Ź�okb���T )6�����ד�8�e���<�&��I�aLq.:�PԜL�H�׷�����˦R��U|�g��wG #V�7��M�j>3إ�/��9�����HM��tG@��[��o���"�
^�'i��ғ��o��#&g���t������F��$��y�ľF��S�[�])(n�g�ns�� ��_�n���$�n+�ϥ��H��5�ՄB����ǫ"�\�4d��^��d1�C��)b]2�S�An_!�Z	� $�9?�ޏq���`�����L��`��D0'�v��d�Ss�9��]����zVʄ6���p���Tt���H��[����d���4ܟ�[3��>�����kCn�>��6_�M��g��Y��Z�h�Ȓ))��
*�b4>��jfR{{�b^}Bp�8�q���1���f��!(��?>��آk=����p��p �9􎾵��������*kqH      �   �  x�%�ɑ�0����lqH�\�۠^d,��y#����=��+N�\���;��<q��7}��sf�����>�猻8+��\q��o74���2�����7��ԐS�:L�05���S�<L�y��g���<M�y��4%�iJ�Ӕ��)1OSb����o�c.S�\���Ls�:�2u�e��D��D��D��D���~-�Z&��L�k���2ѯe�_�D���~-��&��M�k���6�/~r��m$��&��Mo9̅~���p��1ѯcr��1��6�wQ�N���s���s�7	�d3bz�� �G�Xb~����2@�	$@l��;#����o�̐��7D*��x��)ҡ�EB��H�����qӜ߿m�9v/�[�W8~���A��      �      x������ � �      �   )  x���AN�0E��)���+;m(�"8 �%��=Б�q�8�aɂU���1n�Te�y����_���Ԧ���߬��a��ȃzjuB�Qc��/}@���	�	�mBS[W�*y�Ʈ�]+���Z�Gl3��1'�QH�3l�c�����8`�^���O�qrv
r3��a/���[Oy+5;��>��5E{��f��M�FAaxG.��qV�O��j}��Ez�iJܝb�M�D3�� ��\y݉�^�(E�H�:��q�+9�)�$���� 9E�a�}9x� z��VR���ۢ��_|ڥ�      �      x������ � �      �   Z  x��VK��6\˧�}�*$��!r���_�_������<�����l4��D���1��_�uB�>�c���H�=ąq�|\X�[ic#a�`�B|�Lx�Z[i�_\���%J% ��C�6�Mb���+	��>7�\C0c��4�J�];�*2�鮽�%��.�B��=^�I�TuF��"AL���E}/�<���Ͻ�W~�HX|e/U� 6}�eSYڮ�O��5ɽ��B�>����̓b>�+��ĔH#J:R�^��ԋ���j��>�<e�輞!�]Q�9�4�������[�OB?�����O@�N2��DG�'���|!�%��qjaH�#ν��c*>&�.�����P�N_�E��<v ��y_x����/�����qlt� C�����\���M�oxT�+g5YeQ�����7P"0Fm�x��KSƾt6�eV�6���8.*���'���~-Ǿ̴(�	�=�߸;ZP1	�#u��wnu�\l��v�s��@�K'��.�6�դ����P�9�/WҬ��a�%�bn�A	ĀmLN9����/�fO��D�yyUB�*1��j�}f�Qמ�EdK*�|�d�t�������!0Z{@�K���a���n�b�S�'n��i�k��(�%_�ܵ�R�n��H�Ȭ��^����9���JP߄����%i��S�Q�~C�o0l8�t<�o^�ч�
5@�
1U��Uf�5U�<]���q�,�<���X�Դs��f�Oτ�g*�[j��){X�;�m�tB*f:��t����k����Ըuy�.�ۥ���*]S�a �,�S3d�]�A����skb#%��A��2{W���oZEo#����,u^f���P��+�Bn~���e��9@[Ru;j�r���7��ۭ�[�v	BP��ݢ�(g,���{�U��7�}����
ֵ�̋�W�u�ga��C��K77�[k�e�hr�m�̢��0D�ݒb��At�[|y��o��ۉ�{�?_�VѮ�.��
�����������*B��|l]��zͯ�b��7�>#ܸaٙ�����ݣ�������"�`�q~�`�&F>�5�l��c�Ҕ�����d���!s���)�´v�m�[���_�Q	[�ӟ�t:��	L�      �   2   x�3�t�(I-���2����4BC�4��9}��K�2�b���� Hg      �   �   x���Kn�0�ut��~dYg���Q�s�����<3�Xx�`{�=�_�X6�����-��~��)�y<]M],^�
Kd�t؄Ǎ93[�=&F�fɀc�-���|�|�|��8љK���{��$���u @��	� ,(c�"�7��a4�U����5���&	6&�����^;��;��3y��}
��>a4U~^�x��pJ��t'�Mz�&}�&/����M�U`g���}��������~C�@      �   �   x���1� ���)z�����&&.�.�>#	�B��;u���Tm\�^^�|�W��.(k�J��ᠠE�H�9�;3��Y��ɇ��-�M���տ�4	a�A�*`5�)�����4F�}~��hf�����jv|ɓ�Ɋr�R*8������]�r�	�K�PP
*��>RB���U      �      x��]͒�Fr>���ݰWU���Z�H[��I�ñ�$��i�v��Ҿ��`�>����^�ŜYU@�á���V��W�������,���τ̸�\2!��'� .`��\�o8��?�H�?��m��5����Ha�q�1y����\j��&
�x^o�]������e�î�]��r�.����e���B8�UͲ�~���.gtF9�����O�6�+�����H��	�s�=�Xܕ������_��2!T�T.�S��T�����6�����ӑ��	D.��pN|��W���uY���:���\�ǣ�ӵ߁
@��_��R_HRZ��;�~���4��)y�ͅ���R1��	��w��^W�U����ݶ�-�b�_]���3�ĵ�1w�?����fC!�8�a�ߌ�������>AV9O�?~ʮ�v�]}$�F1Hδ��q�X��+��'G��sg��#'��?�Ԇ~^�b��`p �RI(ݢؔ��r����%��@"��ҍ^�)D�p�O��	J������t,���8WڸS��Gv�E�!��{�#��tn��78y4r�<�5N���"5�2=q6r�&<�������RI(�����qBō:�y�ۈ�Z13�y�4����O.�^0T��J'?Pn�^��QCX.NS�-Ge-����Fw�m��6W�v1���m�+�5��xb�'6��5�����b����������J��I�߼ddiPX��S�\m�U��b����������nL���3d�?y����H�m��1��k��*�JPv����eQn?�gi`��)XƄ�?ַ��3�G�_(@c/��۞:J�[(�����hT+��by[mk����>�5��Շ���L�~�e�8��V��p���:��C}�O9�~+2y� ��8���@��E �߻�`��(|\X�NR&S~E+�� ϫr��𤮋��M!���/�~����{C���/Z�>���x�^��U5y���jWg�+�}?�Q��q�C�I�m��M�#ʜ����p;��o��ʸ�d�ۇ-9���ǖ��N��C~�2��bq��3�'$�����isW�]�\�� �qD&*�EpW�l���wSd�bs�n����G?�	BԢ,GMȂ�=���Đ��ʕRƄS|Q��A�ٿ�?���X$ �x:c�B���ͬ�'Q���>�m��u�m��Ǉl�Uq{W7����h�Ђs��|��4İ=i��V�m���1���͡X��_m?�۪$�?"	��"I�kF���.�<���"�FgE����7�_ݗ��-ҿ�,x��A�:���T89�[�{��?V�r�C]W{���o�&���mx :�ē�HK��Uk<�4��C�����N���9��k R��C�zT4B�ld��0�!���c�� �L�q��qv�6����Ђ�\qe]H\,^��)�Y��xʍ�C�6�k� ���q�=E�[��7�&7�L� k�T<c޻A�J �)��LI4���*C��#��ܢJ��:�'7�3��eS\3�E��\m
J���w��"�?j����R"0�=
F�,4�r�φ�9	b��m�p&�9@-�n's^]�M�8��ѧZ9N,�/��iy�VM��p���z��C�'H-�&с��Zӡ5���s`U�Vuh���!��+������Eu8�E�sE!?3�U���W�RvY�	Ji\Pd�S��)�SI��`\��qn'�)�:����#���r*z�B�\2ߨ��0r*�>g��?~��,��8�	m�ƀM�Z�Y	u�΀�Ss`�
�>������5<�rh�z��C㴸p0]��ɮ��Gq*c�n�{�R��i$n��M��Ў|.��]�-��c�������ج�O#e�����{�Ӑ����b�����ʠ��׻6���7
��b���ԍ?�nSt������+4�ۇ�m�}���My������mv�mv�m��[�7G�������H�[OzI�}�h�y_Z}^�W����R�`h�M��"3	�)0{̢3��B:�P�P����}���G�V�|�D%s�!]P[�X����[t�6�2/������{�q�rp6��]Zް&Y��ʵ3Z���+�BT3�8�\�°Ňn5ñ�3�U�����O����M��֭��H	�$���	��I~ҟ�$�A� �h����u>�#�~�1B#�+�t��ڿ����� F���܉6�K�����g��(G�ôm�Y��F	���џ
�W6w�$!g���;x�>?�N���qR�70�2�s�$J�(����r�&48��������0�� d�+�D�O�r_2� )hE$��8Ro\j2�b ]�ɄFz�M5/�1�Z��P*daʊ��'Rޤ8�,`��9͘��mP�2�v��ҏ�z���_�<���#N�F���
	P:@9m�	�Φ�ն�V���-��^]!����u�����e��2[��������t[b������Զf�(8$�
Cb�2��o��8]���-Zp�&�}t5D�|�� ��OF��^��0V?}�&E^r�cR�ǫ���߯^��on^\����V����M�0�EF�c�S�Ԏ�����~�|���t	���A�A�=��c2�m�1Ʀ�k��~�>�?������M��>]�]P٨�����Z�����������P	��Igb*�����7�S�"��P"���]��z�L)!��^�B�^���W?�˔��B�\n��z�X���FI T
a}wC�б\q��>��o�~��$zB������Oϯn2��1����� Ф���
Ar���w�/S��ө��9�P�v .�>����>3�H�ރP�梅�zs��;��4�O�&�m����x����������(���\
klt�:(�~�3M!D
�ɻUR4���Cܼ�RC���P<�B� n�.G>E� ��T(#����Y�Ӳ�51� J%P�{�y.��B�}}5�t�S<b�n�1��c����~���F3	��uY��ɧ�f	��2���ʊ�+AR�~���\�"�q��&��D�Rr�����X��?P��RKga����R������'�B

���g��aeKJ����O٭Ja)�FudkN����:�uK
�DЋ_�k\ԷhD�lɈ=�i��R����_��RLR�d3u𕻶��b#`t1+�fI�J��J��*�&6<�<��[L��6M�	�=�|����(!(W�yLO���gWH�
W@ך�c$�<����L(zԊ˨�G|����@Q��J�i�O������!��D�41�gAeQ�h1%L�gA"eI��k���s�z \���8�*�H��*�N��������12��\a���at|p˵��<�3���b�t�'��D�:�CE���pJPNg7�J"�J���j�_?��!�*ҟ(0z��:��ʠ�� �M,,%>�Y�T�U�s�?����DA�rc:bf)�#�eG��/؎�C<�θs)��u����EQG�5���+	jhTT���	Π�CX�L��	1�����Z.��MY��ۊ�|4Z+O��|�NQ-����S�ʳ���(�DVҙЃ���6��@�<h�����T7DŠ����`�1��V� �*ɭ�=�<;v��䧥�gS4�X��i�Ͼ+�i��`cQ�N�Դ@zH0�ԠF9�Xl��8@їN�$�H�?e@�0�E�����;=��N5iЫ�5Ĥ8��u���q�H<2<@Ċ�"��Ŋl]|��}�*?��ady��inc�z2622eB�4�;3��4���J�8������~&���`���@�V6:�ӭ񃊠w�SV�i�W���'��]�WO� ���1m#�M��� %)!�� {����l��m=z��Ov�ʧ~���(�欤�����[sN6-m,C��#У�FrR�7�m�Rx���OƆ|���w�u���	��ң	Ԩ�Ml�w���Q�ݾb��0����/|��M`h�h�������k�F@5�3 �  ��X=N���T���)��
��io�B�W@�r��8�c��j)���T,<�tζxZ�{�[�Mǩ�ҙnU>�^�.���h9o��S��{�cs1�Hƻȉ"��R�A�vDR	t+
����M�j��ޔ��ժB��c���a׳I�Ř�ms<j��M��= 	=*(����&���ASU�8Ֆ���I9=y������1%r����7:pTI�r����|c1�M�(64�\H|�J��u8��i�l0 �nP��U�,:-�����Q�i⮙m�ކ	a@��YH�bߥ���	ǽ�mz�1S�bLtn�Цg��tx���yx��\�:�s�]�~��I�C�|�΀�ؙ�N>7�C0�<F�����#`&wL�0|H�;}0=�g�͍F7��88�:ݖdc��� ��nU{ˆ�ݮ�\�H7Ǩ��}2��C��f�+��$�R(�c������`���:��ۥ�>+��mr��&�vr����JZW��8e������*��草!�R9W�~�
Rp�msF��޵�	����(_�hVj&M.��1M�aUaҙO��춄�S�Hv&����j�-��ٮ#��ON�Z21����]�qj�<�FN���l��6�r���̄����L�ΑZLP+��/�HԎY3%�Gj9N�h�g����*��'�/z?C?#8Q�s�MJ�ɳ�Ƙ���;L�)��w��c�m�R��hF_����)��b���z���477y�Џc���E,���u:�)�P@���v�+�h���z��r���M�V?�K�x��r�o1>k��S3��H�MvL.rs�ڡ{�r2�������5�':�e����k8hqizXᗟ���J���9�'׿�g�C�ԻV�J�j�!~ѫ>k�4v��<�p�m��X�W_��fL_X>��p:>o��-!�K��%��ؕ���$���BBfU�,�yw�0��x�L��c�C�c�z�����d�_�0�߳z_��7�.������3u\DM,��cMڍ���}�QT�q���	8��M����C��]���Nf�w��hv�qB��T�?�
��鞲�XY�Ђ�.�����.�MP��9�X���.�]n�����Ŭ{2q�;w.��@��O�O�d�w&�\*��A�'3w�3s�]�=%��FS5y#��m���K����U`�������SE�'�6�&�4G�V��	y%MlN�.��bS�u®���),���b��֏Z��C�k�I�6�0f(un)sg�^�����Ѕ���g�U���<��=�}���ơ<�� ��}.U�
)G`�IA^��`۱��s..U�*�2b��j�ɲ�������ԩ���� �[񡛑P������e3p��-�=]��N4�XL�-�>U[�wjK�TH3�	�%B�:�²9jD�4N�@DH�:>�Qů����X�ʔ��1�0��g�xK5�����?s���P�%Bj�>��z|JK�{픓!�G��U�dl�ö2������ulJ�I��'Cf`�FFЗ�ѥ��Dr�[(���^����$�$�b�0�-�1�����u��C�B̟�IY �MW�!z�0���XY�c���{�X5������߶�zp�B:z �c��vS���<A�W�$�1�&xFG{y�G�������r�!�4�iTc�*�y�)�A
�G� @��� ^
�rH�Ej��MUs��Sё��v�X�/�\�[�g����&���tA=;O���В〆���&vޑr덿S�����܍���$��(�����,�`��C��qd4�E��.%�Ic��a�S�Rb�_�Eb]�?V{5�U���;>V�!��/1X?�3� m�C%s&�VC�)HA«��4I�.M��	���!s!�2���èFie�ӽ�	�@��#3r���7��#Yn�]���³������3��a �֊1��4���u���)�����S'��<�M���1�N��#�@�ӟ�_[@���6�DuLA�\�yW��ݗ�]y@����a�UڷW�U�\�y�9�ʹ,\�'K �x��K*;�d��/�����\s˝���?�AҘ�oIb�Мa�٧"�Ko@m8�2!E���m�;|*�U���l��6"hK�-��Fޣ7�=�Yl�}���� z"z��;j��� �?NYb+��cp����bώ�����5��bW�>�u�)ш��i��\QW&�jsE1~h�狏�}��k@�q �b����n����c�F#QB#&hl|��@g�H��>�ۤ@�8���AƤ墥�t��	NhiUJT�34d��F���!��5�q
��͇j�?�#����.����4]X
�|(��0Q]�?����su�9�T��?�ww�������o��R�����J��7�*���%ڗ�&̵t#.��A3`��X�ß~ƁϜ���m�i'�w�{��u�ϝ��ݡn\_�S|��l$UGOwz�ACt����P�Z�hI�Cx��k1���W�ÕPg)Ø�3#�9˨t �g%:H����@lW���\kiL��Ov��Y����O�z����ف� �<9<����U�V��F#�wW�X��nr�e����D���k��R$mͼE�o��fy���e���Hw�ﭭ�witZ�f�^_�ٞC@�rdǨ��P=���<
)���������v]����p_�)�����?^���Gҝ��Ed���͂a���0�wQ�6hޑ�5��o>�<�����t5\��\Cw8&Nz\�0C�٣��SDz}#玱��q/{r����B��K���*+b��{Z�f]oO��#g�������������ĤU�7$K�o�LӶɺx��O��jS5��?���'h�bE%l��,jɰ<fhER�
~/�jxз�q�rʝ�ӕIo%N6R���D�@��:�f��y�t�'�m�hQ�}����j����{jңn>�ߘ��Ƨ�����Tوz�?������R�t���Zp�S���É؏��	.��9�\P�j=Nl�`�\%���K9R�qj+���2�}lq���3&�7��X��a2�bm孃D��x��`��/X^g/��z���|����M�����#J�gѢ�* ����a�cvq9ׁ���E���rŔ4o��߯����"�����XE�[R
��6{{|�0CJl}x!t�:m���V ����U3��ك�n�9�i,�+�1��N{�͋�`eoYM�H����fw��`U����;Tq���nΪz���9s*��4�s0�~�C��U_i���I>����=1ڱ.ŷ�[�BG�1_i�Xͱ�j�SƬ��ɱ��Ct��rRG{|�7���HWq>n�M�����`�P�`㯾8�V!G����16=UyТ��R���@���L��ι�Yd�Q1��J�,k�Z �u�$�@���͹�TЅ�m�4Ӧ���笛* ʐ�,/~���<�d����
y\�r�I�* Z���"O�q��D�(���y���Ȭ�R5��-Բ.4��	�g-��
�e$'��Si_�Ru\x�2��7R Y�=p]韞��.�� ߍ͙4Z|})H5	��~��uꫲE�: <wem|,��C�x�a$�E{M�xdF�a���T��h���q��D�`|�0��RiR�4�
��g�V�2��c��ݿ�Z��O�3�e��8��sp}e�:)��dY�+=���N�td,}�5A����7�|�|�      �   a  x�mRђ�0|n>�F(��/�Rۨ���iZg�� 
�/�&�n6	�q��h:�`���q%_̀�'�v�\��9(�	Z�9f}���:���^��h
�² �Z��g�M�A�7����/����KΫ�R����UF�3�;�Z\"^+���̐ƾ�AmM9)x�FOJ5ʏ�b�ΒY�n7,�0�3�d`�!�)� vg��Z�ԙ�봧d����V�%9��zRʯ��Ҙ��c����S���m�.�0SZ�֜��~�)v���T.��=����_�ߺ�%f������t����(��T���TW�-%�h���L�4�G:�/��5�Z�S�~����L?_ ��9�      �   Q  x���ko۸�?����*pfx�o9��:nWX'��R�_�!eY��m�"M��9��;#����~=�_��|./�����:�6俙���W#;v:N��ǘ/�2ܮ�~�H
!�
y^����/�$bu�}���x��}���χ�ӯC�ǟ���u!.)�������/z�M�>��A��͛����ù�8����e<������w<�����B9��E�%�v����0K�F+%���藼������p���4#�q.W����ݎۗ�bL>C����uϳu��{��6$	E��!a�ʯ�8���������ӹ;\.�����<�+����}�{\�g��ëm9��+���.3�lO��iorp�m!��Pچ$��\��S�Ĵ	I���/��e|��~k���|�qC�Z�Ճc����}Ɨ�!��'���0���>ׂ�$X,�9�9�e�����8�d��_�v��,wѓ�4�.�0<d	��n��e�1W_������Rڙ���yC)f'��{ښ�����u�'����Wr;�vV:�f���6���W��*��0|B�]�]E���NxApz'�v�:'хb��	SE���|� D�n�h��s<s�d����3�L6C�	<�%���Z�"�aǦ#�<;T�I�"�4�0fgђ�B*�$Y�o,*G��Pjc�]>|#4C����	��gcJ�d?G g\v*���p^O���ڬL6Q9�}y=���_Rs���.OUG����v2��	±8��v���1�����٪��߹�	������g!�TۍȊ�a8�9�"6��iRm��YR��;"�#�wL]@�r�<��ݧ	�S���J��+B@N0�A���uH�����0�����N�1g+!�<�"8�66u�"<<��H�"D�
�!j� Ҭb��R�l�y��H���@&G4R
R�E�w�E�����6��M���9�3���ϒc�n����a�>�O�����u�A���κ.q4E��X!��;�����[de�1���i��/~��ƹ�P1q��|�r>�3�V�r+���5�! q�JG�`���?b�@y���� ?SoA`��B��Q��&9	� kk,1��ey
�Z(�!����8���I�M|RJo�\e�Y;�ɧ�q��1��.���QI���E�)q*����~q�D���������\Ǔ
�P*J !����	��8#����RD)F�fL|��
�;W�Əs]@َ�@�F�6�K��)P���(�<��D,�Y�f����@'�&�L����jE�����)[Zu=鳻rɊ-�M7^n����?�2�&�K2��6q�qր��^�yuk4����(�8��m��*�.�3�I��E ͡�sd�֏�B0Cp�q	ћG�r�H��V
P{��\AP9�>���/���O�Z���\bI���~2Hz��rd�^��Mr��.Y�2�0��&����R���Ǐ��Y��lր����ٹ��g�PTI�5�W\1��#j��J�ޗ�F�'��t_SdB�������m���%���g����C�DE�>HXn�	ߔ�1���4E���$)�����7�����ca#��u��E�h�'m -�Tw!6����������g�T�=�J^��4oel��5��A�C��S�D�y�J� ��A@5#�I�6lK���#�Nqϸឩʋj�S��x<-Y�	];o�8X\���*�')-킂���^0�I;9��A;#�;#�/�ݓN0��O�͈Jc Bu���J��蟴w���Y���X_f1<i%fB�$k�K��I+�^F�L3�0��2�I+Q7� ��4���e3$d�"7�cT�ݪ��j�D^S[����F�z��ۈ
yꯧ�p�Q4o�mR�y��I;��Y}.蕑˃G�,;��'SC@�,nê%��-��QN�W2��`��Z�v��,�����`{u����8��{B��=�
A�F�]ֈ��9�R�l[�4�	a
F��Ty%�5�� �C� �[�:U^ɾ!�$2��ٯmU��*orX$6�����_��lŎ�`����kV����$��(�2�֠x`j)pO�;��t�v,�|S�ez�*NҜ�3%��(�yӎ盬��I�<(.��T"�ZJә\ӂ/hZ��ѣ&.�^�vl��D��r�����}7�ͭ;.5�n�C;N���
RǪ�9T��(:p��O/;Lx2�W��L@n��[�l���g'�%���)ry�`�f
Ն�:�O�IB���:ئ�G2/�O���|RXVgQnE�1:*1���MTvQ�l���L�7kp�7R^�X���B��Κ�|10�T�-o\�(h�7�pAi�ۓ}������m��M�s��dQ�\ƛ�)��=d�dS���*�U���*���"%�66@U^�T�b�������x�>׋�;tiz?�k�/�_O0�����as��ކ�y���x��. +�4=�Y-fȂ?�k�l`��q1��	�� ���ѿBn@��n�k�:0�8R��o�6'vz��iA�<����E���i�r�)�
�����i�R�t'h�9�l~5�R�Qc��'D%`9�����kv��:�.k�U�m lg��F��B���M%qw[�
W��ϫ.a�C�æ�"�g�$�.�jL,�9�6?
\~KF�,Z-��}���J���(�_F>h��7,�S4��bi�H*?j���
a��*}�f�kB�&$d�ɴ��S�fh�x���立�����i��Q�[8���˄,��ry ���:M������b�����O������1�� �����(��zR]D"~dfF�܀����)�x�o��˗�I�Qz      �      x��}Ys�ֲ�ί����Z#U�+"� <�I�@���<���^��8g+�2�ɮbmg;h������H,�[Ǫ������=��S��r���8:H�5��v�cv�~~���~�G��{f-;M�nÌ�ҏ�|�����P|�O�����v����^��N\��c�l#v������S���s���]:�gf�'�:��{�~�E?�������U�C��O�!4H���c��+�v&Q:�����CiD|������;�?'�7wO�c��-�ԙ?�7�v�g�y��}���� ,�)�B�Do�zK��U����w��G�����a�t��Hա/3�*�Ev���#�%L�Bvv��]�[��u^?�y�ϳ�X*N��f<$:�@^Ƽ?����� OswO@�\�OD��D�n�O�;�֯�.N��q�=�b����8�G��46�ikxg���m��p?�YvD�T!;�_�����tK�-�W�(�B���IubO�h��w�J�x
��oھd4���;�~��*�LZ!���rf�^)<���Ji��4����C���l����6kd|������C�eƠ���?}?�f�2�|BF���m#}}"zfmw ����Y�8�����q0�g�|��S��o��$d7�dr��<��ɶ�M�_�i���|G��}�G�_�J���[�n�#U([�rV�]��
��2���ԃ�������}U�_ԑ�[���T�����b+�X>cC��M���n�1u��F�i�\��ߏ�	\ �w�{=���̴c���1A�&l'�������x���i�v'n^D�m���o��`"�rE�-�+��{�B�T��BQ�iV��n�l��I��ˬ���_�$���rU�T!��)eɶmۨk}�GQ^g�*b6IW�|]'	�����@&�����؏�;�a�J<u�:���]�%b�U'�N&d�0x�*a�.��'a�2��\�Ǣ�Q:�Nv�`�
y�Q$�"���%���cb�<��h��r�xq�D����N�n����k�j3@��i�6������<:#�oj����� ��<���*���3}��>w����~د��8� ��@8���Q�=�-��yt253?�Mxh���S�׌_���Pg���᳐���������򾟴�xV�<�h���V�\1�`W�\�*^��#F�x@��MrH���j���1O�ꪓ�������[����'Bv���#v[կ�ɋQ1�^6U��Nx�l|���Y� TWy^�_V1[�hۄv�N�~���� q��n�����?Ăb���A[?���3�C]�4;�5�<E��ٿ�?Z����V�R)W������UΫYv�IDY.�����K���|�N�?"���=����N�<����� j*�Φ�JK�.�tr�ٻ�E'	���[L�]�$D��";9���J8����,OC>f]U�mW�����1�+�h�?*e-g�l�"�c_�#^���p(�h
���]��V(p��Wv���"EZ�:��v��L��$`X�p�Σ2RpQS���LAW�����9����,���lq�6>/z�s��FbU��1�{d����G���iޯ7L����bm�����z�L�q�����?��n��k]U��H����-s6��/hԳ�-��2���'|��*�n@G���<&X�%�Q�;p��͸?~��g����g�_��?,׿Qv�O�C�%�^�ҜSU틦�	��W�.����g<E^��[~I�O|��-�+$qrI)�Y����[�,��nb�zep��*׷����Ūl]�U��9p�y�Z����Q#,iS�*W��%W���R��©�؁&φ�(��ڪ��s��XE�/#W.�z���\�[�W<��dYɚ0����JךsRy�Z�Y�#窮o����t��-�+.I�9I�&���Y�~��e��$)K^&�U[��VHJ�E��1�D.�Wf�<�q OR��,�e[��&�tU�7��E��-!+�X/�aPՈ̵�nE�p=���Շr�\����U]Q���:\�೤1��� ����q*�U�Rq%���T"���-Uo9_!���oӨ�K��{��MV�K.BI��؞n�k7�v���{�f���c�hǀ��i��x͠�n �{f�P���u��iU}w�T��m����
�*�.� %Uӊ*�(d�{/ ���Y�[�a$<U������43�lF��M�Yc�N����=RЭ�\�������7uWh��k]UE�O��
��t�,�y��^��E��f��yy�$YQ��լ�I�
���tŸ����Fu�Z/�X��~�B�T�P6E5*���k�J� �t�@�D�ѥ�	�M�
`�1	h����6��|*�,j��Bc�Y�����1�F��	���m�?�1�<�6�ㄿX'��^���(y�S�\����B��W.���Z�c��I.,E�Y��K'�z�ߒ*VD5<�*$�d��KJ?����Qh3WyYŴKX�8}� ���B��7��) ���/!�-���w3��G�teGc�������
��WV��g�J�S����E@<,k����f)�m�;
r�.$W��`�� Z�L��⭚ �������,�B*�N�̓�t�R�kH�M �uI���J2��R�6*Y�����޷�y
�I����
�ƌ��ND#�D��D`� �f����}H���[ �`��?E��J��Z�"���*c�Z�b��A�Y�'jG�6rR�&�'O����We�k�JVX�j��F�󲥒�c���1��zͲ:f�{e�o�Vy)9%"Ί$I���<�c�Q�Z��2�校���i���z��;�*l�,��D�U]0�?���	�l��hPBl7��ۃWO΍���m��kH�%����I��R�����F����!4�L���u�
l����� �񁂝��dL�P���Y�`��9���0s�t�k%�-SV
��'���d<c�2*%�ˮDJ$�c��.Wë������J%�DTRȂ�����8[*�Mی�����R�=���U�oʕ����him����������c�a�u�=iV�w�U�*K#]�2U.<�B�de�� �K�ɆF
q�^�Z���{�^�����8��&�C3���'���k�y���)�}���w��/�]4D��x_軟��I�r����/����+YQ�������̡� ���=��랻�ӵ5�u�ԁ�����<b=��~�o��3h�{�l,?��\�ѽ�'�>��4>Q�x'x ,��Y�5�%�Y`��#>#ʷbЇ����/�ު�Tqy��B�M���lg�j)Sg;��Q�S e����l(^"�D���) �E�S��]��#�vԈ�SꏔsY�V��r}S�����@&�T�.�	R<s>xm�e�s�b����j�h��ܻٟ�!B&�3������Z���AP�Y;�Q����]?�W;(�C�8�ga�O���j�A���@Og���G�$������l����<Ų�տT�V��	��~���"�R��1��ɉ�n�GA�E����.܃�0F@��w$�@�D�7����ھX���>��T��e��k�'0��1?%y ���N\��Q[��̣6��	�4ŷ,+^13����:ª5�A���qߗ�(I�W�mf�z����[�0~�����`фH�QB����~�'L���;@"trz�F�u0�G�?>�m�.:�����'�/lŋr}�^���կ` ��P?^�Y �4%��$ǋ�z���$V����i���*�w�+Y�1��	S/�@9�Y�� �dT�YN�#��ޙ�kH����ۜ�(a���T˩]�e�2�-kYBjE���-�P���w�SD0T��؀v*p�!M~,���xj���(!͕��NO�*�D� �"��.��|)Qˌ���<�����q��)))�1�`�]�Vfo	��Bvq"����:�<�v�v䏿%=u�[�m��m�Թ[uvw[d~��δ���z�<��$�G�팧]��g}ﻏ�Yd�    9��d��,�ȫ�������{<��ˋ�������ʟ�-��:'�R��D��q�.S�@�f�3�p
�U����r�(�����n�s�,^0����K���LH��:��<S�n�C��5s�Ћo̳	6Ř�#��c���D͵��>p^�~���v >��������MH��B<�|�z���mb���}0כ8&�Ee����v��uX�aS�������'.��'8O����n��	" S&d^Q.Q�؞i <��id3	�,��2�M���a��7��6 8�1��Xc��Dn�ŏ��l�������a�??���y�z��������IK��2Y��KgbR͵��F�c:S\I��}X��Z��h�ٯ����mf sg� S*bFvH��p3���A�3�R��_f�3��8���<[g�3���,AC��F���|�|O�L�/�|H����2�� wr�g:`�K; ��b���t�'�W&E�(���(o�fHT6K�X�
8�l�&:\�p��r?ip�n��k��K�*&.d@�z��_�jz��L����6/�N�En"�+C;s������u����ȿ�ϙ�n�Cjo~���\��/C+J�,᝜�i�jY����	Qx��u9��nn�r�[~Ht�f�z���?��i� ��	\׆
X�?�.�~9��9X�S�Τ��(�d�E.�����:R}�F3vS�,��^��ܕ���%K&�T�H�֙�����H�9�Iq �!n��P��F�鱶;1c�-&���~�:;�u�~�j�g��y���]7{�׿]��2u��Sbb�"V0�d˭��C�:�%�P6S�C�$�<����B7c��:L�23��YZ2tå��xe��NcK��;]�y?:�U(̄���V'4�3@��FA�Bq߆8'��zô�˒��f�"0 qeqY�=�ɨ$Q����n؏�x���.Pt�	�x����M�J�?��~��!|K_Ș��<�ź�Wj�-�mc�e��f�x	�F�EN)�li�-��WU��}�_�4��?`[�e ��ܝ@�f�_'(-��I�δ�{��Hb���H·DZ��˗E��C*C;�
�g����0�I>���ξag%1�ɂna��q����/�l�e�W�*�A"�|�"a�f�&�qځ{4��3�.B�`�@W���g�ڼ��;=y���6��������YuIQ\`,⪺�(Tlcu��Z����Ad��T
EP��=���	;�� e�m����
2i���|@��ĵoc�����̿�+��"�U�(X�fCR4m�'�jY��@�@iiJ�2Jn�?��� :�Y�Md��8 J��"Z�>;M`o�Y"���/�}?:�WQ.�@X1▃m%U�Z�O#T�ZM*�e`�$�v��j�!�F��`SOp.E�;�(�Y�?0�x����؇L�٦�24�S�Y�A�wܓ��9���Fh;�;�ڍ����,�[t�W�U�=�JW����D��L	8-!W�Kc?��?*�������,�L�SȊ�
��v�����ł���)�@W1�N*z�^��Ώ�.��e|���`X�yp+�YP2)��§(��P*lB�ƪ����D���Ht*�3��!�w`��ͬW � 6@P؇L��ؿTE���^_�g��.� �L�Ғ�mT����n\�,�$���ΊI�%��)��W�63�'��DTV�Ϣ�
��:�r?&3�!��\�|u����0�_��]%`X�-QV �%=����s�(i�zj5�x,
i��J�����kg�����;�����]��EΆ��vḡ/U|s�XZ������b��v{8�>׫�?�Y���%��;q��{eb����pޗR�8�2�S}��7�ip=ߊY�eS2ڂ\?����2|�>b]���w`w���pf=�=a�U�*��K
�j�p��q�`��������}"�0�k�;�+����)_�,���]"l W)�PD�ϛə;׊���ɯ\��zb. ���_�� �mS-3F��b	�e5�G�7L�=� �g�\	��T��B�Y�6|6�!��}�'1\0���ث�4��P��f�@^bY��K� ,q���5x�mE�;5��&aWa��dF&B�p����1��n�m�=5�0�� ���#����\i2���䮿p���X��t,K"��)�+���+��ɼ4���{]�)k��@�7�Q�ρZ���=��&� ]�:`eQ髇{��b�	�wJ둿jw���!4�\�f����'�m����]x�4��DjLo��"SB�x �*��L��K
k�i�;y&6�EVKUG����V�
��N�s�p�&�I8�����	/1��f4�1@�v�o��g�z�����ܩ�����������T,J@U��K��?���>�˨iƹN��k%�j�Pz��{�>RS�=�'�S�Sc71m�� w���\��Ϯ�_񧿫�KZ��
�p�<���m���u��h��*�:�n�kγ8U[J���gm2�`b���D8���^��|c�~߸ֿ˕�ebgʥT����zvS��%�0JU�)��}����.�JD\7��y ��m"�*�xu��u �r}�YĽO������H���� w> �����?�T	p }�E)�VJ/�+��[����i��q����UaC$�A*���[���� B���
�İe�;ݲ�y�Vv �ཛྷW��q��
f=3 c8x��p��� 5�˦b�  -���`��0�_���������(d�kI+�D��R�9����v�]7�$tf��6��XFrŦo`S��R6�bD8[pT�MQ�)�_ˮ��$�]��n3U���L��4y?���:8u���dد.�lhp^����������1�7��o�[�85_�>d�U�ɋLRȎ?�NSH�T��jt��:Q1��O����h�1�ym�S'݁/���-6@�`�ɴ��������!ܻ�႟˞�s�rb"?���+d���?�ܛ?�ϊ)��(�r����X�Ѷ�2���AY�J2򺐮�Vo�Y�K�
��9�DUe��u��ֳ�4�H�vGG�S�~���f�4ވ�y�������gi���_0���)���DDI8�����&���;j�E�P����~w���=�_��:��� ��X�����|)7?~}��Y�|���w)L��My_�N�38�U��A�<O���l�������p� 'b��@?��I�Se����;=��9�Wtu��^�ή޻g�>Q��}\���0��]ʺř�g�?�F��RV����$�y�"#yJ���~L?��nx����ԛ/���ȑc�RUU���%���vg4C��YMI�ҐKU>R_:���	$1�E]Ѩ������x
5�K��"]���A���m�ګ����C�
���x=��]�Ev�*�{��������O��I�"��z�Y��7a�9��}���]��.e���#v������j��sg̺����iJ���� o��%^-:��$cL��v�R9U�>ƴP{�%����9�D��ʩެ��? �ZJXV�ctY�QEJ>�5UeS>�j����5a��n讱�w�VE+��R(Ɨ<�=�����ّ�dc�Q�Ƽ�B�z�T]m�;l��a��H��e��<O�j�ʑ,G��v*⑌d�CWM�k{�[�U|��K]+b]��0ٱ҆��K�~p��9aE�
��cp�[�Y۾�a*&�bJ��.a��ֵ�|yTk�_��V�
�Q�:	�:Qg�I,����d�UF����u��$�'���n>6��I]�ʍy��La�7jK}��d�G�4��W�-�ை�~H͵�b��W�i�𿣆4�就��0�� |��s �X����6�~o�}Ǽ�hcQ�6��P��a��Wv15N�u�%��6
'|���K�L��H�.5U�߄C���e�o���1Vf$�����е�=�U.�)�W\"��N{�P��k����I�[�V�N    �G�h�W��f?��z5$�}%���X�z�i�&�P�E+7� [*�Z��Ta�uc�"�1��!Ѳ{dd"�03���F�;sɉh ۗF@}s���y�K��#��]܂�mE|�'d3j�q�g�܆��l��_�Mܿ,ե�2�#�2ʮ���6�{��9�	��;����;��~~��KAgs�MD;����r>�LẏO1��؉7�n�R~��_�	�)���lF��/��sjp��	��as�&��!2��j�����%���U�.[�*dr�8O�:m��c^�YY[�������f���kQ�&l�ic���}H����~m3i;=�u�U^�y�W`7��럔���T�p�h��
�@�)J�V�&+�TF����#��!`6�1��v����L-�,����HhB�g�׏�vԨ�G�FH������N}7V�J���asܺۯBrK��f"��1
��b�b9/��U�c{^.�Ȋ��М͹�7pw@�M�֍A�DI�Z�6&H_���_Ti�L�V~J��v'0�	�g~Tz��)"���`>����D�;j���R�ϩx��@+BU����1���5��P��Y��-���M��G��AoO�X�2Q�	b���:�ܚty�b�.S/���I��Io���8��wϴ�q6wPC���H�S*(��L�Q67��7_�ᒜb�SZ�`�[Ɩ
W�e�p��&K�R�p6Km�,C����ixm}z��DY&��e���R��_�\�sU1��7{,��)6Uqh��9���!]R�"e���m&��"�� ��4�4\�B�%�|g����:�yI)3*(��H�.�JEe�>R�:��,Ib@�%�@ڕ��+44�E�L�|i�U���$��R���+�5�J޻��.��}ކ��S�z�58��{��\�@gE[�h[8a#��l��q�ߧ�/����s�Z�ti���dD����P��}<F^j�\9.q�\����4�;�5WE;�¹z)w��i��b��r8���7�g�g���>j.ʟ��D�R��d�T`9��q� Ԓ��ҹ�A��B5����G:�D������-����˸�;���r=~W�xiy���'��l	y���$nQ�����p�j�֗f�W]}��bd�<@T����Ԟ���(-���.��(�ɵ��=��Td�	_1J_2�M��J���&;e�Rs���K�o�I~3{,-�"�(
�L?����2t���'X
ۦA�[�u�0�^tv~X��#v&@/OD_��0���G���HdH^�|�{���r}��+����Ŋ�(N��^��v�6�+�6k;�%v,��)Gu>� ��LD�5Aɱy��}�{OE��������ڧ߿2�[@���V�����GUN�1j�/Xv���D%�أeEUx��dJAO9~�d�%Kj�;���������.����U�� �_��]U�E��;�;�}�:wM}��;d��T���`�$�jK=�b�3W��6)��\w��T,�����LD'��;Q1 �\�G3!�D�%l�����K~�;� �!��7�r8�"\-��N����Mz�������VR9���k�L4$�*�a��u�"p/G|�&&gp-{Hŵ��45����yU(�����ez���W%�p�ѵ�"�Bg�S���=Z�mIx���7:��2�P�Y&=�BQ��i9n�j%"&�<"Q��zg.`TQ��SO@~b�޸L�1S1�GLP2�6���w	��{�a����Xq���Kg]&J1�Gd̛�%�d7r� :���X�^F~�O�&��5Aq`h��/f ��C��.�(��*�s�����㔲5�7��8ofsɂ�D�
����n��Ȃ�$�vYuFL�s���Lz�}e �G��I�İ��Q[��e���tx9"��3����
��<�8}놽��{��"JY��dYc;�"t츜փ�dnV�S�VQ�	0D33DL��b��!�d��q��P�n1	���⎶������i=���hfb��f�x� z$"�p9�\?���\f�-�~�UL�.;�ةr`UK1��N(��L�!W�IRl��!t�"n��݆�8ɠ���]0@+87����ꯋ=.T��|���y��Ss�̢}�D��{ɛJ/;A2~6�58���gO�qN�so��8���R/��m�0�g��,�356�G��?�@�!�� �$dqU�����)y��7x{��}^�=���9����}�0˳��K0��l~"���ݪ�M�҆k������ޡn�,g�><�)�2����Os�6?���Ϗx��}�������O.�Z�';ߢ�bg�z�����'p����E73��� �U$O���%؂KAR�a�'4�Ѹ�s~,�����?�Y?ꖸ/3K'�|p���S%y�x>m��[�����:��R��-��
0�0��<S4�-+�y|eO�΅��w<�"C��ݓ��}�`묳Y����\���O���ː�E�{p'hs|����ㆁ�� ��u>,zw��#\���.�����e�e���W���&�O��-p�_ߏ�)������$�Y%<��ܪ9��˽����|]_���S������&=N,x�l||z؞�;��N�b��|�}�0y�m�s~��³,?�y���I4`��24�ԙ�vG��?@�q9��Yg����ײַ��I�~���Zk`���$c����J��Q����	om���O5E[���=��_����W?��g�ӏ�o��*���NE�*g�D���>�y|�F<�Q.�Ԏ]����E#dV�?g.���]�~��z;�QyK_�����)��̤���d���T����i�p�،���:���L�T�bo���%أ���i�cq�-���6��Ow��7���^��OTO��
�ލ��־�����]	�_���݈/vC�ظ_�-v�ݩ���?.������vR��៼�z�:ox������?͇��~z������ٖ�~R?���э������h�ޮ�N��쮷�q{�L�v���02׀��vζ?9�������	�w�~o��i�s7���qcN��2�׮��q@�ݵE���R)���.�߻�^��9=セ�o��l����bb�ƷH��$a��W��N��.G5�Q7�~+��S2��UKo�@�D�U�an�IQ�y��9���̱�	��ۀ��M�of-�s�+#+�����g]`�R962�I;Ge�o�|[�����b`
8]I2�l�,i،�Ds?���A�1E��M�tib]��[�-�zٓ�J.���>h������4��V�
R5�X��\Slo�ؐ��ؕ�V@�٥*,�J5�*��f����:W�BoL\��G�0��Rl�J�*"K����4��!���u� �Y�u�T[r�\��`�n�"|��<���'����v�$LI�IR�ٟ�A��|-`|G#]�Js.�E�s񴵕������y9���Ys=��:����0|�i�G��h[��<(箝+$�U��x���Lߗa�+���E�y�+��>�l���j��$��oI~c����	h�!2�a�-���Pۙ��l
�;L� ,�)�s������і_,߸��X��i�.���͵�?�&<��@����KDQ�Z�/�`�W�׾�*I)��`�i
Ee��L��c1���x��- )3�̀�<��[�0��!�_[?�zH�l�?0��7���i�l�/+X�X��a�b��񯟷����F�~'�5�Gɬ�Ƌr�u��� f�UT�X%���e٘6<ʉ�Ly���-�"�G�`"����H$/��5$�K�vt��v���WV~5�b�V]0a"�o&�,�i*����2�,��p������αi6�^F�S��\�b|��J�c��E�ׁ#�/��s��-R��k�LQ+�ଃ���=w���v1j�l�F&��/��;�*�ﴮ}^�Fъ0&]��GG� ^1I�N��?L��E��V�<�1�w�)Ư�A7����4�E�:��x��s�� �  ���x�����_��?0�����I���7��/��$��A��A���!{諘N֢�(
���ׂ��e�b��)6�&�|�GP�!՗i�a���Y�٥ѫ��o(���D�]5!�Jn��QN�ʢV)�,�ydY��f�@}�A�}2�!0 =u���	�	��Z�b��R�,����1 s(�����~� ��U�,/��.��gQ��r;�L�+U��Zr�e.m��)b�o���Dl�|����YH�-u5��@��m,&���᳁��N��H��oʽlēE]��et����U�4WnF�yhN�����i�T`ZE��]�S��	�1i3�cQ�� :\�S�`m*�(*x+`��	���mh	\3E� )d��T�+%tF/$�;p�����eN��(�w�����8=���~�G:k������¬f�A�;�\�w�{u��/�M��
5��v1�Q[���l�.�Ƣi�L�k��+uK����%	 �5�S�0LR?#[���v��M�U�Dҵ��=-7\����2�/� )�y�U4N�����U5�����F,m��u1���`b�1�p���8�c��4 Ҝ���W��2��t�]J%��dY��.������B� ����X(j=ʸ�v�F7F��2��1�^��,`b�����k�-�u�HD� �a����?������b�Å�����1+��"�S'U��i�eߢ��~� (Ka ��|)�K�\)U;l��E=�G\)Y�&r��8o�0�D2 d)6��j{6�)�e
��d�׀�2��b�oO��\��wo�'bIb�QŔq�zJ�5�<���aHAɽě��u�kB�M.���l�@�|�s>[Q�"Bu�(R�Q��XA+K�2���U�#�[;>���4�Z[1,[?�:c�-~���������������.��?��20�]"؁����9*h;ͬ���'��������[	^�K)�I�L�|������r�JR	���6��֞u��'����y/2;0;����H�<�'��`@O���H�����3S��'�>8ހ)2���2������_��ٲ�h��ѐ��T�/Cr�w�����&eY���KKsY�w/�6n��I>3�YWO��߈���1�"m��3�KL����\x+�����׋p���~~����^��WY�-�ִd�v�	���:��ʓ�
�N�iU�a���
��Sw��������2��)�ȳy[~����:�(���eI���+@���b▘�!�G3�Ų�%ӳ���ߜ��N�����)���Vu������K�O��!�W*���,`u�$�L�Gj���7uUYtU5�+�2.���%�Pw�0*9k�4�2ے�0HW�>�n�+�0�,�h�j9,��� I�/#_�H�^���\�%6(�b!WI���V�v�1X����$�_ȱB��sdt]��nicFL�8����f��U1�<en����0/c������u��[S7�R(J������W0����4m)�U�R�ơU(��{d_���J�bw�,
��*EƱ5{I�6a���@�v��8v�P�^�*��U1�L��R��0%�y��$0��Y��Y�)��h�C�����ރ��R��W*�8���9
�n�<�Y�ұG��W)�w�e���	�p��l��c��oQ�h�p>�v�0�����{qQ�g�7��+��G<n?����������Ϗ\۝��������)\�;�2&���LW���{,,���~f%]�zr��]����v������7��"W��Њ��y�q��MXLG_�$u��"��16w���յ��-��� d��r�Y�hI�Zؕ��>饈�I7�<%U:�Cw�[o�-�⢌ET��*�K���[�������Q�      �   *   x�3�LI+*�-,�,-��H-��.M,(�K���)����� ^�      �      x������ � �      �      x�Խ;s#ٙ(h���t:�j��w����H�Q���q��HH ��V�,i�c6fw�Y�M�N�%��]}���^�y �&�ڐ��<�����_Rx����?W�պ\V�ղ����j�,�~	�(L�n�����k��}^������x8]�M���h>LOo?�C@�}���-�Ѿ�Я�	i��_�ۛ���q�Ұ�UT���� ɂ���h޿��V�š��*��a��o�Ͳ�����e6%&�h�U��a�x�i�h�:��:�ڿ�` �fU{���|��5M���������DA�Mͧ��hѿ�N�<�=��Mp�c��~�{�bFøx��O��o������B�]�՛�{�S������ZO���
R��{�Uy�.6hr
�e:ᩋb{(��f[�����LT}��ݖ�����jk�-L���yL�f#n,��h�F�=@��j�:>n��.�#���h�b�N�h������((�A~|�Gf�3�?�k��]��?X���$��'��qn���T���Mp�CmV7�'S�xQ+����ACA]4@�{ ��p��w�ʼ¿;{�Gq�]��3s5���e�Gp���V�-6<\ݼ��㭍�b:-���;N�K�K��g�����{ً;i�Xmp]oW���A�PE�'K�E�!Q��О��F�|69��Y���^|���t���p��F�#����f��@���/�"Ҭ���,?�j��]����ve���if}���ḡc�u�ތ���t8�.���x8���CJ�Wt������>���
��Oa=ՅS�O���O���x�~ϋ�A���?p��%g�ˏ�g�Nܮ6�G�q�Z�S�&��qPdQ�jaP�ā�m�=�@�A�L���DM$Ax����U���e�Nb���ӆ����jI�����Z��Ǳ<���&�'"tw>�'S��OBi�L�?�Q���5uŷ0;�kL��n֞
n�l4�~���m�����+<Lؒ;��	vˡ����}�<�`ƞ�n���]��z��X�����i�#l��?V��ԛ[,�u�vZ:���|D/���h��������4W�rm���ܖ�im&O���W�~��jUؿd�n _*��,wb0�t��.�<��
�`�/�~���ɐ�^�g�wc9$I�V��k�{�3}M��{X䗟1�ԗԳzK�	��\~��.i�,*LD�Z��˟yq_�c��6�������e����s��&�>>0F|>��?1�&Q��ᐯ7q�7<�o��w� z�&���WO�.^��D��rCՓC�)
��{���`<7�LU_�����<<mW/?2"2�ܧ-]�X���;8Z��j|����d��ڮ���+|���g̿_צsy
/pt`S�.�3�������o>���N2��-��O��)ܚ�������S��3\������痟�*���;=\���g�hƉ7��&�G}Eu������r:���|��Y���y�5˛�^BՒ7��B��zT��+�����t���}��������9U�$Ίi�YpF��mk�q~������ˏT��*s��n��ϑ�`���n8�"$`ko��=�U]/�{�*� �Vs3D�H87)��`��p��n�P�s����\78�\��?�?�y7(mR( dL�����⾮o�	A4�8N� ��z��`���~}��;>�K��L@�����.�Gب�\ޮ��;��N��?�gp�������ϐDen��?v1}��� ���8�m�+Xu���W����/?�SI/'�6�W�/���gx���ϬGuG[|&52�TZ�Of�b8:W�8ͩ�"l�&DaW�p�8��b��`��hx���E&�TBi�@�u�gS��Рz�� �`i����i���$��C*�&^��]VNG�������E�4�Y�k�n�vJ�0d�DU�QF�	��,dxBfy�1�ˋ#ST6U�u��Y�;ЌE\g�'@��y���<):/𛨜yx g�����R��S�+�mK���6w����E����û��^�3���;[�!�We��	�䌺��L?��)��s^o7U��S7�}dY�1s6�gg0�Ϊ�+Y�%��ILYK�bV���Xmx��1N��kM@å��=<��7�����ʘI{O2�}ΥT)�H���6|�m�и�a�C�������OL1?��\�{��ep #LA�/�����wcgVs��]^�����A\���y`sqs���SD+*tj�W�#�����g|����\��e/�D��5��L�o�D�rt^�ݟ��&H�"?��ང�H����f>����s�Q��;�:3] -���ȿ쿟���S>����z�ݦڭ�ڄA�v)-lN�'�H�$w�ƻ�6�(ϋ9h�X�rIK�v�N����!j�I�����C��0GV�]Ka�;��q� �g7q<���Q/.ao5�!IO1&��AT>��Q��ib-�7�]*�/�GtK<��Sн^��<C|�k��v����U�^�m%	r� Y�jN�z��8sX\�,�WD!հ蜚��7��?���U�$қ��:�T�ԇ@`FȾxDr����M'�=<����Gv�r�U���>m�F�U��ȅ&�#m��?�{��?mT�t�\hy�]��>q�Q(���a����hFx��"@a� �yJ�K�5����Hb��$Ú"�bV:�z0�	� �zp%94l�n�;�{0�ep&F�I�a`�t��K��Ŋ�^��-C���Ӥ ����:�D��+n�U�����v�"�]M8ǔ�sJB��8�6n��&��2Ĉ( �j�2LBz�Ҁj�x�h˔�2/2�G4�<��@#K�Ш�Ȍ	����x�A�;DB�'���q�!�뀠�u��Ta�^]
�Te�\
3�m���(��]A�s]��CV�K�Zpx�%��v�l� 	S�H\[ �wy��&0n"��f��ö����Ä�56��w�A�݈��I:E��ŗr��
��=�xq�'R��!�N�F������/?���"p�	�(e�$�2� �iQ�sW�c��I���sW#�� �D����Ky���
�
.��'(��Z������^{n�����@��1�/?o ۯ~����?�?��?��8������6�@�u�3�a�Ώm�yZ㱀Q�;|�о���+�4�|h�T��B5D�6�0-����h���O=M`?Y8�y�K�s�rq'&@*�=w�X�%\�fM��iQ����XH�'�dݤ?}'��(������Y�u*̍���yy?�K���R�b�m���a0��~zֿ ��ɨj�����\�atT�jY���W��ֹ	n��l�b<7S�^�N-<o�;,!J^]S������*Z��0���l�E��+m(H��z����Dx��묛�V�����!��v;�7�2�)��=�8O��^����o0�����x(�����_R3��pn=-��c�%Gq TM{� �#����[�yo���A��l�y��r��ܧ/BIK�\����AA{p��g1		VhF�R��g��S�� �)DU�66aA����TH���\=	��T�+;qN��(!!�`�Z;��u�r�M�t�(Sg���b�����`yI�!�x�2�쏷A����S�u��q$Y���AB<��	�BWn�����=�mh7A�&��@+�O؋��n���ڗc�7M�ҩ�k���@7�9�G��G���Bw7�hm�	;�GQ����9��[PO*�,(���)-t�W�F���`�t�A����~O���0 v��P3� N �Ӆ�J�6���m1����Zޮ	衴>����,t�'��7��+mE�1] 4�T�jn����)U�J�A�(:��c���V����?��͚�t2�;�ȍ�J'���x��S�($�å``I�< �5�EQfC�-�Mb�����u�C9��d����$K�$mPҕ�1j�P�K���s��־^?[���PJ��C����+EQ����:)�lD84'�������_��a���X�    ����O�E��J¨4���_�o���;E�(�,�7�BUk������;.6��*��@� -��_�?.>�4�7D�ݤE*�X���N���zy)�u�!h��W~��Q<Š�'�d�ȝ� ��U7q���&O1�)�F|���;Q�[�ڜ���C}��o�Z�PexW�-o~=V���'x�p��(��QU�����գj+aY����cIcW��j�I�<�E�6����}=V(\��z=	��F%��L�߯a1��S��W��|�h`ۏ����ף��y�	 n}9B=B������ˢ�aKC�(<~�)�P;E�q*-�L�J�E���&� �<{�ʔ�&�S8���#�0�eti��^[@�����&q.���ٯ]���Ik���1��X@��{���y ���
U��x�3�0�y�
�I���/Kѷ ����l��)�%!P�#�}���c��/����)��􇗰�C{������m�F�-�]��ܻN�6�f�aN����gWnja\U�i�O��y���һ�iKi��>�"-����S[�׈0�C���\^��Ί�{ewQS�6�n0�n$�s�MC�<���d��E������7�N��*��1%,�1�A6�YD]@��� ��t��.5��(�J�����(��}c��P(�(�DYo+����\��J� ���C�տ����ԅ�;��uQ��L��X�ݝ�x�b~�l�{�DyIz�!����P�*%�VUt�b�p~M|j.V��WP2�t8��
`ڟ�]H�J��� Z���9��Ebn�t�q!1��4�������$G���Ds|��+\>@�ƾj'�h߀Y��)�*�	�~`/�U�]J�F����+��,�����H�]��'����PWX��͢�E�Wl�]<-xa���H&<)������#`{���'�y��x ����jD�pY���N����Xco��F3.܋��I�u�2ۏ>va1�,TP~qy)}���0t�m^7=�NH��� ��)���C�̀��9vq��.nH:���)j-zSu��ul��/e�'��M�;Rͺ�7�g=@y�����c��%Q$]��˽/��9��gcx�.���� ���U�2W�G�u(F�����<�oq��`�z�'y��l�S��ǀ����S�E���S��XH/�wp{Ϧ�Mq��b��G�d7蹢!�ڢ��$����G�ʖۗ�谒��J�:��B�f��L��󇕱���1�A������g,)<@f�	���;j��o�J���+�n�p�a�9�?���+�睏G�ޮ����2��ٵ7��}�WE��b����+�����Ը�Sݱ�rsWn�]��7t��8�R�vv
Y�߀z� ��[�)��+b�>��5.���]��#�8q=-����f/Bq�Q�HY6N�,_��H�Xh�B��$�ݫ����Bt����I'b�U7�~^L��M~e����UP��[R�vkA4��K�����rM�:�1�(\i�+-T��]Iz���ǪF�lT��ە���\�hė��>���r��n��*�Tw�Օ_Og�oorȔ;r��� i=����?;���b��j��^~ڔ��,(n�����m�/�E���F��FJ�� �Y�~5��?|��K�2)�T�ꗟ�
6	���W����SYk�
��{���$Z�8���mi�����B�$#��y~#�W���G���b����gU�����o7�H�e�ɰ���C�Psi`7�h]�����P�^~�} �Vk�x�ICx�/˗���R^/�Vsd���w�Ee�G	��>W�FRJ����^������*�D��rD�P�׹|����b�F�c]k�Ln8�'
�/|���.��`�A��Й��1�$C�^�B���l|�ˊW���uI��Y�hc��*�!�h�x�陸�w(	uK�x���$�����$�hf�15���s��;t���}�p!ED�鰆��������.�������C)�$�>A��mT�_,3|�~ƒ����침<.E�;<�V[��Pm-��d]5'(p`�+8ڗ�ӷ��$��$�/ݤk�cܬv�Vi�D����Hu]=I�#�����A�P����>*²���څ����կ+�`m�Y��%ml�-"��#p4ω��Sw�3�8���pь�c���^�a�<h���G��zD�%H�;Gw�3��@+nB�|tE
��9>�ƭI��$H��z�@|����ADޤ3	ԑQnZ<s��1�P%�טI�@��J�dq����`�){ iލ���W\�g�J�Eȧh���3���`�R�jQ�b!ұE���W�D�2����б�j��6S�'���j$´���Y�sVq�2�)JR#Wa"���ɫ�u�6ˎUޜ���d�:�p,��Qo�����r4|@���<T���_�D鍜)ɨ=����A�z�Ț_`�`��d�'��-����m������{';^nsU��n9쥉ۊt!��F3}����peE����4��B,v�P���B^xJ`��n��A)�4��c�_(E[��YjD��P��^��q$��n���w��i�F;V`�����PӜ2��;�J���oA;�G�=/���G|�*C�8������+�SF�C�v���59if12VQy�->`;|��������O��2��w�nY?��T����j�/W���B���=�(Q��;�E}q&��w�#�o����=�DE�کpnz��P厊��f>X�(z0%l�&�{L��iN�rOk�K��'�Q�� �u�٣����o<��/>n�qF3VVtr4[X���s���,�7����T�㘷@�>��kg!�|�c[P�ȅ��0��l�I�ذ@��6ۨ#p�I&����{sW���N��V��S?��8��_	�G|�̻s*^iܢ�-!�ʝ���P�c��awRz�CGf��-έ�=����-�qt@�<:�ua�`�g�zp����P��O�o|�E ��i�&��v�PmP��i�B˃�w�^�ƆTܷʧ'H�-M�T���	m�������ҕ{�#5�n��ݞs�ӳ��E �Ef/��x���n�l� w��&�x̌T|{R����h����Fꢍd�W��#��3�Yj�!��4 kot�!�w��I�#ޕ\��2+sd�햤������l���P�Y�ޒ�R��\m��o�q{�����O)
�$n�7�����Y�#�YS��'j���{�5����W��CV����k�ow�Y������0qXfX�:G\@�����5�����حI"�����X���LC3�ʋrN��J���`�Ng�L.��!�V�gwU�u�@͡����:�Kg/&��I�7������M�h-�su>��:G������p�Gˍ,�:�޻V���רڤ��[����/)\���z�x�KG�@T5,�{}v��w�)�v���`�����:JcUL ��7�_Ȋ��vӃ����nʦ$�u��[URڃ}�a��_��#�ŵT� 5gZ��������	�/�+v{�����ZI9(��B�g���B5/��t��Zv�2�c_��vHV-� 卵�d��I�o_���̀m�u��~����rc�X�W�v�ﾬ����Ҥ�m�f�v!���@��u��׻��/��s���MNN����J������+�	���xC""D*S��Bx�G7���В���i#�{�
V[D��p�~�i���]im��C<���n��-VUD�4������>�w�Z���{hi8����He�}I�9��a�E�a��;�ԒR��N7����',��hk��|K`B��.߂O�L���:�� p�^om��|4.~ �=JII����	�c^kv�ڽIv��L4�� z����;�F}~J�<�~��	YB�G����=%������%<���<�]�Z��+Ė���k���`��N��5j�_������~r�����o��*�↗M�V| ��@Y���    ��T�C�\y!о�w�;����z�����	ײ��j>idQڝ�PL+�Ĳ��L��D��"��c��d�Pe������¿��cQ�7>���a*�3Ӹ�z0l��0%������������ΟU��-_mOT�����c�͙��I�: �}2�&p�jݮv��vW�y���0|˼;�Y�G�ɀ�ڵ��l�vR[3��\LM��F$xp��6�$=��z1+<�d����Ľ�z�+����2�f|=��M��'�w� ��6��_w�ۻ��m[x�V�����х�H9�D���Ѭ�v�Tb	�b�G�`Ŭ�:KR�j��M���U�[�x��=���F��Z3��H�ɲ5�4S���%�F���@9��\�8����Tխ���J��k���|�PL���$�����h�) �����G�lR���J&�"�� ߼�n��%~� wO%c�@��Ui!Y�y�+A}��<=Gz��R�9���L��m9�a[u}���6&p��+g���ż��+�'~mR9�zғ����U�y���
�[y�z�5� Σ�C|����S|x.k(�U6�*�M.���ػ��[����Ht���Z���%�ql7(��I+E�!~�ݍ�bX$�'V#�ǥHL~�Q2x~��V�3o�"�L�`��v*���?�oY�$RF՗9j\=��[m#�6�J 'W�ɱ7���I��!�
��3�%	9�=BShIi��v�D�Ϳ�i��`�N�9WI�rV�BQ+_���� ��Y
�I�9d�^���;m���C=�)h��Wδn����f�S�S(v\�q�U�5��䁇��l������Ԣ������v�m��Yi-�{H�Y�����J;G��Vw�n� `o��u}�-3��ۭb��}����?vf�����bx�л73�:-ׁ���I�k���C��`ska�2��C1g�9���<��F�$|u������<ٮ��/O���/��3�x|����;�L��`(�d��2�
�Ӌ�Ģ�o�}O[� "�����i::������)V�Qy�_�]o�[g�=���M��CU�Ռ�VAR�e#��t7�����{��B= 6:�JQ@����}���k�Z��ۉ��W��|�Gh�T��}ݫ�TЙo<|���7�-��zs�	тP.��&�&`L�^[fdwT@��&Q;��#$cS���)S�G8ߨ���;����8��W�'���)/^_l�
�ڛf�(����O:y�Pn(���0�Qx*Ѣ�L�հʱ��L�����P3�$ծ��I3�(��G	��s\���aׯo��1)���@:�F|k0Q��c:ZC�􃉆?,�[�g*��(%� ��R�H( Yk��ܓ�����#e�J��K� q�|
Y@"p�N!^������z9��H<B�5� M�Px@��"�����l�o�j�0bοT���1�=/N�}�����c;�4���c���|����H��O����\�'�wD�Ćl��<�ߡ<RE��yC��?�Ү��ПS����п��?����}��^��'V����~���d�0��,� �~�����.�P���_Ϥ�ԋ�Թq�(���Aj���8���z�-7*W����km�)܁%�z|��W��ɍؾ"�	����b%�ju_��B��+�;4�9��������`a�
�Bp1�=��Be�7�W����0�?�	��
�����.��T/^Ů�8�V�)N���.�Fl�.�� �s��Wz���g�gԤFq`9{�o<� ���b�JU��9&3Nk��$���ۉ��k�C��-�ww�j{�dw�ǐ��,��P�oPu�s�9l�/���f˙uub�,o��F�L']�ڰ��7p�4�x��k%����H�t�H��x�v�g����V:A"�;�>��)G���j���V���kQ�Y� ���f�J��7���k��}���Q��1�dr�1�(���3:���G�Ѱ��No��N�����{U�3�ܔU�J�9E-!PVO��\!�J�#���GD�7���J��+p�^�'�b(.j�����dQ����[�v	���P]k`���ͪf�'�D������2mq�5��8j1e-�@�4�`_o0T��8 �;z���H�Y�\��Bx[T�\3��\#����Y��y��"CF�C�`��3��uFdw�%L�?�O7p�%�����FM3����cCR�(gZvu���З�X�0d�B.��r罗6�c���ʌ��[�Ğ�7��hE,L%��*�)�rيD]7�Љr�F�yg�p��!zWy�WT��h'av�_k�t�_�Gף�x��eY�PU��Xh��� �o���GoU�4��wj�w�X�P1d�a8�	�p���K�AB/ﮧ����+�7p+���4�������؟�`x���%R��7�<c\�V(n""ܷ�qa��6:d��m�7bJ4�-`9i/�K.�C�k%q޳g���m���6�T$K̸�j�jK����z*&%��p4��nY ����k��������N�&I�����-�ca�F�*؀MM&��roo,X���jg�cѐd�7�����O��^"+X����=����X����@+<m���9��#�����b&V�S8�	I���%�����SW�����XUD)EW9E����M����G|�i����^T$I�Q��h����hI�;�z��������񹑗�jxh���B����=�zEnM����G	G���������؛:8O�@f�Tbo������~T$1���(�DM'Q��&ȭ]-Wk��j����,NA�_�u���A �����[m׹S�cS���-N���8d1$��S_�qGn\ۇ�3�n��b]���]�%�Y�-ۺ��*kt�`7��:ī�}�l���	y{ɶ�����H@�|�(�6���	� ���b�t|O�MK��vP7ql ��ADJNV���vѺF�����4q4>\���u�m� �\qd����D�O|ץ�3~�$@`�E}�����4�pd����'T�ep=�W���G��p AG��dgU�4������-��4�P⍇L	�~��ab�)�vJD	39,	����)�p/����� �;�8�b A"��x�k��%#��ρ�DJ.�M�2
;���QOoӔ�A�5�+g�ŴK0����#�onz�Q�h#��b��/�>(�ȉ��u<GMBv ��:9k������h�L4,��k<g�!��B��8da���1��DcjH����̝8}n׀HU�@���aIܭF�τ�ln�
uS-9��V�Q���W�p�^ד�YEı\} ^��'�L��O���o�I#���<�i����(f��[�ٷ
T\��l	.�/M7�;)߹Iy�-�G���]j��I�_��3R*pc�{��`3�K��s�s蛅��Y�D F^�Mȥ�
��!V�=I�P>�[=lz$�X�sɆ�K�qI2�UG����1t3�JéG�vd��s�{Ht`H��7�Cs!Ɗ���0� ���s�Q�R�6~P#|Z{�Q�_�#8xyWz�I����^�ggc\[~�&�Ͽ�bRz��Q�A��Up���/�Љ��b(�����F�w�����<����ڿ�9�A#�W�ۭ�N�bՓ	�$@����^��������6�剬^�n�nI��`P�姛[}ד�>��;58�H�݄���N���C��Q���:�-ny�Ì����A��ɝ�9S�p���t��y����ޭ6{�k�@�t�T�]Z����,=���hQ��,�� Z-W�+���6��g�pS �A	t��յ�ʾ��2P�����
i�qX���ȩxύ�VTUp��B7ՒZ�r:k��w���[ ����B��)����i|�b���ˏO;\����Kd�7���_��C	�2�T���_T�{��d�ΖiX���w(a�7��~�o{�ىxg�l�W���rK�FX�ے���$;���c��@�^ͺ�T����$���VU�)���j�    �cq��˱�O��xs4p��=�lB~�T�]�8W:���4Ц���J]�&���g�}�ʉR:I;�̿qb����ֈU+Ѹ@҅M���Œ���9�V��f%.�r[����7Y-��Xߑ,�Z��6|G�*���+�q��?���&�[���H𿅛
v/�X��]�?��p*ojO8p�tzX-���@S�$w1�C�fe�h��s��a�ږ��L��#�|,� ':�F��y3���B��&��v��IXx�<c��h
�:�n�r�n%���%�IW��v�a0[� ����
MG\���`K�(tq��h0��L؅��i6@#�q��5	��"��"��HA`�)��G�s�߿�ވ���������Л�ɚj2�&�grGaRzeCh �8�5~�Vb�KPm�UB-RS��ϫ)$��^H��������NS�P>��#�d#%��� U�(T�EN��	G�op�DoM#��A:�lT��@>��S�2�0z*g�<>���y��=x�N�b�����?N�x��)�i7��Df�y�lt6Q\6x�`����_�5%�]�9�����3�������������`(��m��T�r^���҇��w�JêLk�}qz�}��|���PuQ����æ�U�{p��1�c�;"Rͭ�Ԝ}K6dn�a�4�n���25|�l��P5Ƥ�ol��z)�ԉe68���8��Ū?��2=M;LVZ}Yk95ha��U��*�byn&/?�N��BU`���Od�3�7�Vr�����[���ȭ{e
`���G�Ą��Ia�l��l���b&*�N
��?\V/0ԫp$�X������R\��ŝ?m�v����������Sx�umZm�����L�D��PE�i'�X%�M��Xq֮��:�ޙ4;q��v�an�]vh���x��W� *�T�L��	�m8�Z���Q����=<�@�a~��3����tP�=����X��oN7~��5�#��3��m�@<j҆��vEG�L5��9F;�7�����_�]�����
q/E��{�)��C8��dU�/w	
���L��W���98�uOet���/�� �N��mS�D��	���9��j����$A6��������kK���_�zP]������R�t��=�;���#���r���Ƒ�� �]�z$����A!�J6�h6����4�%3A�aI:�sBI\�m�a�IH�&�&��G՜�$d�k�#��ENO����=.Q��M��bT´�14T5u�UG����l����*;��(�L2����w��y�yƍ�)j�RY��v���BM��������5vTT���]�{Di#�7��'�4�7�֍H��	���H)IR{uT.k�)������p��~���|�K2���m|>	�rV�̃�����&��D�ւ�c�XKk�>�
�͗�**˼�ǚ��|�ɴI�1k;�v�
X��qo�PF=u{�.��p��BG�����}e��r�:c]+`��}��sG��HJc����z��Z���!B�����8p�Nu���rb`F���8�����xs�i�~c�a;�4�-s�բ�D�w��
&��/��<Ic�	�N��׺+����:*cT��	s�)ɪ���j�<�9z|���{�Pa���&�tSvǚ!p�����,�v�c���{��E�v�7�5�)�u_[(4kݓ$��@�w�Cs�u}0m�?��tV{vdDJF��V�`3���$iN��b 4\u�6�x.ѷC�ڴ�J�	�v���� IzԓBG�R���ZEЂ�K�-A��rä=/iJ)����ሔ2iJ)������h�;������AR���HǾF�.L�z� (���hg|�u�����G,�WQx�S�=
{{�[�N�Aں�,�whǿ�$t�b~�|_��(0��Q�~���S,�ܻ���h�����ޘ��Q@���NB�JC�������𪙬J�dUN�k�kІ`�(]K�RU����q���

ʅ�,Ox�
��؀����z�q�t
��'����ç��ڮKc'�$b�����[���Syb�iO��|y��2&;Qc��%[��p[�ǰ",�wOKr�M�(�U�$Fi۞H�gW�1�x��n$6Kb�8�����Z�,W���6?O����+�H�L��ͩ2�o\BX#4�/��Gc��)��Q�B�Z�����=���x�i�09�W_ M�\݃��dQ!�J[�VV�
�*!���B̬�Mg���̸�F���'�SR�u4��R��ΰm��<�ԉ;��7��+��n�#O4�k�Ln~6tȔ�7�>~/=p)4��`�ev�س�jA{ѓ �p��[e�k��!06Yү�Z[��5�/����h�B��w�xT,��KSɥT���_ZE���3LX#"�l �R��C&y�,V�p�~�Y�:։��5��㷧S}�[c�������G��T7PxS�yZ@��j�)Z�ZIiǼ�

@�j�^v����� �����/$`ݦ7�X�M��e�~�F�|�k�4�l�اtI�Hev�&�|��,bK��$(i�%I/�ҭ�DWKN�.E>=8o�
ZG�6[#:-{� �뉧��}{Y�ǆ��6�Y�y{v���=�7J��=k.4k�@�	�n6�����)�2�g�1����e�i!�E�?9�D� Qr�e^oG����pe�ЊH�̈]�l�+�4릵ܩ�Fh�a	�h�OK��xG��HH��Q�<�z��/�8
5=�G	s��	"7�P�u�r�ࣉ^G~[:���k֣T풰Eb�Pe3��QL��^ �V��xW�ɼo�B�,C<�#�>�\��{�`G�O�qUR�p�G�ܛ�c�b4���2�c��zM��wm��)�>���uN�3��a��.���HkxT���ܵnt��M��&la.~��L��,�P��Gfnt��νHU6J�@��E� �/��j��@��쿹}?�������_/ǃ�[/��G7�_�(GPο7�0�E�B1:`9
�;��F5g]�3���D�_)��S	�(j׍b=�Ѽ>�^�Ԟ�!%�68"�U�tP��p�hưe�Ξ���=���k��~����tc�9�Lʞ�Z)(un����1!�ث"ƪQ\�.ٙ��'	���H;����?C�a>�N$�V���&+��Z]mWF�ģ��s���_�
��p(*'��~�Ѓ�X�%�ܻ��q�k�ɰ>�x��4S�C�4>fo� �K��ӎ������5���WW�v�G��bQ%t�y��c�Y<:?��B����@��6�O/��O0��( �ʼ��77�ɝc.�n�H���DJlރӀ����k}���)Y��i��z( ��%�F�����ׯf�΁���H�<�X�=�.y�r� � "W`cLi���`���Y�L�oV���VC^]o�/a��5����-Zs��Z]��E�Es��M��)��" �z��:��	�R��fYVB��B_��2�i�˶���%���n���h���9@nEJ�s�2�s���V����L���j�X<6*	�n�(�(�M��zk��+xK�W$Y�#]Q���3D�<��]�ex{Y�>���ʅ9��
�Wm�Aa��U*��S�A��̬��������;�햠��v5���b�0�mQG�P�!v@��Ym,v��4��S$���cQs��U^??��z�fߓ�(s��9�QW��*�4?�Ǔ��B#�e��C��Z�$��f;(>�Utu��=T�.o/��R���	]�"�J+nh���~|��������@��fE0��x����,İ�W��c�+p����	�=b��n}v�O�����_�k������mC���Y��������c2��iG�
 �lt~٬���a@	��Ս1G� ��7��k���@M��c�������+�4m!`:D!Z��i��v��Wt;����1��+(wn�\������ŕ�6�޲�u������Gb,AWU���Df-wCY�#$y�    	�£-n�����C�u�L�8M���&��*�-�ڻ������P6+;H�"��G�禠=�+"Р����f���|*&�����V��|U�'5GE�� ߤ|�+�b�V�e��*nN�o�-<�_VOr�S��\[s	U .����wě�B�zY@�A�m0��/ϜN��"�_J���t/n+C�Xxo��-4��P\Gzj%Ii�tWK�)���b>>g'9���]�mt����-��v���o>�%/���aku��<����]�x�Ԋ0�z$I���YY�S�XN��|e��ȐW�c��綫�1�A�����1�r]�P{��;��w��'���P��j�u1$V�;.�:�4a��nu� �#�$֬��V9ᷕ,-�CT�q�|kL�N5r�F�0^���Z�:T%�k?X�!����j�YD���i�!l!����,#a^�"���X�F	�T�`�A��İ�yΏ�C�t�P���(��d�h�3�������Ҁݲ�L�8���nܸ���k�c��Y��٘.?��{���r;�6{�����	��S]��U�KE}6��M)tE��u�ۓ?QPJ�z�
_'�Z��Fb��P�����J��RRL=�^�T�����������WW��"��d�g7ʖ�޺
�@�G���P���PH��Ɂֹ�h�C)2	z~�>	�HG�Z�\0<���Ct}G�@�d�%ڢHX߭����mUx���J-����V:� �5�tQ����Z(�>$j~�HFP�`�f������8�3�KϸT�K��V�"�GSp���%ʵj�%E����>�w풪�sb|�W�<�q�lC����>2b_Bj^�8���l�m�5Nc��V���z�r�Ú�G��u�ř��;��$�C���� }��M\�:>�,v-!bK��
����9'�d�R�9�rp+Չ����r]�5[G���r^�!�t�Xgat �eߴ�A-,�3�{���9\��f��@�U�Q����G�f[nv�fT�-{�u�^�jMX�N���*qb���Es��g�!�i�z��+m��Y_6�;a$yn�$�b]�mѡ�x<`��{�TH*�?��_��d<ɾH:�E �T�bp:�
ҾT#�U��Q���Ս�G��p'@��nhO�{oW_d��׷���p�AK���~������Jx�9wj
h}7\ �Fͽ��_��3�S�ޘn|��8.�s����ͅՒtD���[�r��CS�[�������L`�
�%F�\rh\���%�䑾>>o��" �x��$�bM~�O�+���\� ������ggr�)�1Iw����p��:�m����'�O�~�V���^5"�.Z�֡�W;}�i�0��u���~?�Ej'��t���lL
�S�&��v,A�o�_�%�u<_�����'���r$��F�7��o_~B?������>"2|a��u˃e�zG��j;��I��έN4��8�X�K��B�Id(��X�DE��"���#�w�|�����O����oRX]�fD�r]
1)�ep�ܹ���?�����Mg��#��{z-[ :%��:WN,���҅����{����<�nVfkҡ̰���[>�Q����� ��
���&K2x�N^��?����M���5������`<��"}������H�+����MC�#ߗ�
�u�4&�ޠm+�Q�c)V0ybL�.B7�#5o+�' �3��#,q%lq��O���%l]e�-І����9�ôfTZ�"Mp7��Z^�+�\��"}),(����$�HPVr�Ł�HT���N�ҡ�_����Щ�m���g$#������P:��]�C}�H/�h,��ף+�8��U�q���6d��� #"����\�����RT�N'�y���_8N�l��Fas�Bɼa�j�����v~L����u�IL�F��5u�8=`� �����i��z��_��;����F�ɱ�BL�ȹg�횽�ٸ��s���!����0zy���0d�@C�"��u��]�@.d�o壀���=�ޛ�ѵ���Dި&���RNÝ��X� ��uF��񤿀�]�g�T�!�9i��wr��_k��<J(!� �N=J�Me�
Ѱ�1J4�.��Fޠ�/�����o5p�U�6'18I�<�Qw��-�k_�$Y#���ȼfFIQ��k��z��o$F��h��e%��2�fE��"C�]������Yu����}�-̡>�
!Ob��2�%;L� Ī��yS���y!Gč��iڊQr ��{4jRx߇d��@�����<��K𻀜y��p��O] ���o*A�T�B�G/EpkU�.�ޠ^/�WK�+��Ege�K��J�1�nK�#�-՚�*#� ��D|�5:�V��L���%��2E�*dJ�e���0�h��W����T�s�����-�w���=�H�w�gC�]�����)��Ɗi��G�Ph��Z��&k�9/?A�C��\$a�3���=�:@=���:DF'5��.=��i�.�������T��S��=��r`nZqz�w�4�z S+&�덱�*ܬ��|��da�Xs�ț��S�{*اn����}����M�g�G���8���J.(A�<bkx��7����5NK�Q��!S�R�BF~uf����O�fH<�"��2��/b�M�ӀC�>��)��$8��<�	2,�O�(-��5�[�xQ!ѢY�&�M�ŕX�Jǅm�Y���mT����g��%��I4m��>xEto��Ej#�]&h�Uo�N�.�3�p�\�|�͂5	��"��0�JA�\4}E�t��U���s�vC���'doJ;���Q��n�)��J��v!D�"��dp��x!��,l��}�����lY:�~CI�6T�	� t�*Ҍ��dz�H�:�����9Pa�~�D�'�d�tw:�
H�T�qL�ʹ�N�W7|�<�^�'�3*�,��瀷(d-�^��E���x(��P�y���M(~ל��lWư>��y]J�X2���&�_����n���z���D{���u��?Z ��N
�q_���4� ����D=Ƶ$Z)���r�	=��/]���.�����l0އ� �Ż��"uJ�t����zt����`�W�	����;� ���<߲F~Ě���]�����nh9	־��ʓqUa�TK|`�X��N<a�+CU��X9���US��*v�t�ӊ9���H��_��wQ�ז�K��.�_���c�&�)q�nYv�q��9��jްU��A��.���u��iK��%��G]R���t�P~����BxSIRW����1!����n��\���ٙ�Q�2�)mb҂H&�D��s"��0z��\*jկ5B�����6�B'��ɔ�,��oRHB��@�/G����p��&�`7��kҌ��]>m�/8.E�=mU���{� ]R�B<=:���A � �md1w����K�$Q=mv��H��#+�r��������Ug�F�����l6b�4�/͉���p���@�t�F����P�7���v�76f��ӫ��̷�$1��A�Mu��*��x�/��w9�_{s�lJ�P��V���K�hL���񁺣��X��*P��ʵǕ5�Б�k����<����o+����y��k��q�-yi�U_�@Ь���XO%K4��*n����#����Q�^���9c�������o���CF)c�EJ�Az1�4��NTm��PwM�0�G2��%RA(��1�t�P�4�j�j#����볕qi�q�Ê���/�l��fҢ�*5*�P�I�2���O���qR
:*|�v��8�x�@opn�X9�x�G����j�
��vs8 �>�o��j2v�=3xf��u��'E�8�R JQ��&�3�+y�������_���]�C����EUZ�E�\��[��g�z߀{�a߳�+gRX���XUW��#Kt�N� ������(\����X)$d 1-�"k��;.E��^�����\�W���4�戫�y��,�y�h�As:V�e�i�    ��}���H��*!U"o����U79��4h�jY�r�u⚺�LH���!�w�	�n�@���a�yB�y{mއ�맒4��
�ԍ�Aވ[�o:�h����i#fJs�"���X�=ՑWDy~Ii�D9�U�;!�VB��-t�O.9+���f�i#jr�&�e�T{ZE�*��P���E5��d�c�&p��MK�L�[���"I�X���X�C�N���]��
��Sڕt�]Zz(�kТN���&ݦ]=���$&��ʭۖ>E��
���]�W5��,N�Ҕ)�Ё2�j8(���ZY:����a�LppzU�*�8.� 41� �{/C	r�	����b�|�������/������rN�V���R�����ߢ�{4��@0�� �#��E�M��:;�,N�P޽���0r��t5�sS��rLp���yg@��_"�����[�nLqs��]��ɧB݈�L�D��ᔰ�����m3���J�G��r|��6�o8�Z�Xl��@&�����_��{��$F�KB�����d�7h�ɩ�n��I�V]m�:��*��ٲ�R,u X�FeFO�Q��7��"S_�{swiW�X��j�>��$�ٴ��$d�^ �8�$&�$�v�N�mp(��E��w����J��A�Q�#E��֚�u	�[�Fڼ�#P�T����)3�Z��EGf�#S@V���8�Z��&s�]�0^�5��va`i�3v.$`E��fU�RN�e�-��SϘ�����b"J���k�i�&z���7)9@�{��^U8ٽ$ǀ1m�=.�x/
�Q��O����'��+������22#��f�s���g�2y\-��Q�v�@\�����xDTJg��6Υ��N�V�hfm{TP����3a2V�����K^��k�~A��{��.�H���Rv�^(���e�-��.(�Y!3�F���Q�
I�����a�q�j��=��� ���coM{�J�:�m��.��\/b6%��kq�����ลƥ%�� ��t-X�@��E)1���;D-�;���^�27ҩhqH�8 O�@�S3\���xW���(�ٍd��7TW�
��c�U�`��@�	�{�������6C�Ʈ(�2�Âx�[�]O��BǒJH�܋��j��9�ߘ�e�qj�ZVa2y���"XP�E
�l@�PD]j��=�E%W�w���SB����y8�G5ᯥ
�E=�@zY���ޅ�g��<�k�tmJ�n��ף5Q��,P/����5=��E�%D�*�8P�����0�9�B�`�v_�lŋf]i'f���̤���Z�=�L�,�vjȪ+�$v@W%x�|\���*N�)C�\��{�-��Գ��)��vZ����:H]�SQ��鈜���)+M��+�p�+ID���Ņgk�F�_�)�F��U�K�dr��:��S��#���Ӛ�d�"��%|2!Bۚ����� ��Byj���=g�W�պC ĵ�`0��ٺ7ʹ��Ҟ7d�'B/7e�m�s��N��x"���� ��g�A'�D�Hg�LY*�J���d�U����!�#��6l"/O/:@y޶�({����<�uc�3�2���XR?Sa���qøG�+mε��蜉#�vd��Ce�7�����|~�^��m(r�߂z4���%Ĉ��!�;�'��W��H5�ep���G-2��*��B�
���}P4!����9�9�$�MT��t���;7��p�W��lX���ۙ�l����R,V��#&�{L��ho���b��tU�S�����}�	��Ōj	�5��&�nL�aE���8�:��F�wu�d	�jW3�|)�1f�
�>(( ;<����j�Kl� ��1jݛ8�������y<�x
Hh���<�y��<����(���[��eZ9���Yhŗf>�0ޒ�,{�ay��ŭ>aID���,����?_����;�>��J���R)�7������|�c=���l�K[�L~�����j#��HU@.�$�Z����`�������5碈vE>Lq ���Y?m��PZ��cA�����Iar@-� ]	RYZϽY������߽ç>'���'s6��㏄����ϟeSt����,�W���a)�{(�o�,�j\L��=���KE_��T�k�理��-`a]�X�8vA�so��&�-p��[�U��w4B�_���0��%��3��Vm*��@'�	�}J���H/Ѳ���a�+tX��TSn�.4YCvNW�x�u�����H��l�[q	��1����(>��x�Ǡvvy> iN���>�l\z7b��0<i���=�PdsQĕ�Ԁ(0]���b#�=W-�o��b���εF	���mA{%#!%���_�#��~n,��Q��姲�Ġ�X{�x�u�r���ys�{ާ�P�I��La�z��sb����Xg�Y药�gt����&�-����[O�J�OTs�Xb׽y�yj�x�,�$uk�F�R��:0
6��r*�V�b���Q�E��+IJ��IE���m#׬+CI��i�z���~إ0[�{j�
�JSa���g��\����Z��g�l�t�oS]g䑧r'`�a��n�1� �_�V&�����Su�JMp��V�Ŋ����c���`Z�0�t��A��c�}ޑ���������ќȺ�i�|��{�o����@ׅ�8Ś �����F��!����h����`���z#���D̼���a���!����u^�+�&[�S�<AT��В*|lr��#����l����=���!*���*�.O<t ��s�E�h3}�0�����=(��c���#45�]-��\�[1�A�]N/�gæE��\�9-��i�=�)�f���V*�C�#�#a���<�<�c{r�n�����;~ー&Y&�d-�W �����=W��s)E�mS��޺�X�V���Y�l�#�#b���2��z#�t#��&��Jج��u�]������@�z	�z�17´D�����O�߫Y�ƹ���l�Mo6K{=�?�=u��p�� a�e���t��`)H���	��W���^/������m��2^��Yz����^Ć8�[e�lR���&l9ќ����"�ĶOy�u?�z�x�c�aW����x�Ԟ�ُK�����Za�1Ó���"9�RX�|TŠ�E���ڂ"S�R�b�1���tG��#��a1�!��}s,�>�˟�/(!O�kS�=����dc�OJ�����3i:�/C���)��Omg�}>�1Yݑ 3tP��P:-Z�ȴK�G���kK'�d[@�hG�ZYF������@;~d`]yލ�=5
W�NԿ��CT\m�rV�+�Oո�yJ�#��x��-Y��S��NIZ��bΕ���1ڧ���.��?�NX��c��_����Aʆ�}�#�4-�"j���YBʂ��*g	�t�S/���Ud���������P���H�v�H��ݮ�+���p|e|}ދe6�u��z�dm�*z����գ�w�c��d>�O�Q�U�8����tB�Ɓ�AT#gh�.��b�{d�(R�6���nf�T���I���)?tS��Xi:U����"Gr:������L'��{��r�g��8N��,��V	��|ˉ8WB��>�㈁���K�Z�Ы���q�9�G�H��Ȏ�����D=�D��U{ [����|�G�R=2�`�T-����}Q�Kwn����C0�p1�=�J��_<?=��a?���Z�|O��1�XZv�yJ�ʁ����9ױ-���>����y҂�aJ[1>��r-~m��=}� ���ogCk
��������Cu|�G�+=U�$�G�j��E�Y�qY/V0��$g�Ԥ��s
���v`O�l�:̢��{�1�z�qbڼ��%�w�f7f*$m�7��8�A�U��U��r<7s����W���6 �F�-��Z����S�9�Y$�Ֆ�y�_�$oU����4TYx�
����<n�S�,L��S��%    ���0SI���M����ׇ�>ȏ灘LXzq��D&����F��٧���b�̕�ަ�^�݃�yD�����P/vB���LO{Q4�ra�*�s�SsdТ&���?���8OŁ�N#_�˻�7< �s߳���?*�q�F����,�A�r����Y��oM�íu�G��u��'r�ѷ$-���o��j[7���~2 ���L��g��������/����/�c���Ɂ�P$�7�?�F�F'�����o�)��" ��ewqe��/xj�S�%i<oѷ!�:��q���n/��8O4��!k$x�tSɾvSfO7�5ɔ���~d�ԡ핇��f�o;����Erl�4n�����0��a����<-��3�M����MÁ�hF�KI_{�{fw��q����˙;ѓ��y2񢚑H`��8�)h"�����,�t+��H0$�\x��l�Z�`«�?�����h6fTp�w��M]��ߕ��M��c�{8�wf\p��o^�J�;�<U?���R%z��;�P�稏�FdTa2$@(ՋA�n:C3�r�����f����뇒9X���u1������@_l>C��:OFS��% �3t��蕀��ؗ�9���j�T`YÁ������ 
�3Q�/q+ /F�|L�
9�9h��@捙����Q�����RN�9,|�e���Ny9��gPw�n<#�������/�^�֤g�&o�����R\�AeG�I�Y��Wj5nb�G������~m���Q_y�P}]�˷֮~�^<��`��!�WEI>����t+ҳ?���(�Y���Jk�����q��@��,��A�"\W-E���qw-݂j�TźOWӋ���D<�9@�9*�(�n����>�3=���'(��l���&�j=Ƒb�ʉ-�Gp�Q�R'���!{��
�p�摫��l_� Ki[�_�φ(����p��߳��� ��y68'wh()u\��w}���n֕4 W�����Pf�l�ڄ�Π�����b���N]w�p|�G�'���n��K��c���β�*��e�<k �3����_����}�.7*�6j�܀��9z�B�$�{�+0�	T�U��{ן�eCs0���Hݙ6�W]���d�<b��Y�N7�Q�ۃ�\�@g����ą�5;r��#��i-[�޶zm;I�1��f�N��pW繋�R��]=ϊ����6輪c������iGn0V7hﭢv��D�-�P��낼6@Y�6��m��J(�o�k�q���9Fq��û�#8M�Kt�����y����r��b�%�-�u��Z'��P���g�u��Jy�@D�+�]���鱽u��BÒ��ص����]�H�'�7���l8�r�t������oL�kҔ"�_���\ӷ�
�v��3B�c弫	�ģ�_�� ΀ �Q��n�sĂ8hԞ3�^@q����R�$�"8[�����bԱ��D�� �㚰38��g�w���HT{�~J�q�����ݏ�@Y=��1L��K�,��f�Zl�.H�_������P�љ����Rq�^����.}�W�b�>5�����
,�<�������*,=�R�zY�I��"���F�^�<XÇ�=E�-���勮��qM"Up��7	�z�1Ɓ$QCT9bؙ�����wm��7���]W?��p��]��i��������[��*w{���^7D�]�F�8Rkp�.I�ʼ�8z����Kʒ"H�6A�,�U�$����Ui�K7z��bn�L1aQn����"j�l�X1���_7_&2��G�������47��i�ѿ�����E��Mm�dIN{˖Զ3'�g'�L��҇[���y�9�a"&�o{��c����9���#���$�U;;�Si������,xU�Ѕ�ru��PX�`΀8ب�Yq��D�]~0k[B����
)�Ҵ�A����j�MBJ�LI���'�8�ӷ���&�e��������#�%_x���n����:G��Tǜ�-R?<�}��&Ԝ����̈�9�ql�"�D�Hn?5;�_uҗu�F��V�N�2�բy�n-��ZV�s<�A�Q7�Bbu�a�^��o��¼�1G��FV��'����4�s�R�;����ia�;gp3Jw/�1[7�#�R#XNV<�]�I�F�֑�����:�E�{�P���z�R������1�s�O�I�&����(�0v�LuA^��H]�o�g����6do�Se*�L%et�^ �ʜ�ǈGd_͡i�'��ۿ������a�\@g]V$%
N���v�J�x���10E�6Z,\���j��eR>P6A��,���ha��]$�9�>�	Qh�}��_A�Ss�,�M�Ňb�sDF'#5���Y�H�=��v*
[2p,������{~z?X�@�VX7ǝ!w�EúMw	w2FOW;�+k��,�e����9<Z(�v<B{p C��1��%�Hy��	��5���|xY��ّ�!et=�� ��?�(6�a��0��y��R`7�<�;$)70�O�/�����{�˱��?�~���o&�}l��}Ӱtk��g�m�M'nau�����x}A��#:$�~�?��`#�9br�ƃ���%�ԤoCx��a�?%�@�a��ONa�D���W�@;!/N���b�Q�Mr���$&t�7ngV�����-���k]"	��l�}� VH��j�B�
��vqx]1T-�V;����5���$уFyn2�&�o?�Qhn2��_�U�Ʃ����	�g~]���(�rO�d�4�������BZ����1�0!Ϩ.FG�]�섈�&(-��N K��W�t����9�o�-�x��Ih�[�7����^lX�o��PqLot�:(b"T�id;�7|�ڪ��=�d��4�0��̶��b��"8�#Ѽ#:�E�x:�5j�.^O���4��M��4��(Y��o8����Pu�4⢺s N �~E\��)�8�q�-N�f9T�D��K��yy?x�����$wL&p���d4���ͦ,���%|�6�ג$[O#x�c;��H��f���?��&�N%!zd�!z�ƚ��!���w�>��LG��$;FPls�/�5Z���k�J�Ql���Ł������� �|Ȳ�T��R����|�v�$]G���W
n��\_�
�d�7��U�Tk���z�S���L�%���y�>�.�c،w�p�y��uO�9!�	f�Ռ�$P�ӛ@ã���G�C�὚\�n�\�[/�W$k �c�$�ڃvM�[Q7z 1�Vy7���P`
� ��P�m2��:���w	u�A�_z��2���~��A+9��P��FN��H�I�ψ�j-�5%#�|_�q��7tZ�
�]��c%i����#�ki��/�G�	&Z+[G�9{���K	�I�LK�`c7���xɇ�����;J+�U�p�ڋF�ڇ�'��%MA��Q9����ȋ��M1[dB���M���a����^��~E;�}K�Phu=F �,���)l�X�f,��(��1_��X�4#iF0�&}|����j�k���������X&+����B5��]��̨m��>����P94�fZm�y�C.2�Y�����_�p�!T	�B�pt-�m���v%w��x�*��.+�b���C�C)(��C~��"b0?^*L��#��.�(M�X�%w֙�L�.�{ZYת]~�uH�ש���͡q�CR�h���H	��,~��_t�zr1������dN��T����b'�E\�F�st���P4�(�/��0A&n��#���esuI��Z��Ri-˜hN+g�}�M�ZN���H{��(���s�l��hD�4���	ĭTZ�>�[莍^���p4��u����٬�_"�QJ���)8=k�}�C$>+��z�{у�~3G�	��(��f딱4�̨����9���5�T�~!P�M��+8���4�U�����t�=�J<�"y����~�T�=��cZm�˻U�Ab�꾼'�]�l�i��I��]v{=��I|a��*Kn7��D����q���~b��,���8���    �Z��,�w��������}�����⫣��u>�)�A$B�i��5�>�f�UK�1���KѠM���ʶ��%h�d�I��K�\�	��z�{:���^O�.�����p�5�F�d�B�����I"��.�P�8h�ƫ�?��*V�I�rC1-c��p���g���i�Sf`�}b(�}���7�i�;�Y�=���5���P�;r��[��Z�h[0qL���|{Y��7�+�i`�kk�?Hkt���aI����|��v i㡳���R�I��Vd�����-��iti�W�K\_x��=8A�n�@��ť.͋� P��p���
��ۛ�I�����H�R��<���n�Ia!<[�k�T��� o<�5E^L|ȸ�4�ˎ�=y\���ޭ�� �d�B}�w�����������=��<Xed��������O�Ĭ�<��l�2o�\�� $9���v[A|6�"�b������YF#U�?U���lre�N���d�ݐ��q�%mpvٮ����6F��.!��-u W
�I[���2�6�!FU�`:�x��^D��.�Z���!.(�єp��K��xQ2�)��#ʋ�>��y����
�!���76��v�F���+�-��������8�8�4�ͮ��<���qD��a#��0�ll@4n�C���Aڜ<EB�@�I����/�C�I
��؉2x�J��ϱ�ɗ{���:T�gSF���
�wJȧ���Z6�~���,�8 f��:T�C��ޠmÝ|�Z����������Y���t�Q���zx���Ԥk�e|�	�y�R��En��J"���j�kP2����4ъ�\Dl���o{R��R$�tj0��:��=@���|�,f�-�qX�P��_�չD:���^��ٍ7���:��p�����%ʎ�%�Ɇ����3"�<L�Կ�,��/����:uB\��\]���������P�̡�}�vF�ajm�r�
�pea�F&�Z��y����!���芜�{�]����=���B��ޓ�X�H-$�2�ܥەM��1�#'�`T\#��u���Ilg���wx��*�g�~5p˺dZ%�d����HH�@ds�����V���h��JC��ډh m�jt�J s�����^��@�df}��-"Z��J�m`Q�Rm���O�XrݳG��R=ڱǶ����b�{Nl�*����#��a��s�dZ�g�����I	*�F!gQ���R�/l���)E�%�ry{����O��A�}�B���1Ǥ����k2��&SS�ccmK��*X��J��wh|�����4dę��ff��4����XP�B����L��m�^�xyr�a�kS^��k�q�a1᭤N��t�]�~�78�`�:�6%�ţ��mj�#D����V;�B]�[8G�;J�x2�So1��VWr5y;\�;4�<"��V��˪ܩ�����=r���`i	�/�N{�?�;��w��7F��t������`?T��|rSo]ܦ�<�M�����X�w����N�I.��(��͈��K���6�<*��1L˼��~���4k}iY��1�p������.6�HIX�&��;�I,��/+��gF��^[�Kdr��'��Pqv��]��R֦�����;�T���⫒�l��f�d�İ�3t[��*D �~�^اN������O�<��Ք&���a�&��������7)\�0/��9�*�.o݀��4H6B���F�!]��y;d�8\�7V3���M�5(��X
�7�f޿�6)KnXc��x�UP-z�b^$y���$���rko�I�j�_pYrν�L�v�4E�b�DEֱ�V�	'n�[Ҡk��S�Զ����3�m�2Cau071�9"j����%�d���֔�C�����o�����Y�g+OY-�LF.���"�ɸ��2���Oh��~��Hӂ��NvQ��E�e=a�B���˭[����k��C��8#�UPe=�/�z����iN�5/�-L/i.<A���Q{��F~5,�G�v?��?S�^ygg��ȫ�]�� ��'�C���4!�L�=.Wp���n5M#������ǋc��>N��ֺD�A�_i��W�Բ��^�O��^� 
"<Z��|Ӄ���^��bSF���5��`ˀ[�/?k*��ƕ�0�)C�k��"6r���ڡW��C�u
���a���'#���~ϣ�Y���J�0�3Ǳt3<�N5d�j��r �q;�~Of��}x�g�*W��cp1l�[�[�0��,m[{�M�b��d��jZ�F������-S��#��z�ƆF��vtY-��Q�ۆ�J3ő�-0̸�����e�����s� F��L}d�Gġ�����x+^�Ȣ�9�T䃘����ɖ#��� ����
��x*h�t�VP|�����Lb�����gh���
Q	���QvσuC�O޽LVe�Ń��a'5�������.��*(1Y�N�4�c��/������{�ŏ	�m�#�)?5��w�p"���Ip���}��ِ�k�Z~� ���-�
�����t�����%vpf4����|,ǿH1�U=��'p����kO�"�ad�p �Le�2C���BD#�Ç��M �-���ɧ� ��Ђ!��4�3L�	��d]����
�(A�z��G���K��.g���ٍ�.o�y�R�D>�l�Ao��D�J ak$��/��pLT*	2�SrI����3�&������h��ҷ��%?�<H��9��+���
"�[�I�e��զ)��7S���"a`ߕ�v��w���z!���譊p+i�z+���r�I_l��0��r�d ��<r>��da�;���S���ֈ����,�;��ڲ�/�;��Ű���d���"���A�>�maړ΅�hc]��~��j��פi���t��n'|���u�H���� ��_j@^v�-� ��yM-���X	>�N#w*��+6p���#��g���傊0&Qq�*�'�t�D��6U
�����A�-tY��1��͖WQ�)�y�K��R�a��(C������7�a�&$�/˦$\"����(.=�x����r����;�!+)"u����WǴ+IMW/�����z�5<�AGȷ,EE���k��-�@6?�c� ��2R�3��Hs ����."�"���^\)%D����R76�]]+B��9���MeJIդ��G~c}�Op�P���a�����E(^�{ܻ�%�Ygڒ�Q"����@~\ҲJ#l�5�TB��r�d�C�֌���� >�}���C�Ը=��R�kd}Z*�@oݑ/��,�(���P� �)�wl� ����l�o��_&̷�1��%�Z(ϭ����#^����?��+ڹA9�)鬬+-G$G8>�,��w�u>[�Wc ϣ��-��	����f��w���j�f�G��<;Fi�pi��������L�������k6����[\M�*�����6%Dv��a�P�w��p���=�:߮%�0`��x�M3�M�q�]@�ڞ���$���������P�\b�`�,�
��D~��c���p�&�@{vM��K�O�>b#���s�Ed>��v��Y�u��P���F�0ma[��r\/���n;̓��f]�@�mn`� ���̙<P��&�;��ŶYД[ۉܖ��ҬG%j-�mi��*�0�5����ܑh$����X5��J ~�ӝ;��6!��ə���Ƞ���~/��Z[AIUb4AXa�@��)j�8뒕
a�/�r�%H����Ը�����h1|�����[��c���]�/]ҽ��Qg�� P�Yov� ���
�$AaD�Jea�^jp����gj�^�+�́�P�;ሺ�T�Y S�IC���G��J�d�,Lq�0����<,y�4�����0e��>��Qd[�p�J���y�6�F]�`�I�%�:(l��jS��\*Ձ���*�/dX~�*�25�tnN��zV����*��S����yB    �hy{�wB��� ��-5掫���>�����g3v��V[}�(ͳ��m ̦ܕۡ���~�hH� e0�})`�R�q2Vyi5:Pm�{F��|����8g��)-2�E�@�RS�G�1�k�Pw��An��#:���-B�!��3C�7� W�M<�8�)�"��+\��~]��?o7��|A���hm�_�d!%��y?T�՗포Y^\x���T��,FPl�Fa�(cn��@��mD�;qT�'Ӡ<F�Ir/��['�`M���J�fWޏ�O�0-�Lm]�D���g4�����r��c��^ڱ ����_/�H��b��k�▊���:5��S�
�g��/�e���~>�Wz:���D�r�� �0�މ�ޔ���|d�B��{C������:m�K'ŋfqi%k<�/��ۏd�cW�;L��z./;WCt+�	��;G�d_^�������xg�-�	�t�{�^�Ü�~�]�.�{4E�%���3f�	�B[Yp�u�n����O/��z�a�դa4O6J�pa�A_=��˦���\Y����y�g�6�N�V*�`c����������kh;)�D>�Wz^��:��ՓJ���Ww�/}[�7{�+8�qIb�.�΃o�|Z��q�x�o��-C(��������9�HN��8����#�'��0��у�i3l��"�h�KѺC��DK+��K�Z��e�La
� �&��H"��-P��EJ�(�C�Z�;,'V�fy��FR�֒��ť�ZU��Al��+|�x�	����x7�׻
>9�Ru�4��<Q_��U%�[�*��W$2����v/�yqR``�hVLnx	
��PCИ�v�B������+*����	�MM��.B?U ������1�~H�Sq��0O���	��VY�Z���A�Ck��}#S��"�~{��?L5�sR��r�	�@	�0 .a-���K�]-5e0�����
?G8HA1CA�Ś$�+�:�߸2���MkŴRν#�M�n�9��{����I1���z6�y�5��H�\(I��P?Gv77w��Sd�jGh�Z�"�����[Q����޹b�����d�C�hy��4��[�wV�I�zЏ�i����H}�v�L���39g��Z�3�s}�aj����QG(�(D��4��_aU=��y����2?v�p�)��f������O��g��dA��� �b8k{��)<�3�l�a�f�C=�ޝ�'ZM�(8m/����=�z�ic��c�aσ$P�n�1-�|/�/I_3���֨:ʿI�De�������a�_�������j��7O'�j%e�"b�>�dY�J�3o����~�2�4���ǧ�������Z��q�٘���j���M�b��F}
E�#Βg���)�5�.�@�vM�gi��^y{y��SG�(P�j+�JM���RQs�e�����̣P�`��a�D���t$�� A�h�3��u��ҩH!]�v�R�4�1�-tNR@j�ds#4?������y�39y'��	�^Wϯ�P�v��oC]����ٿ ��E��)���h;�=!���6���T�5��i�CM� b 5n��JP\�P����oK73Ctb򪑸 ����D"W���.��R�=�0�(5 Bȶi)JH�a5"]�MW^6���|�hJ��>�p��X������К'���	Q��si�`�������WS�4;�L2�a=�˓��(F�#��.0���]�8!�)�f�?T��1�)���5��?5�0|��R䒼�]8n:�Y��n�*�ȃ��L�(2�k�FK'���9&#�4�6Aē��T����%gT1�U^��H	�+[�z�R��Fw�f��������>.0~G*C+���C�����/0Rޢ汇�uu5��=��Dm�s�!G�h�����VH�4?�ձ'�y\A;(���0�����궤�B
*x쥼�"۳o=���<�#n�3�Q�2�ߢ��9����@�e�lL1� �����#N�ȡ�DO/K�n$d� ���IK�6�.9pFt�f+�Z�42�<�t�G�gv ��+��3O_���覑KYcL֭$}��8c>B���\)����yo�\���
�j��{z���j|�ݎ�I)�sA��H��^mw�+�4�@�������J������?)�C;��վ\�A<c\��πns�/U���#n�{�T��U(%G��=����c����П%�B��4�e�0���@t�q?߁�@�b!Z����������H��^�����Ӓ�]ÎT6)(u�OZ��VP����X��`!�9n�.LJy��\�+�~���N��,N,��"22vl�A��eADS����LE�6v�(���c`�w�cf�&S��s�pٿ��;&�#��t�\�V�^��J>���[��Q )����=��G �	,>��<����C�����|te���M&A5��]��g�9RCU�Q�Xݒƭ�֭��h#xc`Ǆ�
9 �~��l�#k�J��\C��F��"�4p	��;qI�ٖxiݐ*�]�xeu���Dd���v�'Sq��n�f�����fP;��äMByQ�� ��Ʒ����K;Ƨ9n)�y��"{��(9�Q�D��o��q�c|nl	���]��#=1��h:l-��;x:_����ND��'�2t�%ݯ�Ȕ�2�%,��`v{ohkj:�����?,	5�E�Z4|��fiab-��.��:keWyt�bqo��L�J�Vft�s;ځ�Zy"P��o�(	��7Di���z*ݷ�k���g�P�[�'��G�j����ܻ�"K��[I]r�׎�$���c㐠r-J�0��v @7�L���8�=jq��쇽���輗���O�,7�Yp���B�hL]����x���,@�V�_N �|6���[@uI^�����;p�&��i�,<e������"廱�I!\Gq�|*���}��m_����j���7z+���Za�WҮzN8�t�k���<���"��w��E�����^��	�$����m
�f3+<H�xGp�e���j�n�Yj�#�E�"�Ja�S�mA�{�i\�e�(�o��^���p��Gl�zE���1��	 ҄�n(����������o�������©:6j��M�}5����Ô��j��t��iGl@AGte���@�`zu�{��_�ɳ;�}m�����sAV��,��̫�W�����5�X¶WB���.���dQ�C5���������G��۠ܬz쀼cS�j���9����jh!U��3웰���{�c���Ѥ���PC��j�[��š�pv
���.'U�a�R�,Խ�3�H�o��Vi��*8W��+��d�3��>�<�	�p�����F-��a���R��N�6��rޣX^��	�N���.[�X`�Xֶr?��Pn��hJ�:N	I�G�sM~"��\>c��>�((�׼�/�� |�0އh"�����@�H`�v#vT���I�6�(A+���{ZZ$�:Ff�bM�g���A�^�A�j��ܞ�y1���$/��j���.uI��Pߒ:d�
}�*�f^j�~���ցڗN���}����Rh���頊�}�e��`*'rBE�i^D��T��/�/�ӡ���I���D�8�p����9��?������tCC8v<ؽ��>�A���E}2�aN��_��m�v)(�J{��v�0��O��3��.��/9z;[��,ְ��m�ܒ?��O��� ۙ�<�N�th~^�(��R��ҩf�ң�ܕ��ɨ���<�c����V���b�2�ԨAZjX�f�&k ��I��Z�Lbj��q�C����Ć~�������Z�.=H�(.W����3��Pg�h�/Z#[�vss�	Z�UH#��#�m��7��#�4*��]M���t�̮�u�{��Ya��489��b��-�j�믆�g�o��7M./n��d1GL�#��A�;&�<Q"fvm��4�B�f�ۗ��4"��Sݩ+�߇�7�i���;ɘ�N$3�˔�BHH��ߩ�Z��P9j����0���af�W�<�� g  �A�nô4��A)����������_�U�$��MJ(�	�9C�%����}�W}��;a�O?p���s�̅���5|��",(H��o��6��y��������h�G{Ҩo㌒	��y2=����8��o;A�('�E�{O������DK��gF[��ƙ2�DS�95�'��ap�L�M�쮩������eλӊ}�4F���Q�����.j�z퓯H� 0^[%�dS�Ra��ߣ����z_.d��'Kj����,�{�>��g`˼iP-�J|�
;���"�JwR��!8���`.�3����zGW���<V��m��ް�<�w�-/}�N�E������ |�)�x-,��c�yk
(;��1�f�w������-A'VSw\G,�\�H�$1�Sēp<%�N�{$]��g��Ff&�׆ط�����.I��DA�'�$�Y�TʠA��Qs��۟o��֓���0�����j���8p��m]�T�'���'gbIo`&��a��֭S�*��oSN1����e���z<�b~�]��z�ާ�����>�ڭ`*{�Fr${�/����(x5�OT,o�%���N���O*l椣����Hs�L�zB��"����$5�̥hHݮ,{��~�ꊔ}�G9��-�Z ̋W6�j���JO
ӂt4lm������MGIՐ��y	*S���ڞ�������3��n;����=V���|�nN������$��9�����CΕ�vc��Dc1�̞�2Y	����`�|W�x���j��"x4
�;��%Z������,M�k%� t�Z6V��"\6Yy�Z�4����H��3��M�	�	coy{e��.u��09Əv7�/���f3Ŷ�����b:���^- !�]�b��m�!n���}���x�����bu�˵aO�����LƷC��G�G�p��&�&���Rb�ش;���K�� X�e�BǏ�#gj�uV�����"k�Qt�/��=��A��gh�TI���^G��w,j�5[�< �fg��yPx�!F:]Ĥ\k�5/���Z;��S�7�8����e9��	�D�����E����9�8��ڂ]a�$!!��ō��W��O~���_TѨ      �      x������ � �      �   �  x��Z�r�F]�_��*:�V����*W%)W썪f��T{ 4� X��`>CK-���.��͹��H����Y@"�~�繏�pp~����uD��1S>��I!�B�A,�D��Y���� �?�*��
�@ffoU!���Hf��v>�V�<�W�f��>[��2�;��[a����m��kaR�ʂ�NW�f]M%Q��&�����jz����{$�,�-�n�,����̕ґ�Eg_U��޳���)i��ʀ�wg���V��ǔw���\�]3��"�x;���'��D�c��d'ym6�{kU���jQ�4�2�4Fe��Yi�w��$(�(D�H�A�0�o�շ�(љ����6��p9�Zz� "�h�Te� ;2�mQ���9~a�ȮW�8����H�\]~�wQ�j�i����qo'�R�~�V�ё0+b�z3��|�%v�k���ǨLt{Y_N#�	����X
�ڌ`xk���#OT�h�/_�{y6�x�W^<ú��+�S������8�.s��Y$�
ʱ���5�s���L��� *y�4�Zx*�*��"����Ϻ�Y�(M��"��6%�cV���P��`%l{C L8�V�`6DC��y��B����k�Dk�5���C@���8Gms�i�,�r1�r'z�ET�lG��Ԥ���0PB��%"*��ۙ2����"����-�k��x�5 7�u�����w�c8X�"%K�1g��w`�
Ù���}���.!�+d��:��"�e :�Qyec1���^���q?�go���T1�0����q��k�!0\#�G:씗�7LU�F4��T`5�!!�O�=�z )�V~顗�b��cb�B�<�+��A�p��s	��ɝ�m	�X��������{Ttp-o��zƔ������;��ݝ�"��;������a�F�Q��X��[�)���C��V�iTĿb���,�V��r�|�Ii��3�A�c���K���r x<��CM@n����O ��-��!����Zq���O
(pPx_������Jm� �$b�N(���\ �N�&<tR:�W+K��B�Z#5
����0
�Ӛ��ͫ
�sypԇ�M�"��Wb;��e"G�@uxZ�w��α&���y�8����]f�f��r��DL�s+;j#���^�iH<�L<�8�;��á��Z$z#].2����|0�:�3/�W��𼭃q^�V�Ɣ[ H<j%�;�F�̺	�pJY��D��$B����jT$L�|<���k��Q
r��A��MXL�V�/f��6"�7l�*�([��@��3�Ϙ�L����{Pk
ϑ�Ր��'�k��SY [o�TGTh���M�1�1�%�!-pXH
ث��A�C��A^18�|m���f�-b���D$��h��v�v�����%I`A�$@ӫ����FEy+����6�:BE�?Nb��@`?��ו�CV�`�o�����,�:�w_�>��kȟ.I�����T�ROH��U��Q��/lh��q2=�����M2Q���i��6��_4�F$��g!������kl�*�6[��ˤ��1M[�7��R� ӭ�nV�p�1
8�$Ls�I V�6|-�*k�E?�Mh���U�8���=���s�n�l��T�� �^*�<Ҭ
�2�����G���:-&�{�TN�ʋ��[X�h����:g��*��<�ȨDfo
V��������L[���3G�^�-۲��c�3�u�Ū��6'�(�T;7��.*��3˜��p�*L��!��o�2��M	�qe}�#���n-�U$Hb��a���W���$ƄONX�J��L���W�#�� y(e����ö��%�!&��ĥ��?��vj\k���9�r8���JX+�͉B�#K�Z��D)NaS2s�?�ClL@��Q��IC���vM�r� P��LgN�.�T`��@�)������>�.Qk2�.;j�/dCG�8�aO�^i9;M#��[<+a�v�Ŕ bP)nkb�X5x3��O��I��T�����d�����Π�@��s
½
g�TZ`2�;<ǚ�Ͱ�͂�ɍ�� 6���>)��R��U��pN0��h���e� s��6_U2T:a�\��?ЧiO)��<p���{K�0гL�ȏ���/0uQ�EZ�;��s������� �n���`n��uS8�BEcs��^��ɇ�uO���]G��n�����va��R�o�[�)�H6��q��L{��? ���8"�8옑�6�N�fP?���������Ke:��h�q6������X��mӍѓ	>5yr�vnu˻�`1�ω���~�F�I;-h'*y��m�i0���"�
�]G��t���5�|�5I�QǀD�JK
.�H����������`gb~A��M@��n�ٴ.i���Z�+
�>д
��D�A�X	D}�@f$
�ϵ�>��q�!i���D'�d(���d�c
���?x8�I���,ƴj�Rk�Ǹf4���&	GOh\���?��,tU��*�.&�u'�j��:˃W�r�wۖ5�!�Oi�٩R�V?4��	y���VTFfR(=gbSh����p��TA@��I�h+��Ӑ�/��3��*IM� B��{-h���������by9KZ境�%�r� F>}'�����p����t;�b[7g�/P����F�ӹZ%[$q��-#7�7��{revT�������d��My����3݅�d��K�����?C�T,h%+�}i���*[s���TI!�L�Iu�{�-�:X�D1z�5P��

Ĉ����P2�fgus��K_�uk�#�`��5'&�f��83\6�������K�*"��j���8��y]+4g��u��X�>bZ���v|�Œ�.\�q��U�6EH	׀|n� 7��t��s1���}�:�BS����
�r˓(o�$�f�B�Q��;^�9j
R��;�l�P�ѹ��/3�&����ߚ�n��7a�M���j��F�lqk{��9j��9��Vb�(�"����n�E��)����;N$��#�9��jխ͙�g�7ƈ���oQB����w�Ʀ~gUE
�;�uܒ����4���w �'�RM����z�#��I����r��8�g��������y���F_�!�ڮT�+�p<���S�TG�4�v����eA��X&��}�܅���dG��E�
I���ö*;����A�Z(
�I��%���^`��{9TmP'D�3,�$k����/�$���j�W��U�C��mGA��)U�ҵ4+���ɉc=�QӒ[���Q8-�#8�)�8 ��M�t�{ȉ��^M�?��xJ�D��@a���R�>�h�i��Q�˭W]1X���^g|Ի�`W��fzt�2���3���鑫�'_o��Ӫ''�սC"�i-�>բ�W_,��e��ֿ���+a��Z�^����pS]��T-�"�Z��-�k'��)�C��/.�T��I+9p�xK���]��� ����Q4.j'4��jT�8����c��7���OB���A����ݛ�N��sl���w�\�	�)���E�U!���nraE��TZ�-۱�n]�'�c]�����Yvu\t�+��|�9�a�I5(�/=P
�)�P�������{��=��w:t}���F�{���5�t����f����p�_�z�      �      x��ZKs�8�^��K��vI�;;[Iڮ�<&��DB22�&HW����Gd��}��-���w��$;�Yt�"����������v��"7kS��*r-�y�Q�ʷ:���3��T�5bkR����I��H��N�x���Ve�wrgr�M�R�Qp%S�Q-%!3���
��m��б��8�&KTf�D�&�c�cF`2Ke������~�$�����[�`��)q.f��"�sm�5�\��d�l�t&wD<�&�{Q�p A|�Jƅ��_���Je�iV��pR{.��;L0BnW'�i8� 1����Ņ�)v�<�c�-��n��Ą��$� O��q0��M���L⌣(��UK�4��%����i<�@}�`o�Dmr����8+~�g(҄�Q�^Ơ��ʣ����I��p2�:�*�����'����d���"��7�{��6`$U6��K�])f�łVYK{:~�%�b�p�5�h+����հ�S��PB�͒���i^g��8x�x�d]����L��vE�O0��+�j��]kHa�ef��4��z�탖ݚl��N��Իd��@8�� KM��f���I�f��Nf�����p�Z�Kx�R���{i%�/����E��;EC`|��5AwS���{�m[:j櫆���Ar[Z��s�N�%�5N�K�cг��X�>%n�c�.�}�-�s!H���cJl�٨*����&FZK�A�8�Z�]mZ�l|��Y ���h�aA�VL� g�L�2aK��Z��%M�geOH� � YƋB�!ځ\o����y*>��ķ��������)
X*��_dJ���?�l�h�+xA"8֙�$�M����鸋}��X6p+S9�P�հ�X	@�ap�U�ajd��ڲz�^b�$�$
.e���aRGZ=$��q�r�?��T	KH��)�/��Jik"��=�# ��\t �`,��$I�*c	ӧ/��3�A�$ �^��u��lG���t��i��dx^������5;�CWkH�� ����kB�ᴿ�*]��:�I�`��O����a6��u>;��1�����T�:�(3�Q�-@�l���w���;�h�D�U@]�@T�p�������˓���ek
��{��p�#C����:3�ʬ	��|0� ����sA��8K�#�;��k)S�K��J'�PJ�ʔ��I>1;l
�;��v.FP�u�����ٛ���XY�{s+�G1�?�!�&m1N��:`D`�f_x�N��7��Ep�8T�	",��
F�}��+���?��������
y0�zL�ls$���m/�r�ɷN��-'�C���q[تL���e8$�s�Rr�V\02��M�46:�tљ��/a���s�ENڛT=�Y`�#���LIhFX2j��y;�؂x(�+dd#!���Z.>�|�`��X;B���8��c��k�Hׂ4M�*!WZR��o`���)��2ޜ��{8<H᭡���Cƥ���(&2�����p�Ho�ũ��΍�`��?����ߙ-ch2�x7�BA����H����2�`W֩<RB�AG�/���|en=8`R<)x����ܚ��h���eq2��x�5f$�<�R����.�,h��(� ��W��
�+|��錁�To���@����V����(���6�7�y:7d0��6��TB��AO!�w×G�p1�I�P�_����5Z�(�?��gi����ip3+���5�Nt�7W�Dh�M����oH�ص��Pp�wK{둡�em�\zޛ�hIM�}��x��S�7�gz-��	�E�#�E�MZ�I�ad�1}4JF��0��(�M�S%T����`q�^����rZ\�C�͇%���M4';g.ľ:X�9�딣�h��dmt�y�x�َ��~����i��q�n>�p����ڎ��/=2���!���Egip"�H;F�)%}��}NU��B�ޘ��p<�Q�V�Ϭ?��PP�{�R��z�~C�ٛX�	�K���F7>ķ�DH{T�`�L(��d`9��[rpߔx��%%3dG�u���T\�<N�ͩ����	��˿ˉ9��/E��:����Y�9�K�Ǵn�Q��W�������J�~�A��o�U>7M���O	ߞ��"�8�2��M�ߩ�O����+2A�
��j�� �3�^u��.��#Ł� Nޓ�ſ4��i
iNGfr���{]��'T; m�$v�d:=��I5�D��e�|��ﱗk�"��MJ�{���h1v�D��,&�b�D�����--��JI���V�J��
9!qm�cg�2��q���V���q;�[���U~[e��A-�kn� 勘r���;����1��*%G�%C�s������3=f./&lc�n�P$V����vي�F�g�")�K��1ڤ��D5�v8��U�qV�P�	���y�T��7�X,���9'x>p�c�N+�)qr}�1�p/))yZ˼A[�"ܚamC(�wz�o����,D,t4�J��|��"�qcr�m	����"ދ5й8�����
pc����̨+H�B�:������>=�9���zi�E��{�MFf�M�=�|�$�+C�<��?��Q�h㉳߈�8�9gQ�:�>�-���Z�| �x�m�E��u��#�Vz#u��CHt�]Q��P�S����H����|t0�Ñ��8��ϐ�1�*
��5]o���� ���ÎU�(��Nږ'��(xG1xV�<P2�+]}��(]�\&�W喪0hj�&�r��R�T���)uH��y��ǺXh/a5�r��N�\k����i�p�0|t�oT�m��Mf��JJ}a�z� ��t=]�KϹ���П�y"�c;df�ە����J���Qe�n^�PowG:�^
h��X5ǩ��V�;w�qt�B�Ѳ���P�v�{},��ʾ�W͎R�e��@�9�]�C��ك^D�	CA��; �vEܵO����qH��u�5��\���z�g�(2;e_44��Պ�,��`���@qm��h�\�ν��ɽ���l�$c}�N�~ͺ���k��U�R��W�%�r6��M���W�Ov��GJ�e
QfV�V1��~s���r 3�*u�'����d��z.n�0{�0��k���}��g��omӡ��Ζ;p4�vGz�;�kR�#��+�qNؑ�7dd\v���?5I�5b���x�O�	����^��=qu[�(��Z�RiB M6���*n���Τ��[sإrl0�S�ON���_��t��Ȧղ� �={^�����P'>��A�s�Ik�n�z��F���wON�������C������I퇓�O���_9���t�v�g�z�Ţ]����w��FA�?.��@i	a�kq��$;���v>��iP�����2ڨ�0���yp�4�Y{A�1��F�qpQ?a�T��A��2xZ�+��UE�AJcI�D|�Y��0UW����p}��.�V?b_����J�)����T,�����x�௚���nA���h�U_0��'*R��GG
���֨��������:��s隇0Y�E(P��Fj{�~�:�I�����M��tvd��dF�B�%E��*u�/��`+(����p���ݣ �kNS�G�@��m|ˑ;��r�j���=〥=��+3Y{i�����+I�V��E8�@�sp��"�o�J��TE3٘���[{��]%�B|�SH�Sk��
vO���g�D�����P7�KE��_a��E��"J��]C������%M�E����[��Ds�a�knRI�H,�t�;�Aǡ�X�kT�wH=��6��}�gS��"���DU|K׺*՛��CD�I�p�����<kA֊�ߕ/P�URB4�\ں�t]Q�vM���!;�v�oO�;�9�h���#������azt�D����_�������6}]2hz�@���q4���8*�`�^����K]��\���C��`nT�!u���>Ϟ�hR�@����69� Iϩk��e�����dwwq���3�PpL�PES���`�u�e�*��~�\��@Y u  Xr�@_�Z��4�"E8ʈ�Y��>]a����h��<��u�����?`$
�)�˥��}��`�R��Mdv+�r�=��"�ٶ��r̶�|}��0����A�%���_|��������/3H��3P�w��mW�/j�}F��
8����-��·�X��s=2<z\H6L]-�E%QBQ�r_���,�fY�(Z����^_�����1]�9�ΜD]�'�fz3Wл���,��ʞ��^����~��~�F�nĵ�s�� �k����ȳ�j�M;1<
vWԎ�T�[� F]��|�|��|�7�����B#��S�jц��?��k���µ���0B�����竤LxM͝�MG�<w.%O.�鼫���5�
j����6	�u-2�Z�ԗ;�ؽcB�wzەC�)�av��^p.@';��Ϥ z�%6�^�o��F�8pĶ��h\}�u�?FG�|�N#Z��к~��w]Ln��x_����E��6u�*8Dk��W[�;#W���v�Ţ3���fp4�}�?Q��IO0ܧQp@�����뢞9v�#�:��6�5��}��}��{\����^W?������5����x+~_-�1���x��<��r�;      �   k  x�-�Q�,)����1P�2�_��5��W��B�]'n|7�~��үo�W�}��Q�sG�~��;�ɳ�~#�ɉ�,�h~+���M���.�Kux���GP1��c>��I��{���2��VP�3C����*�"�8��I�g�8E��P8$��8$�2�%�q����|jҥ��q�L\*�m�
�ͥ���R!W\*��
�q��6_�]m~dΎG�xd��̩��9_<2�����G�Ռ�];�Qb�x��ڻ���yQdk��=��ٷ� }��E��ӋW/=�H\*��\�GU��kUi��MJ�}���Y��}�h�����0g5��G��h�Kj����aKj�6�-S��0]If�d6_If��l�6���&��d��d6e�w6f���l�٠m2��"�Q+2��"�a+2���e־��YQà5LZQè5�ZSð55L��q��2oHZ��a�����2t�Z�U���j�;d-���e�еL���C�6q�&��T�}��f{��am�8�m��m��M涉C�6q��&�y�k�ġm�8�m��m�0�M궉��6q��&{�ġo�8�m��-�?n���m�p������6{h�f}���o�=nQE���0�Ea.j�������-
�[&&�(LLnQ��ܢ01�Eabr�������-
�[&&�(LLnQ��ܢ01�Eabr�������-
�[&&�(LLnQ��ܢ0��0q�Ea�t�������-
�[�%��9����ϑESN�k+��_����H{�/E�r�_���#����H�p�5QG��������{�(�f-��H��CE��*҉0y4����D�GMLM41y4QG����YM��#��D^u��jy������C��K�U���a4QGZ�DiUMn��׉�D��#��7�h���z���̜r/"�ng�;���3sr�1��~pӌ��k?�s�~���>c?������P��8��~pK������-5�7��x��R��rK�g�-5��[j����n��l��@/��t]9�ʥ-ʥ��n���n,������|�M|ȭ{�p�5�&��qs�ܒg�ǍPT����lԈ�2�����=��qՈ��D�� Ԉ���o2���\������$�l      �   �  x�-��1��`�Fh�����*�e�������/�\�h}�����X-�s���8-��y��~��m����S���T��#@~(�U�nk{����������!(���v����s�-O̶�ն��n[��G}���<_;�_;�ގD�y$���dV;�ݎ<����==����glA ��$�i�s���&���5_��M�4��uXë��T}��Ӗ9�fI���]�IfDJ�[ʷ]�$��G>#�%�WHh�MB{h����;)��FN����庾���ICz{Ft�&�����*|�8~Z ��K-8v>�$|�z�r�z�o6�5y��|�?y/�C�/T���6r�pM���4���ۊ>y��ק%�x'�n�o���`�E��f0b� ,"�U���A����dr�n�Z�#�uk��E�K�e�e�_����v{d8�i�E�R�W��%f1Q����j��~v"�����i�b��j��b��'��:i�f�s���f�q��n~�H�?�e"3� n������_3��u��馓����쥀�]H�C7J��)U�2�r<�����e�-�\'�Y��4����d�ҵ�i������HU4�֙�1��Rת�����I�ns�V]����e��Y�2gS������Y����?k6�ñ�*�(9dr3�\Of ����NfǷ:0��Y��J�V� �]��8�ܿ��$i�APw� �D��.b�H���-b�ɦ��`����-��Q�!��L
�4>^&7t\����u!���H��U&�Xe�w��\H �\��\џ�K�D|`z�z1��b���-��Į((Z���D���� ���疈�F�b�̂Xs}�f' �8� D���+�� ��5�:nY���5�5nYc��5j����޲�KW��*�e<Sceק��]�Wv}~_��~e�'��]��*H��N���	�v3
�vg�$ܡ���n`<�Q�}�����}� �;k       �   �  x��[Ks۸�^ӿ�S��Ⱥ$�����x�8���3U��l`�1��$��)��EVٝ����H	�H��ܪT,QB��ϯ-�������}��HV�*��s�rrˈc�6Y���}����D"��u���{-Ri9�=x@ײ*��X�o�S��N׶x)�Z�H��,�P�粜�J��d�8�o�����3v��3H��_wciښ��[���ɳ&�,xQHRɊe�ȼ<礔Y��㓒/,���!�MH.��=�TNd���ł璤��yV���o���-,����p��ᤐKI~Ɗ�eӳRC6�EZȄO�(a�	C�%�9A���/��X�Roآfc�Ds�ޠ�XV/E.$�E&Q,�R�a&W��Z�xE��
$Ҭخ����ȼN�	�!�q��3ƖOc�y�,K�3�Q��O����@S-Q�U!WL3�+|1t�=B������b	4��9/�fj��8@+�P
J�CH�8�(�b)���w�Ky�𦊗J_t�R��Iꔊ�G����AM�S����l�~[����H��L���
�:a��5��[�+2F��j�\[I%RRA/�����X�{�U�嵫b�d|�0K����R�y.2%'p���*ԕu6_�;s 펇O@-?��5yiXزԘ0"�)��]�NȊ�<Vɭ������b��3i%�I���ic���`X�nwݮr۲~�v
v���ʐ��r���UA����.�;L���9��G6/Tܚ�_x�\$�1 \��[��@�>�}�3�4cI%�*VA�mBt<{��{�F�S֒���RNF��&�R�C�= ������!���G�����@#��AC��oA�,�h��r�v��r�Z X��i���|=\=�_ݠkV`U��1B�L ^�p�/<���E��a�S�*�ŋ���3�Y��z�f����Ln޲�,kxW0�4�:/�g@L1���FʠC����^��b�Hi+�}��\�}W|�N���7� �7I>(Z�/���b�D�%<�o&��
�Y�K0�~Պ�c�TyR_ڛS_�cL�{��2�R�<� \��"�XNP��,�f�$�i��S�[BW��B$�,��Q/�� �"<$�a��XS5Q1����7yΑ�����#��2_�#��CƝ�8���1�9���T�$�5y Y���!W�*.[��|�����*j�����X.�<����2V5���`���"�:C�>���E�+ye�|�� ud숒��w��L��/�
&���xC�����w+>%����Fd��nЅ�Eg#@� q�ѧ�$�a��f (��;z���d�6�w��6��g��K8/{������,����L��aS�R���r��=�ԙzHl�:~Ċ��p����8jO�к��8���Ɯ�沂���d����j���w�,n� ��Y�ˠ�#�c���=+��=yb%8ʘ4�j)�m��k8��5���U��${�m�C�Y�]~�������B(�& b�}�hrm�z�3w�Pi2°�I
�ǜFcμ�ɡ7v��x���Z֎��A F�ߢ�&��Y'�
�`���^N��=�m; /�#x�V[�:�}ܙ�6����uxߦ2��?�q�B�8`���;�u�����x��;������1�0�>j8Nǎ���N�� �U�y�\w��P�1�D�Z	�����U6��YBոS�w��/�c���E�9̷��E��Xb^��)Tc�^��{�XQx�2����j�1�������B8��c�\f��P��]Ɂ�Jnր�!Ի����=[�揖Z6u�����gWW�������f{=�� ��/Y�,S�7|B�{�2���W�~-~��M����#Ql���8�Q�/���P8Ж�F�D �`�����J8~�2'�e�~���l��P���8���� K�-�F��1�d	po)�KFd�����������/�@��w~��S�E��H���?�YWo��	����%���Y��T���������Ad�s<(�As�\�Y��7�݉\�+��@�4���~"�wlc�C��aX��7k��`������k݈��v���8+��%�/�����yG8[���?b�J5zSo_HQp�y��=�x��r����dMs��#Tè8i ��4�V"k=��#�F@ִ��m8�C��E9븘��7��Hԫ�����3U7�9����Ǆ�l�ȼm��3!�=���)�~G�?x(a�c:�j��E��>�,��5�����S�a�f
0�����)5�&Dj���wrp&t�c���#����^`���l����n�����n�!:K�ҥ������� GfB�X狲�8�X%�(4��A�&�*�z�E�A���S�v��p���C�l�7��dj�Q��?E2Ԃ��u��M�H�N���?����k��C�۶2�e^�:��4�k������?���ãRDZ(�/ɩHeʓm�}��)^���g��� �����Dqd�.���j�r)Q����L<a/��Ln��U�M��br�i�=+��M���JR�䓨F6V�f���K�����S���=`�U�;h|x�Ȍ�7g���k���{�B��a;rz;��7!�����mCL�L������q⟥b%��U���+dɏ0^z%��wmj��I��;P�Z���OP^B���#�sFnyV���"ģN���Qĝ}�)�U:�M@�q�>C��!}˔�P4�P;��LIϝ:��:�,[���79p���/"�����6j��ˬd��c=��'��W�~�Gu�)�`�]rJ�Q(}[G�G��4D�;�����4��Nu��e<yf_����Z�;ǔ,����}ef�u��f��L�7mi򼱜X�P���c�$ϵ>�I����T��_����O*5���^/�ߜ_M���bI�f�R6!f6�TM�1i/�7X��d������'ͷ�5L�`Q�`�@�`���iߞjR�6��ӗ�i���|���J]�B�+��ͅ�/�����I���\��F4>?Ý+H2(@�{S%s*�:�8|�*1KL��|itޱ=�l#/��'k%���Nt{�12�Q����͙L���`� �v�^o��mչZ7�ԍ��8��B����S���6�������dDNg;����(ⲭw��2T��:�o�� N+㍷I���r�NE]�A⨶rcʹL���dw��CI�+�_��8Nf6ǃ�y3��+�nꅒM�\_�o+�VVj�@	&��(�;A�rJ�$�����,֎���#�)��큫���Г��7�'��$��jf�<cP��)��J�w����z{��♊�X��M�����6ɓa��z�Q'Z{jt�zf�xqqONu���/��Vgm�Y�������+���wj��5�鳛�%5Y�	0 gB�r6�@�P����;�f�RQq}���A�p��m�{Q�/z'L��F��ۃ�>*z�Q��8"���[����eS��B�C�K^$u�R$D�y�'��I��i.���"R��R��<��S��Q�S���q��։&j1��8�&p���z=|�h],1\l�G���:�(��	]�׿�Cv+�榀�W�_�9�[�1�z��VC�gXarZ�M����i`#�v�_�(���jf���B���ی�5�*����".kA��wxk�f9_ûaxK�O�� ����YQ�| ,������1'���5�_<E4�����m�(�TBrX��r��kJ1��]ai����Jcmd)�O��a�`J]�q։�l�&����;�_�,k̇�Md*�>���ڰ������y�:l��Ò[T�{�<��T����xW����5�a�k��S�CV
�ݹk;���[��V+���gY e�*j�_����j4������o�H���+���W��LN|�t2��"��}%]��r�uzrr�C�Q�      �   �  x�-�K�,)��a��������.j�nHBIt���fܿ>v;�ƆN;����+���>�vx�����p/p�F;��C��휶\������mnÞv�J;o������+��7Qc�	Κ�QAD��Ŋlw��QL,��58��\���w���$�jFMrmr%H�Ӧd�����גR��_-��$HV$;[f!{�_�M��#�R�y�M7��,��3����!"�i��:��<�|ޜt-��m�������/�F��a��rU|"[���k��Ʒ�������c��+6��޾������q����ٜ�om�������7n���_����80m-樌ދ=���
�g1m���7U�7�Ҫ�^ggtӎj�觸w���9�k��r��ͧ�-9�c�v��G���0mT�X�]��<�9��>��}��\��bW�Y�8Qc�s��	g�li��q����8�9�L��7'L�cN���6�(�����y��WD���J�̈U\գIy�
Q>�0��M�E����"3e�O��0.�C�5|�8���S&��t�YUg5H6+KR6k�M-�z���2���iϏM{L��+�|^5N����ᇵ����2�����)��`��v4<��y���sX�-]G�ֹi�r�N?�r�N?�r��b���{C��l����}��Z���jT�p������9PS��p3e�����S��ξ/<��0y7=���r���]��o��.�t��{��ɻ�@5�����o�wzn��z���wؚ�z?�7'3'4o���f���*�S��;a����2gB�$NP��?,-W�xq�rԹm�Q�5�{�&�Ӡ�7�˒�g�v�)VLaJĴ����J~L.�Q[�zf�&G����7n���ίx_�+��>{L�����(�}Oo��B�-TI�S�ֆ]�U��;�e�G9��g�q�3��Ŝl�O��Ƈ�~L^|D�INy�y�}���Qe�y��`N�w��G���UG���2��S�٨%ҷ�5��C��|�&�|�y|�@0yUt���>{1g�T0/��P�ǋ;P��31�@��O�g�@�o�(T��X�cP��36{Y^�|vn�@��5($���i&׮�cHL�8X��9��m׉��׎Gl낿�uA�>l]�c>]����e�z~�y���T��ڎ}L^Ӟ��<�ߐ�9��ɳ�0@s/��˚����#k�G>Y󘼚&�`����K�U��:&��[-�d���ϓ9u�د�za'���[��(%��Q<�U�Ŗ�~��)u����-�����0/_y֖�+_i1�W��e����i9�1��i�����c��W$V;�s����k?��1�?�J=��0�֬w�)��z��zg=AN�������w�/�)~q�7��d���'��ѓ|}Ǜ�O��$�$z�%�T�����
���mxR-�_��e�om|�x���Yj�I��������t�������_B{��r�����������'       �     x�mP�N�0}�� }��J�}�E��loKH�:�����d����>�{N�=��4h�i�,q
s�#LI�e��)D��%�""����9��,B�%CY�
�r���ȣЕ� ,+{��D���턵��KՒ�;�8[�vqm�d�l����Lr7���~x,]��U�9��$}k��_��[)�߮}z5?F���j�w܊w/�{���[x��.ѕN�������ʃ�Jt\�3��(���~ϝ�r�xȧ��:�7�8|���8�/cS|e      �   �   x�%��
�   �>�/0����8�
� �Ę���1ݡ�/���
���`�Y#���'�خ��I]2�$��9%�kj%�x%_�"�44̊
��\�^��-C�c������@�s��}
��v�|x��Ć+6      �      x�3�4�4����� �Y         �   x��K�0 �u9�{i_+ZvSA$`�A�D���4e��]EJS�����Bo0{U�n�:�#��x>��Ƣm�}��x�����
�A�����n�ZN2�1��C'��e�k��k�&���^"x�C�{Z�?�w�7R�B��Zź����L�5�3
t�1D���(�i�3)         j  x��W]oTG}n~E��a�=�g�}�*�j��E���$eA���zCJ�f�tQ�]��ݙ��������woޟ��rt|qqtR^�Ņ�PB�b�E��<S���̖��~����Y[N_/�mqn�qtl��Տ�������;;y~u���촜\��r�S[Ngv��0EBU=D@����
�rN!%�$5���������������պˣO�uT�ޮFx������R �e$j�tl؂�hX�n%�V��L&�9g�Ё- �VS�[6ƒ;���z�%�/o��(��lS��W�@�\zo�[��-�1��Q�L[	t"�H҂Q�Yh7-�`P�-R\�tw�C%Q�"��^,��N�}��0V)|M���?�_���O�/S^��OA1˭Hi8([�lCk�k�}!�V��\5�i��X�"���)��u��˚��xc�f�R]OcU�ܱT�5��5XV��K�� �M�-����X[E�A�q�(K�o,���w׹�TR"Aos+�QU��j�1������/�}z��ї�{4�4���a�(����Y��#���M��N�zl�J�,V*AR�$����j[O�:�7���xC��i��i�Ij�#Ua�]KYS�䴆�7A�>I�(���6�� +���l�z��߫�#5�R@U�\�T1�`�ʪ���Wo��Z��vڗ�~�8����u����}37B�dQ����s���V�z�ı"Y������+Rp2�h�u��g���J�3����H�@{���٦<�1H�چPSNkr�(��I��-��6<���"V_}�yR��g��6���AEВZ�E�{�QCwf���������v}�ݥ�O'������G�����7�IInڌ��{�u�p�jM�h��n���3�$ã��.CՕѠ���L|�v���qwRn��.Ϫ������b�ѣOV�,�7Z�����=��܄pwwc�����
�T��TxՅF�'by�ˀ7Ԙr�1
�Q��b�p>M/���z�;�;vG����vd�p~��ݣU7q�}�8h�="���F�oTz��K��!��aA70۔�zV����HA(��M��p���o��G����G���"��1��Hb�R�B�����_�j-         >   x�3�t�ON�K�L�2���+K-.�LOL�<�9�˘ӵ�$5��1�N-*�L������� =7         �  x�}SAn�0<s_����Q��@��v�S/�Q	Hd@R��>���z�Ǻ��V�������R��i�m�|�}�l8�;�R�{3�D~D�����?IGv�.!7�I+,QI#C�d/ܚW��$�A����r�$�4
V=4 ���Hd���"�;mk[u'��y	�3�%$bA^k4JK��'Z�Vi%=�����da��aL���eu����^r�r�З�~ߝ<U?�}aY÷�;5��G�{�b}���R�]��_���ow9�tJ��*��_�E��;��uw"����<�&�yF��|D�D��WV�F�#9��PZ��ޣ��[0���ul��?�T��4�qB�8�%�<k
���1�&� 1{���5�ٰ���)�?d�k�>�ۆ�4 f�eݖ|��.꾩����vX��E���W �3Xl         u   x�U�1
BA�S����"
�V6�$H`]!�=���bb��3�i�%��Ƈz���h1��[G���5~��I4ZN�0�ǿ�޽z�@��VGS�����(]�:#���3{      	   #  x��W�n�6]�_�e��z�FW��L]�'��f�H�C@&]R
&����Yv�U>�?�{鷨m�	����}��PB��Gmx���A)�\Լj�Rr��j�*ş$��$�}�ȷ�H]O���=ӐEm�9\V`�\W�h*nȂ��F�U�I�������,��|
b�L)Kڐ+Y�(v�ƃ����0b'8����}6 #����]O�@�C!��6����ʂ���z����#Mne4bg@�+��Z	�P�T�Pa���\���^��d-xm�B�k����wA��í��!k��5��z�&^���Kn�/w7�Հ<$!Z�<��H�н��Xj����K�-�s4 �����g%���T����䕰-��0�z��E�Z.y!7�*��l�(�����xt|���)jm����E�J� ����Y��� U�ip%�'�M�v�S����M��sk��蕨1\�Ř��Ё���6w�ezM���NC{9��B�zx������`-�����e�?W�'��ǝ���=M��������+/�ae49o@w���t��y�2��mK�
X� vy|=![c��ے��2�~���YLD�t��
TTZ��)ٮ�ȅZY�u$0�Q��$Zpѝ�������G!�:�!�# :�4%ՇŮ

�Z7 �J|`�.d1��@;� ���w�M��׻�%hp��.W���{?��_w�1�P�f����ʼl��CX�/Z[a^�Lm�������%/��>Jн�2`�~HR���,��ep��b����[�l`ue�A��@G����3r��f�z]����}�^�4λ4�J��l�O��l۱��^�`wHPÁ_m���8�?��0e��ҁ9"� �w�9j;���0��e��B�z;�����?ˍ�UձA %b�?�0?�(�������Y+�,d�Sb����M7�Q�%�7i��"癈)�'<1�p��Yv��A��5�sF���7���M��jPě�4��Ѐ��1.A!��h��0Ž<=�@_��u������:J\%8�|�������α8��:C������3p{=�a�HAs�*�«J��c�Y۵�\	~D'��z txd̏�}H��[cK#0胛�["����ǮoU_}ã�Q`ŀL$_��;��)�P`�u��ڼ/��8��/�ő�PQ�x�Y���t��[ppѭj�dk\���Y����������+��>�
tu�7�?�]>���3ۙ��ա7����9V�#Q/_�r�E�-��~����UYD      
   �   x�P˕E1Zk1s���뿎7��L��i�tI���p��'n�&ξD[P"��Lz��8]���D�@�r��w�CLP%u���)�WK���N��6)�l� C��ID����[��c|��Ƃ�w�#�q�A ��`ck*h4�1y�::�7�9��A��\v���v�?�pv~��(0�/^��.|������#P�H��Tp���xh���x0��OU��EFT         +  x��XKn\G\�9�Ot7����e�� �Ȳ(04�,�R�@��X�|�8A���x�~��b+?~���O7�>޽��������÷?o�6G�q�t��{x�;�?^��|}�7bău��qJg7n܏��������z�|���x�t}����_}�·S�p��ܤ7;�Az��T8û�>d����3J�.Nd��g�ٴ�C=���qFA۶D,���A�ː����Bz�X@́veZ�IK�-�%F���}������D2�ER���4��,���O&��v>��e��t��!J�x 	�X(w��ECh5<A�B#�D�uۍy�����9\�3T���"��@�e,\�b֥5�TGI�9泷3�r��]���u8l����H��H��U���K��rֹԌ�uPV�
����z�:5�m�5P9a\N�N����]5��4�LZ��F��IK�q9i@#HQ�Dm*w1�=�ˁ��XWC�R��s6KV���h��@3qB�dm�m����t��nCL8q]�`n�ZOjΒ�X�ns.�:���$�,II��C������S�q�|�6k����{�q�ddAm�-,\(&@��&��d�B ��'Dɼ���麑2AQ� �Z�!9s�*��	�6R`��2h!?��H*��I�Ck�P��`%���"�p
el�u9��yƵ�ݱ���`� �t����}�.��ww_���2"T
�v��*����s�]����̦z>D��E��&�z�V
7\28�5��YT0`)τ�ڣc��Qs!_-��m��ʙKY�N4�*��SsXh�O��.�ܽ!�ձS����!�r`]8�%ʄŚK�R.��{r��<�H
�ւ��P̕����`�Ǥ�-�Ɍ�r.=�)�H���B���������!���V��b�����<[V�5H�hi���V:��,�ݒF�����%�0W3�Vs�(���bF{��T3���5�_��y~!��<�����:��/�>7�H���Y�Ơ)+�����4;��CN��'
s�5xx���0
�1�4q���05�qⴥV`�q!z؆�(��ÿ�\��"��5�2w���ĸ���2S��Гp�cޭ�ƣ@F{��,p9
��Rz����@ɽ�qkCޘ�Nnf��÷�����%�c(Xc��xo�?_�vz�тm��������K�UxS<��rb����|R�;��i���o���7�V��W�q�CG6��=c<���Cs��qYW�Ѱ�#�kōO����mLK�׌�9P�-�Y��=�|��7��Jn�*+]�ZU�8���3����T��s}G\�1и�0
�8k���B�����\��pj?Җ�⟸�|�%����a�-o߰���#�7�[<#�+�]�:/}S���{�fgCv�
�S����|�ۆ��0S�ρ5c�:���zR��B�Pc�	�-@��N��B��:�� ���@L��.,�4�h��FD,0���{�G�]�m���R�,�ϟ/ZB
1,�%�,�� |�|���r����c0�&�AQ��?\.�����         Q   x�U�A
�0���1�&i���x)� ������Q��T�>bnuߞ�^�{B�%��	_�����6(�t"���J     