.class public Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;
.super Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

# interfaces
.implements Lcom/netease/nr/biz/plugin/c/h;


# instance fields
.field private l:Ljava/lang/String;

.field private m:I

.field private n:Lcom/netease/nr/biz/plugin/plugin/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->v()V

    return-void
.end method

.method private v()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->l:Ljava/lang/String;

    iput v4, p0, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->m:I

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/netease/nr/biz/plugin/c/f;->a(Landroid/content/Context;Z)[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v4

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v2, v1, v4, v0}, Lcom/netease/nr/biz/plugin/c/ad;->a(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "temperature"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\\u2103"

    const-string v3, "\u00b0"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->l:Ljava/lang/String;

    sget-object v1, Lcom/netease/nr/biz/plugin/c/ad;->a:Ljava/util/HashMap;

    const-string v2, "climate"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->m:I

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->F()Lcom/netease/nr/biz/plugin/plugin/util/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->i()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f02021c

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->v()V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->n:Lcom/netease/nr/biz/plugin/plugin/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->n:Lcom/netease/nr/biz/plugin/plugin/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/plugin/plugin/f;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/netease/nr/biz/plugin/plugin/f;

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/netease/nr/biz/plugin/plugin/f;-><init>(Landroid/content/Context;Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;)V

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->n:Lcom/netease/nr/biz/plugin/plugin/f;

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->n:Lcom/netease/nr/biz/plugin/plugin/f;

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method

.method public a(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/FrameLayout;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->F()Lcom/netease/nr/biz/plugin/plugin/util/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/util/fragment/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->h()Lcom/netease/util/j/a;

    move-result-object v4

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b022d

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->m:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->m:I

    invoke-virtual {v4, v3, v0}, Lcom/netease/util/j/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1, v5, v5, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v4, v3}, Lcom/netease/util/j/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x7d

    :goto_2
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->n()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Lcom/netease/util/j/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    const v0, 0x7f07002f

    invoke-virtual {v4, p2, v0}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->l:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    :cond_3
    const/16 v0, 0xff

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method

.method public b()I
    .locals 1

    const v0, 0x7f020232

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b022d

    invoke-virtual {v0, v1}, Lcom/netease/util/fragment/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 2

    invoke-super {p0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->d()V

    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->v()V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->n:Lcom/netease/nr/biz/plugin/plugin/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->n:Lcom/netease/nr/biz/plugin/plugin/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/plugin/plugin/f;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/netease/nr/biz/plugin/plugin/f;

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/netease/nr/biz/plugin/plugin/f;-><init>(Landroid/content/Context;Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;)V

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->n:Lcom/netease/nr/biz/plugin/plugin/f;

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->n:Lcom/netease/nr/biz/plugin/plugin/f;

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    :cond_1
    invoke-static {p0}, Lcom/netease/nr/biz/plugin/c/f;->a(Lcom/netease/nr/biz/plugin/c/h;)V

    return-void
.end method

.method public e()V
    .locals 2

    invoke-super {p0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->e()V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->n:Lcom/netease/nr/biz/plugin/plugin/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->n:Lcom/netease/nr/biz/plugin/plugin/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/plugin/plugin/f;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->n:Lcom/netease/nr/biz/plugin/plugin/f;

    :cond_0
    invoke-static {p0}, Lcom/netease/nr/biz/plugin/c/f;->b(Lcom/netease/nr/biz/plugin/c/h;)V

    return-void
.end method

.method public f()V
    .locals 7

    const/4 v2, 0x0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/netease/nr/biz/plugin/c/f;->a(Landroid/content/Context;Z)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "province"

    aget-object v2, v0, v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "city"

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    const-string v1, "PersonCenterMainFragment"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/plugin/c/aa;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WeatherFragment"

    const/4 v5, 0x0

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/util/fragment/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v0

    const-string v1, "view_weather"

    const-string v2, "view_weather"

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v0

    const-string v1, "UC"

    const-string v2, "\u5929\u6c14"

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b022d

    invoke-virtual {v0, v1}, Lcom/netease/util/fragment/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/WeatherPlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v0

    const-string v1, "PLUGIN"

    const-string v2, "\u672c\u5730\u5929\u6c14"

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
