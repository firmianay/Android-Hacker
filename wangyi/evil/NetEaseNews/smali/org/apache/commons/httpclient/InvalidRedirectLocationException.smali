.class public Lorg/apache/commons/httpclient/InvalidRedirectLocationException;
.super Lorg/apache/commons/httpclient/RedirectException;


# instance fields
.field private final location:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/RedirectException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/commons/httpclient/InvalidRedirectLocationException;->location:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lorg/apache/commons/httpclient/RedirectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p2, p0, Lorg/apache/commons/httpclient/InvalidRedirectLocationException;->location:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/InvalidRedirectLocationException;->location:Ljava/lang/String;

    return-object v0
.end method
