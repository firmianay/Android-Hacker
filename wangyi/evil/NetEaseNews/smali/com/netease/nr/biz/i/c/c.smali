.class Lcom/netease/nr/biz/i/c/c;
.super Landroid/widget/SimpleAdapter;


# instance fields
.field private a:Lcom/netease/util/j/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-static {p1}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/i/c/c;->a:Lcom/netease/util/j/a;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0c0008

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f0c0272

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0022

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/netease/nr/biz/i/c/c;->a:Lcom/netease/util/j/a;

    const v4, 0x7f0700ab

    invoke-virtual {v3, v0, v4}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v3, p0, Lcom/netease/nr/biz/i/c/c;->a:Lcom/netease/util/j/a;

    const v4, 0x7f0202ce

    invoke-virtual {v3, v0, v4}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/c/c;->a:Lcom/netease/util/j/a;

    const v3, 0x7f020030

    invoke-virtual {v0, v1, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    return-object v2
.end method
