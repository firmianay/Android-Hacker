.class Lcom/netease/nr/biz/pc/d/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/nr/biz/pc/d/a;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/pc/d/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pc/d/c;->c:Lcom/netease/nr/biz/pc/d/a;

    iput-object p2, p0, Lcom/netease/nr/biz/pc/d/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/nr/biz/pc/d/c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/pc/d/c;->c:Lcom/netease/nr/biz/pc/d/a;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/d/a;->a(Lcom/netease/nr/biz/pc/d/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/d/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/pc/d/c;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/nr/biz/pc/d/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
