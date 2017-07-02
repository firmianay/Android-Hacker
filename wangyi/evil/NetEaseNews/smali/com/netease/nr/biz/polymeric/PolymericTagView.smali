.class public Lcom/netease/nr/biz/polymeric/PolymericTagView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/netease/nr/biz/polymeric/PolymericTagView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/netease/nr/biz/polymeric/PolymericTagView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/netease/nr/biz/polymeric/PolymericTagView;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/polymeric/PolymericTagView;->setOrientation(I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/PolymericTagView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0, v2, v0, v2}, Lcom/netease/nr/biz/polymeric/PolymericTagView;->setPadding(IIII)V

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/polymeric/PolymericTagView;->setGravity(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/util/j/a;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericTagView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericTagView;->a:Landroid/widget/TextView;

    const v1, 0x7f070105

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericTagView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericTagView;->b:Landroid/widget/TextView;

    const v1, 0x7f070107

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericTagView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericTagView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v2, -0x2

    const/16 v5, 0x13

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/PolymericTagView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v2, Lcom/netease/nr/base/view/MyTextView;

    invoke-direct {v2, v0}, Lcom/netease/nr/base/view/MyTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/netease/nr/biz/polymeric/PolymericTagView;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netease/nr/biz/polymeric/PolymericTagView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/PolymericTagView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/netease/nr/biz/polymeric/PolymericTagView;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/netease/nr/biz/polymeric/PolymericTagView;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v2, Lcom/netease/nr/base/view/MyTextView;

    invoke-direct {v2, v0}, Lcom/netease/nr/base/view/MyTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/netease/nr/biz/polymeric/PolymericTagView;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericTagView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/PolymericTagView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericTagView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/PolymericTagView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070107

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericTagView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericTagView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericTagView;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/biz/polymeric/PolymericTagView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericTagView;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/biz/polymeric/PolymericTagView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
