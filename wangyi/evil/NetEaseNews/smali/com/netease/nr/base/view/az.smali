.class public Lcom/netease/nr/base/view/az;
.super Landroid/widget/Toast;


# static fields
.field private static a:Lcom/netease/nr/base/view/az;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/netease/nr/base/view/az;->a:Lcom/netease/nr/base/view/az;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/netease/nr/base/view/az;
    .locals 1

    sget-object v0, Lcom/netease/nr/base/view/az;->a:Lcom/netease/nr/base/view/az;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/base/view/az;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/view/az;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/netease/nr/base/view/az;->a:Lcom/netease/nr/base/view/az;

    :cond_0
    sget-object v0, Lcom/netease/nr/base/view/az;->a:Lcom/netease/nr/base/view/az;

    return-object v0
.end method

.method public static a(Landroid/content/Context;II)Lcom/netease/nr/base/view/az;
    .locals 3

    invoke-static {p0}, Lcom/netease/nr/base/view/az;->b(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030109

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c02de

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    const/16 v0, 0x11

    invoke-static {p0, v1, v0, p2}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;Landroid/view/View;II)Lcom/netease/nr/base/view/az;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;II)Lcom/netease/nr/base/view/az;
    .locals 1

    invoke-static {p0}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/az;->setView(Landroid/view/View;)V

    invoke-virtual {v0, p3}, Lcom/netease/nr/base/view/az;->setDuration(I)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Lcom/netease/nr/base/view/az;
    .locals 3

    invoke-static {p0}, Lcom/netease/nr/base/view/az;->b(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030109

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c02de

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x11

    invoke-static {p0, v1, v0, p2}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;Landroid/view/View;II)Lcom/netease/nr/base/view/az;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3

    invoke-static {p0}, Lcom/netease/nr/base/view/az;->b(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030109

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c02de

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    const/16 v0, 0x11

    invoke-static {p0, v1, v0}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;I)V
    .locals 2

    invoke-static {p0}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/az;->setView(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/az;->setDuration(I)V

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/netease/nr/base/view/az;->b(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030109

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c02de

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x11

    invoke-static {p0, v1, v0}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method private static b(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method
