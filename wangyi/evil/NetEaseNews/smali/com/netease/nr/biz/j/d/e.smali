.class Lcom/netease/nr/biz/j/d/e;
.super Lcom/netease/util/fragment/z;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/util/fragment/z;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/netease/nr/biz/j/d/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/nr/biz/j/d/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/e;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/nr/biz/j/d/g;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/biz/j/d/e;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
