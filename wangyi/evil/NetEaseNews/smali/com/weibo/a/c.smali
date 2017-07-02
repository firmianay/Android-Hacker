.class public Lcom/weibo/a/c;
.super Lcom/weibo/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/weibo/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/weibo/a/k;)Lcom/weibo/a/k;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/weibo/a/e;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/weibo/a/k;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/a/e;)Ljava/lang/String;
    .locals 2

    if-nez p6, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OAuth2 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6}, Lcom/weibo/a/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/weibo/a/k;Lcom/weibo/a/k;)V
    .locals 0

    return-void
.end method
