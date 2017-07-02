.class Lcom/netease/nr/biz/sns/a/a/c;
.super Lcom/netease/util/fragment/z;


# instance fields
.field private a:Lcom/netease/nr/biz/sns/util/c;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/netease/nr/biz/sns/util/c;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/util/fragment/z;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/netease/nr/biz/sns/a/a/c;->a:Lcom/netease/nr/biz/sns/util/c;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/netease/nr/biz/sns/util/c;Lcom/netease/nr/biz/sns/a/a/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/biz/sns/a/a/c;-><init>(Landroid/content/Context;Lcom/netease/nr/biz/sns/util/c;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/netease/nr/biz/sns/a/a/c;->a:Lcom/netease/nr/biz/sns/util/c;

    invoke-virtual {v1}, Lcom/netease/nr/biz/sns/util/c;->getLoginUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/util/e/c;->a(ILjava/lang/Object;)Ljava/util/Map;
    :try_end_0
    .catch Lcom/netease/nr/biz/sns/util/e; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/netease/nr/biz/sns/util/e;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/util/e/c;->a(ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/a/a/c;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
