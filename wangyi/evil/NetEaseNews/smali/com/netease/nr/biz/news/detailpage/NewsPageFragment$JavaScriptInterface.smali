.class public Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;


# direct methods
.method public constructor <init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAdAction(I)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->e(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->e(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ad/e;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/news/detailpage/a/a/a;->a(Landroid/app/Activity;Lcom/netease/ad/e;)V

    goto :goto_0
.end method

.method public getAdText()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->e(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->e(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ad/e;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/ad/o;->a(Landroid/content/Context;Lcom/netease/ad/e;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->c(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->e(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/nr/biz/news/detailpage/a/a/a;->a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->c(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netease/nr/base/c/p;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getBody()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v2}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v3}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/nr/biz/news/detailpage/t;->k:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v4}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->b(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;ZLjava/util/HashMap;Ljava/util/HashMap;Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommentBottomHideNum()I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/a;->c()I

    move-result v0

    return v0
.end method

.method public getCommentHideConditionNum()I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/a;->a()I

    move-result v0

    return v0
.end method

.method public getCommentTopHideNum()I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/a;->b()I

    move-result v0

    return v0
.end method

.method public getHotCommentBuilding(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/nr/biz/news/detailpage/a;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->c(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netease/nr/base/c/p;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHotNonValue(I)I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/nr/biz/news/detailpage/a;->d(I)I

    move-result v0

    return v0
.end method

.method public getJsString(I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->c(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netease/nr/base/c/p;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->c(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b014a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->c(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b014b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->c(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0129

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->c(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b012a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->c(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b014c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getLatestCommentBuilding(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/nr/biz/news/detailpage/a;->b(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->c(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netease/nr/base/c/p;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLatestNonValue(I)I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/nr/biz/news/detailpage/a;->c(I)I

    move-result v0

    return v0
.end method

.method public getMore()V
    .locals 1

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/w;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/news/detailpage/w;-><init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;)V

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/w;->start()V

    return-void
.end method

.method public getMoreBody()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v2}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v3}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/nr/biz/news/detailpage/t;->k:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v4}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->b(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;ZLjava/util/HashMap;Ljava/util/HashMap;Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/a;->d()I

    move-result v0

    return v0
.end method

.method public getPtCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/a;->e()I

    move-result v0

    return v0
.end method

.method public getReplyBoard()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v2, "replyBoard"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v1, "replyBoard"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getReplyCount()I
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v2, "replyCount"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v1, "replyCount"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/util/h/b;->g(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    const v2, 0x7f0b01cf

    invoke-virtual {v1, v2}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v2, "source"

    invoke-static {v1, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTextSize()I
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->c(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_text_size_key"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v2, "ptime"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v1, "ptime"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->c(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netease/nr/base/c/p;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->g(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<div style=\'float:left;width:10px;height:25px;background-color:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v2}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->g(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";margin-left:-6%;\'></div>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTitlePre()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public goLocalNewsList()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/a/a/k;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public goMoreTie()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->h(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/biz/news/detailpage/y;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/news/detailpage/y;-><init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public goToCaipiaoBet(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0, p1}, Lcom/netease/nr/biz/news/detailpage/a/a/h;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public goToCaipiaoClientDownload()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/a/a/h;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public gotoNetApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->c(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.netease.apper"

    invoke-static {v0, v1}, Lcom/netease/nr/biz/news/detailpage/af;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.netease.apper"

    const-string v3, "com.netease.apper.FinalAppPageActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "softid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://3g.163.com/m/android/software/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "param_url"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->s()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->c(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseWebFragment"

    const/4 v5, 0x0

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-virtual {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public hasNext()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v2, "hasNext"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v2, "hasNext"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public multisubmit(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->submitVote(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->c(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b019e

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;II)Lcom/netease/nr/base/view/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/nr/base/view/az;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public print(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public reloadImg(I)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->d(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->d(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/ag;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/netease/nr/biz/news/detailpage/ag;->a(IZ)V

    :cond_0
    return-void
.end method

.method public replaceVoteData(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->b(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->b(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:replaceVoteData(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public requestImgLoading(II)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->d(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->d(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/ag;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/nr/biz/news/detailpage/ag;->a(II)V

    :cond_0
    return-void
.end method

.method public showBigPic(I)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v2}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->k:Ljava/util/HashMap;

    invoke-static {v0, p1, v1, v2}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;ILjava/util/HashMap;Ljava/util/HashMap;)V

    return-void
.end method

.method public showToolBar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/nr/biz/news/detailpage/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startCommentMoreTask()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/a;->f()V

    return-void
.end method

.method public startCommentTask(I)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/nr/biz/news/detailpage/a;->e(I)V

    return-void
.end method

.method public startWholeCommentTask(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/nr/biz/news/detailpage/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public submitVote(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->c(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->c(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0010

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/netease/nr/biz/news/detailpage/a/a/u;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->c(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1}, Lcom/netease/nr/biz/news/detailpage/a/a/u;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public subscribeTopic(I)V
    .locals 4

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->i(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->c(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/nr/biz/news/detailpage/t;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/nr/biz/news/column/g;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    :goto_1
    const-string v0, "ename"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/netease/nr/biz/news/column/g;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v2, v1, v0}, Lcom/netease/nr/biz/news/column/g;->a(Landroid/content/Context;Ljava/util/Map;Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->h(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/biz/news/detailpage/x;

    invoke-direct {v1, p0, p1, v3}, Lcom/netease/nr/biz/news/detailpage/x;-><init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v1, "topics"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->c(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/news/column/g;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public toLink(I)V
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v1, "link"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/nr/biz/news/detailpage/t;->k:Ljava/util/HashMap;

    const-string v3, "link"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-virtual {v0, v2, p1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(Ljava/util/List;I)V

    return-void
.end method

.method public toRelative(I)V
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v1, "relative"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/nr/biz/news/detailpage/t;->k:Ljava/util/HashMap;

    const-string v3, "relative"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-virtual {v0, v2, p1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(Ljava/util/List;I)V

    return-void
.end method

.method public toTopic(I)V
    .locals 9

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->i(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->c(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v2}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/netease/nr/biz/news/column/g;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    move-object v6, v0

    :goto_1
    const-string v0, "tname"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "tid"

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "icon"

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "type"

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    const-string v4, "ename"

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v4}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->c(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/netease/nr/biz/news/column/g;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v8, "columnName"

    invoke-virtual {v4, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "columnId"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ename"

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "columnSubscribed"

    invoke-virtual {v4, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->s()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/netease/nr/biz/h/p;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SubscribeListFragment"

    const/4 v5, 0x0

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v2, "topics"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v2}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->c(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/netease/nr/biz/news/column/g;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_1
.end method

.method public toappLink(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v1, "link"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "href"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "title"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u5e94\u7528\u4e0b\u8f7d"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/biz/news/detailpage/r;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-virtual {v2}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/netease/nr/biz/news/detailpage/r;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method
