.class public Lcom/netease/nr/biz/j/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/nr/base/a/d;


# instance fields
.field private a:Ljava/util/Map;

.field private b:Lcom/netease/util/j/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/j/c/g;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/netease/nr/biz/j/c/g;->a:Ljava/util/Map;

    invoke-static {p1}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/j/c/g;->b:Lcom/netease/util/j/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Z)V
    .locals 5

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/j/c/g;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    const v0, 0x7f0c0008

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c00ca

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netease/nr/biz/j/c/g;->a:Ljava/util/Map;

    const-string v3, "title"

    invoke-static {v2, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/j/c/g;->a:Ljava/util/Map;

    const-string v4, "digest"

    invoke-static {v3, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/netease/nr/biz/j/c/g;->b:Lcom/netease/util/j/a;

    const v4, 0x7f070095

    invoke-virtual {v2, v0, v4}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
