.class Lcom/netease/nr/biz/j/c/e;
.super Landroid/support/v4/content/AsyncTaskLoader;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/j/c/e;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/nr/biz/j/c/e;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/nr/biz/j/c/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/biz/j/c/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/j/c/e;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/nr/biz/j/c/e;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/nr/biz/j/c/h;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/biz/j/c/e;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
