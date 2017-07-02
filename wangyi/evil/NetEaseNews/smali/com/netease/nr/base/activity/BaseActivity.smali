.class public Lcom/netease/nr/base/activity/BaseActivity;
.super Lcom/netease/util/fragment/FragmentActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/util/fragment/FragmentActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/base/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "web"

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, ""

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v2, "newsapp://web/"

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v3, "param_url"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseWebFragment"

    move-object v5, v0

    invoke-static/range {v0 .. v5}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/nr/base/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BASEACTIVITY_SCREEN_ORIENTATION_PORTRAIT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/netease/util/i/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/activity/BaseActivity;->setRequestedOrientation(I)V

    :cond_1
    return-void
.end method

.method protected a(Lcom/netease/util/j/a;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/netease/util/fragment/FragmentActivity;->a(Lcom/netease/util/j/a;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/netease/nr/base/activity/BaseActivity;->o()Lcom/netease/util/j/a;

    move-result-object v2

    const v3, 0x7f070014

    invoke-virtual {v2, p0, v3}, Lcom/netease/util/j/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public b()Z
    .locals 1

    invoke-static {p0}, Lcom/netease/util/i/b;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/base/activity/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/activity/BaseApplication;

    invoke-virtual {v0}, Lcom/netease/nr/base/activity/BaseApplication;->c()V

    invoke-direct {p0, p1}, Lcom/netease/nr/base/activity/BaseActivity;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    invoke-virtual {p0}, Lcom/netease/nr/base/activity/BaseActivity;->a()V

    invoke-super {p0, p1}, Lcom/netease/util/fragment/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method
