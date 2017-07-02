.class public Lcom/netease/util/fragment/b;
.super Landroid/support/v4/app/DialogFragment;

# interfaces
.implements Lcom/netease/util/j/e;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;)V
    .locals 1

    instance-of v0, p0, Lcom/netease/util/fragment/FragmentActivity;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/util/fragment/FragmentActivity;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private varargs a([Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/util/fragment/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/util/fragment/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/util/fragment/b;->c:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, p1}, Lcom/netease/util/fragment/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    instance-of v0, p1, Lcom/netease/util/fragment/FragmentActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/netease/util/fragment/FragmentActivity;->a(Ljava/lang/String;Landroid/support/v4/app/DialogFragment;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/util/fragment/b;->b:Z

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/util/fragment/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/netease/util/fragment/b;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/util/fragment/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "@@"

    iput-object v0, p0, Lcom/netease/util/fragment/b;->c:Ljava/lang/String;

    :cond_1
    invoke-direct {p0, p2}, Lcom/netease/util/fragment/b;->a([Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "@@"

    iget-object v1, p0, Lcom/netease/util/fragment/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "@@ can not be whereTag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c_()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/util/fragment/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/util/fragment/b;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/util/fragment/b;->i()Lcom/netease/util/j/a;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/netease/util/fragment/b;->b:Z

    invoke-virtual {p0, v1, v0}, Lcom/netease/util/fragment/b;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/netease/util/fragment/b;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should call super.onApplyTheme()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    const-string v0, "@@"

    iget-object v1, p0, Lcom/netease/util/fragment/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netease/util/fragment/b;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/netease/util/fragment/b;->getArguments()Landroid/os/Bundle;

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
    invoke-virtual {p0}, Lcom/netease/util/fragment/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {v0}, Lcom/netease/util/fragment/FragmentActivity;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/util/fragment/b;->a:Z

    return-void
.end method

.method public final i()Lcom/netease/util/j/a;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/util/fragment/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

.method public j()V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/util/fragment/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/util/fragment/FragmentActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/netease/util/fragment/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netease/util/fragment/b;->i()Lcom/netease/util/j/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/netease/util/fragment/b;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/netease/util/j/a;->a(Lcom/netease/util/j/e;)V

    :cond_0
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/util/fragment/b;->i()Lcom/netease/util/j/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/netease/util/fragment/b;->a:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/netease/util/j/a;->a(Lcom/netease/util/j/e;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
