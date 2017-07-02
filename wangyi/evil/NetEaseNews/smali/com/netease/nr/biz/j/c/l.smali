.class Lcom/netease/nr/biz/j/c/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/nr/biz/j/c/k;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/j/c/k;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/j/c/l;->b:Lcom/netease/nr/biz/j/c/k;

    iput-object p2, p0, Lcom/netease/nr/biz/j/c/l;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/j/c/l;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/nr/biz/j/c/l;->b:Lcom/netease/nr/biz/j/c/k;

    invoke-static {v1}, Lcom/netease/nr/biz/j/c/k;->a(Lcom/netease/nr/biz/j/c/k;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/nr/biz/j/c/h;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
