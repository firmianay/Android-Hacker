.class Lcom/netease/nr/phone/main/y;
.super Landroid/widget/LinearLayout;


# instance fields
.field final synthetic a:Lcom/netease/nr/phone/main/NewsTabPagerIndicator;


# direct methods
.method public constructor <init>(Lcom/netease/nr/phone/main/NewsTabPagerIndicator;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/phone/main/y;->a:Lcom/netease/nr/phone/main/NewsTabPagerIndicator;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/netease/nr/phone/main/y;->a:Lcom/netease/nr/phone/main/NewsTabPagerIndicator;

    invoke-static {v0}, Lcom/netease/nr/phone/main/NewsTabPagerIndicator;->a(Lcom/netease/nr/phone/main/NewsTabPagerIndicator;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/y;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/y;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/y;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/phone/main/y;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method
