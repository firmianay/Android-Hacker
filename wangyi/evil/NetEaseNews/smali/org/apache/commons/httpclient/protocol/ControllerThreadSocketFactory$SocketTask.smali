.class public abstract Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private exception:Ljava/io/IOException;

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static access$000(Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;)Ljava/io/IOException;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;->exception:Ljava/io/IOException;

    return-object v0
.end method


# virtual methods
.method public abstract doit()V
.end method

.method protected getSocket()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public run()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;->doit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;->exception:Ljava/io/IOException;

    goto :goto_0
.end method

.method protected setSocket(Ljava/net/Socket;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;->socket:Ljava/net/Socket;

    return-void
.end method
