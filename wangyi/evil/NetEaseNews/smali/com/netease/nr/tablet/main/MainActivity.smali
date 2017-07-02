.class public Lcom/netease/nr/tablet/main/MainActivity;
.super Lcom/netease/nr/biz/main/MainActivity;

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lcom/netease/nr/base/view/aw;


# instance fields
.field private b:Lcom/netease/nr/base/view/MySlidingDrawer;

.field private c:Landroid/widget/TabHost;

.field private d:Z

.field private e:Lcom/netease/util/fragment/l;

.field private f:Z

.field private g:Lcom/netease/nr/base/view/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/biz/main/MainActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->d:Z

    return-void
.end method

.method private d(Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected a(Lcom/netease/util/j/a;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/netease/nr/biz/main/MainActivity;->a(Lcom/netease/util/j/a;)V

    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->g:Lcom/netease/nr/base/view/a;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/a;->a(Lcom/netease/util/j/a;)V

    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->g:Lcom/netease/nr/base/view/a;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/a;->d()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f02033e

    invoke-virtual {p1, p0, v1}, Lcom/netease/util/j/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->g:Lcom/netease/nr/base/view/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const v0, 0x7f0c0081

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f02003c

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    const v0, 0x7f0c008e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0201c6

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method protected a(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/biz/main/MainActivity;->a(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/netease/nr/tablet/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v2}, Lcom/netease/nr/base/view/MySlidingDrawer;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/netease/nr/tablet/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->c()V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/netease/nr/tablet/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v2}, Lcom/netease/nr/base/view/MySlidingDrawer;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/netease/nr/tablet/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->f()V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public b(Z)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/MainActivity;->getApplicationContext()Landroid/content/Context;

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

.method public h()Lcom/netease/nr/base/view/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->g:Lcom/netease/nr/base/view/a;

    return-object v0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->a()V

    return-void
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->g()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->h()Z

    move-result v0

    return v0
.end method

.method public l()V
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/MainActivity;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->d()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netease/nr/tablet/main/MainActivity;->d(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const v3, 0x3e99999a    # 0.3f

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-super {p0, p1}, Lcom/netease/nr/biz/main/MainActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/MainActivity;->n()V

    iput-boolean v10, p0, Lcom/netease/nr/tablet/main/MainActivity;->f:Z

    if-eqz p1, :cond_0

    iput-boolean v9, p0, Lcom/netease/nr/tablet/main/MainActivity;->f:Z

    :cond_0
    const v0, 0x7f030101

    invoke-virtual {p0, v0}, Lcom/netease/nr/tablet/main/MainActivity;->setContentView(I)V

    new-instance v0, Lcom/netease/nr/base/view/a;

    const/high16 v1, 0x7f0c0000

    invoke-virtual {p0, v1}, Lcom/netease/nr/tablet/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netease/nr/base/view/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->g:Lcom/netease/nr/base/view/a;

    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->g:Lcom/netease/nr/base/view/a;

    invoke-virtual {v0, v9}, Lcom/netease/nr/base/view/a;->d(Z)V

    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->g:Lcom/netease/nr/base/view/a;

    invoke-virtual {v0, v9}, Lcom/netease/nr/base/view/a;->c(Z)V

    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->g:Lcom/netease/nr/base/view/a;

    const-string v1, ""

    const v2, 0x7f020003

    invoke-virtual {v0, v9, v1, v2}, Lcom/netease/nr/base/view/a;->a(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/MainActivity;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->g:Lcom/netease/nr/base/view/a;

    const v1, 0x7f030042

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/a;->a(Lcom/netease/nr/base/view/a;I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/tablet/main/MainActivity;->g:Lcom/netease/nr/base/view/a;

    invoke-virtual {v1, v10, v0}, Lcom/netease/nr/base/view/a;->a(ILandroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->g:Lcom/netease/nr/base/view/a;

    invoke-virtual {v0, v9, v10}, Lcom/netease/nr/base/view/a;->a(IZ)V

    const v0, 0x7f0c02c1

    invoke-virtual {p0, v0}, Lcom/netease/nr/tablet/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/MySlidingDrawer;

    iput-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/MainActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    const v1, 0x3e3851ec    # 0.18f

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(F)V

    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0, v3}, Lcom/netease/nr/base/view/MySlidingDrawer;->b(F)V

    :goto_0
    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0, v9}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(Z)V

    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(Lcom/netease/nr/base/view/aw;)V

    const v0, 0x7f0c02c2

    invoke-virtual {p0, v0}, Lcom/netease/nr/tablet/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->c:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->c:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->c:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TabWidget;->setOrientation(I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    new-instance v1, Lcom/netease/util/fragment/l;

    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->c:Landroid/widget/TabHost;

    const v3, 0x7f0c02d3

    invoke-direct {v1, p0, v0, v3}, Lcom/netease/util/fragment/l;-><init>(Lcom/netease/util/fragment/FragmentActivity;Landroid/widget/TabHost;I)V

    iput-object v1, p0, Lcom/netease/nr/tablet/main/MainActivity;->e:Lcom/netease/util/fragment/l;

    invoke-virtual {v1, p0}, Lcom/netease/util/fragment/l;->a(Landroid/widget/TabHost$OnTabChangeListener;)V

    const-string v3, "navi_news"

    const-class v4, Lcom/netease/nr/tablet/main/f;

    const v5, 0x7f0200d1

    const v6, 0x7f0200d2

    const v7, 0x7f0b0023

    const v8, 0x7f0b002c

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/netease/nr/tablet/main/MainActivity;->a(Lcom/netease/util/fragment/l;Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/Class;IIII)V

    const-string v3, "navi_read"

    const-class v4, Lcom/netease/nr/tablet/main/b;

    const v5, 0x7f0200d5

    const v6, 0x7f0200d6

    const v7, 0x7f0b0024

    const v8, 0x7f0b002d

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/netease/nr/tablet/main/MainActivity;->a(Lcom/netease/util/fragment/l;Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/Class;IIII)V

    const-string v3, "navi_local_news"

    const-class v4, Lcom/netease/nr/tablet/main/a;

    const v5, 0x7f0200cd

    const v6, 0x7f0200ce

    const v7, 0x7f0b0025

    const v8, 0x7f0b002e

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/netease/nr/tablet/main/MainActivity;->a(Lcom/netease/util/fragment/l;Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/Class;IIII)V

    const-string v3, "navi_ties"

    const-class v4, Lcom/netease/nr/tablet/main/k;

    const v5, 0x7f0200d7

    const v6, 0x7f0200d8

    const v7, 0x7f0b0028

    const v8, 0x7f0b0031

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/netease/nr/tablet/main/MainActivity;->a(Lcom/netease/util/fragment/l;Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/Class;IIII)V

    const-string v3, "navi_pics"

    const-class v4, Lcom/netease/nr/tablet/main/i;

    const v5, 0x7f0200d3

    const v6, 0x7f0200d4

    const v7, 0x7f0b0026

    const v8, 0x7f0b002f

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/netease/nr/tablet/main/MainActivity;->a(Lcom/netease/util/fragment/l;Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/Class;IIII)V

    const-string v3, "navi_ugc"

    const-class v4, Lcom/netease/nr/tablet/main/l;

    const v5, 0x7f0200d9

    const v6, 0x7f0200da

    const v7, 0x7f0b0027

    const v8, 0x7f0b0030

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/netease/nr/tablet/main/MainActivity;->a(Lcom/netease/util/fragment/l;Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/Class;IIII)V

    const-string v3, "navi_vote"

    const-class v4, Lcom/netease/nr/tablet/main/m;

    const v5, 0x7f0200db

    const v6, 0x7f0200dc

    const v7, 0x7f0b0029

    const v8, 0x7f0b0032

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/netease/nr/tablet/main/MainActivity;->a(Lcom/netease/util/fragment/l;Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/Class;IIII)V

    const-string v3, "navi_polymeric"

    const-class v4, Lcom/netease/nr/tablet/main/j;

    const v5, 0x7f0200cb

    const v6, 0x7f0200cc

    const v7, 0x7f0b002b

    const v8, 0x7f0b0034

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/netease/nr/tablet/main/MainActivity;->a(Lcom/netease/util/fragment/l;Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/Class;IIII)V

    iget-boolean v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->c:Landroid/widget/TabHost;

    const-string v1, "main_activity_tab_index"

    invoke-virtual {p1, v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/MainActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v10}, Lcom/netease/nr/tablet/main/MainActivity;->d(Z)V

    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->b()V

    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0, v9}, Lcom/netease/nr/base/view/MySlidingDrawer;->b(Z)V

    :goto_1
    iput-boolean v10, p0, Lcom/netease/nr/tablet/main/MainActivity;->f:Z

    return-void

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0, v3}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(F)V

    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    const v1, 0x3eeb851f    # 0.46f

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->b(F)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->b:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0, v10}, Lcom/netease/nr/base/view/MySlidingDrawer;->b(Z)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/netease/nr/biz/main/MainActivity;->onResume()V

    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->c:Landroid/widget/TabHost;

    invoke-virtual {p0, v0}, Lcom/netease/nr/tablet/main/MainActivity;->a(Landroid/widget/TabHost;)V

    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->g:Lcom/netease/nr/base/view/a;

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0c008e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/MainActivity;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/nr/biz/main/MainActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "main_activity_tab_index"

    iget-object v1, p0, Lcom/netease/nr/tablet/main/MainActivity;->c:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->e:Lcom/netease/util/fragment/l;

    invoke-virtual {v0, p1}, Lcom/netease/util/fragment/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v0, v1, Lcom/netease/nr/base/view/i;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/netease/nr/tablet/main/MainActivity;->g:Lcom/netease/nr/base/view/a;

    move-object v0, v1

    check-cast v0, Lcom/netease/nr/base/view/i;

    invoke-virtual {v2, v0}, Lcom/netease/nr/base/view/a;->a(Lcom/netease/nr/base/view/i;)V

    :cond_0
    instance-of v0, v1, Lcom/netease/util/fragment/o;

    if-eqz v0, :cond_3

    check-cast v1, Lcom/netease/util/fragment/o;

    invoke-virtual {v1}, Lcom/netease/util/fragment/o;->z()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->g:Lcom/netease/nr/base/view/a;

    const/4 v1, 0x1

    const-string v2, "navi_local_news"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/nr/base/view/a;->a(IZ)V

    iget-boolean v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->f:Z

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Lcom/netease/nr/tablet/main/MainActivity;->d:Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    instance-of v0, v1, Lcom/netease/util/fragment/u;

    if-eqz v0, :cond_1

    check-cast v1, Lcom/netease/util/fragment/u;

    invoke-virtual {v1}, Lcom/netease/util/fragment/u;->K()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->c:Landroid/widget/TabHost;

    invoke-virtual {p0, v0, p1}, Lcom/netease/nr/tablet/main/MainActivity;->a(Landroid/widget/TabHost;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/netease/nr/tablet/main/MainActivity;->d:Z

    if-eqz v0, :cond_5

    iput-boolean v3, p0, Lcom/netease/nr/tablet/main/MainActivity;->d:Z

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/MainActivity;->b()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/MainActivity;->i()V

    goto :goto_1
.end method
