.class public Lcom/netease/nr/base/view/DotIndicatorItem;
.super Landroid/widget/ImageView;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/nr/base/view/DotIndicatorItem;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/nr/base/view/DotIndicatorItem;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/nr/base/view/DotIndicatorItem;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/nr/base/view/DotIndicatorItem;->a:I

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/netease/nr/base/view/DotIndicatorItem;->a:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/netease/nr/base/view/DotIndicatorItem;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/DotIndicatorItem;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/DotIndicatorItem;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/netease/nr/base/view/DotIndicatorItem;->a:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, -0x3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/2addr v3, v4

    int-to-float v4, v3

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setColor(I)V

    iget v4, p0, Lcom/netease/nr/base/view/DotIndicatorItem;->a:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v4, v1, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
