.class public Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;
.super Landroid/widget/RelativeLayout$LayoutParams;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v0, p0, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;->a:I

    iput v0, p0, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;->a:I

    iput v0, p0, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput v0, p0, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;->a:I

    iput v0, p0, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;->b:I

    return-void
.end method
