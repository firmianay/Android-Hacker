.class Lcom/netease/nr/biz/j/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:[Landroid/widget/CheckBox;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/netease/nr/biz/j/d/a;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/j/d/a;[Landroid/widget/CheckBox;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/j/d/d;->c:Lcom/netease/nr/biz/j/d/a;

    iput-object p2, p0, Lcom/netease/nr/biz/j/d/d;->a:[Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/netease/nr/biz/j/d/d;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/d;->c:Lcom/netease/nr/biz/j/d/a;

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/d;->a:[Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/netease/nr/biz/j/d/d;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/netease/nr/biz/j/d/a;->a(Lcom/netease/nr/biz/j/d/a;[Landroid/widget/CheckBox;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/d;->c:Lcom/netease/nr/biz/j/d/a;

    invoke-virtual {v1}, Lcom/netease/nr/biz/j/d/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0b019e

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;II)Lcom/netease/nr/base/view/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/nr/base/view/az;->show()V

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/biz/j/d/d;->c:Lcom/netease/nr/biz/j/d/a;

    iget-object v2, p0, Lcom/netease/nr/biz/j/d/d;->c:Lcom/netease/nr/biz/j/d/a;

    invoke-static {v2}, Lcom/netease/nr/biz/j/d/a;->a(Lcom/netease/nr/biz/j/d/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/netease/nr/biz/j/d/a;->a(Lcom/netease/nr/biz/j/d/a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
