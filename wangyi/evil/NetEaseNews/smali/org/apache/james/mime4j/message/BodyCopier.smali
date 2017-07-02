.class public Lorg/apache/james/mime4j/message/BodyCopier;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Lorg/apache/james/mime4j/message/Body;)Lorg/apache/james/mime4j/message/Body;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Body is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p0, Lorg/apache/james/mime4j/message/Message;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/james/mime4j/message/Message;

    check-cast p0, Lorg/apache/james/mime4j/message/Message;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/message/Message;-><init>(Lorg/apache/james/mime4j/message/Message;)V

    :goto_0
    return-object v0

    :cond_1
    instance-of v0, p0, Lorg/apache/james/mime4j/message/Multipart;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/james/mime4j/message/Multipart;

    check-cast p0, Lorg/apache/james/mime4j/message/Multipart;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/message/Multipart;-><init>(Lorg/apache/james/mime4j/message/Multipart;)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lorg/apache/james/mime4j/message/SingleBody;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/apache/james/mime4j/message/SingleBody;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/SingleBody;->copy()Lorg/apache/james/mime4j/message/SingleBody;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported body class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
