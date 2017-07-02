.class public Lcom/netease/nr/base/view/LineIndicator;
.super Lcom/netease/nr/base/view/Indicator;


# instance fields
.field private a:Lcom/netease/nr/base/view/ai;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, -0x23ffe2

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/base/view/Indicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/netease/nr/base/view/LineIndicator;->b:I

    iput v0, p0, Lcom/netease/nr/base/view/LineIndicator;->c:I

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/LineIndicator;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const v0, -0x23ffe2

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/nr/base/view/Indicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/netease/nr/base/view/LineIndicator;->b:I

    iput v0, p0, Lcom/netease/nr/base/view/LineIndicator;->c:I

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/LineIndicator;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/base/view/LineIndicator;)I
    .locals 1

    iget v0, p0, Lcom/netease/nr/base/view/LineIndicator;->b:I

    return v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/LineIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/LineIndicator;->b:I

    invoke-virtual {p0}, Lcom/netease/nr/base/view/LineIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/LineIndicator;->c:I

    new-instance v0, Lcom/netease/nr/base/view/ai;

    invoke-direct {v0, p0, p1}, Lcom/netease/nr/base/view/ai;-><init>(Lcom/netease/nr/base/view/LineIndicator;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/LineIndicator;->a:Lcom/netease/nr/base/view/ai;

    iget-object v0, p0, Lcom/netease/nr/base/view/LineIndicator;->a:Lcom/netease/nr/base/view/ai;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ai;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/netease/nr/base/view/LineIndicator;->a:Lcom/netease/nr/base/view/ai;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/base/view/LineIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/nr/base/view/LineIndicator;)I
    .locals 1

    iget v0, p0, Lcom/netease/nr/base/view/LineIndicator;->c:I

    return v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/LineIndicator;->a:Lcom/netease/nr/base/view/ai;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/LineIndicator;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ai;->a(I)V

    return-void
.end method

.method protected b()V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/base/view/LineIndicator;->a:Lcom/netease/nr/base/view/ai;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/LineIndicator;->c()I

    move-result v1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/LineIndicator;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/nr/base/view/ai;->a(II)V

    return-void
.end method
