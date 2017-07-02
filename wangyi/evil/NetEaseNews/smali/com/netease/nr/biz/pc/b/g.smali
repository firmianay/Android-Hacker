.class public Lcom/netease/nr/biz/pc/b/g;
.super Lcom/netease/nr/base/fragment/d;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# static fields
.field private static final n:[I


# instance fields
.field private a:Ljava/util/List;

.field private e:Lcom/netease/nr/base/c/e;

.field private f:I

.field private g:Landroid/widget/ListView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Lcom/netease/nr/biz/pc/b/o;

.field private k:Landroid/os/Handler;

.field private l:Z

.field private m:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/netease/nr/biz/pc/b/g;->n:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0b01b8
        0x7f0b01b9
        0x7f0b01ba
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/d;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->k:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/biz/pc/b/g;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/pc/b/g;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pc/b/g;->m:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/nr/biz/pc/b/g;)Lcom/netease/nr/biz/pc/b/o;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->j:Lcom/netease/nr/biz/pc/b/o;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/pc/b/g;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pc/b/g;->a:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/nr/biz/pc/b/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/biz/pc/b/g;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/nr/biz/pc/b/g;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->g:Landroid/widget/ListView;

    return-object v0
.end method

.method private b(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/netease/nr/biz/pc/b/g;->f:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/netease/nr/biz/pc/b/g;->f:I

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/netease/nr/biz/pc/b/g;->f:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/netease/nr/biz/pc/b/g;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/nr/biz/pc/b/g;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->i:Landroid/view/View;

    return-object v0
.end method

.method private d(I)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->j:Lcom/netease/nr/biz/pc/b/o;

    invoke-interface {v0, p1}, Lcom/netease/nr/biz/pc/b/o;->a(I)V

    return-void
.end method

.method private e()V
    .locals 2

    iget v0, p0, Lcom/netease/nr/biz/pc/b/g;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/netease/nr/biz/pc/b/q;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/pc/b/q;-><init>(Lcom/netease/nr/biz/pc/b/g;)V

    iput-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->j:Lcom/netease/nr/biz/pc/b/o;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/netease/nr/biz/pc/b/g;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/netease/nr/biz/pc/b/l;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/pc/b/l;-><init>(Lcom/netease/nr/biz/pc/b/g;)V

    iput-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->j:Lcom/netease/nr/biz/pc/b/o;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/netease/nr/biz/pc/b/g;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/netease/nr/biz/pc/b/s;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/pc/b/s;-><init>(Lcom/netease/nr/biz/pc/b/g;)V

    iput-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->j:Lcom/netease/nr/biz/pc/b/o;

    goto :goto_0
.end method

.method static synthetic e(Lcom/netease/nr/biz/pc/b/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/b/g;->k()V

    return-void
.end method

.method static synthetic f(Lcom/netease/nr/biz/pc/b/g;)I
    .locals 1

    iget v0, p0, Lcom/netease/nr/biz/pc/b/g;->f:I

    return v0
.end method

.method private f()V
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/b/g;->a()Lcom/netease/nr/base/view/a;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/netease/nr/base/view/a;->d(Z)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/netease/nr/biz/pc/b/g;->n:[I

    array-length v5, v4

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    aget v6, v4, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/netease/nr/base/view/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3, v1}, Lcom/netease/nr/base/view/a;->a(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic g(Lcom/netease/nr/biz/pc/b/g;)Lcom/netease/nr/base/c/e;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->e:Lcom/netease/nr/base/c/e;

    return-object v0
.end method

.method static synthetic h(Lcom/netease/nr/biz/pc/b/g;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/netease/nr/biz/pc/b/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/b/g;->l()V

    return-void
.end method

.method static synthetic j(Lcom/netease/nr/biz/pc/b/g;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->k:Landroid/os/Handler;

    return-object v0
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->g:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->g:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->k:Landroid/os/Handler;

    new-instance v1, Lcom/netease/nr/biz/pc/b/i;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/pc/b/i;-><init>(Lcom/netease/nr/biz/pc/b/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic k(Lcom/netease/nr/biz/pc/b/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/b/g;->m()V

    return-void
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->k:Landroid/os/Handler;

    new-instance v1, Lcom/netease/nr/biz/pc/b/j;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/pc/b/j;-><init>(Lcom/netease/nr/biz/pc/b/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic l(Lcom/netease/nr/biz/pc/b/g;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/biz/pc/b/g;->l:Z

    return v0
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->k:Landroid/os/Handler;

    new-instance v1, Lcom/netease/nr/biz/pc/b/k;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/pc/b/k;-><init>(Lcom/netease/nr/biz/pc/b/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->j:Lcom/netease/nr/biz/pc/b/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->j:Lcom/netease/nr/biz/pc/b/o;

    invoke-interface {v0, p1}, Lcom/netease/nr/biz/pc/b/o;->a(Lcom/netease/util/j/a;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->i:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->i:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0201d2

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->g:Landroid/widget/ListView;

    const v1, 0x7f020036

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/ListView;I)V

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->h:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->h:Landroid/view/View;

    const v1, 0x7f0c001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02002d

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    :cond_3
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/b/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/sync/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/pc/b/ah;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/b/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/pc/b/ah;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/pc/b/ah;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public a_(II)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->m:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->m:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-direct {p0, p2}, Lcom/netease/nr/biz/pc/b/g;->b(I)V

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/b/g;->e()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/b/g;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0xfa

    const/4 v2, 0x0

    new-instance v3, Lcom/netease/nr/biz/pc/b/n;

    invoke-direct {v3, p0}, Lcom/netease/nr/biz/pc/b/n;-><init>(Lcom/netease/nr/biz/pc/b/g;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x186a2
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030079

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/b/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/sync/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/pc/b/ah;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/b/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/pc/b/ah;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/pc/b/ah;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->c()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/d;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/b/g;->z()V

    new-instance v0, Lcom/netease/nr/base/c/e;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/b/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/base/c/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->e:Lcom/netease/nr/base/c/e;

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/b/g;->f()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/b/g;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0xfa

    const/4 v2, 0x0

    new-instance v3, Lcom/netease/nr/biz/pc/b/n;

    invoke-direct {v3, p0}, Lcom/netease/nr/biz/pc/b/n;-><init>(Lcom/netease/nr/biz/pc/b/g;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/b/g;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0xfa

    const/4 v2, 0x0

    new-instance v3, Lcom/netease/nr/biz/pc/b/n;

    invoke-direct {v3, p0}, Lcom/netease/nr/biz/pc/b/n;-><init>(Lcom/netease/nr/biz/pc/b/g;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0c0101
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

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

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/biz/pc/b/g;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/b/g;->u()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/b/g;->getArguments()Landroid/os/Bundle;

    const/4 v0, 0x1

    iput v0, p0, Lcom/netease/nr/biz/pc/b/g;->f:I

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/b/g;->e()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onDestroy()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/b/g;->A()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onDestroyView()V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->m:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->m:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/netease/nr/biz/pc/b/g;->d(I)V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/b/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b01bc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b000f

    new-instance v2, Lcom/netease/nr/biz/pc/b/h;

    invoke-direct {v2, p0, p3}, Lcom/netease/nr/biz/pc/b/h;-><init>(Lcom/netease/nr/biz/pc/b/g;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->m:Landroid/app/Dialog;

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onPause()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/b/g;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/pc/b/g;->l:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onResume()V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->j:Lcom/netease/nr/biz/pc/b/o;

    invoke-interface {v0}, Lcom/netease/nr/biz/pc/b/o;->b()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->g:Landroid/widget/ListView;

    const v0, 0x7f0c0010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->h:Landroid/view/View;

    const v0, 0x7f0c0101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/b/g;->i:Landroid/view/View;

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/b/g;->j()V

    return-void
.end method
