.class Lcom/netease/nr/biz/j/d/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:[Landroid/widget/CheckBox;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netease/nr/biz/j/d/a/c;

.field final synthetic e:Landroid/view/View;

.field final synthetic f:Lcom/netease/nr/biz/j/d/a/d;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/j/d/a/d;[Landroid/widget/CheckBox;Ljava/util/List;Ljava/lang/String;Lcom/netease/nr/biz/j/d/a/c;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/j/d/a/g;->f:Lcom/netease/nr/biz/j/d/a/d;

    iput-object p2, p0, Lcom/netease/nr/biz/j/d/a/g;->a:[Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/netease/nr/biz/j/d/a/g;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/netease/nr/biz/j/d/a/g;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/nr/biz/j/d/a/g;->d:Lcom/netease/nr/biz/j/d/a/c;

    iput-object p6, p0, Lcom/netease/nr/biz/j/d/a/g;->e:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/g;->f:Lcom/netease/nr/biz/j/d/a/d;

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/g;->a:[Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/netease/nr/biz/j/d/a/g;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/netease/nr/biz/j/d/a/d;->a(Lcom/netease/nr/biz/j/d/a/d;[Landroid/widget/CheckBox;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/g;->f:Lcom/netease/nr/biz/j/d/a/d;

    invoke-static {v0}, Lcom/netease/nr/biz/j/d/a/d;->a(Lcom/netease/nr/biz/j/d/a/d;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b019e

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;II)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/g;->f:Lcom/netease/nr/biz/j/d/a/d;

    iget-object v2, p0, Lcom/netease/nr/biz/j/d/a/g;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/nr/biz/j/d/a/g;->f:Lcom/netease/nr/biz/j/d/a/d;

    invoke-static {v3}, Lcom/netease/nr/biz/j/d/a/d;->a(Lcom/netease/nr/biz/j/d/a/d;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/nr/biz/j/d/a/g;->d:Lcom/netease/nr/biz/j/d/a/c;

    iget-object v5, p0, Lcom/netease/nr/biz/j/d/a/g;->e:Landroid/view/View;

    invoke-static/range {v0 .. v5}, Lcom/netease/nr/biz/j/d/a/d;->a(Lcom/netease/nr/biz/j/d/a/d;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/netease/nr/biz/j/d/a/c;Landroid/view/View;)V

    return-void
.end method
