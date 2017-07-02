.class public Lcom/netease/util/fragment/FragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;

# interfaces
.implements Lcom/netease/util/j/e;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/ref/WeakReference;

.field private e:Lcom/netease/util/fragment/ab;

.field private f:Ljava/util/Map;

.field private g:Ljava/util/List;

.field private h:Lcom/netease/util/j/a;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Landroid/view/GestureDetector;

.field private o:Lcom/netease/util/fragment/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    iput-boolean v1, p0, Lcom/netease/util/fragment/FragmentActivity;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->g:Ljava/util/List;

    iput-boolean v1, p0, Lcom/netease/util/fragment/FragmentActivity;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/util/fragment/d;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/netease/util/fragment/e;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/netease/util/fragment/FragmentActivity;->o:Lcom/netease/util/fragment/e;

    :cond_0
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
    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->d:Ljava/lang/ref/WeakReference;

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

    iput-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->d:Ljava/lang/ref/WeakReference;

    goto :goto_1
.end method

.method protected a(Lcom/netease/util/j/a;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/util/fragment/FragmentActivity;->l:Z

    return-void
.end method

.method a(Ljava/lang/String;Landroid/support/v4/app/DialogFragment;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/util/fragment/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/support/v4/app/DialogFragment;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    invoke-virtual {p0}, Lcom/netease/util/fragment/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method protected a(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/f;

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/netease/util/fragment/f;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected a(Landroid/view/GestureDetector;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netease/util/fragment/FragmentActivity;->n:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->f:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/netease/util/fragment/d;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/netease/util/fragment/e;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->o:Lcom/netease/util/fragment/e;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->o:Lcom/netease/util/fragment/e;

    :cond_0
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
    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/f;

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iput-object v1, p0, Lcom/netease/util/fragment/FragmentActivity;->d:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method protected b(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->d:Ljava/lang/ref/WeakReference;

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
    const/4 v0, 0x0

    goto :goto_1
.end method

.method c(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/util/fragment/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/support/v4/app/DialogFragment;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public final c_()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public final d()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/util/fragment/FragmentActivity;->l:Z

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->h:Lcom/netease/util/j/a;

    invoke-virtual {p0, v0}, Lcom/netease/util/fragment/FragmentActivity;->a(Lcom/netease/util/j/a;)V

    iget-boolean v0, p0, Lcom/netease/util/fragment/FragmentActivity;->l:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should call super.onApplyTheme()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/util/fragment/FragmentActivity;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->n:Landroid/view/GestureDetector;

    invoke-virtual {p0, v0, p1}, Lcom/netease/util/fragment/FragmentActivity;->a(Landroid/view/GestureDetector;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected e()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->o:Lcom/netease/util/fragment/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->o:Lcom/netease/util/fragment/e;

    invoke-interface {v0}, Lcom/netease/util/fragment/e;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected f()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->o:Lcom/netease/util/fragment/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->o:Lcom/netease/util/fragment/e;

    invoke-interface {v0}, Lcom/netease/util/fragment/e;->j_()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/netease/util/fragment/FragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public final getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->e:Lcom/netease/util/fragment/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->e:Lcom/netease/util/fragment/ab;

    invoke-virtual {v0}, Lcom/netease/util/fragment/ab;->e()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected n()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/util/fragment/FragmentActivity;->i:Z

    return-void
.end method

.method public final o()Lcom/netease/util/j/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->h:Lcom/netease/util/j/a;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p0}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->h:Lcom/netease/util/j/a;

    invoke-static {p0}, Lcom/netease/util/fragment/ab;->a(Lcom/netease/util/fragment/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/util/fragment/ab;

    invoke-direct {v0, p0}, Lcom/netease/util/fragment/ab;-><init>(Lcom/netease/util/fragment/FragmentActivity;)V

    iput-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->e:Lcom/netease/util/fragment/ab;

    :cond_0
    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->e:Lcom/netease/util/fragment/ab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->e:Lcom/netease/util/fragment/ab;

    invoke-virtual {v0}, Lcom/netease/util/fragment/ab;->a()V

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->e:Lcom/netease/util/fragment/ab;

    invoke-virtual {v0}, Lcom/netease/util/fragment/ab;->b()V

    :cond_1
    invoke-virtual {p0}, Lcom/netease/util/fragment/FragmentActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->f:Ljava/util/Map;

    :cond_2
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->f:Ljava/util/Map;

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->e:Lcom/netease/util/fragment/ab;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->e:Lcom/netease/util/fragment/ab;

    invoke-virtual {v0}, Lcom/netease/util/fragment/ab;->c()V

    :cond_3
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/netease/util/fragment/a;

    invoke-direct {v1, p0}, Lcom/netease/util/fragment/a;-><init>(Lcom/netease/util/fragment/FragmentActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->n:Landroid/view/GestureDetector;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    iget-boolean v0, p0, Lcom/netease/util/fragment/FragmentActivity;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->h:Lcom/netease/util/j/a;

    invoke-virtual {v0, p0}, Lcom/netease/util/j/a;->a(Lcom/netease/util/j/e;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/netease/util/fragment/FragmentActivity;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/netease/util/fragment/FragmentActivity;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/util/fragment/FragmentActivity;->a:Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/util/fragment/FragmentActivity;->a:Z

    return-void
.end method

.method public final onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/d;

    invoke-interface {v0, v1}, Lcom/netease/util/fragment/d;->c(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/netease/util/fragment/FragmentActivity;->a(Ljava/util/Map;)V

    return-object v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/netease/util/fragment/FragmentActivity;->c:Z

    if-nez v0, :cond_0

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    iput-boolean v1, p0, Lcom/netease/util/fragment/FragmentActivity;->b:Z

    iget-boolean v0, p0, Lcom/netease/util/fragment/FragmentActivity;->j:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/util/fragment/FragmentActivity;->j:Z

    iget-boolean v0, p0, Lcom/netease/util/fragment/FragmentActivity;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->e:Lcom/netease/util/fragment/ab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->e:Lcom/netease/util/fragment/ab;

    invoke-virtual {v0}, Lcom/netease/util/fragment/ab;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/netease/util/fragment/FragmentActivity;->k:Z

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->h:Lcom/netease/util/j/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/netease/util/j/a;->a(Lcom/netease/util/j/e;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/util/fragment/FragmentActivity;->b:Z

    return-void
.end method

.method public final p()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/util/fragment/FragmentActivity;->m:Z

    return-void
.end method

.method protected q()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->o:Lcom/netease/util/fragment/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/fragment/FragmentActivity;->o:Lcom/netease/util/fragment/e;

    invoke-interface {v0}, Lcom/netease/util/fragment/e;->k_()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
