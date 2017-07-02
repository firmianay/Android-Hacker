.class Lcom/netease/nr/biz/i/b/f;
.super Lcom/netease/nr/biz/i/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/nr/biz/i/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 4

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/f;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/i/b/f;->a:Ljava/lang/String;

    iget v2, p0, Lcom/netease/nr/biz/i/b/f;->b:I

    iget v3, p0, Lcom/netease/nr/biz/i/b/f;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/netease/nr/biz/i/b/d;->b(Landroid/content/Context;Ljava/lang/String;II)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/f;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
