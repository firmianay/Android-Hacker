.class public Lcom/netease/util/fragment/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field final a:Ljava/util/HashMap;

.field b:Lcom/netease/util/fragment/i;

.field private final c:Lcom/netease/util/fragment/FragmentActivity;

.field private final d:Landroid/support/v4/app/FragmentManager;

.field private final e:Landroid/widget/TabHost;

.field private final f:I

.field private g:Landroid/widget/TabHost$OnTabChangeListener;


# direct methods
.method public constructor <init>(Lcom/netease/util/fragment/FragmentActivity;Landroid/support/v4/app/FragmentManager;Landroid/widget/TabHost;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/util/fragment/l;->a:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/netease/util/fragment/l;->c:Lcom/netease/util/fragment/FragmentActivity;

    iput-object p3, p0, Lcom/netease/util/fragment/l;->e:Landroid/widget/TabHost;

    iput p4, p0, Lcom/netease/util/fragment/l;->f:I

    iget-object v0, p0, Lcom/netease/util/fragment/l;->e:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    iput-object p2, p0, Lcom/netease/util/fragment/l;->d:Landroid/support/v4/app/FragmentManager;

    return-void
.end method

.method public constructor <init>(Lcom/netease/util/fragment/FragmentActivity;Landroid/widget/TabHost;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/netease/util/fragment/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/netease/util/fragment/l;-><init>(Lcom/netease/util/fragment/FragmentActivity;Landroid/support/v4/app/FragmentManager;Landroid/widget/TabHost;I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/netease/util/fragment/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/i;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/netease/util/fragment/i;->d:Landroid/support/v4/app/Fragment;

    goto :goto_1
.end method

.method public a()Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/netease/util/fragment/l;->e:Landroid/widget/TabHost;

    return-object v0
.end method

.method public a(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/util/fragment/l;->g:Landroid/widget/TabHost$OnTabChangeListener;

    return-void
.end method

.method public a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 4

    new-instance v0, Lcom/netease/util/fragment/m;

    iget-object v1, p0, Lcom/netease/util/fragment/l;->c:Lcom/netease/util/fragment/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/util/fragment/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netease/util/fragment/i;

    invoke-direct {v1, v0, p2, p3}, Lcom/netease/util/fragment/i;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/netease/util/fragment/l;->d:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    iput-object v2, v1, Lcom/netease/util/fragment/i;->d:Landroid/support/v4/app/Fragment;

    iget-object v2, v1, Lcom/netease/util/fragment/i;->d:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/netease/util/fragment/i;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/netease/util/fragment/l;->d:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, v1, Lcom/netease/util/fragment/i;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    iget-object v2, p0, Lcom/netease/util/fragment/l;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netease/util/fragment/l;->e:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/netease/util/fragment/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/i;

    iget-object v1, p0, Lcom/netease/util/fragment/l;->b:Lcom/netease/util/fragment/i;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/netease/util/fragment/l;->d:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/util/fragment/l;->b:Lcom/netease/util/fragment/i;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netease/util/fragment/l;->b:Lcom/netease/util/fragment/i;

    iget-object v2, v2, Lcom/netease/util/fragment/i;->d:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netease/util/fragment/l;->b:Lcom/netease/util/fragment/i;

    iget-object v2, v2, Lcom/netease/util/fragment/i;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/netease/util/fragment/i;->d:Landroid/support/v4/app/Fragment;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/netease/util/fragment/l;->c:Lcom/netease/util/fragment/FragmentActivity;

    iget-object v3, v0, Lcom/netease/util/fragment/i;->b:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/netease/util/fragment/i;->c:Landroid/os/Bundle;

    invoke-static {v2, v3, v4}, Lcom/netease/util/fragment/c;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/util/fragment/i;->d:Landroid/support/v4/app/Fragment;

    iget v2, p0, Lcom/netease/util/fragment/l;->f:I

    iget-object v3, v0, Lcom/netease/util/fragment/i;->d:Landroid/support/v4/app/Fragment;

    iget-object v4, v0, Lcom/netease/util/fragment/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/netease/util/fragment/l;->b:Lcom/netease/util/fragment/i;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    iget-object v1, p0, Lcom/netease/util/fragment/l;->d:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    iget-object v1, p0, Lcom/netease/util/fragment/l;->c:Lcom/netease/util/fragment/FragmentActivity;

    iget v2, p0, Lcom/netease/util/fragment/l;->f:I

    invoke-virtual {v1, v2}, Lcom/netease/util/fragment/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, v0, Lcom/netease/util/fragment/i;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_2
    iget-object v0, p0, Lcom/netease/util/fragment/l;->g:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/util/fragment/l;->g:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    iget-object v2, v0, Lcom/netease/util/fragment/i;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method
