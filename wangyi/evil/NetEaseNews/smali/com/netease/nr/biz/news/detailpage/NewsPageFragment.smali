.class public Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;
.super Lcom/netease/nr/base/fragment/d;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/netease/nr/base/fragment/b;
.implements Lcom/netease/nr/biz/ad/r;
.implements Lcom/netease/nr/biz/sns/a/d/b;


# instance fields
.field private A:Z

.field private B:Landroid/os/Handler;

.field private a:Lcom/netease/nr/biz/news/detailpage/t;

.field private e:Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

.field private f:Lcom/netease/nr/biz/news/detailpage/a;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Ljava/lang/String;

.field private j:Lcom/netease/nr/biz/news/detailpage/ae;

.field private k:Lcom/netease/nr/biz/i/a/a/d;

.field private l:Lcom/netease/nr/base/view/a;

.field private m:[I

.field private n:[Ljava/lang/String;

.field private o:Ljava/util/List;

.field private p:Landroid/content/Context;

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Lcom/netease/nr/biz/news/detailpage/z;

.field private v:Lcom/netease/nr/biz/news/detailpage/ac;

.field private w:Ljava/util/List;

.field private final x:Ljava/lang/String;

.field private y:Lcom/netease/nr/biz/news/detailpage/ag;

.field private z:Lcom/netease/nr/biz/news/detailpage/s;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/d;-><init>()V

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/t;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/news/detailpage/t;-><init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/v;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/news/detailpage/v;-><init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j:Lcom/netease/nr/biz/news/detailpage/ae;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->m:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->o:Ljava/util/List;

    iput-boolean v3, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->q:Z

    iput-boolean v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->r:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->w:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v2

    const-string v1, "2"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/netease/nr/biz/ad/o;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->x:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->B:Landroid/os/Handler;

    return-void

    :array_0
    .array-data 4
        0x7f020143
        0x7f020145
        0x7f020146
        0x7f020142
        0x7f020144
    .end array-data
.end method

.method private D()V
    .locals 3

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/ab;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/news/detailpage/ab;-><init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j:Lcom/netease/nr/biz/news/detailpage/ae;

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j:Lcom/netease/nr/biz/news/detailpage/ae;

    invoke-interface {v0}, Lcom/netease/nr/biz/news/detailpage/ae;->a()V

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->H()V

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->I()V

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/z;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/netease/nr/biz/news/detailpage/z;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->u:Lcom/netease/nr/biz/news/detailpage/z;

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->u:Lcom/netease/nr/biz/news/detailpage/z;

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method

.method private E()V
    .locals 7

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/ab;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/news/detailpage/ab;-><init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j:Lcom/netease/nr/biz/news/detailpage/ae;

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j:Lcom/netease/nr/biz/news/detailpage/ae;

    invoke-interface {v0}, Lcom/netease/nr/biz/news/detailpage/ae;->a()V

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->H()V

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->I()V

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/ac;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v3, v3, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v4, v4, Lcom/netease/nr/biz/news/detailpage/t;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v5, v5, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v5, v5, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    :goto_0
    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/netease/nr/biz/news/detailpage/ac;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/nr/biz/news/detailpage/NewsPageFragment;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->v:Lcom/netease/nr/biz/news/detailpage/ac;

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->v:Lcom/netease/nr/biz/news/detailpage/ac;

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private F()V
    .locals 7

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/ab;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/news/detailpage/ab;-><init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j:Lcom/netease/nr/biz/news/detailpage/ae;

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j:Lcom/netease/nr/biz/news/detailpage/ae;

    invoke-interface {v0}, Lcom/netease/nr/biz/news/detailpage/ae;->a()V

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->H()V

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->I()V

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/ac;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v3, v3, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v4, v4, Lcom/netease/nr/biz/news/detailpage/t;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v5, v5, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v5, v5, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    :goto_0
    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/netease/nr/biz/news/detailpage/ac;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/nr/biz/news/detailpage/NewsPageFragment;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->v:Lcom/netease/nr/biz/news/detailpage/ac;

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->v:Lcom/netease/nr/biz/news/detailpage/ac;

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private G()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    const-string v2, "docid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v2, "from_push"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "op"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v4, v4, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Lcom/netease/b/i;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    const-string v2, "tid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/nr/biz/news/detailpage/t;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    const-string v2, "tname"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/nr/biz/news/detailpage/t;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    const-string v2, "lmodify"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/nr/biz/news/detailpage/t;->i:Ljava/lang/String;

    const-string v0, "biz_ndprk"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->q:Z

    const-string v0, "biz_ndplk"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->r:Z

    const-string v0, "biz_color"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->s:Ljava/lang/String;

    const-string v0, "biz_subscribe"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->t:Z

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->p:Landroid/content/Context;

    const-string v2, "PV"

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v3, v3, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/nr/biz/news/detailpage/t;->f:Ljava/lang/String;

    const-string v0, "replyCount"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "\u8ddf\u8d34"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/netease/nr/biz/news/detailpage/t;->g:Ljava/lang/String;

    :cond_1
    :goto_1
    const-string v0, "-1"

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->A:Z

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/nr/biz/news/detailpage/t;->e:Ljava/lang/String;

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iput-object v0, v2, Lcom/netease/nr/biz/news/detailpage/t;->g:Ljava/lang/String;

    goto :goto_1
.end method

.method private H()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->u:Lcom/netease/nr/biz/news/detailpage/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->u:Lcom/netease/nr/biz/news/detailpage/z;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/detailpage/z;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->u:Lcom/netease/nr/biz/news/detailpage/z;

    return-void
.end method

.method private I()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->v:Lcom/netease/nr/biz/news/detailpage/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->v:Lcom/netease/nr/biz/news/detailpage/ac;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/detailpage/ac;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->v:Lcom/netease/nr/biz/news/detailpage/ac;

    return-void
.end method

.method private J()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/af;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/ae;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j:Lcom/netease/nr/biz/news/detailpage/ae;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;Lcom/netease/nr/biz/news/detailpage/ae;)Lcom/netease/nr/biz/news/detailpage/ae;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j:Lcom/netease/nr/biz/news/detailpage/ae;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;ZLjava/util/HashMap;Ljava/util/HashMap;Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(ZLjava/util/HashMap;Ljava/util/HashMap;Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Map;Z)Ljava/lang/String;
    .locals 4

    const v3, 0x7f0b0074

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<html><head></head><body style=\"margin:0px; padding:0px;\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<center><div style=\"color:#464646;font-size:18px;font-weight:bold;\" >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "title"

    invoke-static {p1, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</div>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<div style=\"color:#949494;font-size:12px\" >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ptime"

    invoke-static {p1, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</div>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<div style=\"color:#949494;font-size:12px\" >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b01cf

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "source"

    invoke-static {p1, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</div>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</center><div style=\"color:#5c5c5c;font-size:16px;\" > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<p>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->b(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</div>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b01d0

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff1a<a href=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%%www%%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%%www%%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</a>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</body></html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ZLjava/util/HashMap;Ljava/util/HashMap;Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 14

    const/4 v11, 0x1

    if-eqz p1, :cond_3

    move-object/from16 v4, p3

    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    if-eqz p1, :cond_a

    const-string v2, "all_media_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v1, "all_media_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v1

    :goto_1
    const-string v1, "link"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "link"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v3, v1

    :cond_0
    const-string v1, "relative"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v1, "relative"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    move v9, v3

    move v8, v2

    :goto_2
    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->p:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/util/i/b;->j(Landroid/content/Context;)I

    move-result v12

    const-string v1, "hasNext"

    invoke-static {v4, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v6, 0x0

    :goto_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-nez v6, :cond_2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "relative"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v2, "relative"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->y:Lcom/netease/nr/biz/news/detailpage/ag;

    if-nez v1, :cond_5

    const-string v1, ""

    :goto_4
    return-object v1

    :cond_3
    move-object/from16 v4, p2

    goto/16 :goto_0

    :cond_4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_3

    :cond_5
    const-string v1, "tid"

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->b:Ljava/lang/String;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->y:Lcom/netease/nr/biz/news/detailpage/ag;

    invoke-virtual {v1}, Lcom/netease/nr/biz/news/detailpage/ag;->b()V

    new-instance v1, Lcom/netease/nr/biz/news/detailpage/a/b;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->p:Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->y:Lcom/netease/nr/biz/news/detailpage/ag;

    iget-boolean v13, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->t:Z

    move v5, p1

    invoke-direct/range {v1 .. v13}, Lcom/netease/nr/biz/news/detailpage/a/b;-><init>(Landroid/content/Context;Lcom/netease/nr/biz/news/detailpage/ag;Ljava/util/Map;ZZLjava/util/List;IIIZIZ)V

    iget-boolean v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->r:Z

    invoke-virtual {v1, v2}, Lcom/netease/nr/biz/news/detailpage/a/b;->a(Z)V

    new-instance v2, Lcom/netease/nr/biz/news/detailpage/a/c;

    invoke-direct {v2, v1}, Lcom/netease/nr/biz/news/detailpage/a/c;-><init>(Lcom/netease/nr/biz/news/detailpage/a/a;)V

    iget-boolean v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->q:Z

    invoke-virtual {v2, v1}, Lcom/netease/nr/biz/news/detailpage/a/c;->a(Z)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const-string v1, "votes"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    add-int/lit8 v3, v2, 0x1

    const-string v7, "voteid"

    invoke-static {v1, v7}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    move v2, v3

    goto :goto_5

    :cond_6
    move-object v1, v4

    :goto_6
    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->B:Landroid/os/Handler;

    new-instance v3, Lcom/netease/nr/biz/news/detailpage/o;

    invoke-direct {v3, p0, v1}, Lcom/netease/nr/biz/news/detailpage/o;-><init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->p:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/netease/nr/base/c/p;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_4

    :cond_7
    move-object v1, v2

    goto :goto_6

    :cond_8
    move v9, v3

    move v8, v2

    goto/16 :goto_2

    :cond_9
    move v2, v1

    goto/16 :goto_1

    :cond_a
    move v9, v3

    move v8, v1

    goto/16 :goto_2
.end method

.method private a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/List;
    .locals 1

    const-string v0, "all_media_list"

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/util/HashMap;Ljava/util/HashMap;)V
    .locals 9

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "picnews"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v2, v0

    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, "media_type"

    invoke-static {v0, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "media_video"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(Ljava/util/Map;)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v4, v3

    move v3, v1

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_3

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v7, "media_video"

    const-string v8, "media_type"

    invoke-static {v1, v8}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v3, p1, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_3
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-ltz v4, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1, v6, v4}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(Ljava/util/Map;Ljava/lang/Boolean;Ljava/util/List;I)V

    goto :goto_1
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0c0010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->g:Landroid/view/View;

    const v0, 0x7f0c0101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Landroid/webkit/WebView;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setFocusable(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->refreshDrawableState()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->C()Lcom/netease/util/j/a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->p:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/util/j/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->p:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    :goto_0
    new-instance v0, Lcom/netease/nr/biz/news/detailpage/m;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/news/detailpage/m;-><init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;-><init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)V

    const-string v1, "news"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/util/i/b;->b()I

    move-result v0

    const/16 v1, 0xd

    if-gt v0, v1, :cond_0

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/n;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/news/detailpage/n;-><init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->p:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private a(Lcom/netease/nr/base/view/a;)V
    .locals 4

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->l()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(Z)V

    const v0, 0x186a3

    const/4 v1, 0x0

    const v2, 0x7f020004

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->o:Ljava/util/List;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/netease/nr/base/view/a;->a(ILjava/lang/String;ILjava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;ILjava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(ILjava/util/HashMap;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->b(Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "uri"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->s()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/netease/nr/biz/plugin/video/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoPlayFragment"

    const/4 v5, 0x0

    const-class v6, Lcom/netease/nr/biz/plugin/video/VideoPlayActivity;

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "video/*"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private a(Ljava/util/Map;)V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->p:Landroid/content/Context;

    const v1, 0x7f0b0010

    invoke-virtual {p0, v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/util/f/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->b(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b00cf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00cd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b000e

    new-instance v2, Lcom/netease/nr/biz/news/detailpage/q;

    invoke-direct {v2, p0}, Lcom/netease/nr/biz/news/detailpage/q;-><init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00d0

    new-instance v2, Lcom/netease/nr/biz/news/detailpage/p;

    invoke-direct {v2, p0, p1}, Lcom/netease/nr/biz/news/detailpage/p;-><init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private a(Ljava/util/Map;Ljava/lang/Boolean;Ljava/util/List;I)V
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "src"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "photosetID"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v6, "|"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "setid"

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "imgsum"

    const-string v3, "0"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "clientcover"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->s()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/netease/nr/biz/pics/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PicShowFragment"

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "from_newspage"

    check-cast p3, Ljava/io/Serializable;

    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "picset_index"

    invoke-virtual {v4, v0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->s()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/netease/nr/biz/pics/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PicShowFragment"

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v7}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 6

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/util/i/b;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v1, v1, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/af;->a(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020142

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020146

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_1

    if-ne v1, v5, :cond_4

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->n:[Ljava/lang/String;

    aget-object v0, v0, v4

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->m:[I

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/nr/base/view/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    :goto_2
    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->o:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    if-ne v1, v4, :cond_5

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->n:[Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->m:[I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/nr/base/view/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->n:[Ljava/lang/String;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->m:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/nr/base/view/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v1, v0

    :goto_3
    if-ge v1, v3, :cond_1

    if-ne v1, v4, :cond_7

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->n:[Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->m:[I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/nr/base/view/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    :goto_4
    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->o:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->n:[Ljava/lang/String;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->m:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/nr/base/view/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_4
.end method

.method static synthetic b(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->e:Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    return-object v0
.end method

.method private b(Z)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v1, "body"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v1, "body"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->k:Ljava/util/HashMap;

    invoke-direct {p0, v0, v2}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->b(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v4, "ref"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "src"

    invoke-static {v0, v6}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<p><img src=\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\" /></p>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<p><a href=\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\">"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "</a></p>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v2, ""

    :cond_3
    :goto_2
    return-object v2

    :cond_4
    move-object v2, v1

    goto :goto_2
.end method

.method private b(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, "media_video"

    const-string v4, "media_type"

    invoke-static {v0, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private b(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const v2, 0x7f0c0007

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f0b01ca

    invoke-virtual {p0, v3}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private b(Landroid/webkit/WebView;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->y:Lcom/netease/nr/biz/news/detailpage/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v1, "picnews"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->y:Lcom/netease/nr/biz/news/detailpage/ag;

    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/news/detailpage/ag;->a(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->y:Lcom/netease/nr/biz/news/detailpage/ag;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v1, v1, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/af;->a(Ljava/util/Map;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/detailpage/ag;->b(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->y:Lcom/netease/nr/biz/news/detailpage/ag;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v1, v1, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->k:Ljava/util/HashMap;

    invoke-direct {p0, v1, v2}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/detailpage/ag;->a(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->e:Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/nr/base/c/aa;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->d(Ljava/util/Map;)V

    return-void
.end method

.method private b(Ljava/util/Map;)V
    .locals 4

    const/4 v2, 0x1

    const-string v0, "url_mp4"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v1, "broadcast"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "in"

    :goto_1
    const-string v3, "in"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v1, "broadcast"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :catch_0
    move-exception v1

    move v1, v2

    goto :goto_2
.end method

.method static synthetic c(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->p:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->e(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic d(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/ag;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->y:Lcom/netease/nr/biz/news/detailpage/ag;

    return-object v0
.end method

.method private d(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->m()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->n()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->o()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->p()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private d(Ljava/util/Map;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, v2, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v0, Lcom/netease/nr/biz/news/detailpage/ab;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/news/detailpage/ab;-><init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j:Lcom/netease/nr/biz/news/detailpage/ae;

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j:Lcom/netease/nr/biz/news/detailpage/ae;

    invoke-interface {v0}, Lcom/netease/nr/biz/news/detailpage/ae;->a()V

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->E()V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v3, "lmodify"

    invoke-static {v2, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v3, v3, Lcom/netease/nr/biz/news/detailpage/t;->i:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/ab;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/news/detailpage/ab;-><init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j:Lcom/netease/nr/biz/news/detailpage/ae;

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j:Lcom/netease/nr/biz/news/detailpage/ae;

    invoke-interface {v0}, Lcom/netease/nr/biz/news/detailpage/ae;->a()V

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->E()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->e:Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->b(Landroid/webkit/WebView;)V

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->k()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->p:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v3, v3, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/netease/nr/base/c/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->l()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/i/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/af;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const v2, 0x186a3

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/DropdownSpinner;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/DropdownSpinner;->b()V

    :cond_6
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v3, "replyBoard"

    invoke-static {v2, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v3, v3, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/netease/nr/biz/i/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/i/a/a/d;->a(Z)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method static synthetic e(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->w:Ljava/util/List;

    return-object v0
.end method

.method private e(Ljava/util/Map;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object p1, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    move-object v0, p1

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j:Lcom/netease/nr/biz/news/detailpage/ae;

    invoke-interface {v0}, Lcom/netease/nr/biz/news/detailpage/ae;->b()V

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/ad;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/news/detailpage/ad;-><init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j:Lcom/netease/nr/biz/news/detailpage/ae;

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j:Lcom/netease/nr/biz/news/detailpage/ae;

    invoke-interface {v0}, Lcom/netease/nr/biz/news/detailpage/ae;->a()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->p:Landroid/content/Context;

    const v1, 0x7f0b0010

    invoke-static {v0, v1, v3}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;II)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->A:Z

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, v1, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->j()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->e:Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->b(Landroid/webkit/WebView;)V

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->k()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v1, v1, Lcom/netease/nr/biz/news/detailpage/t;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->l()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/i/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/af;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const v1, 0x186a3

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/DropdownSpinner;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/DropdownSpinner;->b()V

    :cond_4
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v1, v1, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v2, "replyBoard"

    invoke-static {v1, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/nr/biz/i/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0, v3}, Lcom/netease/nr/biz/i/a/a/d;->a(Z)V

    goto/16 :goto_0

    :cond_5
    move-object v0, p1

    goto/16 :goto_1
.end method

.method static synthetic f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->B:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->t:Z

    return v0
.end method

.method static synthetic j(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f:Lcom/netease/nr/biz/news/detailpage/a;

    return-object v0
.end method

.method private j()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a()Lcom/netease/nr/base/view/a;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->n:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/i/b;->b(Landroid/content/Context;)Z

    move-result v2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/af;->a(Ljava/util/Map;)Z

    move-result v3

    if-nez v2, :cond_1

    if-eqz v3, :cond_5

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080005

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->l()Z

    move-result v5

    if-eqz v5, :cond_8

    const v5, 0x7f020142

    invoke-virtual {v1, v6, v8, v5}, Lcom/netease/nr/base/view/a;->a(ILjava/lang/String;I)V

    :goto_1
    invoke-virtual {v1, v6}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5, v0, v7, v0, v7}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    const v5, 0x7f020145

    invoke-virtual {v1, v9, v8, v5}, Lcom/netease/nr/base/view/a;->a(ILjava/lang/String;I)V

    invoke-virtual {v1, v9}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5, v0, v7, v0, v7}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    if-nez v3, :cond_5

    const v5, 0x7f020143

    invoke-virtual {v1, v10, v8, v5}, Lcom/netease/nr/base/view/a;->a(ILjava/lang/String;I)V

    invoke-virtual {v1, v10}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5, v0, v7, v0, v7}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    const/4 v5, 0x5

    const v6, 0x7f020144

    invoke-virtual {v1, v5, v8, v6}, Lcom/netease/nr/base/view/a;->a(ILjava/lang/String;I)V

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5, v0, v7, v4, v7}, Landroid/view/View;->setPadding(IIII)V

    :cond_5
    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/news/detailpage/NewsPageActivity;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageActivity;->c()Z

    move-result v0

    if-nez v0, :cond_6

    const v0, 0x7f030057

    invoke-static {v1, v0}, Lcom/netease/nr/base/view/a;->a(Lcom/netease/nr/base/view/a;I)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v0}, Lcom/netease/nr/base/view/a;->a(ILandroid/view/View;)V

    :cond_6
    if-nez v2, :cond_7

    if-nez v3, :cond_7

    invoke-direct {p0, v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(Lcom/netease/nr/base/view/a;)V

    :cond_7
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->C()Lcom/netease/util/j/a;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(Lcom/netease/util/j/a;Lcom/netease/nr/base/view/a;)V

    goto/16 :goto_0

    :cond_8
    const v5, 0x7f020146

    invoke-virtual {v1, v6, v8, v5}, Lcom/netease/nr/base/view/a;->a(ILjava/lang/String;I)V

    goto :goto_1
.end method

.method static synthetic k(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->g:Landroid/view/View;

    return-object v0
.end method

.method private k()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v2, "replyCount"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    :cond_0
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->b(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->z:Lcom/netease/nr/biz/news/detailpage/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->z:Lcom/netease/nr/biz/news/detailpage/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/detailpage/s;->cancel(Z)Z

    :cond_1
    iget-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->A:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/s;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v1, v1, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v2, "replyBoard"

    invoke-static {v1, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/netease/nr/biz/news/detailpage/s;-><init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->z:Lcom/netease/nr/biz/news/detailpage/s;

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->z:Lcom/netease/nr/biz/news/detailpage/s;

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    :cond_2
    return-void

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic l(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->h:Landroid/view/View;

    return-object v0
.end method

.method private l()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/netease/nr/base/c/e;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->p:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/netease/nr/base/c/e;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/netease/nr/base/c/e;->a()Lcom/netease/nr/base/c/g;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v3, v3, Lcom/netease/nr/biz/news/detailpage/t;->f:Ljava/lang/String;

    iput-object v3, v2, Lcom/netease/nr/base/c/g;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v3, v3, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    iput-object v3, v2, Lcom/netease/nr/base/c/g;->a:Ljava/lang/String;

    iput v0, v2, Lcom/netease/nr/base/c/g;->d:I

    invoke-virtual {v1, v2}, Lcom/netease/nr/base/c/e;->a(Lcom/netease/nr/base/c/g;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/i/a/a/d;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/i/a/a/d;->a(Z)V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 5

    new-instance v1, Lcom/netease/nr/biz/sns/a/d/a;

    invoke-direct {v1}, Lcom/netease/nr/biz/sns/a/d/a;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lcom/netease/nr/biz/sns/a/d/a;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

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

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/sns/a/d/a;->a(Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method private o()V
    .locals 7

    const v6, 0x7f0b01cd

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/netease/nr/base/c/e;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netease/nr/base/c/e;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/netease/nr/base/c/e;->a()Lcom/netease/nr/base/c/g;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->f:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/nr/base/c/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/nr/base/c/g;->a:Ljava/lang/String;

    iput v5, v0, Lcom/netease/nr/base/c/g;->d:I

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/c/e;->a(Lcom/netease/nr/base/c/g;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    invoke-direct {p0, v4}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(Z)V

    invoke-virtual {v1, v0, v5}, Lcom/netease/nr/base/c/e;->a(II)I

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b01ce

    invoke-virtual {p0, v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    :goto_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/i/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/af;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const v1, 0x186a3

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/DropdownSpinner;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/DropdownSpinner;->b()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/netease/nr/base/c/e;->a()Lcom/netease/nr/base/c/g;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v3, "title"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/netease/nr/base/c/g;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->f:Ljava/lang/String;

    iput-object v0, v2, Lcom/netease/nr/base/c/g;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    iput-object v0, v2, Lcom/netease/nr/base/c/g;->a:Ljava/lang/String;

    iput v5, v2, Lcom/netease/nr/base/c/g;->d:I

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/netease/nr/base/c/g;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v3, "replyCount"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/util/h/b;->g(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/netease/nr/base/c/g;->c:I

    :cond_3
    invoke-virtual {v1, v2}, Lcom/netease/nr/base/c/e;->b(Lcom/netease/nr/base/c/g;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v5}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b01cc

    invoke-virtual {p0, v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    goto/16 :goto_1
.end method

.method private p()V
    .locals 5

    new-instance v0, Lcom/netease/nr/base/fragment/a;

    invoke-direct {v0}, Lcom/netease/nr/base/fragment/a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/netease/nr/base/fragment/a;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "title"

    const v4, 0x7f0b008a

    invoke-virtual {p0, v4}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "content_item_array"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "content_item_selected_position"

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/nr/biz/news/detailpage/af;->a(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "callback_tag"

    const-string v3, "text_change"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/fragment/a;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/fragment/a;->a(Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method private q()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v1, v1, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v2, "body"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/h/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private r()V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/i/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/i/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "file:///android_asset/tablet_land_newspage.html"

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->i:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "file:///android_asset/tablet_newspage.html"

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->i:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->C()Lcom/netease/util/j/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/util/j/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "file:///android_asset/night_newspage.html"

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->i:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "file:///android_asset/newspage.html"

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->i:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/netease/nr/biz/sns/a/d/a;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10

    const v9, 0x7f0b006f

    const/high16 v7, 0x7f0b0000

    const/16 v6, 0x5f

    const/16 v5, 0xc8

    const/4 v8, 0x0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "share_wap_url"

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    const-string v3, "wap"

    invoke-static {v2, v3}, Lcom/netease/nr/base/c/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "share_www_url"

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    const-string v3, "www"

    invoke-static {v2, v3}, Lcom/netease/nr/base/c/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->k:Ljava/util/HashMap;

    invoke-direct {p0, v0, v2}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->b(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "qzone"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v3, "share_pic"

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v4, "src"

    invoke-static {v0, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "qqfriends"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v3, "imageUrl"

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "src"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v0, "sms"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b0063

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u300a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v3, v3, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v4, "title"

    invoke-static {v3, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u300b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b006a

    invoke-virtual {p0, v3}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0068

    invoke-virtual {p0, v3}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%%wap%%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0069

    invoke-virtual {p0, v3}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%%www%%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "share_content"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v1

    :cond_2
    const-string v3, "share_pic"

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "src"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "weixin"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "weixin_timeline"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "yixin"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "yixin_timeline"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    const-string v0, "share_title"

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v3, "title"

    invoke-static {v2, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v2, "body"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/h/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    const-string v2, "share_content"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "yixin"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "yixin_timeline"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const-string v2, "yixin_webview_url"

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v3, v3, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/netease/nr/biz/sns/util/category/g/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string v2, "share_other"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_7
    const-string v2, "weixin_web_url"

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v3, v3, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/netease/nr/biz/sns/util/category/g/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string v0, "qqfriends"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "title"

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v3, "title"

    invoke-static {v2, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "targetUrl"

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/netease/nr/biz/sns/util/category/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appName"

    invoke-virtual {p0, v7}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "site"

    invoke-virtual {p0, v7}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v2, "body"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/h/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    const-string v2, "summary"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const-string v0, "yiliao"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "share_title"

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v3, "title"

    invoke-static {v2, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v2, "body"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/h/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    const-string v2, "share_content"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "yiliao_web_url"

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v3, v3, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/netease/nr/biz/sns/util/category/g/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "share_other"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_c
    const-string v0, "email"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "ydnote"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    const-string v0, "ydnote"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    invoke-direct {p0, v2, v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v4, v4, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v5, "title"

    invoke-static {v4, v5}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "share_content"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ydnote_content"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ydnote_title"

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v3, v3, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v4, "title"

    invoke-static {v3, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "share_other"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_e
    const-string v0, "share_title"

    const v3, 0x7f0b006b

    invoke-virtual {p0, v3}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "share_content"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v3, v3, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v4, "title"

    invoke-static {v3, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->J()Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "share_www_url"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v4, v4, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    const-string v5, "www"

    invoke-static {v4, v5}, Lcom/netease/nr/base/c/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%%SPLITTER%%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0b01ca

    invoke-virtual {p0, v4}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%%PREFIX%%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "http://comment.news.163.com/%s/%s.html"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v6, v6, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v7, "replyBoard"

    invoke-static {v6, v7}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v7, v7, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "www"

    invoke-static {v4, v5}, Lcom/netease/nr/base/c/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string v2, "share_content"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    const-string v2, "share_www_url"

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v3, v3, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    const-string v4, "www"

    invoke-static {v3, v4}, Lcom/netease/nr/base/c/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup;)Lcom/netease/nr/base/view/TabletContainer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Lcom/netease/nr/base/view/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->l:Lcom/netease/nr/base/view/a;

    return-object v0
.end method

.method public a(Lcom/netease/nr/base/fragment/a;)V
    .locals 2

    const-string v0, "text_change"

    invoke-virtual {p1}, Lcom/netease/nr/base/fragment/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netease/nr/base/fragment/a;->b()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/af;->a(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netease/nr/biz/news/detailpage/af;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->e:Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->b(Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method public a(Lcom/netease/nr/biz/ad/q;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    invoke-virtual {p1, v0}, Lcom/netease/nr/biz/ad/q;->a(Ljava/lang/String;)Lcom/netease/ad/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->w:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "2"

    invoke-virtual {p1, v0}, Lcom/netease/nr/biz/ad/q;->a(Ljava/lang/String;)Lcom/netease/ad/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->w:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->e:Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    const-string v1, "javascript:getAdText()"

    invoke-static {v0, v1}, Lcom/netease/nr/base/c/aa;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 3

    const v2, 0x7f070014

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    const v0, 0x7f0c0101

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->b(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->g:Landroid/view/View;

    const v1, 0x7f0c001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02002d

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->g:Landroid/view/View;

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->b(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020026

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0, p1}, Lcom/netease/nr/biz/i/a/a/d;->a(Lcom/netease/util/j/a;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/netease/util/j/a;Lcom/netease/nr/base/view/a;)V
    .locals 4

    const v3, 0x7f0c0007

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->l:Lcom/netease/nr/base/view/a;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->l:Lcom/netease/nr/base/view/a;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/a;->a(Lcom/netease/util/j/a;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f02011f

    invoke-virtual {p1, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700b0

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;I)V
    .locals 10

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "doc"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->s()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v3, v3, Lcom/netease/nr/biz/news/detailpage/t;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v4, v4, Lcom/netease/nr/biz/news/detailpage/t;->c:Ljava/lang/String;

    move-object v6, v5

    invoke-static/range {v0 .. v7}, Lcom/netease/nr/biz/news/detailpage/NewsPageActivity;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v2, "href"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "title"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v6, "http://live.163.com/3g/livelog/"

    const-string v4, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    const-string v6, "/"

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-static {v4}, Lcom/netease/util/h/b;->g(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lez v6, :cond_3

    move v7, v3

    :cond_3
    move-object v3, v4

    :goto_1
    if-eqz v7, :cond_4

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    invoke-virtual {v4, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "roomid"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->s()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/netease/nr/biz/c/e;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameLiveFragment"

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :catch_0
    move-exception v3

    move-object v3, v4

    goto :goto_1

    :cond_4
    const-string v3, "mailto:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :try_start_1
    invoke-static {v2}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "message/rfc822"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "android.intent.extra.EMAIL"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v3}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "android.intent.extra.SUBJECT"

    invoke-virtual {v3}, Landroid/net/MailTo;->getSubject()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "android.intent.extra.CC"

    invoke-virtual {v3}, Landroid/net/MailTo;->getCc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "android.intent.extra.TEXT"

    invoke-virtual {v3}, Landroid/net/MailTo;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/net/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    :cond_5
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v3, "param_url"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    const-string v2, "param_title"

    invoke-virtual {v4, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->s()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseWebFragment"

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    move-object v0, v2

    goto :goto_2

    :cond_7
    move-object v3, v4

    goto/16 :goto_1
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v1}, Lcom/netease/nr/biz/i/a/a/d;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v1}, Lcom/netease/nr/biz/i/a/a/d;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v1}, Lcom/netease/nr/biz/i/a/a/d;->b()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->l:Lcom/netease/nr/base/view/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->l:Lcom/netease/nr/base/view/a;

    invoke-virtual {v1, p1, p2}, Lcom/netease/nr/base/view/a;->a(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public a_(II)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->a_(II)V

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->d(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->p:Landroid/content/Context;

    const v1, 0x7f0b00d4

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->o()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->n()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->m()V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->p()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x186a3 -> :sswitch_1
    .end sparse-switch
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const v0, 0x7f030058

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/netease/nr/base/view/a;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/netease/nr/base/view/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->l:Lcom/netease/nr/base/view/a;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->l:Lcom/netease/nr/base/view/a;

    invoke-virtual {v1, p0}, Lcom/netease/nr/base/view/a;->a(Lcom/netease/nr/base/view/i;)V

    return-object v0
.end method

.method public b(Lcom/netease/nr/base/fragment/a;)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/d;->b()V

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->c()V

    return-void
.end method

.method public e()Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const v1, 0x7f0c002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    goto :goto_0
.end method

.method f()V
    .locals 6

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/news/detailpage/NewsPageActivity;

    sget-object v1, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v3, "replyBoard"

    invoke-static {v2, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v3, v3, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v4, v4, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v5, "title"

    invoke-static {v4, v5}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/nr/biz/news/detailpage/NewsPageActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i_()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->e:Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->e:Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    invoke-virtual {v0, v1, v1}, Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/d;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/a;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->e:Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/nr/biz/news/detailpage/a;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Lcom/netease/nr/biz/news/detailpage/t;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f:Lcom/netease/nr/biz/news/detailpage/a;

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->r()V

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->D()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const v1, 0x7f02011e

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->a(I)V

    const v1, 0x7f02011d

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->b(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->a(Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->y:Lcom/netease/nr/biz/news/detailpage/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->y:Lcom/netease/nr/biz/news/detailpage/ag;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/ag;->d()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->F()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0c0101
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/d;->onCreate(Landroid/os/Bundle;)V

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

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->u()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->p:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->setHasOptionsMenu(Z)V

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->G()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v1, v1, Lcom/netease/nr/biz/news/detailpage/t;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->x:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0, v4}, Lcom/netease/nr/biz/ad/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nr/biz/ad/r;Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onDestroy()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v1, v1, Lcom/netease/nr/biz/news/detailpage/t;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->x:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0, v3}, Lcom/netease/nr/biz/ad/o;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nr/biz/ad/r;Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->z:Lcom/netease/nr/biz/news/detailpage/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->z:Lcom/netease/nr/biz/news/detailpage/s;

    invoke-virtual {v0, v3}, Lcom/netease/nr/biz/news/detailpage/s;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onDestroyView()V

    iput-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    iput-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->l:Lcom/netease/nr/base/view/a;

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->H()V

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->I()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->e:Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->e:Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->e:Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->e:Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;->removeAllViews()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->e:Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->e:Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->e:Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->y:Lcom/netease/nr/biz/news/detailpage/ag;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->y:Lcom/netease/nr/biz/news/detailpage/ag;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/ag;->a()V

    iput-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->y:Lcom/netease/nr/biz/news/detailpage/ag;

    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->e()Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->e:Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->e:Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(Landroid/webkit/WebView;)V

    const v0, 0x7f0c0100

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/netease/util/fragment/FragmentActivity;

    invoke-direct {v2, v1, v0}, Lcom/netease/nr/biz/i/a/a/d;-><init>(Lcom/netease/util/fragment/FragmentActivity;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->k:Lcom/netease/nr/biz/i/a/a/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/i/a/a/d;->a(Z)V

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/ag;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/news/detailpage/ag;-><init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->y:Lcom/netease/nr/biz/news/detailpage/ag;

    return-void
.end method
