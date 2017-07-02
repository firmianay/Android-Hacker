.class final Lorg/apache/james/mime4j/util/MimeUtil$1;
.super Ljava/lang/ThreadLocal;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/james/mime4j/util/MimeUtil$1;->initialValue()Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/text/DateFormat;
    .locals 1

    new-instance v0, Lorg/apache/james/mime4j/util/MimeUtil$Rfc822DateFormat;

    invoke-direct {v0}, Lorg/apache/james/mime4j/util/MimeUtil$Rfc822DateFormat;-><init>()V

    return-object v0
.end method
