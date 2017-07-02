.class public Lcom/netease/nr/biz/pc/e/g;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;

.field private d:Lcom/netease/util/j/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/netease/nr/biz/pc/e/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/nr/biz/pc/e/g;->c:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/e/g;->b:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/netease/nr/biz/pc/e/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/e/g;->d:Lcom/netease/util/j/a;

    return-void
.end method

.method private a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/netease/nr/biz/pc/e/b;->a:Ljava/util/Map;

    invoke-static {v1, p1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/nr/biz/pc/e/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "score_open_app_key"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v0, 0x7f060013

    :cond_0
    :goto_0
    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    const-string v2, "score_sharenews_key"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v0, 0x7f060014

    goto :goto_0

    :cond_2
    const-string v2, "score_post_key"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v0, 0x7f060015

    goto :goto_0

    :cond_3
    const-string v2, "score_vote_key"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f060016

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/netease/nr/biz/pc/e/g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    sget-object v0, Lcom/netease/nr/biz/pc/e/b;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/e/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "score_invite_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v0, Lcom/netease/nr/biz/pc/e/j;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "score_propaganda_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/netease/nr/biz/pc/e/n;

    goto :goto_0

    :cond_1
    const-class v0, Lcom/netease/nr/biz/pc/e/i;

    goto :goto_0
.end method


# virtual methods
.method public a(I)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/e/g;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/pc/e/g;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/e/g;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/pc/e/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/pc/e/g;->a(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const v10, 0x7f0b016b

    const v9, 0x7f07003d

    const/4 v8, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/e/g;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03008a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/netease/nr/biz/pc/e/h;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/pc/e/h;-><init>(Lcom/netease/nr/biz/pc/e/g;)V

    const v0, 0x7f0c0008

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/pc/e/h;->a(Lcom/netease/nr/biz/pc/e/h;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0c004a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/pc/e/h;->b(Lcom/netease/nr/biz/pc/e/h;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0c01a2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/pc/e/h;->c(Lcom/netease/nr/biz/pc/e/h;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    :goto_0
    const v1, 0x7f020331

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/pc/e/g;->a(I)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {v0}, Lcom/netease/nr/biz/pc/e/h;->a(Lcom/netease/nr/biz/pc/e/h;)Landroid/widget/TextView;

    move-result-object v2

    const-string v4, "name"

    invoke-static {v1, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "task_propaganda"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/netease/nr/biz/pc/e/h;->b(Lcom/netease/nr/biz/pc/e/h;)Landroid/widget/TextView;

    move-result-object v2

    const-string v5, "300\u91d1\u5e01"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const-string v2, "status"

    invoke-static {v1, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "true"

    const-string v6, "accomplish"

    invoke-static {v1, v6}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "task01"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v0}, Lcom/netease/nr/biz/pc/e/h;->c(Lcom/netease/nr/biz/pc/e/h;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcom/netease/nr/biz/pc/e/g;->a:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v2

    :goto_2
    iget-object v2, p0, Lcom/netease/nr/biz/pc/e/g;->d:Lcom/netease/util/j/a;

    const v4, 0x7f020229

    invoke-virtual {v2, p2, v4}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/netease/nr/biz/pc/e/g;->d:Lcom/netease/util/j/a;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/e/h;->a(Lcom/netease/nr/biz/pc/e/h;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4, v9}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v2, p0, Lcom/netease/nr/biz/pc/e/g;->d:Lcom/netease/util/j/a;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/e/h;->b(Lcom/netease/nr/biz/pc/e/h;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4, v9}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/netease/nr/biz/pc/e/g;->d:Lcom/netease/util/j/a;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/e/h;->c(Lcom/netease/nr/biz/pc/e/h;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f070039

    invoke-virtual {v1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    :goto_3
    const v0, 0x7f0c0022

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/e/g;->d:Lcom/netease/util/j/a;

    const v2, 0x7f02022d

    invoke-virtual {v1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/e/g;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_a

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_4
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/pc/e/h;

    goto/16 :goto_0

    :cond_2
    const-string v2, "task_invite"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/netease/nr/biz/pc/e/h;->b(Lcom/netease/nr/biz/pc/e/h;)Landroid/widget/TextView;

    move-result-object v2

    const-string v5, "200\u91d1\u5e01"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    invoke-static {v0}, Lcom/netease/nr/biz/pc/e/h;->b(Lcom/netease/nr/biz/pc/e/h;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v5, p0, Lcom/netease/nr/biz/pc/e/g;->a:Landroid/content/Context;

    const v6, 0x7f0b016a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    const-string v7, "addcoin"

    invoke-static {v1, v7, v3}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4
    const-string v6, "task_propaganda"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "count"

    invoke-static {v1, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v1, "0"

    :cond_5
    invoke-static {v0}, Lcom/netease/nr/biz/pc/e/h;->c(Lcom/netease/nr/biz/pc/e/h;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/nr/biz/pc/e/g;->a:Landroid/content/Context;

    const v6, 0x7f0b017e

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v1, v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v2

    goto/16 :goto_2

    :cond_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v0}, Lcom/netease/nr/biz/pc/e/h;->c(Lcom/netease/nr/biz/pc/e/h;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v2

    goto/16 :goto_2

    :cond_7
    invoke-static {v0}, Lcom/netease/nr/biz/pc/e/h;->c(Lcom/netease/nr/biz/pc/e/h;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v2, :cond_8

    iget-object v1, p0, Lcom/netease/nr/biz/pc/e/g;->a:Landroid/content/Context;

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v2

    goto/16 :goto_2

    :cond_8
    iget-object v1, p0, Lcom/netease/nr/biz/pc/e/g;->a:Landroid/content/Context;

    const v5, 0x7f0b016c

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_9
    iget-object v1, p0, Lcom/netease/nr/biz/pc/e/g;->d:Lcom/netease/util/j/a;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/e/h;->c(Lcom/netease/nr/biz/pc/e/h;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f07003b

    invoke-virtual {v1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    goto/16 :goto_3

    :cond_a
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_b
    move v1, v3

    goto/16 :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const v0, 0x7f020331

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/e/g;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/pc/e/g;->a(I)Ljava/util/Map;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/nr/biz/pc/e/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "true"

    const-string v5, "accomplish"

    invoke-static {v0, v5}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "accomplish"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "desc"

    const-string v5, "desc"

    invoke-static {v0, v5}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "name"

    invoke-virtual {v4, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "priority"

    const-string v3, "priority"

    invoke-static {v0, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "addcoin"

    const-string v3, "addcoin"

    invoke-static {v0, v3, v6}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "addpoint"

    const-string v3, "addpoint"

    invoke-static {v0, v3, v6}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "detail"

    invoke-direct {p0, v2}, Lcom/netease/nr/biz/pc/e/g;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "msg"

    const-string v3, "msg"

    invoke-static {v0, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status"

    const-string v3, "status"

    invoke-static {v0, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "count"

    const-string v3, "count"

    invoke-static {v0, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/netease/nr/biz/pc/e/g;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/netease/nr/biz/pc/e/g;->a:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScoreTaskDetailFragment"

    const/4 v5, 0x0

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/e/g;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0c01a1
        :pswitch_0
    .end packed-switch
.end method
