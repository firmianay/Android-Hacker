.class Lcom/netease/nr/biz/e/h;
.super Lcom/netease/util/fragment/z;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/util/fragment/z;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/e/h;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/e/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/nr/biz/e/a;->c(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/biz/e/h;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
