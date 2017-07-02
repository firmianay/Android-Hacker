.class public Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;
.super Lcom/netease/nr/biz/plugin/plugin/util/a;


# instance fields
.field f:Lcom/netease/nr/biz/plugin/plugin/util/i;

.field g:Landroid/view/View;

.field h:Z

.field i:I

.field j:Landroid/content/Intent;

.field k:Z

.field private l:Lcom/netease/util/fragment/FragmentActivity;

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/plugin/util/a;-><init>()V

    return-void
.end method

.method public static a(Lcom/netease/util/fragment/FragmentActivity;Lcom/netease/nr/biz/plugin/plugin/util/i;Ljava/lang/String;IZ)Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;
    .locals 2

    invoke-static {p0, p2}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->a(Lcom/netease/util/fragment/FragmentActivity;Ljava/lang/String;)Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->a(Lcom/netease/nr/biz/plugin/plugin/util/i;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/netease/util/fragment/FragmentActivity;Ljava/lang/String;)Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

    invoke-direct {v0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;-><init>()V

    :goto_0
    iput-object p0, v0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->a:Landroid/content/Context;

    iput-object p0, v0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->l:Lcom/netease/util/fragment/FragmentActivity;

    :goto_1
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/netease/util/i/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method static b(Lcom/netease/util/fragment/FragmentActivity;Lcom/netease/nr/biz/plugin/plugin/util/i;Ljava/lang/String;IZ)Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;
    .locals 2

    invoke-static {p0, p2}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->a(Lcom/netease/util/fragment/FragmentActivity;Ljava/lang/String;)Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->b(Lcom/netease/nr/biz/plugin/plugin/util/i;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method A()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->m:Z

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->E()V

    iget-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->m:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call super.onDestroyView()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->g:Landroid/view/View;

    return-void
.end method

.method B()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->m:Z

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->k()V

    iget-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->m:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call super.onRemove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method C()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->m:Z

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->e()V

    iget-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->m:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call super.onDestroy()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public D()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->m:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->n:Z

    return-void
.end method

.method public E()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->m:Z

    return-void
.end method

.method public F()Lcom/netease/nr/biz/plugin/plugin/util/i;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->f:Lcom/netease/nr/biz/plugin/plugin/util/i;

    return-object v0
.end method

.method public G()Lcom/netease/util/fragment/FragmentActivity;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->l:Lcom/netease/util/fragment/FragmentActivity;

    return-object v0
.end method

.method public H()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->g:Landroid/view/View;

    return-object v0
.end method

.method public I()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->j:Landroid/content/Intent;

    return-object v0
.end method

.method public J()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->n:Z

    return v0
.end method

.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/widget/FrameLayout;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/FrameLayout;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method a(Lcom/netease/nr/biz/plugin/plugin/util/i;IZ)Z
    .locals 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->f:Lcom/netease/nr/biz/plugin/plugin/util/i;

    iput p2, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->d:I

    iput-boolean p3, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->k:Z

    iput-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->o:Z

    iput-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->m:Z

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->u()Z

    move-result v1

    iget-boolean v2, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->m:Z

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call super.onInit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->a()I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->c:I

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->j()I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->i:I

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->g()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->j:Landroid/content/Intent;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()I
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->a()I

    move-result v0

    return v0
.end method

.method b(Lcom/netease/nr/biz/plugin/plugin/util/i;IZ)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->f:Lcom/netease/nr/biz/plugin/plugin/util/i;

    iput p2, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->d:I

    iput-boolean p3, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->k:Z

    iput-boolean v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->o:Z

    iput-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->m:Z

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->u()Z

    move-result v2

    iget-boolean v3, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->m:Z

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call super.onInit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->b()I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->c:I

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->i()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->j:Landroid/content/Intent;

    move v0, v1

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->m:Z

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->m:Z

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->j:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->l:Lcom/netease/util/fragment/FragmentActivity;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->j:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/netease/util/fragment/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public g()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->m:Z

    iput-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->n:Z

    return-void
.end method

.method public i()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->m:Z

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v0

    const-string v1, "PLUGIN"

    iget-object v2, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public u()Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->m:Z

    return v0
.end method

.method x()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->m:Z

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->d()V

    iget-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->m:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call super.onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method y()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->m:Z

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->h()V

    iget-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->m:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call super.onResume()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method z()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->m:Z

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->D()V

    iget-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->m:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call super.onPause()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
