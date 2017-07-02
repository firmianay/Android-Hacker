.class Lcom/netease/nr/biz/plugin/plugin/util/p;
.super Lcom/netease/nr/biz/plugin/plugin/util/k;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/plugin/plugin/util/o;


# direct methods
.method public constructor <init>(Lcom/netease/nr/biz/plugin/plugin/util/o;Landroid/content/Context;Lcom/netease/util/j/a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/plugin/plugin/util/p;->a:Lcom/netease/nr/biz/plugin/plugin/util/o;

    invoke-direct {p0, p2, p3, p4}, Lcom/netease/nr/biz/plugin/plugin/util/k;-><init>(Landroid/content/Context;Lcom/netease/util/j/a;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/netease/util/j/a;Landroid/view/View;Lcom/netease/nr/biz/plugin/plugin/util/a;)V
    .locals 3

    const v0, 0x7f0c0023

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/p;->a:Lcom/netease/nr/biz/plugin/plugin/util/o;

    invoke-static {v1}, Lcom/netease/nr/biz/plugin/plugin/util/o;->a(Lcom/netease/nr/biz/plugin/plugin/util/o;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {p3}, Lcom/netease/nr/biz/plugin/plugin/util/a;->p()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/p;->a:Lcom/netease/nr/biz/plugin/plugin/util/o;

    invoke-virtual {v1}, Lcom/netease/nr/biz/plugin/plugin/util/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f020222

    invoke-virtual {p1, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
