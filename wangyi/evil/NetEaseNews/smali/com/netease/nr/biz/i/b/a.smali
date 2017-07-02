.class public Lcom/netease/nr/biz/i/b/a;
.super Lcom/netease/nr/base/fragment/q;

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/netease/nr/biz/i/a/a/j;
.implements Lcom/netease/nr/biz/pc/a/o;
.implements Lcom/netease/nr/biz/sns/a/d/b;


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/util/List;

.field d:Lcom/netease/nr/biz/i/a/a/b;

.field e:Lcom/netease/nr/biz/i/a/a/i;

.field f:Lcom/netease/nr/biz/i/a/a/d;

.field g:I

.field h:I

.field i:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/q;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/i/b/a;->c:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/i/b/a;->i:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/util/Map;I)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->e:Lcom/netease/nr/biz/i/a/a/i;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "commentBuild"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "floor"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/netease/nr/biz/i/a/a/a;->d(Ljava/util/Map;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, "k"

    invoke-static {v0, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/nr/biz/i/a/a/a;->c(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Lcom/netease/nr/biz/i/b/a;->e:Lcom/netease/nr/biz/i/a/a/i;

    const v5, 0x7f0c0270

    invoke-virtual {v4, v5, v3}, Lcom/netease/nr/biz/i/a/a/i;->b(IZ)V

    const-string v3, "bi"

    invoke-static {v0, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pi"

    invoke-static {v0, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/i/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v3, p0, Lcom/netease/nr/biz/i/b/a;->e:Lcom/netease/nr/biz/i/a/a/i;

    const v4, 0x7f0c0200

    invoke-virtual {v3, v4, v0}, Lcom/netease/nr/biz/i/a/a/i;->b(IZ)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->e:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/i;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/a;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/a;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/netease/nr/biz/i/b/a;->h:I

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/netease/nr/biz/i/b/a;->e:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/a;->getListView()Landroid/widget/ListView;

    move-result-object v4

    neg-int v0, v0

    invoke-virtual {v3, v4, v1, v0, v2}, Lcom/netease/nr/biz/i/a/a/i;->a(Landroid/view/View;IILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private b(Ljava/util/Map;I)V
    .locals 8

    const/4 v7, 0x2

    const/4 v1, 0x1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/netease/nr/biz/i/a/a/a;->d(Ljava/util/Map;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v4, "bi"

    invoke-static {v0, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "NON"

    invoke-static {p1, v5}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v1

    :goto_0
    if-gt v2, p2, :cond_6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v2, p2, :cond_0

    const-string v5, "bi"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    if-gt p2, v7, :cond_3

    move v2, v1

    :goto_1
    if-gt v2, p2, :cond_6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v2, p2, :cond_2

    const-string v5, "bi"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    :goto_2
    if-gt v1, v7, :cond_4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const-string v1, "NON"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v2, -0x2

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    :goto_3
    if-gt v2, p2, :cond_6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v2, p2, :cond_5

    const-string v5, "bi"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/netease/nr/biz/i/b/a;->f:Lcom/netease/nr/biz/i/a/a/d;

    if-eqz v1, :cond_7

    const-string v1, "pi"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/i/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/i/b/a;->f:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v1, v4, v0}, Lcom/netease/nr/biz/i/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->f:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0, v3}, Lcom/netease/nr/biz/i/a/a/d;->a(Ljava/util/Map;)V

    :cond_7
    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->e:Lcom/netease/nr/biz/i/a/a/i;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->e:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/i;->dismiss()V

    :cond_8
    return-void
.end method

.method private c(Ljava/util/Map;I)V
    .locals 8

    const/4 v7, 0x0

    invoke-static {p1}, Lcom/netease/nr/biz/i/a/a/a;->d(Ljava/util/Map;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "bi"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pi"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/nr/biz/i/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/netease/nr/biz/i/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "s"

    invoke-static {v0, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "http://comment.news.163.com/%s/%s/%s.html"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v7

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "wap"

    invoke-static {v4, v5}, Lcom/netease/nr/base/c/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "www"

    invoke-static {v4, v6}, Lcom/netease/nr/base/c/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v2}, Lcom/netease/nr/base/c/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "share_wap_url"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "share_www_url"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "share_title"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "share_pic"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/netease/nr/biz/sns/a/d/a;

    invoke-direct {v1}, Lcom/netease/nr/biz/sns/a/d/a;-><init>()V

    const-string v3, "from_where"

    sget-object v0, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netease/nr/biz/sns/a/d/a;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v1, p0, v7}, Lcom/netease/nr/biz/sns/a/d/a;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/sns/a/d/a;->a(Landroid/support/v4/app/FragmentActivity;)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->e:Lcom/netease/nr/biz/i/a/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->e:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/i;->dismiss()V

    :cond_0
    return-void
.end method

.method private d(Ljava/util/Map;I)V
    .locals 3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "b"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0146

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->e:Lcom/netease/nr/biz/i/a/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->e:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/i;->dismiss()V

    :cond_0
    return-void
.end method

.method private e(Ljava/util/Map;I)V
    .locals 6

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/netease/nr/biz/i/a/a/a;->d(Ljava/util/Map;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "pi"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/i/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/a;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/netease/nr/biz/news/detailpage/NewsPageActivity;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/i/b/a;->startActivity(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->e:Lcom/netease/nr/biz/i/a/a/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->e:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/i;->dismiss()V

    :cond_1
    return-void
.end method

.method private m()V
    .locals 4

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->e:Lcom/netease/nr/biz/i/a/a/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/i/a/a/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/biz/i/b/a;->e:Lcom/netease/nr/biz/i/a/a/i;

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->e:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0, p0}, Lcom/netease/nr/biz/i/a/a/i;->a(Lcom/netease/nr/biz/i/a/a/j;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300da

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/i/b/a;->e:Lcom/netease/nr/biz/i/a/a/i;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v0, v2}, Lcom/netease/nr/biz/i/a/a/i;->a(Landroid/view/View;[I)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0c0200
        0x7f0c007b
        0x7f0c026d
        0x7f0c0270
    .end array-data
.end method

.method private n()V
    .locals 4

    new-instance v0, Lcom/netease/nr/biz/i/a/a/b;

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/i/b/a;->c:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/nr/biz/i/a/a/b;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/netease/nr/base/view/x;)V

    iput-object v0, p0, Lcom/netease/nr/biz/i/b/a;->d:Lcom/netease/nr/biz/i/a/a/b;

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->d:Lcom/netease/nr/biz/i/a/a/b;

    const v1, 0x7f0300d8

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/i/a/a/b;->a(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->d:Lcom/netease/nr/biz/i/a/a/b;

    iget-object v1, p0, Lcom/netease/nr/biz/i/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/i/a/a/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->d:Lcom/netease/nr/biz/i/a/a/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/i/a/a/b;->a(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->d:Lcom/netease/nr/biz/i/a/a/b;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/i/b/a;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/nr/biz/sns/a/d/a;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9

    const v8, 0x7f0b007d

    const/high16 v7, 0x7f0b0000

    const v6, 0x7f0b0065

    const/4 v1, 0x0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/netease/nr/biz/sns/a/d/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/netease/nr/biz/sns/a/d/a;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v1

    :goto_1
    invoke-virtual {p1}, Lcom/netease/nr/biz/sns/a/d/a;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2

    move-object v3, v1

    :goto_2
    invoke-virtual {p1}, Lcom/netease/nr/biz/sns/a/d/a;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_3

    :goto_3
    const-string v5, "share_wap_url"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "share_www_url"

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "share_pic"

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sms"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/netease/nr/biz/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u300a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u300b"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0b006a

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0b0068

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%%wap%%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0b0069

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%%www%%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "share_content"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-object v4

    :cond_0
    invoke-virtual {p1}, Lcom/netease/nr/biz/sns/a/d/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "share_title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netease/nr/biz/sns/a/d/a;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "share_wap_url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/netease/nr/biz/sns/a/d/a;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "share_www_url"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/netease/nr/biz/sns/a/d/a;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "share_pic"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_4
    const-string v1, "weixin"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "weixin_timeline"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "yiliao"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "yixin"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "yixin_timeline"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const-string v1, "share_title"

    const v2, 0x7f0b006f

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "share_content"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v8}, Lcom/netease/nr/biz/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string v1, "qqfriends"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "title"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v8}, Lcom/netease/nr/biz/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "targetUrl"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appName"

    invoke-virtual {p0, v7}, Lcom/netease/nr/biz/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "site"

    invoke-virtual {p0, v7}, Lcom/netease/nr/biz/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    const-string v1, "email"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "ydnote"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_8
    const-string v1, "ydnote"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/netease/nr/biz/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\uff1a"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "<html><head></head><body style=\"margin:0px; padding:0px;\">"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "<center><div style=\"color:#464646;font-size:18px;font-weight:bold;\" >"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</div>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "<p>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v5, 0x7f0b007e

    invoke-virtual {p0, v5}, Lcom/netease/nr/biz/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "<a href=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%%www%%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\">"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%%www%%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</a></p>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_9

    const-string v3, "<br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v5, 0x7f0b007f

    invoke-virtual {p0, v5}, Lcom/netease/nr/biz/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "<img src=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%%img%%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' />"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    const-string v3, "</div>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</body></html>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "//"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/netease/nr/biz/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "share_content"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ydnote_content"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ydnote_title"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "share_other"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_4

    :cond_9
    const-string v3, "<p>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "getString(R.string.biz_sns_share_tie_img_title)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "<a href=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%%img%%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\">"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%%img%%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</a></p>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_a
    const-string v0, "share_title"

    const v1, 0x7f0b006d

    invoke-virtual {p0, v1}, Lcom/netease/nr/biz/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "share_content"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "//"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0x7f0b0071

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "share_content"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(ILjava/lang/Object;)V
    .locals 3

    check-cast p2, Ljava/util/Map;

    const-string v0, "commentBuild"

    invoke-static {p2, v0}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "floor"

    const/4 v2, -0x1

    invoke-static {p2, v1, v2}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0, v0, v1}, Lcom/netease/nr/biz/i/b/a;->c(Ljava/util/Map;I)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v0, v1}, Lcom/netease/nr/biz/i/b/a;->b(Ljava/util/Map;I)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, v0, v1}, Lcom/netease/nr/biz/i/b/a;->d(Ljava/util/Map;I)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, v0, v1}, Lcom/netease/nr/biz/i/b/a;->e(Ljava/util/Map;I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c007b -> :sswitch_0
        0x7f0c0200 -> :sswitch_1
        0x7f0c026d -> :sswitch_2
        0x7f0c0270 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netease/nr/biz/i/b/a;->e:Lcom/netease/nr/biz/i/a/a/i;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/i/b/a;->e:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v1, p1, p2}, Lcom/netease/nr/biz/i/a/a/i;->a(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/netease/nr/biz/i/b/a;->f:Lcom/netease/nr/biz/i/a/a/d;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/nr/biz/i/b/a;->f:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v1, p1, p2}, Lcom/netease/nr/biz/i/a/a/d;->a(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a_(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/i/b/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/nr/base/c/s;->d(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netease/nr/biz/i/b/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/i/b/a;->setListAdapter(Landroid/widget/ListAdapter;)V

    iput-object v2, p0, Lcom/netease/nr/biz/i/b/a;->d:Lcom/netease/nr/biz/i/a/a/b;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/i/b/a;->setListShownNoAnimation(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->i:Landroid/os/Handler;

    new-instance v1, Lcom/netease/nr/biz/i/b/b;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/i/b/b;-><init>(Lcom/netease/nr/biz/i/b/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0300d9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 5

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/netease/nr/biz/i/b/a;->l:I

    new-instance v0, Lcom/netease/nr/biz/i/b/c;

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/i/b/a;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/netease/nr/biz/i/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    invoke-static {p2}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/i/b/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/netease/nr/biz/i/b/a;->c:Ljava/util/List;

    invoke-static {p2}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/netease/nr/biz/i/b/a;->n()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/netease/nr/biz/i/b/a;->l:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/i/b/a;->b(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/i/b/a;->b(Z)V

    goto :goto_0
.end method

.method public c(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 5

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/netease/nr/biz/i/b/a;->l:I

    iget v0, p0, Lcom/netease/nr/biz/i/b/a;->k:I

    add-int v2, v0, v1

    new-instance v0, Lcom/netease/nr/biz/i/b/c;

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/nr/biz/i/b/a;->b:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/netease/nr/biz/i/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method protected c(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 2

    const v0, 0x1020004

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0202cf

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public d(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->d(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    invoke-static {p2}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/netease/nr/biz/i/b/a;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/netease/nr/biz/i/b/a;->d:Lcom/netease/nr/biz/i/a/a/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/i/b/a;->d:Lcom/netease/nr/biz/i/a/a/b;

    invoke-virtual {v1}, Lcom/netease/nr/biz/i/a/a/b;->notifyDataSetChanged()V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/netease/nr/biz/i/b/a;->l:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/i/b/a;->b(Z)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/i/b/a;->b(Z)V

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public g_()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "mList"

    iget-object v2, p0, Lcom/netease/nr/biz/i/b/a;->c:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/netease/nr/base/fragment/q;->g_()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public m_()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/i/b/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/nr/base/c/s;->d(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/netease/nr/biz/i/b/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/i/b/a;->setListAdapter(Landroid/widget/ListAdapter;)V

    iput-object v2, p0, Lcom/netease/nr/biz/i/b/a;->d:Lcom/netease/nr/biz/i/a/a/b;

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/q;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/netease/nr/biz/pc/a/n;->a(Lcom/netease/nr/biz/pc/a/o;)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->d:Lcom/netease/nr/biz/i/a/a/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/a;->E()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/q;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/netease/nr/base/c/a;->b:Ljava/util/Map;

    sget-object v2, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/biz/i/b/a;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/a;->z()V

    const-string v0, "MyComment"

    iput-object v0, p0, Lcom/netease/nr/biz/i/b/a;->a:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/netease/nr/biz/i/b/a;->l:I

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/i/b/a;->b:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/a;->M()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    const-string v1, "mList"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/i/b/a;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/q;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/a;->L()V

    iput-object v1, p0, Lcom/netease/nr/biz/i/b/a;->f:Lcom/netease/nr/biz/i/a/a/d;

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->e:Lcom/netease/nr/biz/i/a/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->e:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/i;->dismiss()V

    iput-object v1, p0, Lcom/netease/nr/biz/i/b/a;->e:Lcom/netease/nr/biz/i/a/a/i;

    :cond_0
    invoke-static {p0}, Lcom/netease/nr/biz/pc/a/n;->b(Lcom/netease/nr/biz/pc/a/o;)V

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    const/4 v3, -0x1

    iget v0, p0, Lcom/netease/nr/biz/i/b/a;->g:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/netease/nr/biz/i/b/a;->h:I

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget v1, p0, Lcom/netease/nr/biz/i/b/a;->h:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, p2, v1}, Lcom/netease/nr/biz/i/a/a/b;->a(Ljava/util/Map;Landroid/view/View;I)I

    move-result v1

    if-eqz v0, :cond_0

    if-eq v1, v3, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/biz/i/b/a;->m()V

    invoke-direct {p0, v0, v1}, Lcom/netease/nr/biz/i/b/a;->a(Ljava/util/Map;I)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->e:Lcom/netease/nr/biz/i/a/a/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->e:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/i;->a()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iput v4, p0, Lcom/netease/nr/biz/i/b/a;->g:I

    iput v4, p0, Lcom/netease/nr/biz/i/b/a;->h:I

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/netease/nr/biz/i/b/a;->g:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/netease/nr/biz/i/b/a;->h:I

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/a;->K()V

    const v0, 0x7f0c0266

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/netease/util/fragment/FragmentActivity;

    invoke-direct {v2, v1, v0}, Lcom/netease/nr/biz/i/a/a/d;-><init>(Lcom/netease/util/fragment/FragmentActivity;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/netease/nr/biz/i/b/a;->f:Lcom/netease/nr/biz/i/a/a/d;

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->f:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0, v3}, Lcom/netease/nr/biz/i/a/a/d;->a(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/a;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/a;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    const v0, 0x7f0202cf

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/i/b/a;->a_(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/biz/i/b/a;->n()V

    invoke-virtual {p0, v3}, Lcom/netease/nr/biz/i/b/a;->b(Z)V

    :cond_0
    return-void
.end method
