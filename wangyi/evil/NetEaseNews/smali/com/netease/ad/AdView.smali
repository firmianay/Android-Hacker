.class public Lcom/netease/ad/AdView;
.super Landroid/widget/FrameLayout;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Lcom/netease/ad/a;

.field e:Lcom/netease/ad/b/j;

.field private f:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v1, 0x0

    const/16 v3, 0xff

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/netease/ad/AdView;->b:I

    iput v3, p0, Lcom/netease/ad/AdView;->c:I

    iput-object v1, p0, Lcom/netease/ad/AdView;->d:Lcom/netease/ad/a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ad/AdView;->f:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/netease/ad/AdView;->e:Lcom/netease/ad/b/j;

    iget-object v0, p0, Lcom/netease/ad/AdView;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://schemas.android.com/apk/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "textColor"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/netease/ad/AdView;->b:I

    const-string v1, "backgroundColor"

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/netease/ad/AdView;->a:I

    const-string v1, "backgroundTransparent"

    invoke-interface {p2, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/netease/ad/AdView;->c:I

    iget-object v1, p0, Lcom/netease/ad/AdView;->f:Ljava/util/HashMap;

    const-string v2, "category"

    const-string v3, "category"

    invoke-interface {p2, v0, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/netease/ad/AdView;->f:Ljava/util/HashMap;

    const-string v2, "location"

    const-string v3, "location"

    invoke-interface {p2, v0, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0}, Lcom/netease/ad/AdView;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    new-instance v0, Lcom/netease/ad/a;

    invoke-direct {v0}, Lcom/netease/ad/a;-><init>()V

    iput-object v0, p0, Lcom/netease/ad/AdView;->d:Lcom/netease/ad/a;

    iget-object v0, p0, Lcom/netease/ad/AdView;->d:Lcom/netease/ad/a;

    iget-object v1, p0, Lcom/netease/ad/AdView;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/netease/ad/a;->a(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/netease/ad/b/j;
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/AdView;->e:Lcom/netease/ad/b/j;

    return-object v0
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/netease/ad/AdView;->d:Lcom/netease/ad/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/ad/a;->b(Ljava/lang/String;)Lcom/netease/ad/b/j;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ad/AdView;->e:Lcom/netease/ad/b/j;

    iget-object v0, p0, Lcom/netease/ad/AdView;->e:Lcom/netease/ad/b/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/ad/h;

    invoke-direct {v0, p0}, Lcom/netease/ad/h;-><init>(Lcom/netease/ad/AdView;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/ad/AdView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netease/ad/AdView;->removeAllViews()V

    invoke-static {p0}, Lcom/netease/ad/b/l;->a(Lcom/netease/ad/AdView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/ad/AdView;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/netease/ad/b/f;->a()Lcom/netease/ad/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ad/AdView;->e:Lcom/netease/ad/b/j;

    invoke-virtual {v1}, Lcom/netease/ad/b/j;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ad/AdView;->e:Lcom/netease/ad/b/j;

    invoke-virtual {v2}, Lcom/netease/ad/b/j;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/ad/b/f;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/netease/ad/AdView;->a:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/netease/ad/AdView;->b:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/netease/ad/AdView;->c:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/netease/ad/AdView;->e:Lcom/netease/ad/b/j;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/ad/AdView;->b()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/netease/ad/AdView;->a:I

    return-void
.end method
