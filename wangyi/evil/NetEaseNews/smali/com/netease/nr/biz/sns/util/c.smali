.class public abstract Lcom/netease/nr/biz/sns/util/c;
.super Ljava/lang/Object;


# instance fields
.field protected mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

.field protected mContext:Landroid/content/Context;

.field mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getLoginUrl()Ljava/lang/String;
.end method

.method public abstract getMsgLimit()I
.end method

.method protected getToken(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/c;->mType:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/nr/biz/sns/util/a;->d(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/c;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getWebViewClient()Landroid/webkit/WebViewClient;
.end method

.method public needRedirect(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract publish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method protected saveToken(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/c;->mType:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/netease/nr/biz/sns/util/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public setupWebView(Landroid/webkit/WebView;)V
    .locals 0

    return-void
.end method

.method public transmitBlog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public updateSnsInfo()V
    .locals 0

    return-void
.end method
