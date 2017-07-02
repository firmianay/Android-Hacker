.class public Lcom/netease/util/fragment/u;
.super Lcom/netease/util/fragment/n;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/netease/util/fragment/d;
.implements Lcom/netease/util/fragment/f;
.implements Lcom/netease/util/fragment/t;
.implements Lcom/netease/util/j/e;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Ljava/lang/Runnable;

.field private g:Ljava/lang/Runnable;

.field private h:Ljava/lang/Runnable;

.field private i:Ljava/lang/Object;

.field j:Lcom/netease/util/fragment/s;

.field protected k:I

.field protected l:I

.field private m:Ljava/lang/ref/WeakReference;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/netease/util/fragment/n;-><init>()V

    iput v1, p0, Lcom/netease/util/fragment/u;->k:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/netease/util/fragment/u;->l:I

    iput-boolean v1, p0, Lcom/netease/util/fragment/u;->a:Z

    iput-boolean v1, p0, Lcom/netease/util/fragment/u;->b:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/util/fragment/u;->e:I

    new-instance v0, Lcom/netease/util/fragment/v;

    invoke-direct {v0, p0}, Lcom/netease/util/fragment/v;-><init>(Lcom/netease/util/fragment/u;)V

    iput-object v0, p0, Lcom/netease/util/fragment/u;->v:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static a(Lcom/netease/util/fragment/u;)V
    .locals 1

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lcom/netease/util/fragment/u;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/util/fragment/u;->q:Z

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->E()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/util/fragment/u;->q:Z

    :cond_0
    return-void
.end method

.method static a(Lcom/netease/util/fragment/u;Z)V
    .locals 1

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lcom/netease/util/fragment/u;->o:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netease/util/fragment/u;->p:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs a([Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/util/fragment/u;->u:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, p1}, Lcom/netease/util/fragment/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/netease/util/fragment/u;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/util/fragment/u;->t:Z

    return v0
.end method

.method static synthetic b(Lcom/netease/util/fragment/u;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/util/fragment/u;->t:Z

    return p1
.end method

.method static synthetic c(Lcom/netease/util/fragment/u;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/util/fragment/u;->o:Z

    return v0
.end method

.method static synthetic d(Lcom/netease/util/fragment/u;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/util/fragment/u;->r:Z

    return v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/util/fragment/u;->s:Z

    return v0
.end method

.method public B()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method C()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/util/fragment/u;->o:Z

    return-void
.end method

.method public D()V
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/netease/util/fragment/u;->d:Z

    if-nez v1, :cond_0

    new-instance v0, Lcom/netease/util/fragment/w;

    invoke-direct {v0, p0}, Lcom/netease/util/fragment/w;-><init>(Lcom/netease/util/fragment/u;)V

    iput-object v0, p0, Lcom/netease/util/fragment/u;->f:Ljava/lang/Runnable;

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/netease/util/fragment/u;->k:I

    iput v0, p0, Lcom/netease/util/fragment/u;->k:I

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/netease/util/fragment/u;->setListShown(Z)V

    :goto_1
    iget-object v0, p0, Lcom/netease/util/fragment/u;->j:Lcom/netease/util/fragment/s;

    iget-boolean v2, p0, Lcom/netease/util/fragment/u;->d:Z

    iget-object v3, p0, Lcom/netease/util/fragment/u;->v:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v2, v3}, Lcom/netease/util/fragment/s;->a(ZLandroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    iput v1, p0, Lcom/netease/util/fragment/u;->k:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/netease/util/fragment/u;->setListShownNoAnimation(Z)V

    goto :goto_1
.end method

.method public E()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/netease/util/fragment/u;->o:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/netease/util/fragment/u;->q:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/netease/util/fragment/u;->p:Z

    if-nez v2, :cond_0

    iput-boolean v0, p0, Lcom/netease/util/fragment/u;->r:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/netease/util/fragment/u;->r:Z

    iget-boolean v2, p0, Lcom/netease/util/fragment/u;->d:Z

    if-nez v2, :cond_1

    new-instance v0, Lcom/netease/util/fragment/x;

    invoke-direct {v0, p0}, Lcom/netease/util/fragment/x;-><init>(Lcom/netease/util/fragment/u;)V

    iput-object v0, p0, Lcom/netease/util/fragment/u;->g:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/netease/util/fragment/u;->k:I

    iput v1, p0, Lcom/netease/util/fragment/u;->k:I

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/netease/util/fragment/u;->setListShown(Z)V

    :goto_2
    iget-object v0, p0, Lcom/netease/util/fragment/u;->j:Lcom/netease/util/fragment/s;

    iget-boolean v1, p0, Lcom/netease/util/fragment/u;->d:Z

    invoke-virtual {v0, v1}, Lcom/netease/util/fragment/s;->a(Z)V

    iput v2, p0, Lcom/netease/util/fragment/u;->k:I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/netease/util/fragment/u;->setListShownNoAnimation(Z)V

    goto :goto_2
.end method

.method public F()V
    .locals 2

    iget-boolean v0, p0, Lcom/netease/util/fragment/u;->d:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/util/fragment/y;

    invoke-direct {v0, p0}, Lcom/netease/util/fragment/y;-><init>(Lcom/netease/util/fragment/u;)V

    iput-object v0, p0, Lcom/netease/util/fragment/u;->h:Ljava/lang/Runnable;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/netease/util/fragment/u;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/util/fragment/u;->setListShownNoAnimation(Z)V

    iget-object v0, p0, Lcom/netease/util/fragment/u;->j:Lcom/netease/util/fragment/s;

    iget-boolean v1, p0, Lcom/netease/util/fragment/u;->d:Z

    invoke-virtual {v0, v1}, Lcom/netease/util/fragment/s;->b(Z)V

    goto :goto_0
.end method

.method protected G()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/util/fragment/u;->a:Z

    return-void
.end method

.method protected H()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/util/fragment/u;->a:Z

    return v0
.end method

.method protected I()Z
    .locals 2

    iget-object v0, p0, Lcom/netease/util/fragment/u;->j:Lcom/netease/util/fragment/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/fragment/u;->j:Lcom/netease/util/fragment/s;

    iget v0, v0, Lcom/netease/util/fragment/s;->a:I

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected J()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/util/fragment/u;->c:Z

    return v0
.end method

.method public K()V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/netease/util/fragment/o;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/netease/util/fragment/o;

    invoke-virtual {v0, p0}, Lcom/netease/util/fragment/o;->a(Lcom/netease/util/fragment/f;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, v0, Lcom/netease/util/fragment/u;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/netease/util/fragment/u;

    invoke-virtual {v0, p0}, Lcom/netease/util/fragment/u;->a(Lcom/netease/util/fragment/f;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/netease/util/fragment/FragmentActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {v0, p0}, Lcom/netease/util/fragment/FragmentActivity;->a(Lcom/netease/util/fragment/f;)V

    goto :goto_0
.end method

.method public L()V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/netease/util/fragment/o;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/netease/util/fragment/o;

    invoke-virtual {v0, p0}, Lcom/netease/util/fragment/o;->b(Lcom/netease/util/fragment/f;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, v0, Lcom/netease/util/fragment/u;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/netease/util/fragment/u;

    invoke-virtual {v0, p0}, Lcom/netease/util/fragment/u;->b(Lcom/netease/util/fragment/f;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/netease/util/fragment/FragmentActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {v0, p0}, Lcom/netease/util/fragment/FragmentActivity;->b(Lcom/netease/util/fragment/f;)V

    goto :goto_0
.end method

.method public final M()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/util/fragment/u;->i:Ljava/lang/Object;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/netease/util/fragment/u;->i:Ljava/lang/Object;

    iput-object v0, p0, Lcom/netease/util/fragment/u;->i:Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0
.end method

.method public final N()Lcom/netease/util/j/a;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/FragmentActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netease/util/fragment/FragmentActivity;->o()Lcom/netease/util/j/a;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)Lcom/netease/util/fragment/ac;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/support/v4/content/Loader;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/netease/util/fragment/u;->setListShown(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/netease/util/fragment/u;->setListShownNoAnimation(Z)V

    goto :goto_0
.end method

.method a(Lcom/netease/util/fragment/f;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "intercepter can not be null, if you want to clear key interpreter please call clearKeyInterpreter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/netease/util/fragment/u;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/util/fragment/u;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/f;

    :goto_0
    if-ne v0, p1, :cond_2

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/util/fragment/u;->m:Ljava/lang/ref/WeakReference;

    goto :goto_1
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/util/fragment/u;->n:Z

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/util/fragment/u;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/netease/util/fragment/u;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/util/fragment/u;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "@@"

    iput-object v0, p0, Lcom/netease/util/fragment/u;->u:Ljava/lang/String;

    :cond_1
    invoke-direct {p0, p2}, Lcom/netease/util/fragment/u;->a([Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "@@"

    iget-object v1, p0, Lcom/netease/util/fragment/u;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "@@ can not be whereTag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/support/v4/content/Loader;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/netease/util/fragment/u;->setListShown(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/netease/util/fragment/u;->setListShownNoAnimation(Z)V

    goto :goto_0
.end method

.method b(Lcom/netease/util/fragment/f;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/util/fragment/u;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/util/fragment/u;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/f;

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iput-object v1, p0, Lcom/netease/util/fragment/u;->m:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public final b(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/netease/util/fragment/u;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/fragment/u;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/f;

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/netease/util/fragment/f;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/netease/util/fragment/u;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public b_(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public c(Landroid/support/v4/content/Loader;)V
    .locals 0

    return-void
.end method

.method public final c(Ljava/util/Map;)V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->g_()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected c(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/netease/util/fragment/u;->b:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/netease/util/fragment/u;->b:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/util/fragment/u;->e:I

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    if-lez v1, :cond_0

    if-lez v3, :cond_0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/netease/util/fragment/u;->onScroll(Landroid/widget/AbsListView;III)V

    goto :goto_0
.end method

.method public final c(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/util/fragment/u;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/fragment/u;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/f;

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/netease/util/fragment/f;->c(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/netease/util/fragment/u;->d(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public final c_()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->N()Lcom/netease/util/j/a;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/netease/util/fragment/u;->n:Z

    invoke-virtual {p0, v1, v0}, Lcom/netease/util/fragment/u;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/netease/util/fragment/u;->n:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should call super.onApplyTheme()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected d(Landroid/support/v4/content/Loader;)V
    .locals 2

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/util/fragment/u;->k:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/netease/util/fragment/u;->k:I

    iget v1, p0, Lcom/netease/util/fragment/u;->l:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/netease/util/fragment/u;->k:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public d(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g_()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected h()Z
    .locals 2

    iget-object v0, p0, Lcom/netease/util/fragment/u;->j:Lcom/netease/util/fragment/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/fragment/u;->j:Lcom/netease/util/fragment/s;

    iget v0, v0, Lcom/netease/util/fragment/s;->a:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/netease/util/fragment/n;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/netease/util/fragment/u;->a(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netease/util/fragment/u;->i:Ljava/lang/Object;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netease/util/fragment/n;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v0, "CUSTOM_RETAIN_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOAD_START"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/netease/util/fragment/u;->k:I

    const-string v1, "LOADER_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3ea

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->E()V

    move-object v1, v0

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/util/fragment/FragmentActivity;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/util/fragment/u;->i:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {v0, p0}, Lcom/netease/util/fragment/FragmentActivity;->a(Lcom/netease/util/fragment/d;)V

    return-void

    :cond_1
    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->F()V

    :cond_2
    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/netease/util/fragment/u;->b(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/netease/util/fragment/u;->c(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/netease/util/fragment/n;->onDestroy()V

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {v0, p0}, Lcom/netease/util/fragment/FragmentActivity;->b(Lcom/netease/util/fragment/d;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/netease/util/fragment/n;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->N()Lcom/netease/util/j/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/netease/util/fragment/u;->s:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/netease/util/j/a;->a(Lcom/netease/util/j/e;)V

    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/netease/util/fragment/u;->b(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/netease/util/fragment/u;->a(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 1

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/netease/util/fragment/u;->b(Landroid/support/v4/content/Loader;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/netease/util/fragment/u;->c(Landroid/support/v4/content/Loader;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/util/fragment/n;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "CUSTOM_RETAIN_NAME"

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LOAD_START"

    iget v1, p0, Lcom/netease/util/fragment/u;->k:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/netease/util/fragment/u;->j:Lcom/netease/util/fragment/s;

    if-eqz v0, :cond_0

    const-string v0, "LOADER_ID"

    iget-object v1, p0, Lcom/netease/util/fragment/u;->j:Lcom/netease/util/fragment/s;

    iget v1, v1, Lcom/netease/util/fragment/s;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    iget-boolean v0, p0, Lcom/netease/util/fragment/u;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/fragment/u;->j:Lcom/netease/util/fragment/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/fragment/u;->j:Lcom/netease/util/fragment/s;

    iget v0, v0, Lcom/netease/util/fragment/s;->a:I

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/netease/util/fragment/u;->a:Z

    if-nez v0, :cond_0

    add-int v0, p2, p3

    if-ne v0, p4, :cond_0

    iget v0, p0, Lcom/netease/util/fragment/u;->e:I

    if-eq v0, p4, :cond_0

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/util/fragment/u;->c:Z

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->F()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/util/fragment/u;->c:Z

    :cond_0
    add-int v0, p2, p3

    iput v0, p0, Lcom/netease/util/fragment/u;->e:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/netease/util/fragment/n;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/util/fragment/u;->d:Z

    iget-object v0, p0, Lcom/netease/util/fragment/u;->j:Lcom/netease/util/fragment/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/util/fragment/s;

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/netease/util/fragment/s;-><init>(Landroid/support/v4/app/LoaderManager;Lcom/netease/util/fragment/t;)V

    iput-object v0, p0, Lcom/netease/util/fragment/u;->j:Lcom/netease/util/fragment/s;

    :cond_0
    iget-object v0, p0, Lcom/netease/util/fragment/u;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/util/fragment/u;->f:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v2, p0, Lcom/netease/util/fragment/u;->f:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lcom/netease/util/fragment/u;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/util/fragment/u;->g:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v2, p0, Lcom/netease/util/fragment/u;->g:Ljava/lang/Runnable;

    :cond_2
    iget-object v0, p0, Lcom/netease/util/fragment/u;->h:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/util/fragment/u;->h:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v2, p0, Lcom/netease/util/fragment/u;->h:Ljava/lang/Runnable;

    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/netease/util/fragment/n;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/util/fragment/u;->d:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netease/util/fragment/n;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/util/fragment/u;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/util/fragment/n;->onViewStateRestored(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->N()Lcom/netease/util/j/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/netease/util/fragment/u;->s:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/netease/util/j/a;->a(Lcom/netease/util/j/e;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final x()Ljava/lang/String;
    .locals 2

    const-string v0, "@@"

    iget-object v1, p0, Lcom/netease/util/fragment/u;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netease/util/fragment/u;->u:Ljava/lang/String;

    goto :goto_0
.end method

.method public final y()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "from_where"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {v0}, Lcom/netease/util/fragment/FragmentActivity;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected z()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/util/fragment/u;->s:Z

    return-void
.end method
