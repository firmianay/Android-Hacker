.class Lcom/netease/nr/biz/k/f;
.super Lcom/netease/util/fragment/z;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/util/fragment/z;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/biz/k/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/k/g;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/biz/k/f;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
