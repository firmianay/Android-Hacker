.class public abstract Lnet/oauth/http/HttpResponseMessage;
.super Lnet/oauth/http/HttpMessage;


# static fields
.field public static final EOL:Ljava/lang/String; = "\r\n"

.field public static final LOCATION:Ljava/lang/String; = "Location"

.field public static final STATUS_CODE:Ljava/lang/String; = "HTTP status"

.field public static final STATUS_OK:I = 0xc8


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/net/URL;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/oauth/http/HttpMessage;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/util/Map;)V
    .locals 2

    invoke-super {p0, p1}, Lnet/oauth/http/HttpMessage;->dump(Ljava/util/Map;)V

    const-string v0, "HTTP status"

    invoke-virtual {p0}, Lnet/oauth/http/HttpResponseMessage;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Location"

    invoke-virtual {p0, v0}, Lnet/oauth/http/HttpResponseMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Location"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public abstract getStatusCode()I
.end method
