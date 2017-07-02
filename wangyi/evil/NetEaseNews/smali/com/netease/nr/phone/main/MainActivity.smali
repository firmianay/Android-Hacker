.class public Lcom/netease/nr/phone/main/MainActivity;
.super Lcom/netease/nr/biz/main/MainActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lcom/netease/nr/base/c/u;
.implements Lcom/netease/nr/base/view/aw;
.implements Lcom/netease/nr/biz/sns/a/d/b;


# instance fields
.field private b:Lcom/netease/nr/base/view/MySlidingDrawer;

.field private c:Landroid/widget/TabHost;

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Lcom/netease/nr/base/c/t;

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/biz/main/MainActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/phone/main/MainActivity;->d:Z

    return-void
.end method

.method private d(Z)V
    .locals 8

    const v7, 0x7f0c02c8

    const/16 v6, 0x8

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/netease/nr/phone/main/MainActivity;->e:Landroid/view/View;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/netease/nr/phone/main/MainActivity;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/MainActivity;->c_()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    const v0, 0x7f0c0009

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/ad/AdImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/netease/nr/base/activity/BaseApplication;

    invoke-virtual {v1}, Lcom/netease/nr/base/activity/BaseApplication;->d()Lcom/netease/ad/e;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/netease/ad/e;->a()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "not_adsdk_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v3, "not_adsdk_"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/ad/AdImageView;->a(Ljava/lang/String;)Z

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    invoke-static {p0, v3}, Lcom/netease/nr/biz/ad/o;->a(Landroid/content/Context;Lcom/netease/ad/e;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/netease/nr/phone/main/MainActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/MainActivity;->c_()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/phone/main/a;

    invoke-direct {v1, p0, v2}, Lcom/netease/nr/phone/main/a;-><init>(Lcom/netease/nr/phone/main/MainActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method private j()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/netease/nr/biz/sns/a/d/a;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    const v0, 0x7f0b0043

    invoke-virtual {p0, v0}, Lcom/netease/nr/phone/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "share_content"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "share_pic"

    const-string v2, "ad_share_img"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "weixin"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "weixin_timeline"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "yixin"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "yixin_timeline"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "weixin_img_url"

    const-string v3, "ad_share_img"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "share_other"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-object v1
.end method

.method public a(Lcom/netease/nr/base/c/t;Ljava/lang/String;)V
    .locals 6

    new-instance v1, Lcom/netease/nr/biz/sns/a/d/a;

    invoke-direct {v1}, Lcom/netease/nr/biz/sns/a/d/a;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "yixin"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "yixin_timeline"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "weixin"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "weixin_timeline"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "netease"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "sina"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "qq"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "from_where"

    sget-object v0, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sns_types"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/netease/nr/biz/sns/a/d/a;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v1, p0}, Lcom/netease/nr/biz/sns/a/d/a;->a(Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method protected a(Lcom/netease/util/j/a;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/nr/biz/main/MainActivity;->a(Lcom/netease/util/j/a;)V

    const v0, 0x7f0c02c5

    invoke-virtual {p0, v0}, Lcom/netease/nr/phone/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070014

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->b(Landroid/view/View;I)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method protected a(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v0, 0x1

    if-ne p1, v3, :cond_5

    invoke-direct {p0}, Lcom/netease/nr/phone/main/MainActivity;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v2}, Lcom/netease/nr/phone/main/MainActivity;->d(Z)V

    move v1, v0

    :goto_0
    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/netease/nr/biz/main/MainActivity;->a(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    if-nez v1, :cond_4

    if-ne p1, v3, :cond_3

    if-nez v1, :cond_4

    iget-object v3, p0, Lcom/netease/nr/phone/main/MainActivity;->c:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v3

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/netease/nr/phone/main/MainActivity;->c:Landroid/widget/TabHost;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :goto_1
    return v0

    :cond_1
    iget-object v1, p0, Lcom/netease/nr/phone/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/nr/phone/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->c()V

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/netease/nr/phone/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->h()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/netease/nr/phone/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->f()V

    move v1, v0

    goto :goto_0

    :cond_3
    const/16 v2, 0x52

    if-ne p1, v2, :cond_4

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/MainActivity;->i()V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method protected a(Landroid/view/GestureDetector;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/phone/main/MainActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/netease/nr/biz/main/MainActivity;->a(Landroid/view/GestureDetector;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Z)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v0, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    const-string v2, "NewsColumnRecommendFragment"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "pc"

    invoke-static {v1, v0, v2}, Lcom/netease/nr/base/c/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OPEN_PC"

    const-string v1, "\u4e2a\u4eba\u4e2d\u5fc3"

    invoke-static {p0, v0, v1}, Lcom/netease/nr/base/c/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method protected e()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/nr/phone/main/MainActivity;->d(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method protected f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->a()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->d()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/16 v2, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/netease/nr/phone/main/MainActivity;->d(Z)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/netease/nr/phone/main/MainActivity;->d(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/netease/nr/phone/main/MainActivity;->f:Lcom/netease/nr/base/c/t;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/netease/nr/phone/main/MainActivity;->f:Lcom/netease/nr/base/c/t;

    invoke-virtual {v3, v0}, Lcom/netease/nr/base/c/t;->cancel(Z)Z

    :cond_1
    invoke-direct {p0}, Lcom/netease/nr/phone/main/MainActivity;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/netease/nr/phone/main/MainActivity;->e:Landroid/view/View;

    const v4, 0x7f0c02c8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v4, Lcom/netease/nr/base/c/t;

    iget-object v5, p0, Lcom/netease/nr/phone/main/MainActivity;->e:Landroid/view/View;

    const-string v6, "ad_share_img"

    invoke-direct {v4, p0, v5, v6, p0}, Lcom/netease/nr/base/c/t;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/netease/nr/base/c/u;)V

    iput-object v4, p0, Lcom/netease/nr/phone/main/MainActivity;->f:Lcom/netease/nr/base/c/t;

    iget-object v4, p0, Lcom/netease/nr/phone/main/MainActivity;->f:Lcom/netease/nr/base/c/t;

    invoke-virtual {v4}, Lcom/netease/nr/base/c/t;->a()V

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x7f0c02c3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/netease/nr/biz/main/MainActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/MainActivity;->n()V

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/MainActivity;->p()V

    const v0, 0x7f0300f7

    invoke-virtual {p0, v0}, Lcom/netease/nr/phone/main/MainActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/netease/util/i/b;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    const v0, 0x7f0c02c1

    invoke-virtual {p0, v0}, Lcom/netease/nr/phone/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/MySlidingDrawer;

    iput-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    iget-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    const v1, 0x3f1eb852    # 0.62f

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(F)V

    iget-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->b(F)V

    iget-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0, v4}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(Z)V

    iget-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(Lcom/netease/nr/base/view/aw;)V

    const v0, 0x7f0c02c2

    invoke-virtual {p0, v0}, Lcom/netease/nr/phone/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->c:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->c:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    iget-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->c:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TabWidget;->setOrientation(I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    new-instance v1, Lcom/netease/util/fragment/l;

    iget-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->c:Landroid/widget/TabHost;

    const v3, 0x7f0c02c5

    invoke-direct {v1, p0, v0, v3}, Lcom/netease/util/fragment/l;-><init>(Lcom/netease/util/fragment/FragmentActivity;Landroid/widget/TabHost;I)V

    invoke-virtual {v1, p0}, Lcom/netease/util/fragment/l;->a(Landroid/widget/TabHost$OnTabChangeListener;)V

    const-string v3, "navi_news"

    const-class v4, Lcom/netease/nr/phone/main/i;

    const v5, 0x7f0200d1

    const v6, 0x7f0200d2

    const v7, 0x7f0b0023

    const v8, 0x7f0b002c

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/netease/nr/phone/main/MainActivity;->a(Lcom/netease/util/fragment/l;Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/Class;IIII)V

    const-string v3, "navi_read"

    const-class v4, Lcom/netease/nr/phone/main/c;

    const v5, 0x7f0200d5

    const v6, 0x7f0200d6

    const v7, 0x7f0b0024

    const v8, 0x7f0b002d

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/netease/nr/phone/main/MainActivity;->a(Lcom/netease/util/fragment/l;Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/Class;IIII)V

    const-string v3, "navi_local_news"

    const-class v4, Lcom/netease/nr/phone/main/b;

    const v5, 0x7f0200cd

    const v6, 0x7f0200ce

    const v7, 0x7f0b0025

    const v8, 0x7f0b002e

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/netease/nr/phone/main/MainActivity;->a(Lcom/netease/util/fragment/l;Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/Class;IIII)V

    const-string v3, "navi_ties"

    const-class v4, Lcom/netease/nr/phone/main/r;

    const v5, 0x7f0200d7

    const v6, 0x7f0200d8

    const v7, 0x7f0b0028

    const v8, 0x7f0b0031

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/netease/nr/phone/main/MainActivity;->a(Lcom/netease/util/fragment/l;Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/Class;IIII)V

    const-string v3, "navi_pics"

    const-class v4, Lcom/netease/nr/phone/main/n;

    const v5, 0x7f0200d3

    const v6, 0x7f0200d4

    const v7, 0x7f0b0026

    const v8, 0x7f0b002f

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/netease/nr/phone/main/MainActivity;->a(Lcom/netease/util/fragment/l;Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/Class;IIII)V

    const-string v3, "navi_ugc"

    const-class v4, Lcom/netease/nr/phone/main/u;

    const v5, 0x7f0200d9

    const v6, 0x7f0200da

    const v7, 0x7f0b0027

    const v8, 0x7f0b0030

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/netease/nr/phone/main/MainActivity;->a(Lcom/netease/util/fragment/l;Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/Class;IIII)V

    const-string v3, "navi_vote"

    const-class v4, Lcom/netease/nr/phone/main/x;

    const v5, 0x7f0200db

    const v6, 0x7f0200dc

    const v7, 0x7f0b0029

    const v8, 0x7f0b0032

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/netease/nr/phone/main/MainActivity;->a(Lcom/netease/util/fragment/l;Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/Class;IIII)V

    const-string v3, "navi_polymeric"

    const-class v4, Lcom/netease/nr/phone/main/q;

    const v5, 0x7f0200cb

    const v6, 0x7f0200cc

    const v7, 0x7f0b002b

    const v8, 0x7f0b0034

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/netease/nr/phone/main/MainActivity;->a(Lcom/netease/util/fragment/l;Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/Class;IIII)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->c:Landroid/widget/TabHost;

    const-string v1, "main_activity_tab_index"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_1
    const v0, 0x7f0c02c6

    invoke-virtual {p0, v0}, Lcom/netease/nr/phone/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->e:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->e:Landroid/view/View;

    const v1, 0x7f0c0009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x42a40000    # 82.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->e:Landroid/view/View;

    const v1, 0x7f0c0060

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x41900000    # 18.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->e:Landroid/view/View;

    const v1, 0x7f0c02c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->c:Landroid/widget/TabHost;

    const v1, 0x7f0c02c3

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/netease/nr/biz/main/MainActivity;->onDestroy()V

    iget-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->f:Lcom/netease/nr/base/c/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->f:Lcom/netease/nr/base/c/t;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/c/t;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/phone/main/MainActivity;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/biz/main/MainActivity;->onResume()V

    iget-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->c:Landroid/widget/TabHost;

    invoke-virtual {p0, v0}, Lcom/netease/nr/phone/main/MainActivity;->a(Landroid/widget/TabHost;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/nr/biz/main/MainActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "main_activity_tab_index"

    iget-object v1, p0, Lcom/netease/nr/phone/main/MainActivity;->c:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->c:Landroid/widget/TabHost;

    invoke-virtual {p0, v0, p1}, Lcom/netease/nr/phone/main/MainActivity;->a(Landroid/widget/TabHost;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/netease/nr/phone/main/MainActivity;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/phone/main/MainActivity;->d:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/phone/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->c()V

    goto :goto_0
.end method
