.class Lcom/netease/nr/biz/pics/i;
.super Lcom/netease/nr/base/view/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/netease/nr/base/view/d;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/netease/nr/base/view/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c0008

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/i;->a()Lcom/netease/util/j/a;

    move-result-object v2

    const v3, 0x7f07012f

    invoke-virtual {v2, v0, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    return-object v1
.end method
