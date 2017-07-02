.class Lcom/netease/nr/biz/g/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/nr/biz/g/g;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/g/g;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/g/h;->c:Lcom/netease/nr/biz/g/g;

    iput-object p2, p0, Lcom/netease/nr/biz/g/h;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/netease/nr/biz/g/h;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/netease/nr/biz/g/h;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/g/h;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/netease/nr/biz/g/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/g/h;->c:Lcom/netease/nr/biz/g/g;

    invoke-static {v2}, Lcom/netease/nr/biz/g/g;->a(Lcom/netease/nr/biz/g/g;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/g/h;->c:Lcom/netease/nr/biz/g/g;

    invoke-static {v3}, Lcom/netease/nr/biz/g/g;->b(Lcom/netease/nr/biz/g/g;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/netease/nr/biz/g/c;->a(Ljava/util/Map;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
