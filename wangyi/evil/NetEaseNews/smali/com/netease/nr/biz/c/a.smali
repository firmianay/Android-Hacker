.class public Lcom/netease/nr/biz/c/a;
.super Lcom/netease/nr/base/a/a;


# instance fields
.field b:Lcom/netease/util/j/a;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;

.field private e:Landroid/view/LayoutInflater;

.field private f:Lcom/netease/nr/biz/c/c;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Lcom/netease/util/j/a;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/nr/base/a/a;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/netease/nr/biz/c/a;->d:Ljava/util/List;

    iput-object p2, p0, Lcom/netease/nr/biz/c/a;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/c/a;->e:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/netease/nr/biz/c/a;->b:Lcom/netease/util/j/a;

    return-void
.end method


# virtual methods
.method public a(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    if-nez p3, :cond_6

    :try_start_0
    iget-object v0, p0, Lcom/netease/nr/biz/c/a;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f03003e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    new-instance v0, Lcom/netease/nr/biz/c/c;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/netease/nr/biz/c/c;-><init>(Lcom/netease/nr/biz/c/a;Lcom/netease/nr/biz/c/b;)V

    iput-object v0, p0, Lcom/netease/nr/biz/c/a;->f:Lcom/netease/nr/biz/c/c;

    iget-object v2, p0, Lcom/netease/nr/biz/c/a;->f:Lcom/netease/nr/biz/c/c;

    const v0, 0x7f0c00bb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/netease/nr/biz/c/c;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netease/nr/biz/c/a;->f:Lcom/netease/nr/biz/c/c;

    const v0, 0x7f0c00bc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/netease/nr/biz/c/c;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netease/nr/biz/c/a;->f:Lcom/netease/nr/biz/c/c;

    const v0, 0x7f0c00bd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/netease/nr/biz/c/c;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netease/nr/biz/c/a;->f:Lcom/netease/nr/biz/c/c;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/c/c;

    iput-object v0, p0, Lcom/netease/nr/biz/c/a;->f:Lcom/netease/nr/biz/c/c;

    iget-object v0, p0, Lcom/netease/nr/biz/c/a;->b:Lcom/netease/util/j/a;

    const v2, 0x7f0c00ba

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f070014

    invoke-virtual {v0, v2, v3}, Lcom/netease/util/j/a;->b(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/c/a;->b:Lcom/netease/util/j/a;

    iget-object v2, p0, Lcom/netease/nr/biz/c/a;->f:Lcom/netease/nr/biz/c/c;

    iget-object v2, v2, Lcom/netease/nr/biz/c/c;->c:Landroid/widget/ImageView;

    const v3, 0x7f020030

    invoke-virtual {v0, v2, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/biz/c/a;->a(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/c/a;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/netease/nr/biz/c/a;->f:Lcom/netease/nr/biz/c/c;

    iget-object v4, v4, Lcom/netease/nr/biz/c/c;->a:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/netease/nr/biz/c/a;->f:Lcom/netease/nr/biz/c/c;

    iget-object v4, v4, Lcom/netease/nr/biz/c/c;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/c/a;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v2, " <font color=#a10000>"

    iget-object v5, p0, Lcom/netease/nr/biz/c/a;->b:Lcom/netease/util/j/a;

    iget-object v6, p0, Lcom/netease/nr/biz/c/a;->c:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/netease/util/j/a;->b(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v2, " <font color=#a8a8a8>"

    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    const-string v2, ""

    :goto_2
    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " <font color=#545454>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "msg"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</font>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/netease/nr/biz/c/a;->f:Lcom/netease/nr/biz/c/c;

    iget-object v0, v0, Lcom/netease/nr/biz/c/c;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_3
    move-object v0, v1

    :goto_4
    return-object v0

    :cond_3
    iget-object v2, p0, Lcom/netease/nr/biz/c/a;->f:Lcom/netease/nr/biz/c/c;

    iget-object v2, v2, Lcom/netease/nr/biz/c/c;->a:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_4
    :try_start_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "</font>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/netease/nr/biz/c/a;->f:Lcom/netease/nr/biz/c/c;

    iget-object v0, v0, Lcom/netease/nr/biz/c/c;->b:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, p3

    goto :goto_5

    :cond_6
    move-object v1, p3

    goto/16 :goto_0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/c/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/e/b;

    iget-object v0, v0, Lcom/netease/util/e/b;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/c/a;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f03003b

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/netease/nr/biz/c/d;

    invoke-direct {v2, p0, v3}, Lcom/netease/nr/biz/c/d;-><init>(Lcom/netease/nr/biz/c/a;Lcom/netease/nr/biz/c/b;)V

    const v1, 0x7f0c00aa

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/netease/nr/biz/c/d;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/nr/biz/c/a;->b:Lcom/netease/util/j/a;

    iget-object v3, v2, Lcom/netease/nr/biz/c/d;->a:Landroid/widget/TextView;

    const v4, 0x7f02029e

    invoke-virtual {v1, v3, v4}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/nr/biz/c/d;

    iget-object v1, v1, Lcom/netease/nr/biz/c/d;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public a(Ljava/util/Map;)Ljava/lang/String;
    .locals 6

    const-string v0, "homeScore"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "awayScore"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "homeTeam"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "awayTeam"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public b(Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    const-string v0, "now"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method
