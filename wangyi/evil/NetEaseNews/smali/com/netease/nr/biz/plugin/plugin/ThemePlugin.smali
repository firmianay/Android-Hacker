.class public Lcom/netease/nr/biz/plugin/plugin/ThemePlugin;
.super Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f02021b

    return v0
.end method

.method public a(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/FrameLayout;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/ThemePlugin;->F()Lcom/netease/nr/biz/plugin/plugin/util/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->h()Lcom/netease/util/j/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/ThemePlugin;->n()I

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/ThemePlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/util/j/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b022b

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f07002f

    invoke-virtual {v1, p2, v0}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    return v3

    :cond_0
    const v0, 0x7f0b022a

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    const v0, 0x7f020231

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/ThemePlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b022a

    invoke-virtual {v0, v1}, Lcom/netease/util/fragment/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 4

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/ThemePlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v0

    const-string v1, "UC"

    const-string v2, "\u591c\u95f4\u6a21\u5f0f"

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/ThemePlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/ThemePlugin;->F()Lcom/netease/nr/biz/plugin/plugin/util/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/nr/biz/plugin/plugin/util/i;->h()Lcom/netease/util/j/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netease/util/j/a;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "default_theme"

    invoke-virtual {v2, v0, v3}, Lcom/netease/util/j/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Lcom/netease/nr/biz/plugin/plugin/util/i;->i()V

    return-void

    :cond_0
    const-string v3, "night_theme"

    invoke-virtual {v2, v0, v3}, Lcom/netease/util/j/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public k()V
    .locals 3

    invoke-super {p0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->k()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/ThemePlugin;->F()Lcom/netease/nr/biz/plugin/plugin/util/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->h()Lcom/netease/util/j/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/ThemePlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v1

    const-string v2, "default_theme"

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/ThemePlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b022a

    invoke-virtual {v0, v1}, Lcom/netease/util/fragment/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/ThemePlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v0

    const-string v1, "PLUGIN"

    const-string v2, "\u4e3b\u9898\u5207\u6362"

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
