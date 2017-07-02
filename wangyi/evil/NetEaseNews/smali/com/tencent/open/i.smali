.class public Lcom/tencent/open/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/open/m;


# direct methods
.method public constructor <init>(Lcom/tencent/open/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/open/i;->a:Lcom/tencent/open/m;

    return-void
.end method

.method private static a(Ljava/io/IOException;)I
    .locals 1

    instance-of v0, p0, Ljava/io/CharConversionException;

    if-eqz v0, :cond_0

    const/16 v0, -0x14

    :goto_0
    return v0

    :cond_0
    instance-of v0, p0, Ljava/nio/charset/MalformedInputException;

    if-eqz v0, :cond_1

    const/16 v0, -0x15

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/nio/charset/UnmappableCharacterException;

    if-eqz v0, :cond_2

    const/16 v0, -0x16

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_3

    const/16 v0, -0x17

    goto :goto_0

    :cond_3
    instance-of v0, p0, Ljava/nio/channels/ClosedChannelException;

    if-eqz v0, :cond_4

    const/16 v0, -0x18

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lorg/apache/http/ConnectionClosedException;

    if-eqz v0, :cond_5

    const/16 v0, -0x19

    goto :goto_0

    :cond_5
    instance-of v0, p0, Ljava/io/EOFException;

    if-eqz v0, :cond_6

    const/16 v0, -0x1a

    goto :goto_0

    :cond_6
    instance-of v0, p0, Ljava/nio/channels/FileLockInterruptionException;

    if-eqz v0, :cond_7

    const/16 v0, -0x1b

    goto :goto_0

    :cond_7
    instance-of v0, p0, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_8

    const/16 v0, -0x1c

    goto :goto_0

    :cond_8
    instance-of v0, p0, Ljava/net/HttpRetryException;

    if-eqz v0, :cond_9

    const/16 v0, -0x1d

    goto :goto_0

    :cond_9
    instance-of v0, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v0, :cond_a

    const/4 v0, -0x7

    goto :goto_0

    :cond_a
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_b

    const/4 v0, -0x8

    goto :goto_0

    :cond_b
    instance-of v0, p0, Ljava/util/InvalidPropertiesFormatException;

    if-eqz v0, :cond_c

    const/16 v0, -0x1e

    goto :goto_0

    :cond_c
    instance-of v0, p0, Lorg/apache/http/MalformedChunkCodingException;

    if-eqz v0, :cond_d

    const/16 v0, -0x1f

    goto :goto_0

    :cond_d
    instance-of v0, p0, Ljava/net/MalformedURLException;

    if-eqz v0, :cond_e

    const/4 v0, -0x3

    goto :goto_0

    :cond_e
    instance-of v0, p0, Lorg/apache/http/NoHttpResponseException;

    if-eqz v0, :cond_f

    const/16 v0, -0x20

    goto :goto_0

    :cond_f
    instance-of v0, p0, Ljava/io/InvalidClassException;

    if-eqz v0, :cond_10

    const/16 v0, -0x21

    goto :goto_0

    :cond_10
    instance-of v0, p0, Ljava/io/InvalidObjectException;

    if-eqz v0, :cond_11

    const/16 v0, -0x22

    goto :goto_0

    :cond_11
    instance-of v0, p0, Ljava/io/NotActiveException;

    if-eqz v0, :cond_12

    const/16 v0, -0x23

    goto :goto_0

    :cond_12
    instance-of v0, p0, Ljava/io/NotSerializableException;

    if-eqz v0, :cond_13

    const/16 v0, -0x24

    goto/16 :goto_0

    :cond_13
    instance-of v0, p0, Ljava/io/OptionalDataException;

    if-eqz v0, :cond_14

    const/16 v0, -0x25

    goto/16 :goto_0

    :cond_14
    instance-of v0, p0, Ljava/io/StreamCorruptedException;

    if-eqz v0, :cond_15

    const/16 v0, -0x26

    goto/16 :goto_0

    :cond_15
    instance-of v0, p0, Ljava/io/WriteAbortedException;

    if-eqz v0, :cond_16

    const/16 v0, -0x27

    goto/16 :goto_0

    :cond_16
    instance-of v0, p0, Ljava/net/ProtocolException;

    if-eqz v0, :cond_17

    const/16 v0, -0x28

    goto/16 :goto_0

    :cond_17
    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_18

    const/16 v0, -0x29

    goto/16 :goto_0

    :cond_18
    instance-of v0, p0, Ljavax/net/ssl/SSLKeyException;

    if-eqz v0, :cond_19

    const/16 v0, -0x2a

    goto/16 :goto_0

    :cond_19
    instance-of v0, p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_1a

    const/16 v0, -0x2b

    goto/16 :goto_0

    :cond_1a
    instance-of v0, p0, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v0, :cond_1b

    const/16 v0, -0x2c

    goto/16 :goto_0

    :cond_1b
    instance-of v0, p0, Ljava/net/BindException;

    if-eqz v0, :cond_1c

    const/16 v0, -0x2d

    goto/16 :goto_0

    :cond_1c
    instance-of v0, p0, Ljava/net/ConnectException;

    if-eqz v0, :cond_1d

    const/16 v0, -0x2e

    goto/16 :goto_0

    :cond_1d
    instance-of v0, p0, Ljava/net/NoRouteToHostException;

    if-eqz v0, :cond_1e

    const/16 v0, -0x2f

    goto/16 :goto_0

    :cond_1e
    instance-of v0, p0, Ljava/net/PortUnreachableException;

    if-eqz v0, :cond_1f

    const/16 v0, -0x30

    goto/16 :goto_0

    :cond_1f
    instance-of v0, p0, Ljava/io/SyncFailedException;

    if-eqz v0, :cond_20

    const/16 v0, -0x31

    goto/16 :goto_0

    :cond_20
    instance-of v0, p0, Ljava/io/UTFDataFormatException;

    if-eqz v0, :cond_21

    const/16 v0, -0x32

    goto/16 :goto_0

    :cond_21
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_22

    const/16 v0, -0x33

    goto/16 :goto_0

    :cond_22
    instance-of v0, p0, Ljava/net/UnknownServiceException;

    if-eqz v0, :cond_23

    const/16 v0, -0x34

    goto/16 :goto_0

    :cond_23
    instance-of v0, p0, Ljava/io/UnsupportedEncodingException;

    if-eqz v0, :cond_24

    const/16 v0, -0x35

    goto/16 :goto_0

    :cond_24
    instance-of v0, p0, Ljava/util/zip/ZipException;

    if-eqz v0, :cond_25

    const/16 v0, -0x36

    goto/16 :goto_0

    :cond_25
    const/4 v0, -0x2

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    if-nez p2, :cond_0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v0, "format"

    const-string v1, "json"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "status_os"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "status_machine"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "status_version"

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sdkv"

    const-string v1, "1.6"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sdkp"

    const-string v1, "a"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/open/i;->a:Lcom/tencent/open/m;

    if-nez v0, :cond_1

    :goto_0
    return-object p2

    :cond_1
    invoke-direct {p0}, Lcom/tencent/open/i;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "access_token"

    invoke-direct {p0}, Lcom/tencent/open/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "oauth2.0/m_me"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "oauth_consumer_key"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/open/i;->a:Lcom/tencent/open/m;

    invoke-virtual {v2}, Lcom/tencent/open/m;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/open/i;->a:Lcom/tencent/open/m;

    invoke-virtual {v0}, Lcom/tencent/open/m;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "openid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/open/i;->a:Lcom/tencent/open/m;

    invoke-virtual {v2}, Lcom/tencent/open/m;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "appid_for_getting_config"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/open/i;->a:Lcom/tencent/open/m;

    invoke-virtual {v2}, Lcom/tencent/open/m;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/i;->a:Lcom/tencent/open/m;

    invoke-virtual {v0}, Lcom/tencent/open/m;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pfStore"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pf"

    const-string v2, "openmobile_android"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pf"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "pf"

    const-string v1, "openmobile_android"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/open/i;->a:Lcom/tencent/open/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/i;->a:Lcom/tencent/open/m;

    invoke-virtual {v0}, Lcom/tencent/open/m;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    const/4 v1, -0x1

    const-string v0, "add_share"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "upload_pic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "add_topic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "set_user_face"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "add_t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "add_pic_t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "add_pic_url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "add_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/open/i;->a:Lcom/tencent/open/m;

    const-string v1, "requireApi"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/open/t;->a(Lcom/tencent/open/m;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/open/i;->a:Lcom/tencent/open/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/i;->a:Lcom/tencent/open/m;

    invoke-virtual {v0}, Lcom/tencent/open/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/tencent/open/i;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/open/l;->a()Lcom/tencent/open/l;

    move-result-object v4

    const/4 v5, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/tencent/open/l;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/open/l;->a()Lcom/tencent/open/l;

    move-result-object v5

    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6}, Lcom/tencent/open/l;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/tencent/open/i;->a(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/open/i;->a:Lcom/tencent/open/m;

    invoke-virtual {v4}, Lcom/tencent/open/m;->d()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/tencent/open/j;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/j;

    move-result-object v4

    const-string v10, "Common_HttpRetryCount"

    invoke-virtual {v4, v10}, Lcom/tencent/open/j;->b(Ljava/lang/String;)I

    move-result v4

    const-string v10, "OpenConfig_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "config 1:Common_HttpRetryCount            config_value:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   appid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/open/i;->a:Lcom/tencent/open/m;

    invoke-virtual {v12}, Lcom/tencent/open/m;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "     url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_0

    const/4 v4, 0x3

    :cond_0
    const-string v10, "OpenConfig_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "config 1:Common_HttpRetryCount            result_value:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   appid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/open/i;->a:Lcom/tencent/open/m;

    invoke-virtual {v12}, Lcom/tencent/open/m;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "     url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v6

    move-wide/from16 v18, v7

    move-wide/from16 v6, v18

    move/from16 v8, v17

    :goto_1
    add-int/lit8 v13, v8, 0x1

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, v16

    invoke-static {v0, v3, v1, v2}, Lcom/tencent/open/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/open/w;

    move-result-object v10

    iget-object v8, v10, Lcom/tencent/open/w;->a:Ljava/lang/String;

    invoke-static {v8}, Lcom/tencent/open/u;->d(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lcom/tencent/open/e; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/tencent/open/h; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v14

    :try_start_1
    const-string v8, "oauth2.0/m_me"

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v14, :cond_1

    const-string v8, "openid"

    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/open/i;->a:Lcom/tencent/open/m;

    invoke-virtual {v9, v8}, Lcom/tencent/open/m;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/tencent/open/e; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/tencent/open/h; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_8

    :cond_1
    :try_start_2
    const-string v8, "ret"

    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/tencent/open/e; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/tencent/open/h; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    move-result v12

    :goto_2
    :try_start_3
    iget-wide v8, v10, Lcom/tencent/open/w;->b:J

    iget-wide v10, v10, Lcom/tencent/open/w;->c:J
    :try_end_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/tencent/open/e; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/tencent/open/h; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    invoke-static {}, Lcom/tencent/open/a/b;->a()Lcom/tencent/open/a/b;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/open/i;->a:Lcom/tencent/open/m;

    invoke-virtual {v4}, Lcom/tencent/open/m;->d()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    return-object v14

    :catch_0
    move-exception v8

    const/4 v12, -0x4

    goto :goto_2

    :catch_1
    move-exception v8

    move-object v15, v14

    move-object v14, v8

    :goto_4
    invoke-virtual {v14}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    const/4 v12, -0x7

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    if-ge v13, v4, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-wide/from16 v17, v8

    move-object v8, v15

    move-wide/from16 v14, v17

    :goto_5
    if-lt v13, v4, :cond_4

    move-wide/from16 v17, v14

    move-object v14, v8

    move-wide/from16 v8, v17

    goto :goto_3

    :cond_2
    invoke-static {}, Lcom/tencent/open/a/b;->a()Lcom/tencent/open/a/b;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/open/i;->a:Lcom/tencent/open/m;

    invoke-virtual {v4}, Lcom/tencent/open/m;->d()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    throw v14

    :catch_2
    move-exception v8

    move-object v15, v14

    move-object v14, v8

    :goto_6
    invoke-virtual {v14}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    const/4 v12, -0x8

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    if-ge v13, v4, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-wide/from16 v17, v8

    move-object v8, v15

    move-wide/from16 v14, v17

    goto :goto_5

    :cond_3
    invoke-static {}, Lcom/tencent/open/a/b;->a()Lcom/tencent/open/a/b;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/open/i;->a:Lcom/tencent/open/m;

    invoke-virtual {v4}, Lcom/tencent/open/m;->d()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    throw v14

    :catch_3
    move-exception v3

    move-object v14, v3

    invoke-virtual {v14}, Lcom/tencent/open/e;->printStackTrace()V

    invoke-virtual {v14}, Lcom/tencent/open/e;->getMessage()Ljava/lang/String;

    move-result-object v3

    :try_start_4
    const-string v4, "http status code error:"

    const-string v8, ""

    invoke-virtual {v3, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v12

    :goto_7
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-static {}, Lcom/tencent/open/a/b;->a()Lcom/tencent/open/a/b;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/open/i;->a:Lcom/tencent/open/m;

    invoke-virtual {v4}, Lcom/tencent/open/m;->d()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    throw v14

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v12, -0x9

    goto :goto_7

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Lcom/tencent/open/h;->printStackTrace()V

    throw v3

    :catch_6
    move-exception v3

    move-object v14, v3

    invoke-virtual {v14}, Ljava/net/MalformedURLException;->printStackTrace()V

    const/4 v12, -0x3

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-static {}, Lcom/tencent/open/a/b;->a()Lcom/tencent/open/a/b;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/open/i;->a:Lcom/tencent/open/m;

    invoke-virtual {v4}, Lcom/tencent/open/m;->d()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    throw v14

    :catch_7
    move-exception v3

    move-object v14, v3

    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    invoke-static {v14}, Lcom/tencent/open/i;->a(Ljava/io/IOException;)I

    move-result v12

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-static {}, Lcom/tencent/open/a/b;->a()Lcom/tencent/open/a/b;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/open/i;->a:Lcom/tencent/open/m;

    invoke-virtual {v4}, Lcom/tencent/open/m;->d()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    throw v14

    :catch_8
    move-exception v3

    move-object v14, v3

    invoke-virtual {v14}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v12, -0x4

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-static {}, Lcom/tencent/open/a/b;->a()Lcom/tencent/open/a/b;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/open/i;->a:Lcom/tencent/open/m;

    invoke-virtual {v4}, Lcom/tencent/open/m;->d()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    throw v14

    :catch_9
    move-exception v8

    move-object v14, v8

    move-object v15, v9

    goto/16 :goto_6

    :catch_a
    move-exception v8

    move-object v14, v8

    move-object v15, v9

    goto/16 :goto_4

    :cond_4
    move-object v9, v8

    move v8, v13

    goto/16 :goto_1

    :cond_5
    move-object/from16 v5, p2

    move-object/from16 v3, p2

    goto/16 :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/b;Ljava/lang/Object;)V
    .locals 8

    new-instance v0, Lcom/tencent/open/ab;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tencent/open/ab;-><init>(Lcom/tencent/open/i;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/b;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/tencent/open/ab;->start()V

    return-void
.end method
