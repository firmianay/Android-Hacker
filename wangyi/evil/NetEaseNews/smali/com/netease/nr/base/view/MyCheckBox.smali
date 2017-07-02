.class public Lcom/netease/nr/base/view/MyCheckBox;
.super Landroid/widget/CheckBox;

# interfaces
.implements Lcom/netease/nr/base/view/bt;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/netease/nr/base/view/MyCheckBox;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/netease/nr/base/view/MyCheckBox;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/netease/nr/base/view/MyCheckBox;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyCheckBox;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->isBold()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nr/base/view/MyCheckBox;->a:Z

    :cond_0
    invoke-static {p0}, Lcom/netease/nr/base/c/i;->a(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MyCheckBox;->a:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/CheckBox;->onAttachedToWindow()V

    invoke-static {p0}, Lcom/netease/nr/base/c/i;->b(Landroid/widget/TextView;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/CheckBox;->onDetachedFromWindow()V

    invoke-static {p0}, Lcom/netease/nr/base/c/i;->c(Landroid/widget/TextView;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyCheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netease/nr/base/c/p;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-super {p0, v0, p2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
