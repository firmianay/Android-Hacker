.class Lcom/netease/nr/biz/j/d/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:[Landroid/widget/CheckBox;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netease/nr/biz/j/d/a/i;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/j/d/a/i;[Landroid/widget/CheckBox;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/j/d/a/l;->d:Lcom/netease/nr/biz/j/d/a/i;

    iput-object p2, p0, Lcom/netease/nr/biz/j/d/a/l;->a:[Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/netease/nr/biz/j/d/a/l;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/netease/nr/biz/j/d/a/l;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/l;->d:Lcom/netease/nr/biz/j/d/a/i;

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/l;->a:[Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/netease/nr/biz/j/d/a/l;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/netease/nr/biz/j/d/a/i;->a(Lcom/netease/nr/biz/j/d/a/i;[Landroid/widget/CheckBox;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/l;->d:Lcom/netease/nr/biz/j/d/a/i;

    iget-object v2, p0, Lcom/netease/nr/biz/j/d/a/l;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/nr/biz/j/d/a/l;->d:Lcom/netease/nr/biz/j/d/a/i;

    invoke-static {v3}, Lcom/netease/nr/biz/j/d/a/i;->a(Lcom/netease/nr/biz/j/d/a/i;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/netease/nr/biz/j/d/a/i;->a(Lcom/netease/nr/biz/j/d/a/i;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method
