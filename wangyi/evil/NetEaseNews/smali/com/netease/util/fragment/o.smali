.class public Lcom/netease/util/fragment/o;
.super Lcom/netease/util/fragment/c;

# interfaces
.implements Lcom/netease/util/fragment/d;
.implements Lcom/netease/util/fragment/f;
.implements Lcom/netease/util/fragment/t;
.implements Lcom/netease/util/j/e;


# instance fields
.field private a:Z

.field b:Lcom/netease/util/fragment/s;

.field protected c:I

.field protected d:I

.field private e:Ljava/lang/Runnable;

.field private f:Ljava/lang/Runnable;

.field private g:Ljava/lang/Runnable;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/ref/WeakReference;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/util/fragment/c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/util/fragment/o;->c:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/netease/util/fragment/o;->d:I

    new-instance v0, Lcom/netease/util/fragment/p;

    invoke-direct {v0, p0}, Lcom/netease/util/fragment/p;-><init>(Lcom/netease/util/fragment/o;)V

    iput-object v0, p0, Lcom/netease/util/fragment/o;->q:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static a(Lcom/netease/util/fragment/o;)V
    .locals 1

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lcom/netease/util/fragment/o;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/util/fragment/o;->m:Z

    invoke-virtual {p0}, Lcom/netease/util/fragment/o;->h()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/util/fragment/o;->m:Z

    :cond_0
    return-void
.end method

.method static a(Lcom/netease/util/fragment/o;Z)V
    .locals 1

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lcom/netease/util/fragment/o;->k:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netease/util/fragment/o;->l:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs a([Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/util/fragment/o;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/util/fragment/o;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/util/fragment/o;->p:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, p1}, Lcom/netease/util/fragment/o;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public A()V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/util/fragment/o;->getParentFragment()Landroid/support/v4/app/Fragment;

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
    invoke-virtual {p0}, Lcom/netease/util/fragment/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/netease/util/fragment/FragmentActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {v0, p0}, Lcom/netease/util/fragment/FragmentActivity;->b(Lcom/netease/util/fragment/f;)V

    goto :goto_0
.end method

.method public final B()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/util/fragment/o;->h:Ljava/lang/Object;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/netease/util/fragment/o;->h:Ljava/lang/Object;

    iput-object v0, p0, Lcom/netease/util/fragment/o;->h:Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0
.end method

.method public final C()Lcom/netease/util/j/a;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/util/fragment/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

.method public a(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
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
    .locals 0

    return-void
.end method

.method a(Lcom/netease/util/fragment/f;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "intercepter can not be null, if you want to clear key interpreter please call clearKeyInterpreter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/netease/util/fragment/o;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/util/fragment/o;->i:Ljava/lang/ref/WeakReference;

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

    iput-object v0, p0, Lcom/netease/util/fragment/o;->i:Ljava/lang/ref/WeakReference;

    goto :goto_1
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/util/fragment/o;->j:Z

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/util/fragment/o;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/netease/util/fragment/o;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/util/fragment/o;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "@@"

    iput-object v0, p0, Lcom/netease/util/fragment/o;->p:Ljava/lang/String;

    :cond_1
    invoke-direct {p0, p2}, Lcom/netease/util/fragment/o;->a([Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "@@"

    iget-object v1, p0, Lcom/netease/util/fragment/o;->p:Ljava/lang/String;

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

.method public a_()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)Lcom/netease/util/fragment/ac;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/support/v4/content/Loader;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method b(Lcom/netease/util/fragment/f;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/util/fragment/o;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/util/fragment/o;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/f;

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iput-object v1, p0, Lcom/netease/util/fragment/o;->i:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public final b(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/netease/util/fragment/o;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/fragment/o;->i:Ljava/lang/ref/WeakReference;

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

    invoke-virtual {p0}, Lcom/netease/util/fragment/o;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/netease/util/fragment/o;->a(ILandroid/view/KeyEvent;)Z

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
    invoke-virtual {p0}, Lcom/netease/util/fragment/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
    .locals 4

    invoke-virtual {p0}, Lcom/netease/util/fragment/o;->a_()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/util/fragment/o;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "LOAD_START"

    iget v3, p0, Lcom/netease/util/fragment/o;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netease/util/fragment/o;->b:Lcom/netease/util/fragment/s;

    if-eqz v0, :cond_1

    const-string v0, "LOADER_ID"

    iget-object v3, p0, Lcom/netease/util/fragment/o;->b:Lcom/netease/util/fragment/s;

    iget v3, v3, Lcom/netease/util/fragment/s;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/util/fragment/o;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/fragment/o;->i:Ljava/lang/ref/WeakReference;

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
    invoke-virtual {p0, p1, p2}, Lcom/netease/util/fragment/o;->d(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public final c_()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/util/fragment/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/util/fragment/o;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/util/fragment/o;->C()Lcom/netease/util/j/a;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/netease/util/fragment/o;->j:Z

    invoke-virtual {p0, v1, v0}, Lcom/netease/util/fragment/o;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/netease/util/fragment/o;->j:Z

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

    iput v0, p0, Lcom/netease/util/fragment/o;->c:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/netease/util/fragment/o;->c:I

    iget v1, p0, Lcom/netease/util/fragment/o;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/netease/util/fragment/o;->c:I

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

.method public h()V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/netease/util/fragment/o;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/util/fragment/o;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/util/fragment/o;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/util/fragment/o;->n:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/netease/util/fragment/o;->n:Z

    iget-boolean v0, p0, Lcom/netease/util/fragment/o;->a:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/util/fragment/q;

    invoke-direct {v0, p0}, Lcom/netease/util/fragment/q;-><init>(Lcom/netease/util/fragment/o;)V

    iput-object v0, p0, Lcom/netease/util/fragment/o;->f:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/netease/util/fragment/o;->c:I

    iput v1, p0, Lcom/netease/util/fragment/o;->c:I

    iget-object v1, p0, Lcom/netease/util/fragment/o;->b:Lcom/netease/util/fragment/s;

    iget-boolean v2, p0, Lcom/netease/util/fragment/o;->a:Z

    invoke-virtual {v1, v2}, Lcom/netease/util/fragment/s;->a(Z)V

    iput v0, p0, Lcom/netease/util/fragment/o;->c:I

    goto :goto_0
.end method

.method public i()V
    .locals 2

    iget-boolean v0, p0, Lcom/netease/util/fragment/o;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/util/fragment/r;

    invoke-direct {v0, p0}, Lcom/netease/util/fragment/r;-><init>(Lcom/netease/util/fragment/o;)V

    iput-object v0, p0, Lcom/netease/util/fragment/o;->g:Ljava/lang/Runnable;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/util/fragment/o;->b:Lcom/netease/util/fragment/s;

    iget-boolean v1, p0, Lcom/netease/util/fragment/o;->a:Z

    invoke-virtual {v0, v1}, Lcom/netease/util/fragment/s;->b(Z)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/netease/util/fragment/c;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/netease/util/fragment/o;->a(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netease/util/fragment/o;->h:Ljava/lang/Object;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/netease/util/fragment/c;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v0, "CUSTOM_RETAIN_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/util/fragment/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/util/fragment/FragmentActivity;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/util/fragment/o;->h:Ljava/lang/Object;

    const-string v1, "LOAD_START"

    invoke-static {v0, v1, v2}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/netease/util/fragment/o;->c:I

    const-string v1, "LOADER_ID"

    invoke-static {v0, v1, v2}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/netease/util/fragment/o;->h()V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/netease/util/fragment/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {v0, p0}, Lcom/netease/util/fragment/FragmentActivity;->a(Lcom/netease/util/fragment/d;)V

    return-void

    :cond_1
    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/netease/util/fragment/o;->i()V

    goto :goto_1

    :cond_2
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
    invoke-virtual {p0, p2}, Lcom/netease/util/fragment/o;->a(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/netease/util/fragment/o;->c(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;

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

    invoke-super {p0}, Lcom/netease/util/fragment/c;->onDestroy()V

    invoke-virtual {p0}, Lcom/netease/util/fragment/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {v0, p0}, Lcom/netease/util/fragment/FragmentActivity;->b(Lcom/netease/util/fragment/d;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/netease/util/fragment/c;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netease/util/fragment/o;->C()Lcom/netease/util/j/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/netease/util/fragment/o;->o:Z

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
    invoke-virtual {p0, p1, p2}, Lcom/netease/util/fragment/o;->b(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/netease/util/fragment/o;->a(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

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
    invoke-virtual {p0, p1}, Lcom/netease/util/fragment/o;->b(Landroid/support/v4/content/Loader;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/netease/util/fragment/o;->c(Landroid/support/v4/content/Loader;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/util/fragment/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "CUSTOM_RETAIN_NAME"

    invoke-virtual {p0}, Lcom/netease/util/fragment/o;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/netease/util/fragment/c;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/util/fragment/o;->a:Z

    iget-object v0, p0, Lcom/netease/util/fragment/o;->b:Lcom/netease/util/fragment/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/util/fragment/s;

    invoke-virtual {p0}, Lcom/netease/util/fragment/o;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/netease/util/fragment/s;-><init>(Landroid/support/v4/app/LoaderManager;Lcom/netease/util/fragment/t;)V

    iput-object v0, p0, Lcom/netease/util/fragment/o;->b:Lcom/netease/util/fragment/s;

    :cond_0
    iget-object v0, p0, Lcom/netease/util/fragment/o;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/util/fragment/o;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v2, p0, Lcom/netease/util/fragment/o;->e:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lcom/netease/util/fragment/o;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/util/fragment/o;->f:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v2, p0, Lcom/netease/util/fragment/o;->f:Ljava/lang/Runnable;

    :cond_2
    iget-object v0, p0, Lcom/netease/util/fragment/o;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/util/fragment/o;->g:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v2, p0, Lcom/netease/util/fragment/o;->g:Ljava/lang/Runnable;

    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/netease/util/fragment/c;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/util/fragment/o;->a:Z

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/util/fragment/c;->onViewStateRestored(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/util/fragment/o;->C()Lcom/netease/util/j/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/netease/util/fragment/o;->o:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/netease/util/j/a;->a(Lcom/netease/util/j/e;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final s()Ljava/lang/String;
    .locals 2

    const-string v0, "@@"

    iget-object v1, p0, Lcom/netease/util/fragment/o;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netease/util/fragment/o;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method public final t()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/netease/util/fragment/o;->getArguments()Landroid/os/Bundle;

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
    invoke-virtual {p0}, Lcom/netease/util/fragment/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {v0}, Lcom/netease/util/fragment/FragmentActivity;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected u()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/util/fragment/o;->o:Z

    return-void
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/util/fragment/o;->o:Z

    return v0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/util/fragment/o;->a:Z

    return v0
.end method

.method x()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/util/fragment/o;->k:Z

    return-void
.end method

.method protected y()Z
    .locals 2

    iget-object v0, p0, Lcom/netease/util/fragment/o;->b:Lcom/netease/util/fragment/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/fragment/o;->b:Lcom/netease/util/fragment/s;

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

.method public z()V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/util/fragment/o;->getParentFragment()Landroid/support/v4/app/Fragment;

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
    invoke-virtual {p0}, Lcom/netease/util/fragment/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/netease/util/fragment/FragmentActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {v0, p0}, Lcom/netease/util/fragment/FragmentActivity;->a(Lcom/netease/util/fragment/f;)V

    goto :goto_0
.end method
