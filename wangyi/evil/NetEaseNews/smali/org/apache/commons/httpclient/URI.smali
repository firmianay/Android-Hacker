.class public Lorg/apache/commons/httpclient/URI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# static fields
.field protected static final IPv4address:Ljava/util/BitSet;

.field protected static final IPv6address:Ljava/util/BitSet;

.field protected static final IPv6reference:Ljava/util/BitSet;

.field protected static final URI_reference:Ljava/util/BitSet;

.field protected static final abs_path:Ljava/util/BitSet;

.field protected static final absoluteURI:Ljava/util/BitSet;

.field public static final allowed_IPv6reference:Ljava/util/BitSet;

.field public static final allowed_abs_path:Ljava/util/BitSet;

.field public static final allowed_authority:Ljava/util/BitSet;

.field public static final allowed_fragment:Ljava/util/BitSet;

.field public static final allowed_host:Ljava/util/BitSet;

.field public static final allowed_opaque_part:Ljava/util/BitSet;

.field public static final allowed_query:Ljava/util/BitSet;

.field public static final allowed_reg_name:Ljava/util/BitSet;

.field public static final allowed_rel_path:Ljava/util/BitSet;

.field public static final allowed_userinfo:Ljava/util/BitSet;

.field public static final allowed_within_authority:Ljava/util/BitSet;

.field public static final allowed_within_path:Ljava/util/BitSet;

.field public static final allowed_within_query:Ljava/util/BitSet;

.field public static final allowed_within_userinfo:Ljava/util/BitSet;

.field protected static final alpha:Ljava/util/BitSet;

.field protected static final alphanum:Ljava/util/BitSet;

.field protected static final authority:Ljava/util/BitSet;

.field public static final control:Ljava/util/BitSet;

.field protected static defaultDocumentCharset:Ljava/lang/String; = null

.field protected static defaultDocumentCharsetByLocale:Ljava/lang/String; = null

.field protected static defaultDocumentCharsetByPlatform:Ljava/lang/String; = null

.field protected static defaultProtocolCharset:Ljava/lang/String; = null

.field public static final delims:Ljava/util/BitSet;

.field protected static final digit:Ljava/util/BitSet;

.field public static final disallowed_opaque_part:Ljava/util/BitSet;

.field public static final disallowed_rel_path:Ljava/util/BitSet;

.field protected static final domainlabel:Ljava/util/BitSet;

.field protected static final escaped:Ljava/util/BitSet;

.field protected static final fragment:Ljava/util/BitSet;

.field protected static final hex:Ljava/util/BitSet;

.field protected static final hier_part:Ljava/util/BitSet;

.field protected static final host:Ljava/util/BitSet;

.field protected static final hostname:Ljava/util/BitSet;

.field protected static final hostport:Ljava/util/BitSet;

.field protected static final mark:Ljava/util/BitSet;

.field protected static final net_path:Ljava/util/BitSet;

.field protected static final opaque_part:Ljava/util/BitSet;

.field protected static final param:Ljava/util/BitSet;

.field protected static final path:Ljava/util/BitSet;

.field protected static final path_segments:Ljava/util/BitSet;

.field protected static final pchar:Ljava/util/BitSet;

.field protected static final percent:Ljava/util/BitSet;

.field protected static final port:Ljava/util/BitSet;

.field protected static final query:Ljava/util/BitSet;

.field protected static final reg_name:Ljava/util/BitSet;

.field protected static final rel_path:Ljava/util/BitSet;

.field protected static final rel_segment:Ljava/util/BitSet;

.field protected static final relativeURI:Ljava/util/BitSet;

.field protected static final reserved:Ljava/util/BitSet;

.field protected static final rootPath:[C

.field protected static final scheme:Ljava/util/BitSet;

.field protected static final segment:Ljava/util/BitSet;

.field static final serialVersionUID:J = 0x864831aad836c36L

.field protected static final server:Ljava/util/BitSet;

.field public static final space:Ljava/util/BitSet;

.field protected static final toplabel:Ljava/util/BitSet;

.field protected static final unreserved:Ljava/util/BitSet;

.field public static final unwise:Ljava/util/BitSet;

.field protected static final uric:Ljava/util/BitSet;

.field protected static final uric_no_slash:Ljava/util/BitSet;

.field protected static final userinfo:Ljava/util/BitSet;

.field public static final within_userinfo:Ljava/util/BitSet;


# instance fields
.field protected _authority:[C

.field protected _fragment:[C

.field protected _host:[C

.field protected _is_IPv4address:Z

.field protected _is_IPv6reference:Z

.field protected _is_abs_path:Z

.field protected _is_hier_part:Z

.field protected _is_hostname:Z

.field protected _is_net_path:Z

.field protected _is_opaque_part:Z

.field protected _is_reg_name:Z

.field protected _is_rel_path:Z

.field protected _is_server:Z

.field protected _opaque:[C

.field protected _path:[C

.field protected _port:I

.field protected _query:[C

.field protected _scheme:[C

.field protected _uri:[C

.field protected _userinfo:[C

.field protected hash:I

.field protected protocolCharset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x3a

    const/16 v6, 0x2b

    const/16 v5, 0x3b

    const/16 v4, 0x25

    const/16 v3, 0x100

    const-string v0, "UTF-8"

    sput-object v0, Lorg/apache/commons/httpclient/URI;->defaultProtocolCharset:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharset:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByLocale:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByPlatform:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->getCharset(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByLocale:Ljava/lang/String;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByLocale:Ljava/lang/String;

    sput-object v0, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharset:Ljava/lang/String;

    :cond_0
    :try_start_0
    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByPlatform:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharset:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByPlatform:Ljava/lang/String;

    sput-object v0, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharset:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x2f

    aput-char v2, v0, v1

    sput-object v0, Lorg/apache/commons/httpclient/URI;->rootPath:[C

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->percent:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->percent:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    const/16 v0, 0x30

    :goto_1
    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    sget-object v1, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->alpha:Ljava/util/BitSet;

    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_3

    sget-object v1, Lorg/apache/commons/httpclient/URI;->alpha:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/16 v0, 0x41

    :goto_3
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_4

    sget-object v1, Lorg/apache/commons/httpclient/URI;->alpha:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->alphanum:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->alphanum:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->alpha:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->alphanum:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->hex:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->hex:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    const/16 v0, 0x61

    :goto_4
    const/16 v1, 0x66

    if-gt v0, v1, :cond_5

    sget-object v1, Lorg/apache/commons/httpclient/URI;->hex:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    const/16 v0, 0x41

    :goto_5
    const/16 v1, 0x46

    if-gt v0, v1, :cond_6

    sget-object v1, Lorg/apache/commons/httpclient/URI;->hex:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->percent:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->hex:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->alphanum:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    sput-object v0, Lorg/apache/commons/httpclient/URI;->fragment:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    sput-object v0, Lorg/apache/commons/httpclient/URI;->query:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    sput-object v0, Lorg/apache/commons/httpclient/URI;->param:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->segment:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->segment:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->segment:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->segment:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->param:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->path_segments:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->path_segments:Ljava/util/BitSet;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->path_segments:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->segment:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->path_segments:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->path:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->path:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->path:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    sput-object v0, Lorg/apache/commons/httpclient/URI;->port:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->IPv4address:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->IPv4address:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->IPv4address:Ljava/util/BitSet;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->IPv6address:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->IPv6address:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->hex:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->IPv6address:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->IPv6address:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->IPv4address:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->IPv6reference:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->IPv6reference:Ljava/util/BitSet;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->IPv6reference:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->IPv6address:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->IPv6reference:Ljava/util/BitSet;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->toplabel:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->toplabel:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->alphanum:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->toplabel:Ljava/util/BitSet;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->toplabel:Ljava/util/BitSet;

    sput-object v0, Lorg/apache/commons/httpclient/URI;->domainlabel:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->hostname:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->hostname:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->toplabel:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->hostname:Ljava/util/BitSet;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->host:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->host:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->hostname:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->host:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->IPv6reference:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->hostport:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->hostport:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->host:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->hostport:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->hostport:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->port:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->clear(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->clear(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->server:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->server:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->server:Ljava/util/BitSet;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->server:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->hostport:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->authority:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->authority:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->server:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->authority:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->alpha:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->rel_path:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->rel_path:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->rel_path:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->net_path:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->net_path:Ljava/util/BitSet;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->net_path:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->authority:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->net_path:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->hier_part:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->hier_part:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->net_path:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->hier_part:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->hier_part:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->query:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->relativeURI:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->relativeURI:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->net_path:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->relativeURI:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->relativeURI:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->rel_path:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->relativeURI:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->query:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->absoluteURI:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->absoluteURI:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->absoluteURI:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->absoluteURI:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->hier_part:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->absoluteURI:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->URI_reference:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->URI_reference:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->absoluteURI:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->URI_reference:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->relativeURI:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->URI_reference:Ljava/util/BitSet;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->URI_reference:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->fragment:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->control:Ljava/util/BitSet;

    const/4 v0, 0x0

    :goto_6
    const/16 v1, 0x1f

    if-gt v0, v1, :cond_7

    sget-object v1, Lorg/apache/commons/httpclient/URI;->control:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    sget-object v0, Lorg/apache/commons/httpclient/URI;->control:Ljava/util/BitSet;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->space:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->space:Ljava/util/BitSet;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->disallowed_rel_path:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->disallowed_rel_path:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->disallowed_rel_path:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->rel_path:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->disallowed_opaque_part:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->disallowed_opaque_part:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->disallowed_opaque_part:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_authority:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_authority:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->authority:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_authority:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->clear(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_opaque_part:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_opaque_part:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_opaque_part:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->clear(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_reg_name:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_reg_name:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_reg_name:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->clear(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_userinfo:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_userinfo:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->clear(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_userinfo:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_userinfo:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_userinfo:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->clear(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_IPv6reference:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_IPv6reference:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->IPv6reference:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_IPv6reference:Ljava/util/BitSet;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_IPv6reference:Ljava/util/BitSet;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_host:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_host:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->hostname:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_host:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->allowed_IPv6reference:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->server:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->clear(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->clear(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->percent:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->clear(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_rel_path:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_rel_path:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->rel_path:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_rel_path:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->clear(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_rel_path:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->clear(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_path:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_path:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_path:Ljava/util/BitSet;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_path:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->clear(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_path:Ljava/util/BitSet;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_path:Ljava/util/BitSet;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_query:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_query:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_query:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->clear(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_query:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_query:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->allowed_query:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_query:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/URI;->allowed_fragment:Ljava/util/BitSet;

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_fragment:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_fragment:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->clear(I)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/httpclient/URI;->parseUriReference(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    iput-object p2, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/httpclient/URI;->parseUriReference(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    if-nez p1, :cond_0

    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v1, "scheme required"

    invoke-direct {v0, v3, v1}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sget-object v2, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/httpclient/URI;->validate([CLjava/util/BitSet;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    sget-object v1, Lorg/apache/commons/httpclient/URI;->allowed_opaque_part:Ljava/util/BitSet;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iput-boolean v3, p0, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    if-nez p3, :cond_2

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    return-void

    :cond_1
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v1, "incorrect scheme"

    invoke-direct {v0, v3, v1}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-nez p3, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v0, -0x1

    if-eq p4, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz p2, :cond_1

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    if-eqz p3, :cond_4

    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    const-string v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const/4 v1, 0x1

    const-string v2, "abs_path requested"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    if-eqz p4, :cond_5

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    if-eqz p5, :cond_6

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/httpclient/URI;->parseUriReference(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/URI;->parseUriReference(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    iput-object p3, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/URI;->parseUriReference(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/URI;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/apache/commons/httpclient/URI;

    invoke-direct {v0, p2}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/httpclient/URI;-><init>(Lorg/apache/commons/httpclient/URI;Lorg/apache/commons/httpclient/URI;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/URI;Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lorg/apache/commons/httpclient/URI;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/httpclient/URI;-><init>(Lorg/apache/commons/httpclient/URI;Lorg/apache/commons/httpclient/URI;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/URI;Lorg/apache/commons/httpclient/URI;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    iput-object v3, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    iput-object v3, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iput-object v3, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iput-object v3, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iput-object v3, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    iput-object v3, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    iput-object v3, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    iput-object v3, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    iput-object v3, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    iget-object v2, p1, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    if-nez v2, :cond_0

    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v2, "base URI required"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p1, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    if-eqz v2, :cond_1

    iget-object v2, p1, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iput-object v2, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iget-object v2, p1, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iput-object v2, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iget-boolean v2, p1, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    :cond_1
    iget-boolean v2, p1, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    if-nez v2, :cond_2

    iget-boolean v2, p2, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p1, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iput-object v2, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iget-boolean v2, p1, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    if-nez v2, :cond_3

    iget-boolean v2, p2, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    iget-object v0, p2, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iget-object v0, p2, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    :goto_0
    return-void

    :cond_5
    iget-object v0, p1, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iget-object v2, p2, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    iget-object v2, p2, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    if-eqz v2, :cond_11

    if-eqz v0, :cond_6

    iget-object v2, p2, Lorg/apache/commons/httpclient/URI;->_authority:[C

    if-eqz v2, :cond_11

    :cond_6
    iget-object v2, p2, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iput-object v2, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iget-boolean v2, p2, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    iget-object v2, p2, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iput-object v2, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iget-boolean v2, p2, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    if-eqz v2, :cond_10

    iget-boolean v2, p2, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    iget-object v2, p2, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    iput-object v2, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    iget-object v2, p2, Lorg/apache/commons/httpclient/URI;->_host:[C

    iput-object v2, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    iget v2, p2, Lorg/apache/commons/httpclient/URI;->_port:I

    iput v2, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    :cond_7
    :goto_1
    iget-boolean v2, p2, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    iget-boolean v2, p2, Lorg/apache/commons/httpclient/URI;->_is_rel_path:Z

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/URI;->_is_rel_path:Z

    iget-object v2, p2, Lorg/apache/commons/httpclient/URI;->_path:[C

    iput-object v2, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    :cond_8
    :goto_2
    iget-object v2, p2, Lorg/apache/commons/httpclient/URI;->_authority:[C

    if-eqz v2, :cond_a

    iget-boolean v2, p2, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    iget-object v2, p2, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iput-object v2, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iget-boolean v2, p2, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    if-eqz v2, :cond_13

    iget-boolean v2, p2, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    iget-object v2, p2, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    iput-object v2, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    iget-object v2, p2, Lorg/apache/commons/httpclient/URI;->_host:[C

    iput-object v2, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    iget v2, p2, Lorg/apache/commons/httpclient/URI;->_port:I

    iput v2, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    :cond_9
    :goto_3
    iget-boolean v2, p2, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    iget-boolean v2, p2, Lorg/apache/commons/httpclient/URI;->_is_rel_path:Z

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/URI;->_is_rel_path:Z

    iget-object v2, p2, Lorg/apache/commons/httpclient/URI;->_path:[C

    iput-object v2, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    :cond_a
    iget-object v2, p2, Lorg/apache/commons/httpclient/URI;->_authority:[C

    if-nez v2, :cond_d

    iget-object v2, p2, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    if-eqz v2, :cond_b

    if-eqz v0, :cond_d

    :cond_b
    iget-object v0, p2, Lorg/apache/commons/httpclient/URI;->_path:[C

    if-eqz v0, :cond_c

    iget-object v0, p2, Lorg/apache/commons/httpclient/URI;->_path:[C

    array-length v0, v0

    if-nez v0, :cond_14

    :cond_c
    iget-object v0, p2, Lorg/apache/commons/httpclient/URI;->_query:[C

    if-nez v0, :cond_14

    iget-object v0, p1, Lorg/apache/commons/httpclient/URI;->_path:[C

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    iget-object v0, p1, Lorg/apache/commons/httpclient/URI;->_query:[C

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    :cond_d
    :goto_4
    iget-object v0, p2, Lorg/apache/commons/httpclient/URI;->_query:[C

    if-eqz v0, :cond_e

    iget-object v0, p2, Lorg/apache/commons/httpclient/URI;->_query:[C

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    :cond_e
    iget-object v0, p2, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    if-eqz v0, :cond_f

    iget-object v0, p2, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    :cond_f
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/URI;->parseUriReference(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_10
    iget-boolean v2, p2, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p2, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    goto :goto_1

    :cond_11
    iget-object v2, p1, Lorg/apache/commons/httpclient/URI;->_authority:[C

    if-eqz v2, :cond_8

    iget-object v2, p2, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    if-nez v2, :cond_8

    iget-boolean v2, p1, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    iget-object v2, p1, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iput-object v2, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iget-boolean v2, p1, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    if-eqz v2, :cond_12

    iget-boolean v2, p1, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    iget-object v2, p1, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    iput-object v2, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    iget-object v2, p1, Lorg/apache/commons/httpclient/URI;->_host:[C

    iput-object v2, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    iget v2, p1, Lorg/apache/commons/httpclient/URI;->_port:I

    iput v2, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    goto/16 :goto_2

    :cond_12
    iget-boolean v2, p1, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p1, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    goto/16 :goto_2

    :cond_13
    iget-boolean v2, p2, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p2, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    goto/16 :goto_3

    :cond_14
    iget-object v0, p1, Lorg/apache/commons/httpclient/URI;->_path:[C

    iget-object v2, p2, Lorg/apache/commons/httpclient/URI;->_path:[C

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/httpclient/URI;->resolvePath([C[C)[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    goto :goto_4
.end method

.method public constructor <init>([C)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/URI;->parseUriReference(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([CLjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    iput-object p2, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/URI;->parseUriReference(Ljava/lang/String;Z)V

    return-void
.end method

.method protected static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Component array of chars may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/net/URLCodec;->decodeUrl([B)[B
    :try_end_0
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/commons/httpclient/URIException;

    invoke-virtual {v0}, Lorg/apache/commons/codec/DecoderException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/httpclient/URIException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static decode([CLjava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Component array of chars may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0, p1}, Lorg/apache/commons/httpclient/URI;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Original string may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Allowed bitset may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0, p2}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/codec/net/URLCodec;->encodeUrl(Ljava/util/BitSet;[B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultDocumentCharset()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharset:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultDocumentCharsetByLocale()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByLocale:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultDocumentCharsetByPlatform()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByPlatform:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultProtocolCharset()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/URI;->defaultProtocolCharset:Ljava/lang/String;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    return-void
.end method

.method public static setDefaultDocumentCharset(Ljava/lang/String;)V
    .locals 3

    sput-object p0, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharset:Ljava/lang/String;

    new-instance v0, Lorg/apache/commons/httpclient/URI$DefaultCharsetChanged;

    const/4 v1, 0x2

    const-string v2, "the default document charset changed"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/URI$DefaultCharsetChanged;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static setDefaultProtocolCharset(Ljava/lang/String;)V
    .locals 3

    sput-object p0, Lorg/apache/commons/httpclient/URI;->defaultProtocolCharset:Ljava/lang/String;

    new-instance v0, Lorg/apache/commons/httpclient/URI$DefaultCharsetChanged;

    const/4 v1, 0x1

    const-string v2, "the default protocol charset changed"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/URI$DefaultCharsetChanged;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/URI;

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_host:[C

    iget v1, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    iput v1, v0, Lorg/apache/commons/httpclient/URI;->_port:I

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_path:[C

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_query:[C

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_hier_part:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_hier_part:Z

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_rel_path:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_rel_path:Z

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_hostname:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_hostname:Z

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_IPv4address:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_IPv4address:Z

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_IPv6reference:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_IPv6reference:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lorg/apache/commons/httpclient/URI;

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/URI;->getRawAuthority()[C

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lorg/apache/commons/httpclient/URI;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/apache/commons/httpclient/URI;

    iget-object v2, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iget-object v3, p1, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iget-object v3, p1, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iget-object v3, p1, Lorg/apache/commons/httpclient/URI;->_authority:[C

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    iget-object v3, p1, Lorg/apache/commons/httpclient/URI;->_path:[C

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    iget-object v3, p1, Lorg/apache/commons/httpclient/URI;->_query:[C

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    iget-object v3, p1, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected equals([C[C)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p1

    array-length v3, p2

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    aget-char v3, p1, v0

    aget-char v4, p2, v0

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public getAboveHierPath()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawAboveHierPath()[C

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/URI;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/URI;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentHierPath()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawCurrentHierPath()[C

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/URI;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEscapedAboveHierPath()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawAboveHierPath()[C

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public getEscapedAuthority()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public getEscapedCurrentHierPath()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawCurrentHierPath()[C

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public getEscapedFragment()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public getEscapedName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawName()[C

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public getEscapedPath()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawPath()[C

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public getEscapedPathQuery()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawPathQuery()[C

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public getEscapedQuery()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public getEscapedURI()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public getEscapedURIReference()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawURIReference()[C

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public getEscapedUserinfo()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/URI;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/URI;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawName()[C

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawName()[C

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/URI;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawPath()[C

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/URI;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPathQuery()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawPathQuery()[C

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/URI;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    return v0
.end method

.method public getProtocolCharset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/URI;->defaultProtocolCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/URI;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRawAboveHierPath()[C
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawCurrentHierPath()[C

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/URI;->getRawCurrentHierPath([C)[C

    move-result-object v0

    goto :goto_0
.end method

.method public getRawAuthority()[C
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    return-object v0
.end method

.method public getRawCurrentHierPath()[C
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/URI;->getRawCurrentHierPath([C)[C

    move-result-object v0

    goto :goto_0
.end method

.method protected getRawCurrentHierPath([C)[C
    .locals 4

    const/16 v3, 0x2f

    const/4 v2, 0x1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v1, "no hierarchy level"

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v1, "empty path"

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-nez v2, :cond_3

    sget-object p1, Lorg/apache/commons/httpclient/URI;->rootPath:[C

    :cond_2
    :goto_0
    return-object p1

    :cond_3
    if-eq v1, v2, :cond_2

    const/4 v1, -0x1

    if-eq v2, v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    goto :goto_0
.end method

.method public getRawFragment()[C
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    return-object v0
.end method

.method public getRawHost()[C
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    return-object v0
.end method

.method public getRawName()[C
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v2, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    aget-char v2, v2, v0

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :goto_2
    iget-object v2, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    array-length v2, v2

    sub-int v3, v2, v0

    new-array v2, v3, [C

    iget-object v4, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    invoke-static {v4, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public getRawPath()[C
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    goto :goto_0
.end method

.method public getRawPathQuery()[C
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    if-eqz v1, :cond_2

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0
.end method

.method public getRawQuery()[C
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    return-object v0
.end method

.method public getRawScheme()[C
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    return-object v0
.end method

.method public getRawURI()[C
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    return-object v0
.end method

.method public getRawURIReference()[C
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0
.end method

.method public getRawUserinfo()[C
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public getURI()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/URI;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getURIReference()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getRawURIReference()[C

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/URI;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserinfo()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/URI;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasAuthority()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFragment()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasQuery()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserinfo()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    if-nez v1, :cond_1

    iget-object v2, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    if-eqz v2, :cond_0

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget v4, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    mul-int/lit8 v4, v4, 0x1f

    aget-char v5, v2, v1

    add-int/2addr v4, v5

    iput v4, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    if-eqz v1, :cond_1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    iget v3, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    mul-int/lit8 v3, v3, 0x1f

    aget-char v4, v1, v0

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    return v0
.end method

.method protected indexFirstOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/httpclient/URI;->indexFirstOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected indexFirstOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    const/4 v0, 0x0

    const/4 v3, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    if-gez p3, :cond_4

    move p3, v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    :goto_1
    array-length v2, v4

    if-ge v0, v2, :cond_5

    aget-char v2, v4, v0

    invoke-virtual {p1, v2, p3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_3

    if-ge v2, v1, :cond_3

    move v1, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le p3, v1, :cond_2

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v1, v0, :cond_6

    move v1, v3

    :cond_6
    move v3, v1

    goto :goto_0
.end method

.method protected indexFirstOf([CC)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/httpclient/URI;->indexFirstOf([CCI)I

    move-result v0

    return v0
.end method

.method protected indexFirstOf([CCI)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_2

    :cond_0
    move p3, v0

    :cond_1
    :goto_0
    return p3

    :cond_2
    if-gez p3, :cond_4

    const/4 p3, 0x0

    :cond_3
    :goto_1
    array-length v1, p1

    if-ge p3, v1, :cond_5

    aget-char v1, p1, p3

    if-eq v1, p2, :cond_1

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    array-length v1, p1

    if-le p3, v1, :cond_3

    move p3, v0

    goto :goto_0

    :cond_5
    move p3, v0

    goto :goto_0
.end method

.method public isAbsPath()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    return v0
.end method

.method public isAbsoluteURI()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHierPart()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_hier_part:Z

    return v0
.end method

.method public isHostname()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_hostname:Z

    return v0
.end method

.method public isIPv4address()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_IPv4address:Z

    return v0
.end method

.method public isIPv6reference()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_IPv6reference:Z

    return v0
.end method

.method public isNetPath()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaquePart()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    return v0
.end method

.method public isRegName()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    return v0
.end method

.method public isRelPath()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_rel_path:Z

    return v0
.end method

.method public isRelativeURI()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServer()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    return v0
.end method

.method public normalize()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->isAbsPath()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/URI;->normalize([C)[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    :cond_0
    return-void
.end method

.method protected normalize([C)[C
    .locals 8

    const/4 v3, 0x2

    const/4 v7, -0x1

    const/16 v6, 0x2f

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    const-string v2, "./"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    const-string v2, "/./"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v7, :cond_4

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v2, "../"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v2, "/."

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_5
    move-object v2, v0

    move v0, v1

    :goto_2
    const-string v3, "/../"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v7, :cond_7

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v4

    if-ltz v4, :cond_6

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v3, 0x3

    goto :goto_2

    :cond_7
    const-string v0, "/.."

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    if-ltz v0, :cond_8

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_8
    :goto_3
    const-string v0, "/../"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v7, :cond_9

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    if-ltz v1, :cond_b

    :cond_9
    const-string v0, "/.."

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    if-gez v0, :cond_a

    const-string v2, "/"

    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method protected parseAuthority(Ljava/lang/String;Z)V
    .locals 10

    const/16 v9, 0x40

    const/16 v8, 0x3a

    const/4 v7, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_IPv6reference:Z

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_IPv4address:Z

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_hostname:Z

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v7, :cond_d

    if-eqz p2, :cond_0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    add-int/lit8 v0, v2, 0x1

    :goto_1
    const/16 v2, 0x5b

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-lt v2, v0, :cond_3

    const/16 v2, 0x5d

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ne v2, v7, :cond_1

    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v1, "IPv6reference"

    invoke-direct {v0, v4, v1}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/apache/commons/httpclient/URI;->allowed_userinfo:Ljava/util/BitSet;

    invoke-static {v0, v3, v5}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v0

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    iput-boolean v4, p0, Lorg/apache/commons/httpclient/URI;->_is_IPv6reference:Z

    move v3, v4

    :goto_3
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_IPv6reference:Z

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_IPv4address:Z

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_hostname:Z

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    sget-object v1, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/URI;->validate([CLjava/util/BitSet;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v1, "Invalid authority"

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/URIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/apache/commons/httpclient/URI;->allowed_IPv6reference:Ljava/util/BitSet;

    invoke-static {v0, v3, v5}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v8, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ne v2, v7, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v1

    :goto_4
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    sget-object v6, Lorg/apache/commons/httpclient/URI;->IPv4address:Ljava/util/BitSet;

    invoke-virtual {p0, v0, v6}, Lorg/apache/commons/httpclient/URI;->validate([CLjava/util/BitSet;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v4, p0, Lorg/apache/commons/httpclient/URI;->_is_IPv4address:Z

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    sget-object v6, Lorg/apache/commons/httpclient/URI;->hostname:Ljava/util/BitSet;

    invoke-virtual {p0, v0, v6}, Lorg/apache/commons/httpclient/URI;->validate([CLjava/util/BitSet;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v4, p0, Lorg/apache/commons/httpclient/URI;->_is_hostname:Z

    goto :goto_3

    :cond_5
    iput-boolean v4, p0, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    goto :goto_3

    :cond_6
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_reg_name:Ljava/util/BitSet;

    invoke-static {p1, v0, v5}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    :cond_7
    :goto_5
    return-void

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v0, v2, :cond_9

    if-eqz v3, :cond_9

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_9

    add-int/lit8 v0, v2, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->_port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_a
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    if-eq v1, v7, :cond_b

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iput-boolean v4, p0, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    goto :goto_5

    :catch_0
    move-exception v0

    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v1, "invalid port number"

    invoke-direct {v0, v4, v1}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_c
    move v3, v4

    goto/16 :goto_4

    :cond_d
    move v0, v1

    goto/16 :goto_1
.end method

.method protected parseUriReference(Ljava/lang/String;Z)V
    .locals 11

    const/16 v10, 0x23

    const/16 v9, 0x2f

    const/4 v8, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-nez p1, :cond_0

    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v1, "URI-Reference required"

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/URIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-array v2, v6, [C

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v2, v4

    sget-object v3, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/httpclient/URI;->validate([CLjava/util/BitSet;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    new-array v2, v6, [C

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v2, v4

    sget-object v3, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/httpclient/URI;->validate([CLjava/util/BitSet;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, -0x2

    :cond_1
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gtz v2, :cond_2

    const-string v5, "//"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    if-ltz v3, :cond_1d

    if-ge v3, v2, :cond_1d

    :cond_3
    move v5, v6

    :goto_0
    if-eqz v5, :cond_e

    const-string v2, "/?#"

    :goto_1
    invoke-virtual {p0, v1, v2, v4}, Lorg/apache/commons/httpclient/URI;->indexFirstOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_4

    move v2, v4

    :cond_4
    if-lez v2, :cond_1c

    if-ge v2, v0, :cond_1c

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x3a

    if-ne v3, v7, :cond_1c

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    sget-object v7, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    invoke-virtual {p0, v3, v7}, Lorg/apache/commons/httpclient/URI;->validate([CLjava/util/BitSet;)Z

    move-result v7

    if-eqz v7, :cond_f

    iput-object v3, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    add-int/lit8 v2, v2, 0x1

    move v3, v2

    :goto_2
    iput-boolean v4, p0, Lorg/apache/commons/httpclient/URI;->_is_hier_part:Z

    iput-boolean v4, p0, Lorg/apache/commons/httpclient/URI;->_is_rel_path:Z

    iput-boolean v4, p0, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    iput-boolean v4, p0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    if-ltz v2, :cond_7

    if-ge v2, v0, :cond_7

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_7

    iput-boolean v6, p0, Lorg/apache/commons/httpclient/URI;->_is_hier_part:Z

    add-int/lit8 v4, v2, 0x2

    if-ge v4, v0, :cond_6

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_6

    if-nez v5, :cond_6

    const-string v3, "/?#"

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v1, v3, v4}, Lorg/apache/commons/httpclient/URI;->indexFirstOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_5

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_10

    add-int/lit8 v3, v2, 0x2

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/apache/commons/httpclient/URI;->parseAuthority(Ljava/lang/String;Z)V

    iput-boolean v6, p0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    move v2, v3

    :cond_6
    if-ne v3, v2, :cond_7

    iput-boolean v6, p0, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    :cond_7
    if-ge v3, v0, :cond_c

    const-string v2, "?#"

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/commons/httpclient/URI;->indexFirstOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :cond_8
    iget-boolean v4, p0, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    if-nez v4, :cond_b

    if-nez p2, :cond_9

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/httpclient/URI;->disallowed_rel_path:Ljava/util/BitSet;

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/httpclient/URI;->prevalidate(Ljava/lang/String;Ljava/util/BitSet;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    if-eqz p2, :cond_11

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    sget-object v5, Lorg/apache/commons/httpclient/URI;->rel_path:Ljava/util/BitSet;

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/httpclient/URI;->validate([CLjava/util/BitSet;)Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_a
    iput-boolean v6, p0, Lorg/apache/commons/httpclient/URI;->_is_rel_path:Z

    :cond_b
    :goto_4
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_15

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/httpclient/URI;->setRawPath([C)V

    :cond_c
    :goto_5
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v4

    if-ltz v2, :cond_18

    add-int/lit8 v3, v2, 0x1

    if-ge v3, v0, :cond_18

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x3f

    if-ne v3, v5, :cond_18

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v10, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ne v3, v8, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    :cond_d
    if-eqz p2, :cond_16

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    iget-object v2, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    sget-object v5, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    invoke-virtual {p0, v2, v5}, Lorg/apache/commons/httpclient/URI;->validate([CLjava/util/BitSet;)Z

    move-result v2

    if-nez v2, :cond_17

    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v1, "Invalid query"

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/URIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const-string v2, ":/?#"

    goto/16 :goto_1

    :cond_f
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v1, "incorrect scheme"

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/URIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    goto/16 :goto_3

    :cond_11
    if-nez p2, :cond_12

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/httpclient/URI;->disallowed_opaque_part:Ljava/util/BitSet;

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/httpclient/URI;->prevalidate(Ljava/lang/String;Ljava/util/BitSet;)Z

    move-result v4

    if-nez v4, :cond_13

    :cond_12
    if-eqz p2, :cond_14

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    sget-object v5, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/httpclient/URI;->validate([CLjava/util/BitSet;)Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_13
    iput-boolean v6, p0, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    goto :goto_4

    :cond_14
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    goto/16 :goto_4

    :cond_15
    invoke-virtual {p0, v3}, Lorg/apache/commons/httpclient/URI;->setPath(Ljava/lang/String;)V

    goto :goto_5

    :cond_16
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lorg/apache/commons/httpclient/URI;->allowed_query:Ljava/util/BitSet;

    invoke-static {v2, v5, v4}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    :cond_17
    move v2, v3

    :cond_18
    if-ltz v2, :cond_19

    add-int/lit8 v3, v2, 0x1

    if-gt v3, v0, :cond_19

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v10, :cond_19

    add-int/lit8 v3, v2, 0x1

    if-ne v3, v0, :cond_1a

    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    :cond_19
    :goto_6
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    return-void

    :cond_1a
    if-eqz p2, :cond_1b

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    goto :goto_6

    :cond_1b
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/httpclient/URI;->allowed_fragment:Ljava/util/BitSet;

    invoke-static {v0, v1, v4}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v0

    goto :goto_7

    :cond_1c
    move v3, v4

    goto/16 :goto_2

    :cond_1d
    move v5, v4

    goto/16 :goto_0
.end method

.method protected prevalidate(Ljava/lang/String;Ljava/util/BitSet;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v0, v1

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-char v3, v2, v0

    invoke-virtual {p2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected removeFragmentIdentifier([C)[C
    .locals 3

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    goto :goto_0
.end method

.method protected resolvePath([C[C)[C
    .locals 7

    const/16 v2, 0x2f

    const/4 v6, -0x1

    const/4 v5, 0x0

    if-nez p1, :cond_1

    const-string v0, ""

    :goto_0
    if-eqz p2, :cond_0

    array-length v1, p2

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/URI;->normalize([C)[C

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_2
    aget-char v1, p2, v5

    if-ne v1, v2, :cond_3

    invoke-virtual {p0, p2}, Lorg/apache/commons/httpclient/URI;->normalize([C)[C

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v1, v6, :cond_4

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    :cond_4
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    array-length v4, p2

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    if-eq v1, v6, :cond_5

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/URI;->normalize([C)[C

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v0, "/"

    goto :goto_2
.end method

.method public setEscapedAuthority(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/URI;->parseAuthority(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    return-void
.end method

.method public setEscapedFragment(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/URI;->setRawFragment([C)V

    goto :goto_0
.end method

.method public setEscapedPath(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/URI;->setRawPath([C)V

    goto :goto_0
.end method

.method public setEscapedQuery(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/URI;->setRawQuery([C)V

    goto :goto_0
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    iput v2, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_fragment:Ljava/util/BitSet;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    iput v2, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    goto :goto_1
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    if-eqz v1, :cond_4

    :cond_3
    sget-object v1, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    invoke-static {p1, v1, v0}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    :goto_2
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_rel_path:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-nez v2, :cond_5

    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v1, "incorrect relative path"

    invoke-direct {v0, v4, v1}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_5
    if-lez v2, :cond_6

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/commons/httpclient/URI;->allowed_rel_path:Ljava/util/BitSet;

    invoke-static {v3, v4, v0}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    invoke-static {v2, v3, v0}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    goto :goto_2

    :cond_6
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_rel_path:Ljava/util/BitSet;

    invoke-static {p1, v2, v0}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_7
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    invoke-static {v2, v3, v0}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/StringBuffer;->insert(I[C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    invoke-static {v2, v3, v0}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/lang/StringBuffer;->insert(I[C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    goto :goto_2

    :cond_8
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v1, "incorrect path"

    invoke-direct {v0, v4, v1}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_query:Ljava/util/BitSet;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/URI;->setRawQuery([C)V

    goto :goto_1
.end method

.method public setRawAuthority([C)V
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/URI;->parseAuthority(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    return-void
.end method

.method public setRawFragment([C)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    iput v1, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lorg/apache/commons/httpclient/URI;->fragment:Ljava/util/BitSet;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/URI;->validate([CLjava/util/BitSet;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const/4 v1, 0x3

    const-string v2, "escaped fragment not valid"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    iput v1, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    goto :goto_0
.end method

.method public setRawPath([C)V
    .locals 7

    const/16 v2, 0x2f

    const/4 v6, 0x3

    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iput-object p1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/URI;->removeFragmentIdentifier([C)[C

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    if-eqz v1, :cond_5

    :cond_2
    aget-char v1, v0, v4

    if-eq v1, v2, :cond_3

    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v1, "not absolute path"

    invoke-direct {v0, v3, v1}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    sget-object v1, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/URI;->validate([CLjava/util/BitSet;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v1, "escaped absolute path not valid"

    invoke-direct {v0, v6, v1}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_rel_path:Z

    if-eqz v1, :cond_a

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/httpclient/URI;->indexFirstOf([CC)I

    move-result v1

    if-nez v1, :cond_6

    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v1, "incorrect path"

    invoke-direct {v0, v3, v1}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_6
    if-lez v1, :cond_7

    add-int/lit8 v2, v1, -0x1

    sget-object v3, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    invoke-virtual {p0, v0, v4, v2, v3}, Lorg/apache/commons/httpclient/URI;->validate([CIILjava/util/BitSet;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {p0, v0, v1, v5, v2}, Lorg/apache/commons/httpclient/URI;->validate([CIILjava/util/BitSet;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    if-gez v1, :cond_9

    sget-object v1, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    invoke-virtual {p0, v0, v4, v5, v1}, Lorg/apache/commons/httpclient/URI;->validate([CIILjava/util/BitSet;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v1, "escaped relative path not valid"

    invoke-direct {v0, v6, v1}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_9
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    goto :goto_1

    :cond_a
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    if-eqz v1, :cond_c

    sget-object v1, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    aget-char v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    invoke-virtual {p0, v0, v3, v5, v1}, Lorg/apache/commons/httpclient/URI;->validate([CIILjava/util/BitSet;)Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v1, "escaped opaque part not valid"

    invoke-direct {v0, v6, v1}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_b
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    goto :goto_1

    :cond_c
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const-string v1, "incorrect path"

    invoke-direct {v0, v3, v1}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public setRawQuery([C)V
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/URI;->removeFragmentIdentifier([C)[C

    move-result-object v0

    sget-object v1, Lorg/apache/commons/httpclient/URI;->query:Ljava/util/BitSet;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/URI;->validate([CLjava/util/BitSet;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const/4 v1, 0x3

    const-string v2, "escaped query not valid"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->setURI()V

    goto :goto_0
.end method

.method protected setURI()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    if-eqz v1, :cond_1

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    if-eqz v1, :cond_3

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    return-void

    :cond_4
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    array-length v1, v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getEscapedURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate([CIILjava/util/BitSet;)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    array-length v0, p1

    add-int/lit8 p3, v0, -0x1

    :cond_0
    :goto_0
    if-gt p2, p3, :cond_2

    aget-char v0, p1, p2

    invoke-virtual {p4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected validate([CLjava/util/BitSet;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/commons/httpclient/URI;->validate([CIILjava/util/BitSet;)Z

    move-result v0

    return v0
.end method
